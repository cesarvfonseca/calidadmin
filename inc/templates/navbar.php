<nav class="navbar sticky-top navbar-expand-lg navbar-dark bg-primary justify-content-between">

  <a class="navbar-brand">
    <img src="img/mexq_logo.png" width="150" alt="Logo MEXQ" class="responsive-img">
  </a>
    <?php if (!isset($_SESSION["usuario_activo"])){  ?>
    <a class="nav-item nav-link disabled text-white">Panel Administración SGC</a>
    <?php } else {?>
            <?php $usuario_nombre = $_SESSION['usuario_nombre'];?>
            <?php $departamento = $_SESSION['usuario_departamento']; ?>
            <?php $usuario = $_SESSION['usuario_activo']; ?>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <form class="form-inline">
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
      <div class="navbar-nav">
        <a class="nav-item nav-link menuLink" href="index.php?request=main-page">MAC'S <span class="sr-only">(current)</span></a>
        <a class="nav-item nav-link" href="index.php?request=pacs">PAC'S</a>
        <a class="nav-item nav-link" href="index.php?request=its">ITS</a>
        <a class="nav-item nav-link" href="index.php?request=formatos">FORMATOS</a>
        <!-- <a class="nav-item nav-link" href="index.php?request=printers">SPR</a> -->
        <a class="nav-item nav-link disabled text-white" href="#">Bienvenido (a): <?php echo $usuario_nombre; ?></a>
        <a class="nav-item nav-link btn btn-danger" type="button" id="btnSalir"> Cerrar Sesión <i class="fas fa-sign-out-alt"></i></a>
      </div>
    </div>
  </form>  
  <?php } ?>
</nav>
<br>

