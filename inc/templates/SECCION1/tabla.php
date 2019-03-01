<div class="row">
    <div class="col-md-10 offset-md-1">
        <table class="table table-striped table-bordered table-hover table-responsive-md text-center">
            <thead>
            <tr class="bg-info text-white">
                <th>ID</th>
                <th>Código</th>
                <th>Nombre</th>
                <th>Revisión</th>
                <?php if($seccion == 'formatos'): ?> 
                    <th>Area</th>
                <?php else: ?> 
                    <th>Fecha</th>
                <?php endif; ?>
                <th style="width: 20%;">Acción</th>
            </tr>
            </thead>

            <tbody id = 'tablaInformacion'>
            
            </tbody>
        </table>
    </div>
</div>
