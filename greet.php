<?php

 //echo "hi!!!!! " . $_GET['name'];


$rs = array(
    //"message" => htmlspecialchars("hi! " . $_GET['namedayo'], ENT_QUOTES, "utf-8"),
    //"length" => strlen($_GET['namedayo'])
    "num1" => $_GET['num1'],
    "num2" => $_GET['num2'],
    "result" => $_GET['num1'] * $_GET['num2']
);

header('Content-Type: application/json; charset=utf-8');
echo json_encode($rs);
