<div class="modal fade" id="inputModal" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="mediumModalLabel">MODAL INPUT DATA KARYAWAN</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="col-lg-12">
                    <div class="card">
                        <div class="card-header">
                            <strong>Data diri karyawan</strong> Elements
                        </div>
                        <div class="card-body card-block">
                            <form class="form-horizontal" action="simpanKaryawan" method="POST">
                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="text-input" class=" form-control-label">ID Karyawan</label></div>
                                    <div class="col-12 col-md-9"><input type="text" name="id" id="text-input" placeholder="ID Karyawan" value="" class="form-control"><small class="form-text text-muted">This is a help text</small></div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="text-input" class=" form-control-label">Nama</label></div>
                                    <div class="col-12 col-md-9"><input type="text" name="nama" id="text-input" placeholder="Nama Lengkap" value="" class="form-control"><small class="form-text text-muted">This is a help text</small></div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="text-input" class=" form-control-label">Nomor Telepon</label></div>
                                    <div class="col-12 col-md-9"><input type="text" name="telp" id="text-input" placeholder="No Hp" value="" class="form-control"><small class="form-text text-muted">This is a help number</small></div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="text-input" class=" form-control-label">Email</label></div>
                                    <div class="col-12 col-md-9"><input type="email" name="mail" id="email-input" placeholder="Email aktif" value="" class="form-control"><small class="help-block form-text">Please enter your ngemail</small></div>
                                </div>            
                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="text-input" class=" form-control-label">Tanggal Gabung</label></div>
                                    <div class="col-12 col-md-9"><input type="date" name="tgl" id="text-input" value="" class="form-control"><small class="help-block form-text">Please enter your ngemail</small></div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="text-input" class=" form-control-label">ID Departemen</label></div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="text-input" class=" form-control-label">ID Manager</label></div>
                                    <div class="col-12 col-md-9"><input type="text" name="man" id="email-input" placeholder="Id Managernya" value="" class="form-control"><small class="help-block form-text">Please enter your ngemail</small></div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="text-input" class=" form-control-label">Sisa Cuti</label></div>
                                    <div class="col-12 col-md-9"><input type="text" name="sisa" id="email-input" placeholder="12" value="" class="form-control"><small class="help-block form-text">Please enter your ngemail</small></div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="text-input" class=" form-control-label">Banyak cuti</label></div>
                                    <div class="col-12 col-md-9"><input type="text" id="email-input" name="banyak" placeholder="12" value="" class="form-control"><small class="help-block form-text">Please enter your ngemail</small></div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="file-input" class=" form-control-label">File input photo</label></div>
                                    <div class="col-12 col-md-9"><input type="file" id="file-input" name="photo" value="" class="form-control-file"></div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="file-input" class=" form-control-label">Status Karyawan</label></div>
                                    <div class="col-12 col-md-9"><select name="status">
                                            <option value="Aktif">Aktif</option>
                                            <option value="Tidak Aktif">Tidak Aktif</option>
                                        </select>&nbsp;&nbsp;&nbsp;&nbsp;Pilih Status</div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="file-input" class=" form-control-label">Role Karyawan</label></div>
                                </div>
                                <div class="card-footer">
                                    <button type="submit" class="btn btn-success btn-sm">
                                        <i class="fa fa-dot-circle-o"></i> Submit
                                    </button>
                                    <button type="reset" class="btn btn-danger btn-sm">
                                        <i class="fa fa-ban"></i> Reset
                                    </button>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
            <div class="modal-footer">
            </div>
        </div>
    </div>
</div>