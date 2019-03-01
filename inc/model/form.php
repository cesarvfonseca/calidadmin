<?php
    if(isset($_GET['accion'])){ // Si ha llegado callback
        include '../function/connection.php';//Incluir archivo de conecxion a la BD
        $tipo = $_GET['tipo'];//Obetener el usuario enviado desde control.php
        if
        ( $tipo == 'ingresar' )
        {
            $usuario = $_GET['usuario'];//Obetener el usuario enviado desde control.php
            $clave = trim($_GET['clave']);//Obetener la clave enviada desde control.php
            $clave = hash('sha512',$clave);//Encriptar la clave en formato HASH SHA-512

            $query = "SELECT pe.employee,pe.emp_name,pe.emp_status,aw.password,aw.counter_login,aw.estado
                        FROM PJEMPLOY pe
                        INNER JOIN P1ACCESOWEB aw
                        ON pe.employee = aw.employee
                        WHERE aw.employee = ?";
            
            $params = array( $usuario );//Pasar parametros a las consulta ?
            $stmt = sqlsrv_query( $con, $query, $params );// Asignar parametros al Statement a ejecutar

            if( !$stmt ) {
                $respuesta = array(
                    'estado' => 'NOK',
                    'tipo' => 'error',
                    'mensaje' => 'Error en la conexión a la BD.'
                );
            }
            //Verificar si la consulta regresa resultados, si el usuario exitse
            if ($row = sqlsrv_fetch_array( $stmt, SQLSRV_FETCH_ASSOC)) 
            {  
                $clave_bd = trim($row['password']);
                if( strcasecmp($clave_bd, $clave) == 0 )
                {
                    $usuario_activo = trim($row['employee']);
                    $usuario_nombre = trim(ucwords(strtolower($row['emp_name'])));
                    $sesion = true;
                    // $_SESSION["usuario_activo"] = trim($row['employee']);
                    // $_SESSION["usuario_nombre"] = trim(ucwords(strtolower($row['emp_name'])));
                    // $_SESSION["login"] = true;
                    session_start();//INICIAR LA SESION
                    $respuesta = array(
                        'estado' => 'OK',
                        'tipo' => 'success',
                        'mensaje' => 'Ingreso exitoso!',
                        'informacion' => 'Bienvenido',
                        'usuario_activo' => $usuario_activo,
                        'usuario_nombre' => $usuario_nombre,
                        'sesion' => $sesion
                    );
                }else{
                    $sesion = false;
                    $respuesta = array(
                        'estado' => 'OK',
                        'tipo' => 'error',
                        'mensaje' => 'Usuario y/o clave incorrectos.',
                        'informacion' => 'Las credenciales ingresadas no son válidas.',
                        'sesion' => $sesion
                    );
                }
            } 
            //El usuario no existe
            else 
            {
                $sesion = true;
                $respuesta = array(
                    'estado' => 'OK',
                    'tipo' => 'error',
                    'mensaje' => 'Usuario y/o clave incorrectos.',
                    'sesion' => $sesion
                    
                );
            }
            echo $_GET['accion'].'('.json_encode($respuesta).')';
        } 
    }

?>