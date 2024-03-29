@extends('back.layouts.app')
@section('title','Halaman Waktu Mengajar')
@section('subtitle','Menu Waktu Mengajar')
 


@section('content')

<div class="row">
    <div class="col-12">
      <div class="card">
        <div class="card-header">
          <h3 class="card-title">Data Waktu Mengajar - SMPIT Maryam</h3>
        </div>
        <!-- /.card-header -->
        <div class="card-body">
          <a href="#" class="btn btn-primary mb-3" data-toggle="modal" data-target="#modal-waktu_mengajar"><i class="fas fa-plus-circle"></i> Tambah Data</a>    
          {{-- <button id="export-pdf-button" class="btn btn-primary"><i class="fas fa-file-pdf"></i> Export to PDF</button> --}}

     
          <table id="waktuMengajar" class="table table-bordered table-striped">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Jam Ke</th>
                    <th>Waktu</th>
                    <th width="15%">Aksi</th>
                </tr>
            </thead>
          </table>
        
                
        </div>
        <!-- /.card-body -->
      </div>
      <!-- /.card -->
    </div>
    <!-- /.col -->
  </div>

  {{-- Modal Tambah Data --}}
  <div class="modal fade" id="modal-waktu_mengajar">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Form Waktu Mengajar</h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">

            <!-- Main content -->
    
              <div class="card card-primary">
                <div class="card-header">
                  <h3 class="card-title"></h3>
                </div>
                <!-- /.card-header -->
                <!-- form start -->
                <form id="form_waktu_mengajar" action="{{ route('simpan_waktu_mengajar') }}" method="POST" >
                {{-- <form id="form_waktu_mengajar" action="{{ route('kota.store') }}" method="POST" enctype="multipart/form-data"> --}}
                   
                  @csrf <!-- Tambahkan token CSRF -->
                  <div class="card-body">
                    
                    <div class="form-group">
                      <label for="jam">Jam Mengajar </label> <span> Contoh : 1</span>
                      <input type="text" class="form-control" id="jam" name="jam" placeholder="Masukkan Jam Mengajar" required>
                    </div>
                    <div class="form-group">
                      <label for="waktu">Waktu </label> <span> Contoh : 07:00-08:45</span>
                      <input type="text" class="form-control" id="waktu" name="waktu" placeholder="Masukkan Waktu Mengajar">
                    </div>


                    
                     
                  </div>
                  <!-- /.card-body -->
  
                  <div class="card-footer">
                    <button type="submit" class="btn btn-primary" id="btn-save-waktu-mengajar"><i class="fas fa-save"></i> Simpan</button>
                    <button type="button" class="btn btn-danger float-right" data-dismiss="modal"><span aria-hidden="true">&times;</span> Close</button>
                    
                  </div>
                </form>
              </div>
              <!-- /.card -->


        </div>
        
      </div>
      <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
  </div>

  {{-- Modal Edit Data --}}
  <div class="modal fade" id="modal-edit-waktu_mengajar">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h4 class="modal-title">Form Edit Waktu Mengajar</h4>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <div class="modal-body">

            <!-- Main content -->
    
              <div class="card card-primary">
                <div class="card-header">
                  <h3 class="card-title"></h3>
                </div>
                <!-- /.card-header -->
                <!-- form start -->
                <form id="form_edit_waktu_mengajar" method="POST">
                  @method('PUT')
                  @csrf <!-- Tambahkan token CSRF -->
                  <input type="hidden" id="id" name="id" value="">
                  <div class="card-body">
                    
                    <div class="form-group">
                      <label for="jam_edit">Jam Mengajar</label> <span> Contoh : 1</span>
                      <input type="text" class="form-control" id="jam_edit" name="jam" placeholder="Masukkan Jam Mengajar" required>
                    </div>
                    <div class="form-group">
                      <label for="waktu_edit">Waktu Mengajar</label> <span> Contoh : 07:00-08:45</span>
                      <input type="text" class="form-control" id="waktu_edit" name="waktu" placeholder="Masukkan Waktu Mengajar">
                    </div>


                    
                     
                  </div>
                  <!-- /.card-body -->
  
                  <div class="card-footer">
                    <button type="button" class="btn btn-primary" id="btn-update-waktu-mengajar"><i class="fas fa-check"></i> Update</button>
                    <button type="button" class="btn btn-danger float-right" data-dismiss="modal"><span aria-hidden="true">&times;</span> Close</button>
                    
                  </div>
                </form>
              </div>
              <!-- /.card -->


        </div>
        
      </div>
      <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
  </div>
  
  @endsection

@push('scripts')

{{--SKRIP TAMBAHAN  --}}
{{-- <!-- jQuery -->
<script src="{{ asset('template') }}/plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="{{ asset('template') }}/plugins/jquery-ui/jquery-ui.min.js"></script> --}}
 <!-- SweetAlert CDN -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>
<!-- Tautan Skrip jsPDF dari CDN -->

 


  
<script>
  $(document).ready(function() {
  $(function () {
      $('#waktuMengajar').DataTable({
          processing: true,
          serverSide: true,
          ajax: "{{ route('waktumengajar.datatables') }}",
          columns: [
              { data: 'DT_RowIndex', name: 'DT_RowIndex', orderable: false, searchable: false },
              { data: 'jam', name: 'jam' },
              { data: 'waktu', name: 'waktu' },
              { data: 'action', name: 'action', orderable: false, searchable: false }
          ],
          "createdRow": function(row, data, dataIndex) {
              $(row).attr('id', 'row_' + (dataIndex + 1)); // Menambahkan ID untuk setiap baris
          },
          buttons: [
              'copy', 'csv', 'excel', 'pdf', 'print' // Menambahkan tombol export
          ]
      }).buttons().container().appendTo('#waktuMengajar_wrapper .col-md-6:eq(0)');
  });
  });
  </script>
 
{{-- perintah simpan data --}}
<script>
  document.getElementById('form_waktu_mengajar').addEventListener('submit', function(e) {
      e.preventDefault(); // Mencegah form melakukan submit default
      const tombolSimpan = $('#btn-save-waktu-mengajar')
  
      var jam = document.getElementById('jam').value.trim();
      var waktu = document.getElementById('waktu').value.trim();
  
      if (!jam || !waktu) {
          alert('Harap lengkapi semua bidang!');
          return;
      }
      var formData = new FormData(this);
  
      $.ajax({
          url: '/simpan_waktu_mengajar', // Ganti dengan URL endpoint Anda
          type: 'POST',
          data: formData,
          contentType: false,
          processData: false,
          beforeSend: function() {
            $('form').find('.error-message').remove()
            tombolSimpan.prop('disabled', true)
          },
          success: function(response) {
              // Tampilkan SweetAlert untuk notifikasi berhasil
              Swal.fire({
                  title: 'Sukses!',
                  text: 'Data berhasil disimpan.',
                  icon: 'success',
                  confirmButtonText: 'OK'
              }).then((result) => {
                  if (result.isConfirmed || result.isDismissed) {
                      // Reload data table tanpa refresh halaman
                      // Kosongkan nilai input di dalam modal
                      $('#form_waktu_mengajar').trigger('reset');
                   
                      $('#waktuMengajar').DataTable().ajax.reload();
                      $('#modal-waktu_mengajar').modal('hide'); // Tutup modal setelah simpan berhasil
                  }
              });
          },
          complete: function() {
            tombolSimpan.prop('disabled', false);
          },
          error: function(xhr, status, error) {
              if (xhr.status === 422) {
                  // Tangkap pesan error validasi dari server
                  var errors = xhr.responseJSON.errors;
                  var errorMessage = '';
                  Object.keys(errors).forEach(function(key) {
                      errorMessage += errors[key][0] + '<br>';
                  });
  
                  // Tampilkan SweetAlert untuk notifikasi error validasi
                  Swal.fire({
                      title: 'Error!',
                      html: errorMessage,
                      icon: 'error',
                      confirmButtonText: 'OK'
                  });
              } else {
                  var errorMessage = xhr.responseText ? xhr.responseText : 'Terjadi kesalahan saat menyimpan data';
                  console.error('Terjadi kesalahan:', error);
                  alert(errorMessage);
              }
          }
      });
  });
  </script>
  
{{-- perintah simpan data --}}

{{-- perintah edit/tampil data --}}
<script>
$(document).on('click', '.btn_edit_waktu_mengajar', function(e) {
    e.preventDefault();
    var id = $(this).data('id');

    $.ajax({
        type: 'GET',
        url: '/waktu_mengajar/' + id + '/edit',
        success: function(data) {
            $('#id').val(data.id);
            $('#jam_edit').val(data.jam);
            $('#waktu_edit').val(data.waktu);
            $('#modal-edit-waktu_mengajar').modal('show');
        },
        error: function(error) {
            console.error(error);
        }
    });
});
</script>
{{-- perintah edit/tampil data --}}

{{-- perintah update data --}}
<script>
  $('#btn-update-waktu-mengajar').on('click', function(e) {
    e.preventDefault();
    const tombolUpdate = $('#btn-update-waktu-mengajar')
    var id = $('#id').val();
    var jam = $('#jam_edit').val();
    var waktu = $('#waktu_edit').val();

    $.ajax({
        type: 'PUT',
        url: '/waktu_mengajar/' + id,
        data: {
            jam: jam,
            waktu: waktu,
            _token: '{{ csrf_token() }}'
        },
        beforeSend: function(){
                    $('form').find('.error-message').remove()
                        tombolUpdate.prop('disabled',true)
                    },
        success: function(response) {
            Swal.fire({
                title: 'Sukses!',
                text: response.message,
                icon: 'success',
                confirmButtonText: 'OK'
            }).then((result) => {
                if (result.isConfirmed || result.isDismissed) {
                    $('#form_edit_waktu_mengajar').trigger('reset');
                    $('#waktuMengajar').DataTable().ajax.reload();
                    $('#modal-edit-waktu_mengajar').modal('hide');
                }
            });
        },
        complete: function()
                     {tombolUpdate.prop('disabled',false)},
        error: function(xhr, status, error) {
            var errorMessage = xhr.responseText ? xhr.responseText : 'Terjadi kesalahan saat mengupdate data';
            console.error('Terjadi kesalahan:', error);
            alert(errorMessage);
        }
    });
});
</script>
{{-- perintah update data --}}

{{-- perintah hapus data --}}
<script>
 $(document).on('click', '.btn_delete_waktu_mengajar', function(e) {
    e.preventDefault();
    var id = $(this).data('id-kategori');

    Swal.fire({
        title: 'Yakin mau hapus data?',
        text: 'Anda tidak akan dapat mengembalikan ini!',
        icon: 'warning',
        showCancelButton: true,
        confirmButtonColor: '#d33',
        cancelButtonColor: '#3085d6',
        confirmButtonText: 'Hapus',
        cancelButtonText: 'Batal'
    }).then((result) => {
        if (result.isConfirmed) {
            $.ajax({
                type: 'DELETE',
                url: '/waktu_mengajar/' + id,
                data: {
                    "_token": "{{ csrf_token() }}"
                },
                success: function(response) {
              if (response.hasOwnProperty('message') && response.message.includes('terkait dengan mutasi_barang')) {
                Swal.fire({
                  title: 'Oops!',
                  text: response.message,
                  icon: 'error',
                  confirmButtonText: 'OK'
                });
              } else if (response.hasOwnProperty('message') && response.message === 'Data Berhasil Dihapus') {
                Swal.fire({
                  title: 'Sukses!',
                  text: response.message,
                  icon: 'success',
                  confirmButtonText: 'OK'
                }).then((result) => {
                  if (result.isConfirmed || result.isDismissed) {
                    $('#waktuMengajar').DataTable().ajax.reload();
                  }
                });
              } else {
                Swal.fire({
                  title: 'Gagal!',
                  text: response.message || 'Gagal menghapus data',
                  icon: 'error',
                  confirmButtonText: 'OK'
                });
              }
            },
            error: function(xhr) {
              Swal.fire({
                title: 'Error!',
                text: 'Terjadi kesalahan saat menghapus data/masih terkait dengan tabel lain',
                icon: 'error',
                confirmButtonText: 'OK'
              });
              console.log(xhr.responseText); // Tampilkan pesan error jika terjadi
            }
            });
        }
    });
});

  </script>
  
  

@endpush



 