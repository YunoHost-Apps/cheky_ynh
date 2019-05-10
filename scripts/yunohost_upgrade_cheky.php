<?php
// Script d'upgrade custom pour automatiser la MAJ sans action de l'utilisateur
// source: https://forum.cheky.net/mise-a-jour-de-cheky-en-ligne-de-commande-t659-p1.html#p2624

//$root_path = "__FINALPATH__";
$root_path = $_SERVER["argv"][1];
if (empty($root_path) || !is_dir($root_path)) {
    fwrite(STDERR, "Chemin manquant dans hook : post_app_upgrade");
    exit(1);
}


require $root_path."/bootstrap.php";

$storageType = $config->get("storage", "type", "files");
if ($storageType == "db") {
    $userStorage = new \App\Storage\Db\User($dbConnection);
} else {
    $userStorage = new \App\Storage\File\User(DOCUMENT_ROOT."/var/users.db");
}

$_POST = array(
    "upgrade" => 1,
);

require $root_path."/app/admin/scripts/upgrade.php";

// S'il y a des erreurs, on les écrit dans STDERR et on quitte
// avec un code erreur.
if (!empty($errors)) {
    fwrite(STDERR, str_replace(
        array("<br>", "<br />"), "", implode("\n", $errors)
    ));
    exit(1);
}
