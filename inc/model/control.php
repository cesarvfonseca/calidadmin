<?php
    include '../function/conn.php';
    $conn = Connect();
    $conn -> query("SET NAMES utf8");
    $accion = $_POST['accion'];

    switch ($accion)
    {
        case 'consulta1':
            // die(json_encode($_POST));
            $seccion = $_POST['seccion'];
            $query = 'SELECT * FROM '.$seccion;
            $stmt = $conn -> prepare($query);
            $stmt -> execute();
            $rows = $stmt -> fetchAll(PDO::FETCH_NUM);
            $respuesta = array(
            'status' => 'OK',
            'data' => $rows
            );
            echo json_encode($respuesta);    
            break;
        case 'salir':
            // die(json_encode($_POST));
            session_start();
            session_destroy();
            $_SESSION = array();   
            $respuesta = array (
                'estado' => 'OK',
                'tipo' => 'success',
                'mensaje' => 'Sesión finalizada',
                'informacion' => 'Su sesión fue cerrada exitosamente.'
            );
            echo json_encode($respuesta);
            break;
        default:
            $titulo = '';
            break;
    }


?>