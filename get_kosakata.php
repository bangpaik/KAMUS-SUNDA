<?php
include "koneksi.php";
$sql = "SELECT * FROM tb_kosakata";
$result = $koneksi->query($sql);
if ($result->num_rows > 0) {
    $res['is_success'] = true;
    $res['statusCode'] = 200;
    $res['message'] = "Berhasil Menampilkan Kosakata";
    $res['data'] = array();
    $res['status'] = 200;
    while ($row = $result->fetch_assoc()) {
        $res['data'][] = $row;
    }
    http_response_code(200); // Set status code 200 OK
} else {
    $res['is_success'] = false;
    $res['message'] = "Gagal Menampilkan Kosakata";
    $res['data'] = null;
    http_response_code(404); // Set status code 404 Not Found
}
echo json_encode($res);
