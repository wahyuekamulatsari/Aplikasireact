'use strict';

var response = require('./res');
var connection = require('./koneksi');

exports.index = function (req, res) {
    response.ok("Aplikasi REST API ku berjalan!", res)
};

//menampilkan semua data buku
exports.tampilsemuabuku = function (req, res) {
    connection.query('SELECT * FROM buku', function (error, rows, fileds) {
        if (error) {
            console.log(error);
        } else {
            response.ok(rows, res)
        }
    });
};

//menampilkan semua data paket
exports.tampilpaket = function (req, res) {
    connection.query('SELECT * FROM paket', function (error, rows, fileds) {
        if (error) {
            console.log(error);
        } else {
exports.tampilberdasarkanid = function (req, res) {
        });
};



//menampilkan semua data mahasiwa berdasarkan id
exports.tampilberdasarkanid = function (req, res) {
    let id = req.params.id;
    connection.query('SELECT * FROM buku WHERE id = ?', [id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok(rows, res);
            }
        });
};

//menambahkan data mahasiswa
exports.tambahbuku = function (req, res) {
    var id = req.body.id;
    var kode = req.body.kode;
    var judul = req.body.judul;
    var penulis = req.body.penulis;
    var penerbit = req.body.penerbit;
    var tahun = req.body.tahun;
    var jumlah = req.body.jumlah;
    var stock = req.body.stock;
    var rak = req.body.rak;


    connection.query('INSERT INTO buku (id,kode,judul,penulis,penerbit,tahun,jumlah,stock,rak) VALUES(?,?,?)',
        [id,kode,judul,penulis,penerbit,tahun,jumlah,stock,rak],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Berhasil Menambahkan Data!", res)
            }
        });
};

//mengubah data berdasarkan id
exports.ubahbuku = function (req, res) {
    var id = req.body.id;
    var kode = req.body.kode;
    var judul = req.body.judul;
    var penulis = req.body.penulis;
    var penerbit = req.body.penerbit;
    var tahun = req.body.tahun;
    var jumlah = req.body.jumlah;
    var stock = req.body.stock;
    var rak = req.body.rak;

    connection.query('UPDATE buku SET id=?, kode=?, judul=?, penulis=?, penerbit=?, penerbit=?, tahun=?, jumlah=?, stock=?, rak=? WHERE id=?', [id,kode,judul,penulis,penerbit,tahun,jumlah,stock,rak],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Berhasil Ubah Data", res)
            }
        });
}

//Menghapus data berdasarkan id
exports.hapusbuku = function (req, res) {
    var id = req.body.id_mahasiswa;
    connection.query('DELETE FROM buku WHERE id=?',[id],
        function (error, rows, fields) {
            if (error) {
                console.log(error);
            } else {
                response.ok("Berhasil Hapus Data", res)
            }
        }
    )
}



