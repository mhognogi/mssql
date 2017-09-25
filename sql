//table from db
    $sql = "SELECT * FROM information_schema.TABLES ORDER BY TABLE_NAME";
    $res = mssql_query($sql);
    while ($row = mssql_fetch_array($res)) {
        echo $row["TABLE_NAME"] . '<br>';
    }
    
    
