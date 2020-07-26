import React from 'react'
//import Blog from './Blog'
import Produk from '../Class/Produk';

const Home = () => {
    return <div><h1>Ini adalah Halaman Utama</h1></div>
    return <div>
        <Blog
            tanggal="15 juni 2020"
            judul=" Teknologi Blockchain"
            summary=" Generate Lorem Ipsum placeholder text for use in your graphic"
        />
        <Blog
            tanggal="16 juni 2020"
            judul=" Teknologi Internet of Things"
            summary=" Generate Lorem Ipsum placeholder text for use in your graphic"
        />
        <Blog
            tanggal="17 juni 2020"
            judul=" Teknologi Blockchain"
            summary=" Generate Lorem Ipsum placeholder text for use in your graphic"
        />
    </div>
}

export default Home;