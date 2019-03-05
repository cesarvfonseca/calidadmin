<?php
    ini_set('display_errors', 1);
    ini_set('display_startup_errors', 1);
    error_reporting(E_ALL);
    include '../function/conn.php';
    $conn = Connect();
    $conn -> query("SET NAMES utf8");
    $accion = $_POST['accion'];
    session_start();

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
        case 'consultar-datos':
            // die(json_encode($_POST));
            $seccion = $_POST['seccion'];
            $formatoID = $_POST['formatoID'];
            $query = "SELECT * FROM ".$seccion." WHERE id = ?";
            $stmnt = $conn -> prepare($query);
            $stmnt -> bindParam(1, $formatoID);
            $stmnt -> execute();
            $rows = $stmnt -> fetchAll(PDO::FETCH_NUM);
            $respuesta = array(
            'status' => 'OK',
            'data' => $rows
            );
            echo json_encode($respuesta); 
            break;
        case 'guardar-formato':
            // die(json_encode($_POST));
            $seccion = $_POST['seccion'];
            $campo1 = $_POST['campo1'];
            $campo2 = $_POST['campo2'];
            $campo3 = $_POST['campo3'];
            $campo4 = $_POST['campo4'];
            $userControl = $_SESSION['usuario_activo'];
            $folder = strtoupper($seccion);

            // SUBIR ARCHIVO
            if(isset($_FILES["campo5"]["name"])){
                $directorio = '../../../calidad/'.$folder.'_archivos';
                $targetDir = $directorio."/";       
                if(!file_exists($directorio))
                {
                    mkdir($directorio, 0777,true);
                }
                    $temp = explode(".", $_FILES["campo5"]["name"]);
                    $newfilename = $campo1 . '.pdf';
                    move_uploaded_file($_FILES["campo5"]["tmp_name"], $targetDir . $newfilename);
                }
                
                $insert = ""; 
                if($seccion === 'formatos')
                    $insert = "INSERT INTO `".$seccion."` (`cod`, `nombre`, `area`, `revision`, `updated_by`) ";
                else
                    $insert .= "INSERT INTO `".$seccion."` (`cod`, `nombre`, `revision`, `fecha`, `updated_by`) ";
                $insert .= " VALUES (?,?,?,?,?);";
                $stmnt = $conn -> prepare($insert);
                $stmnt -> bindParam(1, $campo1);
                $stmnt -> bindParam(2, $campo2);
                $stmnt -> bindParam(3, $campo3);
                $stmnt -> bindParam(4, $campo4);
                $stmnt -> bindParam(5, $userControl);
                $stmnt -> execute();
                $rowCount = $stmnt -> rowCount();
                if($rowCount > 0){
                    $respuesta = array(
                        'estado' => 'OK',
                        'data' => $rowCount,
                        'log' => $seccion
                    );
                } else {
                    $respuesta = array(
                        'estado' => 'ERROR',
                        'data' => $rowCount,
                        'log' => 'Error al guardar los datos.'
                    );
                }
                echo json_encode($respuesta);
            break;
        case 'editar-formato':
            // die(json_encode($_POST));
            $seccion = $_POST['seccion'];
            $campo0 = $_POST['campo0'];
            $campo1 = $_POST['campo1'];
            $campo2 = $_POST['campo2'];
            $campo3 = $_POST['campo3'];
            $campo4 = $_POST['campo4'];
            // $userControl = $_SESSION['usuario_activo'];
            $userControl = '08444';
            $folder = strtoupper($seccion);
            $directorio = '../../../calidad/'.$folder.'_archivos';
            
            // SUBIR ARCHIVO
            if(isset($_FILES["campo5"]["name"])){
                $targetDir = $directorio."/";       
                if(!file_exists($directorio))
                {
                    mkdir($directorio, 0777,true);
                }
                    // $temp = explode(".", $_FILES["campo5"]["name"]);
                    $newfilename = $campo1 . '.pdf';
                    move_uploaded_file($_FILES["campo5"]["tmp_name"], $targetDir . $newfilename);
                }

                $update = ""; 
                if($seccion === 'formatos')
                    $update = "UPDATE `".$seccion."` SET nombre = ?, area = ?, revision = ?, updated_by = ? ";
                else
                    $update .= "UPDATE `".$seccion."` SET nombre = ?, revision = ?, fecha = ?, updated_by = ? ";
                $update .= " WHERE id = ?";
                $stmnt = $conn -> prepare($update);
                $stmnt -> bindParam(1, $campo2);
                $stmnt -> bindParam(2, $campo3);
                $stmnt -> bindParam(3, $campo4);
                $stmnt -> bindParam(4, $userControl);
                $stmnt -> bindParam(5, $campo0);
                $stmnt -> execute();
                $rowCount = $stmnt -> rowCount();
                if($rowCount > 0){
                    $respuesta = array(
                        'estado' => 'OK',
                        'data' => $rowCount,
                        'log' => $seccion
                    );
                } else {
                    $respuesta = array(
                        'estado' => 'ERROR',
                        'data' => $rowCount,
                        'log' => 'Error al guardar los datos.'
                    );
                }
                echo json_encode($respuesta);

            break;
        case 'eliminar-formato':
            // die(json_encode($_POST));
            $seccion = $_POST['seccion'];
            $formatoID = $_POST['campo1'];
            $formatoNombre = strtoupper($_POST['campo2']);

            $folder = strtoupper($seccion);

            $directorio = '../../../calidad/'.$folder.'_archivos/';
            if (!file_exists($directorio.$formatoNombre.'.pdf')) 
            {                   
                if (mkdir( $directorio,0777,false )) {}
            } else {
                unlink($directorio.$formatoNombre.'.pdf');
            }

            $delete = "DELETE FROM `".$seccion."` WHERE id = ?";
            $stmnt = $conn -> prepare($delete);
            $stmnt -> bindParam(1, $formatoID);
            $stmnt -> execute();
            $rowCount = $stmnt -> rowCount();
            if($rowCount > 0){
                $respuesta = array(
                    'estado' => 'OK',
                    'data' => $rowCount,
                    'log' => $seccion
                );
            } else {
                $respuesta = array(
                    'estado' => 'ERROR',
                    'data' => $rowCount,
                    'log' => 'Error al eliminar los datos.'
                );
            }
            echo json_encode($respuesta);
            break;
        case 'salir':
            // die(json_encode($_POST));
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