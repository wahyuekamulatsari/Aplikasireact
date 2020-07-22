import React from 'react'
import {
    Button,
    Card,
    CardImg,
    CardText,
    Col,
    CardBody,
    CardTitle, CardSubtitle
} from 'reactstrap'
import { CartContext } from '../../CartContext';
import {useContext} from 'react';


function RowProduct() {

    const {value, setValue} = useContext (CartContext)
    return (
        <Col>
            <Card>
                <CardImg top width="100%" src="https://placeimg.com/640/480/any" alt="Card image cap" />
                <CardBody>
                    <CardTitle> Judul</CardTitle>
                    <CardSubtitle>descripsi</CardSubtitle>
                    <CardText>Some quick example text to build on the card title and make up the bulk of the card's content.</CardText>
                   
                    <Button onClick={()=>setValue(value+1)}>Tambah Keranjang</Button>

                </CardBody>
            </Card>
        </Col>
    )
}

export default RowProduct;