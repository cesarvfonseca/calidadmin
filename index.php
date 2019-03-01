<?php session_start();//INICIAR LA SESION ?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>SAC - Admin</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link rel="stylesheet" href="css/estilos.css">
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
</head>
<body>
    <head>
        <!-- BARA DE NAVEGACION DEL SITIO -->
        <?php include 'inc/templates/navbar.php'; ?>
    </head>
    <div class="container">
        <?php if (!isset($_SESSION['usuario_nombre']) || empty($_SESSION['usuario_nombre'])): ?>
        <!-- ACCESO AL SISTEMA -->
            <?php include 'inc/templates/login.php'; ?>
        <?php else: ?>
        <!-- INICIO DEL SISTEMA -->
            <?php include 'inc/templates/main.php'; ?>
        <?php endif; ?>
    </div>
    <!-- PIE DE PÁGINA DEL SITIO -->
    <?php include 'inc/templates/footer.php'; ?>
</body>
</html>