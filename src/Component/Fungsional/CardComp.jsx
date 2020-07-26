import React from 'react';
import { Link } from 'react-router-dom';

import {
    Button, Card,
    CardImg, CardText, CardBody,
    CardTitle, CardSubtitle
} from 'reactstrap';

function CardComp(props) {
        return (
            <div>
            <Card>
                <CardImg top width="100%" src="https://placeimg.com/640/480/any" alt="Card image cap" />
                <CardBody>
                    <CardTitle>{props.judul}</CardTitle>
                    <CardSubtitle>{props.tanggal}</CardSubtitle>
                    <CardText>Some quick example text to build on the card title and make up the bulk of the card's content.</CardText>
                    <Button>
                        <Link to=
                            {
                                {
                                    pathname: `/detail/${props.id}`,
                                    state: {
                                        judul: props.judul,
                                        tanggal: props.tanggal
                                    }
                                }
                            }>Detail
                        </Link>
                    </Button>
                    <CardTitle>{props.judul}</CardTitle>
                    <CardSubtitle>{props.tanggal}</CardSubtitle>
                    <CardText>Some quick example text to build on the card title and make up the bulk of the card's content.</CardText>
                    <Button>
                        <Link to=
                            {
                                {
                                    pathname: `/detail/${props.id}`,
                                    state: {
                                        judul: props.judul,
                                        tanggal: props.tanggal
                                    }
                                }
                            }>Detail
                        </Link>
                    </Button>
                </CardBody>
            </Card>
            </div>
        )
    }

export default CardComp;
