
<?php  
    $seccion = $_REQUEST['request'];

    switch ($seccion){
        case 'main-page':
            $titulo = 'Manuales de calidad';
            $tabla = 'macs';
            break;
        case 'pacs':
            $titulo = 'Procedimientos de calidad';
            $tabla = 'pacs';
            break;
        case 'its':
            $titulo = 'Instrucciones de trabajo';
            $tabla = 'its';
            break;
        case 'formatos':
            $titulo = 'Formatos de calidad';
            $tabla = 'formatos';
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

    <div class="row">
        <div class="col-md-7 offset-md-1">
            <a class="btn btn-success text-white" id="btnNew" data-type="<?php echo $section ?>" title="Nuevo registro">
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

    <br>

    <?php  
        include 'SECCION1/tabla.php';
    ?>
</div>

<script src="js/general.js"></script>
