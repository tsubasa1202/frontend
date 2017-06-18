<?php



switch($_GET['action']){
    case 'getPopularArticle':
        getPopularArticle($_GET['count']);
        break;

    case 'getPublicArticle':
        getPublicArticle($_GET['count']);
        # code...
        break;

    case 'getotherArticle':
        getOtherArticle($_GET['count']);
        break;
}




function getPopularArticle($countNum){

// mysqliクラスのオブジェクトを作成
$mysqli = new mysqli('localhost', 'root', 'dorakonisu', 'stream');
if ($mysqli->connect_error) {
    echo $mysqli->connect_error;
    exit();
} else {
    $mysqli->set_charset("utf8");
}

//click > 0で人気記事判定 
$sql = "SELECT categoryid,name,click FROM article WHERE click > 0 ORDER BY click DESC LIMIT 15 OFFSET ?";
if ($stmt = $mysqli->prepare($sql)) {
  
    $offset = 15 * $countNum;
    $stmt->bind_param("i", $offset);
    
    $stmt->execute();
    $stmt->bind_result($categoryId, $name, $click);//もってくるカラムの数とあわせないとだめ
    $result =array();

    while ($stmt->fetch()) {
        $rs =  array(
            "categoryid" => $categoryId,
            "name" => $name,
            "click" => $click
        );
        array_push($result, $rs);   
    }

    $stmt->close();
}
    // DB接続を閉じる
    $mysqli->close();
    header('Content-Type: application/json; charset=utf-8');
    echo json_encode($result);
}



function getPublicArticle($countNum){

// mysqliクラスのオブジェクトを作成
$mysqli = new mysqli('localhost', 'root', 'dorakonisu', 'stream');
if ($mysqli->connect_error) {
    echo $mysqli->connect_error;
    exit();
} else {
    $mysqli->set_charset("utf8");
}

//結果を詰める配列
$result =array();

//国内記事取得(click=0で人気記事を除外)
$sql = "SELECT categoryid,name,click  FROM article where categoryid=100  AND click =0 ORDER BY createtime  LIMIT 5 OFFSET ?";
if ($stmt = $mysqli->prepare($sql)) {
  
    $offset = 5 * $countNum;
    $stmt->bind_param("i", $offset);
    $stmt->execute();
    $stmt->bind_result($categoryId, $name, $click);
    
    while ($stmt->fetch()) {
        $rs =  array(
            "categoryid" => $categoryId,
            "name" => $name,
            "click" => $click
        );
        array_push($result, $rs);   
    }

    $stmt->close();
}
//国外記事取得
$sql = "SELECT categoryid,name,click  FROM article where categoryid=101  AND click =0 ORDER BY createtime LIMIT 5 OFFSET ?";
if ($stmt = $mysqli->prepare($sql)) {
  
    $offset = 5 * $countNum;
    $stmt->bind_param("i", $offset);
    $stmt->execute();
    $stmt->bind_result($categoryId, $name, $click);
    
    while ($stmt->fetch()) {
        $rs =  array(
            "categoryid" => $categoryId,
            "name" => $name,
            "click" => $click
        );
        array_push($result, $rs);   
    }

    $stmt->close();
}

//海外記事取得
$sql = "SELECT categoryid,name,click  FROM article where categoryid=102  AND click =0 ORDER BY createtime LIMIT 5 OFFSET ?";
if ($stmt = $mysqli->prepare($sql)) {
  
    $offset = 5 * $countNum;
    $stmt->bind_param("i", $offset);
    $stmt->execute();
    $stmt->bind_result($categoryId, $name, $click);
    
    while ($stmt->fetch()) {
        $rs =  array(
            "categoryid" => $categoryId,
            "name" => $name,
            "click" => $click
        );
        array_push($result, $rs);   
    }

    $stmt->close();
}


    // DB接続を閉じる
    $mysqli->close();
    header('Content-Type: application/json; charset=utf-8');
    echo json_encode($result);
}

function getOtherArticle($countNum){

// mysqliクラスのオブジェクトを作成
$mysqli = new mysqli('localhost', 'root', 'dorakonisu', 'stream');
if ($mysqli->connect_error) {
    echo $mysqli->connect_error;
    exit();
} else {
    $mysqli->set_charset("utf8");
}

$sql = "SELECT categoryid,name,click  FROM article WHERE click=0 AND categoryid <> 100 AND categoryid <> 101 AND categoryid <> 102 ORDER BY createtime  LIMIT 15 OFFSET ?";
if ($stmt = $mysqli->prepare($sql)) {
  
    $offset = 15 * $countNum;
    $stmt->bind_param("i", $offset);
    
    $stmt->execute();
    $stmt->bind_result($categoryId, $name, $click);//もってくるカラムの数とあわせないとだめ
    $result =array();

    while ($stmt->fetch()) {
        $rs =  array(
            "categoryid" => $categoryId,
            "name" => $name,
            "click" => $click
        );
        array_push($result, $rs);   
    }

    $stmt->close();
}
    // DB接続を閉じる
    $mysqli->close();
    header('Content-Type: application/json; charset=utf-8');
    echo json_encode($result);
}


?>