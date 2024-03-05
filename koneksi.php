<?php
$koneksi = mysqli_connect("localhost", "root", "", "kamus_sunda");
if($koneksi) {
// echo "Berhasil konek ke database";
} else {
echo "Gagal koneksi";
}
