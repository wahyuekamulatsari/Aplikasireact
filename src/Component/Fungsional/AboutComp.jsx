import React from 'react'
import { Jumbotron, Button, Container, Row, Col } from 'reactstrap';
import CardComp from './CardComp'


function AboutComp() {
 
  return (
    <div>
      <Jumbotron>
        <h1 className="display-3">Tentang Kami </h1>
        <p className="lead"></p>
        <hr className="my-2" />
        <p>It uses utility classes for typography and spacing to space content out within the larger container.</p>
        <p className="lead">
          <Button color="primary">Learn More</Button>
        </p>
      </Jumbotron>

      <Container>
        <Row>
          <Col><CardComp id="1" judul = "Belajar React" tanggal="20/06/2020"/></Col>
          <Col><CardComp id="2" judul = "Belajar Laravel" tanggal="21/06/2020"/></Col>
          <Col><CardComp id="3" judul = "Belajar Bootstrap" tanggal="22/06/2020"/></Col>
          <Col><CardComp id="1" judul = "Belajar React" tanggal="20/06/2020"/></Col>
          <Col><CardComp id="2" judul = "Belajar Laravel" tanggal="21/06/2020"/></Col>
          <Col><CardComp id="3" judul = "Belajar Bootstrap" tanggal="22/06/2020"/></Col>
        </Row>
      </Container>
    </div>
  )
}

export default AboutComp;