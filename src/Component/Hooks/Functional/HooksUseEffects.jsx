import React, { useEffect, useState } from 'react'
import axios from 'axios';
import { Table, Container, Button, NavLink } from 'reactstrap'


const api = 'http://localhost:3002'

function HooksUseEffects () {

    const [mahasiswa, setMahasiswa] = useState([])

    useEffect(() => {
        console.log("Memanggil Use Effect")
        axios.get(api + '/tampil').then(res => {
          setMahasiswa  (res.data.values) 
        })
     }, [])

        return (
            <Container>
                <h2>Data Mahasiswa</h2>

                <NavLink href="/mahasiswa/tambah"><Button color="blue">Tambah Data</Button></NavLink>
                <Table className="table-bordered">
                    <thead>
                        <tr>
                            <th>NIM</th>
                            <th>Nama</th>
                            <th>Jurusan</th>
                            <th>Tindakan</th>
                        </tr>
                    </thead>

                    <tbody>
                        {mahasiswa.map(mahasiswa =>
                            <tr key={mahasiswa.id_mahasiswa}>
                                <td>{mahasiswa.nim}</td>
                                <td>{mahasiswa.nama}</td>
                                <td>{mahasiswa.jurusan}</td>
                                <td>
                                    <Button>Ubah</Button>
                                    <span> || </span>
                                    <Button>Simpan</Button>
                                </td>
                            </tr>
                        )}
                    </tbody>
                </Table>
            </Container>
        )
    }

export default HooksUseEffects;
