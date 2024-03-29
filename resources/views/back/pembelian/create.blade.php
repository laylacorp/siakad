@extends('back.layouts.app')
@section('title', 'Halaman Pembelian')
@section('subtitle', 'Menu Pembelian')

@section('content')
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <form id="form-pembelian" action="{{ route('pembelian.store') }}" method="post"
                        enctype="multipart/form-data">

                        @csrf
                        <h5 class="card-title mb-0"><b style="color: red;">Kode Pembelian : <input type="hidden"
                                    id="kode_pembelian" name="kode_pembelian"
                                    value="{{ $kode_pembelian }}">{{ $kode_pembelian }}</input></b></h5>

                        <br>
                        <hr>



                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="hari">Tanggal Pembelian </label>
                                    <input type="date" class="form-control" id="tanggal_pembelian"
                                        name="tanggal_pembelian" value="<?php echo date('Y-m-d'); ?>">
                                </div>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="supplier_id">Supplier </label>
                                    <select class="form-control select2" id="supplier_id" name="supplier_id">
                                        <option value="">--Pilih Supplier--</option>
                                        @foreach ($supplier as $supplierItem)
                                            <option value="{{ $supplierItem->id }}"
                                                data-nama-supplier="{{ $supplierItem->nama_supplier }}">
                                                {{ $supplierItem->nama_supplier }}</option>
                                        @endforeach
                                    </select>
                                    <input type="hidden" name="nama_supplier" id="nama_supplier">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="produk_id">Cari Produk </label>
                                    <select class="form-control select2" id="produk_id" name="" required>

                                        <option value="">--Pilih Produk--</option>
                                        @foreach ($produk as $produkItem)
                                            <option value="{{ $produkItem->id }}"
                                                data-harga-beli="{{ $produkItem->harga_beli }}">
                                                {{ $produkItem->nama_produk }}
                                            </option>
                                        @endforeach

                                    </select>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="supplier_id">Scan Barcode </label>
                                    <input type="text" class="form-control" placeholder="Silahkan scan barcode disini">
                                </div>
                            </div>
                        </div>

                        <table id="example" class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    <th width="5%">No</th>
                                    <th>Produk</th>
                                    <th>Harga</th>
                                    <th width="5%">Qty</th>
                                    <th>Total</th>
                                    <th width="10%">Aksi</th>
                                </tr>
                            </thead>
                            <tbody></tbody>
                        </table>

                        <!-- Total Bayar dan Input Bayar -->
                        <div class="row mt-4">
                            <div class="col-md-6">
                                <h5 style="color: rgb(255, 255, 255); font-size:30px;" class="badge badge-danger"><b>Total
                                        Bayar: </b> Rp.<span id="total_bayar">0</span></h5>
                                <input type="hidden" name="total_bayar" id="" class="form-control total_bayar">
                                <hr>
                                <h1 style="color: red" id="info_pembayaran"></h1>
                            </div>

                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="input_bayar">Bayar:</label>
                                    <input type="text" class="form-control" id="input_bayar" name="input_bayar">
                                </div>
                                <div class="form-group">
                                    <label for="kembalian">Kembalian:</label>
                                    <input type="text" class="form-control" id="kembalian" name="kembalian" readonly>
                                </div>
                                <div class="form-group">
                                    <label for="jenis_pembayaran">Jenis Pembayaran:</label>
                                    <select name="jenis_pembayaran" id="jenis_pembayaran" class="form-control">
                                        <option value="CASH">CASH</option>
                                        <option value="TRANSFER">TRANSFER</option>
                                    </select>
                                </div>
                                <div class="form-group" id="bukti_container" style="display: none;">
                                    <!-- Hide the container by default -->
                                    <label for="bukti">Bukti:</label>
                                    <input type="file" class="form-control" id="bukti" name="bukti">
                                </div>






                                <div class="form-group">
                                    <label for="keterangan">Keterangan:</label>
                                    <textarea name="keterangan" id="keterangan" class="form-control" cols="30" rows="3"></textarea>
                                </div>
                            </div>
                        </div>

                        <div class="border-top">
                            <div class="card-body">
                                <button type="submit" class="btn btn-success" style="color:white;" id="btn-save-pembelian"><i
                                        class="fas fa-save"></i> Simpan</button>
                                <a href="javascript:history.back()" class="btn btn-danger" style="color:white;"><i
                                        class="fas fa-step-backward"></i> Kembali</a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
@endsection


@push('scripts')
    <!-- Memuat skrip JavaScript Select2 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.13/js/select2.min.js"></script>
    <!-- SweetAlert CDN -->
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

    <!-- Inisialisasi Select2 -->
    <script>
        $(document).ready(function() {
            $('#supplier_id').select2();
            // Ketika opsi supplier dipilih
            $('#supplier_id').on('change', function() {
                var selectedSupplier = $(this).find(':selected');
                var namaSupplier = selectedSupplier.data(
                    'nama-supplier'); // Mengambil data 'nama-supplier' dari opsi yang dipilih
                $('#nama_supplier').val(
                    namaSupplier); // Mengisikan nilai 'nama-supplier' ke dalam input 'nama_supplier'
            });
            $('#produk_id').select2();

            var kode_pembelian = "{{ $kode_pembelian }}";
            // Menampilkan kode pembelian dalam elemen span dengan id "kode_pembelian"
            $('#kode_pembelian').text(kode_pembelian);

            $('#jenis_pembayaran').on('change', function() {
                var jenisPembayaran = $(this).val();
                if (jenisPembayaran === 'CASH') {
                    $('#bukti_container').hide(); // Hide the bukti container if jenis pembayaran is CASH
                } else {
                    $('#bukti_container')
                        .show(); // Show the bukti container if jenis pembayaran is TRANSFER
                }
            });






            // Function to format harga rupiah with separator ribuan
            function formatRupiah(angka) {
                var number_string = angka.toString().replace(/[^,\d]/g, ''),
                    split = number_string.split(','),
                    sisa = split[0].length % 3,
                    rupiah = split[0].substr(0, sisa),
                    ribuan = split[0].substr(sisa).match(/\d{3}/gi);

                // Tambahkan pemisah ribuan
                if (ribuan) {
                    separator = sisa ? '.' : '';
                    rupiah += separator + ribuan.join('.');
                }

                // Tambahkan koma dan dua digit desimal jika ada
                rupiah = split[1] !== undefined ? rupiah + ',' + split[1] : rupiah;
                return rupiah;
            }



            // Function to calculate total
            function calculateTotal() {
                var totalBayar = 0;
                $('#example tbody tr').each(function() {
                    var qty = parseInt($(this).find('.qty').val()) || 0;
                    var hargaBeli = parseInt($(this).find('.harga_beli').val().replace(/\./g, '').replace(
                        /[^0-9]/g, '')) || 0;
                    var total = qty * hargaBeli;
                    $(this).find('.total').val(formatRupiah(total));
                    totalBayar += total;
                });
                $('#total_bayar').text(formatRupiah(totalBayar));
                $('.total_bayar').val(formatRupiah(totalBayar));
            }
            // Event listener untuk perubahan pada input qty
            $(document).on('input', '.qty', function() {
                calculateTotal();
            });




            // Event listener untuk perubahan pada input harga beli
            $(document).on('input', '.harga_beli', function() {
                // Memanggil fungsi untuk menambahkan separator ribuan
                $(this).val(formatRupiah($(this).val().replace(/\./g, '')));
                calculateTotal(); // Menghitung total setelah perubahan harga beli
            });




            // Event listener untuk perubahan pada dropdown produk_id
            $('#produk_id').on('change', function() {
                var selectedProductId = $(this).val(); // Ambil nilai produk yang dipilih dari dropdown
                var selectedProductName = $('#produk_id option:selected')
                    .text(); // Ambil nama produk yang dipilih
                var selectedProductPrice = $('#produk_id option:selected').data(
                    'harga-beli'); // Ambil harga beli produk yang dipilih

                // Cek apakah produk sudah ada dalam tabel
                var existingProductRow = $('#example tbody tr').filter(function() {
                    return $(this).find('input[name="produk_id[]"]').val() == selectedProductId;
                });

                if (existingProductRow.length > 0) {
                    // Jika produk sudah ada, tambahkan jumlah qty-nya
                    var qtyInput = existingProductRow.find('.qty');
                    var currentQty = parseInt(qtyInput.val());
                    qtyInput.val(currentQty + 1);
                } else {
                    // Jika produk belum ada, tambahkan baris baru ke tabel
                    var newRow = '<tr>' +
                        '<td></td>' + // Nomor
                        '<td><input type="hidden" name="produk_id[]" value="' + selectedProductId + '">' +
                        '<input type="text" class="form-control" name="nama_produk[]" value="' +
                        selectedProductName + '" readonly></td>' + // Nama Produk
                        '<td><input type="text" class="form-control harga_beli" name="harga_beli[]" value="' +
                        formatRupiah(selectedProductPrice) + '" ></td>' +
                        // Harga Beli dengan pemisah ribuan
                        '<td><input type="number" class="form-control qty" name="qty[]" value="1"></td>' +
                        // Qty
                        '<td><input type="text" class="form-control total" name="total[]" readonly></td>' +
                        // Total
                        '<td><button type="button" class="btn btn-danger btn-remove-product"><i class="fas fa-trash"></i> Hapus</button></td>' +
                        // Tombol Hapus
                        '</tr>';

                    $('#example tbody').append(newRow);
                }

                // Update nomor pada setiap baris
                updateRowNumbers();

                // Hitung total bayar keseluruhan
                calculateTotal();
            });












            // Fungsi untuk memperbarui nomor pada setiap baris tabel
            function updateRowNumbers() {
                $('#example tbody tr').each(function(index, row) {
                    $(row).find('td:first').text(index + 1); // Nomor dimulai dari 1
                });
            }

            // Event listener untuk tombol Hapus Produk
            $(document).on('click', '.btn-remove-product', function() {
                $(this).closest('tr').remove(); // Hapus baris produk
                updateRowNumbers(); // Update nomor pada setiap baris
            });



            // Event listener untuk input bayar
            $('#input_bayar').on('input', function() {
                var inputBayar = $(this).val().replace(/[^\d]/g, '');
                $(this).val(formatRupiah(inputBayar));
                hitungKembalian(); // Hitung kembali kembalian setiap kali input berubah
                tampilkanInfoPembayaranKurang(); // Tampilkan informasi pembayaran kurang jika perlu
            });

            // Fungsi untuk menampilkan informasi pembayaran kurang
            function tampilkanInfoPembayaranKurang() {
                var totalBayar = parseInt($('#total_bayar').text().replace(/[^0-9]/g, ''));
                var inputBayar = parseInt($('#input_bayar').val().replace(/\./g, '')) || 0;
                if (inputBayar < totalBayar) {
                    $('#info_pembayaran').text('Bayar masih kurang');
                } else {
                    $('#info_pembayaran').text('');
                }
            }


            // Fungsi untuk menghitung kembalian
            function hitungKembalian() {
                var totalBayar = parseInt($('#total_bayar').text().replace(/[^0-9]/g, ''));
                var inputBayar = parseInt($('#input_bayar').val().replace(/\./g, '')) ||
                    0; // Gunakan 0 jika inputBayar tidak valid
                var kembalian = totalBayar - inputBayar;
                $('#kembalian').val(formatRupiah(kembalian));
            }

            // Event listener untuk tombol hapus
            $(document).on('click', '.delete-row', function() {
                var rowTotal = parseInt($(this).closest('tr').find('.total').text().replace(/[^0-9]/g, ''));
                var totalBayar = parseInt($('#total_bayar').text().replace(/[^0-9]/g, ''));
                var newTotalBayar = totalBayar - rowTotal;
                $('#total_bayar').text(formatRupiah(newTotalBayar));

                var inputBayar = parseInt($('#input_bayar').val().replace(/\./g, '')) || 0;
                var kembalian = inputBayar - newTotalBayar;
                $('#kembalian').val(formatRupiah(kembalian));

                $(this).closest('tr').remove();
            });

            // Event listener untuk perubahan pada input qty
            // Event listener untuk perubahan pada input qty
            $(document).on('input', '.qty', function() {
                var qty = $(this).val();
                var hargaBeli = $(this).closest('tr').find('input[name="harga_beli[]"]').val().replace(
                    /\./g, '');
                var total = hargaBeli * qty;
                $(this).closest('tr').find('input[name="total[]"]').val(formatRupiah(total));

                // Hitung total bayar keseluruhan
                var totalBayar = 0;
                $('#example tbody tr').each(function() {
                    var rowTotal = parseInt($(this).find('input[name="total[]"]').val().replace(
                        /\./g, '') || 0);
                    totalBayar += rowTotal;
                });

                // Tampilkan total bayar di luar tabel
                $('#total_bayar').text(formatRupiah(totalBayar));

                // Hitung kembalian
                hitungKembalian();
            });


            // Ambil nilai awal dari elemen span
            var totalBayarSpan = document.getElementById("total_bayar");
            var totalBayarInput = document.querySelector(".total_bayar");
            totalBayarInput.value = totalBayarSpan.innerText;

            // Update nilai input saat nilai di elemen span berubah
            totalBayarSpan.addEventListener("input", function() {
                totalBayarInput.value = totalBayarSpan.innerText;
            });

            // Update nilai elemen span saat nilai input berubah
            totalBayarInput.addEventListener("input", function() {
                totalBayarSpan.innerText = totalBayarInput.value;
            });


            $(document).on('select2:open', () => {
                document.querySelector('.select2-search__field').focus();
            });
        });
    </script>

    {{-- simpan --}}
    <script>
        $(document).ready(function() {
            $('#form-pembelian').submit(function(e) {
                e.preventDefault();
                const tombolSimpan = $('#btn-save-pembelian')


                // Ambil nilai supplier_id
                var supplierId = $('#supplier_id').val();

                // Validasi jika supplier_id kosong
                if (!supplierId) {
                    // Tampilkan notifikasi SweetAlert
                    Swal.fire({
                        title: 'Error!',
                        text: 'Mohon pilih supplier.',
                        icon: 'error',
                        confirmButtonText: 'OK'
                    });
                    return; // Hentikan proses submit jika validasi gagal
                }

                var formData = new FormData(this); // Menggunakan FormData untuk mengambil data formulir

                $.ajax({
                    url: "{{ route('pembelian.store') }}",
                    type: 'POST',
                    data: formData,
                    processData: false, // Mengabaikan pemrosesan data otomatis
                    contentType: false, // Mengabaikan pengaturan tipe konten otomatis
                    beforeSend: function() {
                        $('form').find('.error-message').remove()
                        tombolSimpan.prop('disabled', true)
                    },
                    success: function(response) {
                        // Men-enable tombol simpan kembali setelah pengiriman berhasil
                        $('#btn-save-pembelian').prop('disabled', false);

                        // Validasi total_bayar > input_bayar
                        var totalBayar = parseInt($('#total_bayar').text().replace(/[^0-9]/g,
                            ''));
                        var inputBayar = parseInt($('#input_bayar').val().replace(/\./g, '')) ||
                            0;
                        if (totalBayar > inputBayar) {
                            // Tampilkan pesan error jika total_bayar > input_bayar
                            Swal.fire({
                                title: 'Error!',
                                text: 'Input bayar harus lebih besar atau sama dengan total bayar.',
                                icon: 'error',
                                confirmButtonText: 'OK'
                            });
                        } else {
                            // Tampilkan pesan sukses dengan SweetAlert
                            Swal.fire({
                                title: 'Sukses!',
                                text: response.message,
                                icon: 'success',
                                confirmButtonText: 'OK'
                            }).then(function() {
                                // Redirect ke halaman lain atau lakukan tindakan lainnya
                                window.location.href =
                                    "{{ route('pembelian.create') }}";
                            });
                        }
                    },
                    complete: function() {
                        tombolSimpan.prop('disabled', false);
                    },
                    error: function(xhr, status, error) {
                        // Men-enable tombol simpan kembali jika terjadi kesalahan
                        $('#btn-save-pembelian').prop('disabled', false);
                        // Tampilkan pesan error dengan SweetAlert
                        Swal.fire({
                            title: 'Error!',
                            text: 'Terjadi kesalahan saat menyimpan data.',
                            icon: 'error',
                            confirmButtonText: 'OK'
                        });
                        console.error(error);
                    }
                });
            });
        });
    </script>
@endpush


@push('css')
    <link rel="stylesheet" href="{{ asset('themplete/back/plugins/select2/css/custom.css') }}">
    <style>
        .select2-container {
            width: 100% !important;

        }
    </style>
@endpush
