<script src="assets/js/vendor/jquery-2.1.4.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/plugins.js"></script>
<script src="assets/js/main.js"></script>
<script src="assets/js/lib/data-table/datatables.min.js"></script>
<script src="assets/js/lib/data-table/dataTables.bootstrap.min.js"></script>
<script src="assets/js/lib/data-table/dataTables.buttons.min.js"></script>
<script src="assets/js/lib/data-table/buttons.bootstrap.min.js"></script>
<script src="assets/js/lib/data-table/jszip.min.js"></script>
<script src="assets/js/lib/data-table/pdfmake.min.js"></script>
<script src="assets/js/lib/data-table/vfs_fonts.js"></script>
<script src="assets/js/lib/data-table/buttons.html5.min.js"></script>
<script src="assets/js/lib/data-table/buttons.print.min.js"></script>
<script src="assets/js/lib/data-table/buttons.colVis.min.js"></script>
<script src="assets/js/lib/data-table/datatables-init.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $('#bootstrap-data-table-export').DataTable();
    });
    $('#mediumModal').on('show.bs.modal', function (event) {
        var myVal = $(event.relatedTarget).data('val');
        var a = myVal.split(",");
        $(this).find('input[id="nilai1"]').val(a[0]);
        $(this).find('input[id="nilai2"]').val(a[1]);
        $(this).find('input[id="nilai3"]').val(a[2]);
        $(this).find('input[id="nilai4"]').val(a[3]);
        $(this).find('input[id="nilai5"]').val(a[4]);
        $(this).find('input[id="nilai6"]').val(a[5]);
        $(this).find('input[id="nilai7"]').val(a[6]);
        $(this).find('input[id="nilai8"]').val(a[7]);
        $(this).find('input[id="nilai9"]').val(a[8]);
        $(this).find('input[id="nilai10"]').val(a[9]);
        $(this).find('input[id="nilai11"]').val(a[10]);
    });
</script>