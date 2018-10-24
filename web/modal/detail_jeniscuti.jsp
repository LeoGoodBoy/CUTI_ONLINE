<div class="modal fade" id="mediumModal" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <form name="aisyah" method="post" action="./saveOrUpdateJenisCutiServlet">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="mediumModalLabel">Detail Karyawan</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="card">
                        <div class="card-header"><strong>Edit Data Karyawan</strong><small></small></div>
                        <div class="card-body card-block">
                            <div class="form-group"><label for="idcuti" class=" form-control-label">ID Jenis Cuti</label><input type="text" name="id" id="idcuti" value="" class="form-control"></div>
                            <div class="form-group"><label for="namacuti" class=" form-control-label">Nama Jenis Cuti</label><input type="text" name="nama" id="namacuti" value="" class="form-control"></div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
                    <button type="button" class="btn btn-primary" onclick="{
                                        document.aisyah.submit();
                                    }">Confirm</button>
                </div>
            </div>
        </form>
    </div>
</div>