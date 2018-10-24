<div class="modal fade" id="mediumModal" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <form name="aisyah" method="post" action="./saveOrUpdateKaryawanServlet">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="mediumModalLabel">Modal Detail Karyawan</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <div class="card">
                        <div class="card-header"><strong>Edit Data Karyawan</strong><small></small></div>
                        <div class="card-body card-block">
                            <div class="form-group"><label for="nilai1" class=" form-control-label">ID Karyawan</label><input type="text" name="id" id="nilai1" value="" class="form-control"></div>
                            <div class="form-group"><label for="nilai2" class=" form-control-label">Nama Karyawan</label><input type="text" name="nama" id="nilai2" value="" class="form-control"></div>
                            <div class="form-group"><label for="nilai3" class=" form-control-label">nomor telepon</label><input type="text" name="telp" id="nilai3" value="" class="form-control"></div>
                            <div class="form-group"><label for="nilai4" class=" form-control-label">email karyawan</label><input type="text" name="mail" id="nilai4" value="" class="form-control"></div>
                            <div class="form-group"><label for="nilai5" class=" form-control-label">awal gabung</label><input type="date" name="awalGabung" id="nilai5" value="" class="form-control"></div>
                            <div class="form-group"><label for="nilai6" class=" form-control-label">id departemen</label><input type="text" name="dept" id="nilai6" class="form-control"></div>
                            <div class="form-group"><label for="nilai7" class=" form-control-label">id manager</label><input type="text" name="man" id="nilai7" class="form-control"></div>
                            <div class="form-group"><label for="nilai8" class=" form-control-label">sisa cuti</label><input type="text" name="sisaCuti" id="nilai8" class="form-control"></div>
                            <div class="form-group"><label for="nilai9" class=" form-control-label">banyak cuti</label><input type="text" name="banyakCuti" id="nilai9" class="form-control"></div>
                            <div class="form-group"><label for="nilai10" class=" form-control-label">status</label><input type="text" name="status" id="nilai10" class="form-control"></div>
                            <div class="form-group"><label for="nilai11" class=" form-control-label">id role</label><input type="text" name="role" id="nilai11" class="form-control"></div>
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