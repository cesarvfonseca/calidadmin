<form action="">
    <div class="row">
        <div class="col-md-8 offset-md-2">
            <div class="card text-white text-center bg-dark mb-3">
                <div class="card-header">
                <small class="text-muted h3 text-uppercase tituloNuevo"></small>
                <?php $_seccion = $_REQUEST['seccion']; ?>
                </div>
                <div class="card-body">
                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fab fa-slack-hash"></i></span>
                                </div>
                                <input type="text" class="form-control" id="ipCampo1" placeholder="Código del documento">
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <div class="input-group">
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-file-invoice"></i></span>
                                </div>
                                <input type="text" class="form-control" id="ipCampo2" placeholder="Nombre del documento">
                            </div>
                        </div>
                    </div>

                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <div class="input-group">
                            <?php if($_seccion != 'subir-formatos'): ?>
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-check-square"></i></span>
                                </div>
                                <input type="text" class="form-control" id="ipCampo3" placeholder="Revisión del documento">
                            <?php elseif($_seccion == 'subir-formatos'): ?>
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-briefcase"></i></span>
                                </div>
                                <input type="text" class="form-control" id="ipCampo3" placeholder="Departamento">
                            <?php endif; ?>
                            </div>
                        </div>
                    </div> 

                    <div class="form-row">
                        <div class="form-group col-md-12">
                            <div class="input-group">
                                
                                <div class="input-group-prepend">
                                    <span class="input-group-text"><i class="fas fa-calendar-alt"></i></span>
                                </div>
                                <input type="date" class="form-control" id="ipCampo4" placeholder="Fecha del documento" value="<?php echo date("Y-m-d");?>">
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="input-group col-md-12">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class="fas fa-file-pdf"></i></span>
                            </div>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="ipCampo5" aria-describedby="inputGroupFileAddon01">
                                <label class="custom-file-label" for="idCampo5">Adjuntar Formato en PDF</label>
                            </div>
                        </div>
                    </div>
                    <br>                                                        
                </div>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-8 offset-md-2">
            <button type="button" class="btn btn-primary btn-lg btn-block" id="btn-guardar"><i class="fas fa-save"></i> Guardar </button>
            <br>
            <a href="javascript:history.back();" class="btn btn-danger btn-lg btn-block"><i class="fas fa-times"></i> Cancelar </a>
        </div>
    </div>
    
    <br>

</form>