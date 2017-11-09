/*
tools
jetBrain DataGrid all
mysql-front import big DB in xamp windows
microsoft sql server mssql
*/

//read table from db
    $sql = "SELECT * FROM information_schema.TABLES ORDER BY TABLE_NAME";
    $res = mssql_query($sql);
    while ($row = mssql_fetch_array($res)) {
        echo $row["TABLE_NAME"] . '<br>';
    }
  
//read column from table  
    $sql = "SELECT column_name, data_type, character_maximum_length, table_name,ordinal_position, is_nullable
        FROM information_schema.COLUMNS WHERE table_name='Documents'
        ORDER BY ordinal_position";
    $res = mssql_query($sql);
    while ($row = mssql_fetch_array($res)) {
        print $row['column_name'] . ' | ' . $row['data_type'] . '<br>';
    }    
