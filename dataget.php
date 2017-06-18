<?php
  define('DB_DATABASE','stream');
  define('DB_USERNAME','root');
  define('DB_PASSWORD','dorakonisu');
  define('PDO_DSN','mysql:dbhost=localhost;dbname=' . DB_DATABASE);

  try{
    //DB接続
    $db = new PDO(PDO_DSN,DB_USERNAME,DB_PASSWORD);
    $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    //テーブルのレコードを抽出
    $stmt = $db->query('select * from users');
    //fetchAll(PDO::返却される配列の形式)でquery関数で返却された値を全件取得します
    $users = $stmt -> fetchAll(PDO::FETCH_ASSOC);

    foreach ($users as $user) {
      var_dump($user);
      echo
    }

  } catch(PDOException $e){
      echo 'user error';
    echo $e->getMessage();
    exit;
  }
 ?>