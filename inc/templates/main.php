<?php  
    $url = $_GET['tittle'];
    echo $url;
    $seccion = $_REQUEST['request'];

    switch ($seccion)
    {
        case 'main-page':
            $titulo = 'Página Admin.istración SAC';
            $tabla = '';
            $id = 2;
            break;
        case 'macs':
            $titulo = 'Manuales de calidad';
            $tabla = 'macs';
            $id = 1;
            break;
        case 'pacs':
            $titulo = 'Procedimientos de calidad';
            $tabla = 'pacs';
            $id = 1;
            break;
        case 'its':
            $titulo = 'Instrucciones de trabajo';
            $tabla = 'its';
            $id = 1;
            break;
        case 'formatos':
            $titulo = 'Formatos de calidad';
            $tabla = 'formatos';
            $id = 1;
            break;
        case 'nuevoDocumento':
            $titulo = 'Nuevo formato';
            $tabla = 'nuevoDocumento';
            $id = 2;
            break;
        case 'editarDocumento':
            $titulo = 'Editar formato';
            $tabla = 'editarDocumento';
            $id = 2;
            break;
        default:
            $titulo = null;
            break;
    }
?>


<div class="container">

    <div class="row">
        <div class="col-md-12">
            <h1 class="display-4 text-center text-muted"><?php echo $titulo ?></h1>
            <input type="hidden" id="tablaActual" value="<?php echo $tabla ?>">
        </div>
    </div>

    <?php if($id != 2): ?>
        <div class="row">
            <div class="col-md-7 offset-md-1">
                <a class="btn btn-success text-white" id="btn-nuevo" data-type="<?php echo $section ?>" title="Nuevo registro">
                    <i class="fas fa-plus"></i>
                    Nuevo registro
                </a>
            </div>
            <div class="input-group col-md-3">
                <div class="input-group-prepend">
                    <span class="input-group-text" id="inputGroup-sizing-default"><i class="fas fa-search"></i></span>
                    </div>
                    <input type="text" class="form-control" aria-label="Sizing example input" id="searchBox" aria-describedby="inputGroup-sizing-default">
                </div>
            </div>
        </div>
    <?php endif; ?>

    <br>

    <?php
    switch ($seccion)
    {
        case 'nuevoDocumento':
            include 'MODULOS/nuevo-documento.php';
            break;
        case 'editarDocumento':
            include 'MODULOS/editar-documento.php';
            break;
        case 'main-page':
            include 'SECCION1/main-view.php';
            break;
        default:
            include 'SECCION1/tabla.php';
            break;
    }
    ?>
</div>

<script src="js/general.js"></script>
