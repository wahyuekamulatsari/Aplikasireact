import React, { Component } from 'react'
import axios from 'axios'
import { Container, Col, Row, Form, FormGroup, Label, Input, Button, Alert} from 'reactstrap'
//import { Link } from 'react-router-dom'

const api = 'http://localhost:3002'

class TambahComp extends Component {
    constructor(props) {
        super(props)

        this.state = {
            nim: '',
            nama: '',
            jurusan: '',
            response: '',
            display:'none'
        }
    }

    handleChange = (e) => {
        this.setState ({[e.target.name] : e.target.value})
    }
 
    Addmahasiswa = () => {
        axios.post(api+'/tambah', {
            nim: this.state.nim,
            nama: this.state.nama,
            jurusan: this.state.jurusan
        }).then(json => {
            if(json.data.status === 200) {
                this.setState ({
                    response: json.data.values,
                    display: 'block'
                })
            }
        })
    }


    render() {
        return (
            <Container>
                <h4>Formulir Tambah Data</h4>
                <Alert color="succes" style={{display: this.state.display}}>
                    {this.state.response}
                </Alert>

                <Form className="from">
                    <Col>
                        <Label>NIM</Label>
                        <FormGroup>
                            <Row>
                                <Col>
                                    <Input type="text" name="nim" value={this.state.nim} onChange={this.handleChange} placeholder="Masukan NIM" />
                                </Col>
                            </Row>
                        </FormGroup>

                        <Label>NAMA</Label>
                        <FormGroup>
                            <Row>
                                <Col>
                                    <Input type="text" name="nama" value={this.state.nama} onChange={this.handleChange} placeholder="Masukan Nama" />
                                </Col>
                            </Row>
                        </FormGroup>

                        <Label>JURUSAN</Label>
                        <FormGroup>
                            <Row>
                                <Col>
                                    <Input type="text" name="jurusan" value={this.state.jurusan} onChange={this.handleChange} placeholder="Masukan Jurusan" />
                                </Col>
                            </Row>
                        </FormGroup>

                        <FormGroup>
                            <Row>
                                <Col>
                                    <Button type="button" onClick={this.Addmahasiswa}>Simpan</Button>
                                </Col>
                            </Row>
                        </FormGroup>



                    </Col>

                </Form>
            </Container>
        )
    }
}

export default TambahComp;