<div class="modal fade" id="mediumModal" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
    <div class="modal-dialog modal-lg" role="document">
        <form name="aisyah"  method="post" action="./UpdateNotifikasi">
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
                            <div class="form-group"><label for="nilaii1" class=" form-control-label">ID Permohonan</label>
                                <input type="text" name="idpermohonan" id="nilaii1" value="" class="form-control"></div>
                            <div class="form-group"><label for="nilaii2" class=" form-control-label">ID Karyawan</label>
                                <input type="text" name="idkaryawan" id="nilaii2" value="" class="form-control" ></div>
                            <div class="form-group"><label for="nilaii3" class=" form-control-label">Tanggal Submit</label>
                                <input type="text" name="tanggalsubmit" id="nilaii3" value="" class="form-control"></div>
                            <div class="form-group"><label for="nilaii4" class=" form-control-label">Mulai Cuti</label>
                                <input type="text" name="mulaicuti" id="nilaii4" value="" class="form-control"></div>
                            <div class="form-group"><label for="nilaii5" class=" form-control-label">Selesai Cuti</label>
                                <input type="text" name="selesaicuti" id="nilaii5" class="form-control"></div>
                            <div class="form-group"><label for="nilaii6" class=" form-control-label">ID Cuti</label>
                                <input type="text" name="idcuti" id="nilaii6" class="form-control"></div>
                            <div class="form-group"><label for="nilaii7" class=" form-control-label">Catatan</label>
                                <input type="text" name="catatan" id="nilaii7" class="form-control"></div>
                            <div class="form-group"><label for="nilaii8" class=" form-control-label">Ubah Status</label>
                                <select name="status" class="form-control">
                                    <option value="Rejected"> Rejected </option> 
                                    <option value="Approve"> Approve </option> 
                                </select></div>
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