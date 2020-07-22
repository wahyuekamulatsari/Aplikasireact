import React, {useState} from 'react';

import { BrowserRouter, Route, Switch } from 'react-router-dom';
import NavbarComp from './Component/Fungsional/NavbarComp';
import HomePage from './Component/Fungsional/HomePage';
import AboutComp from './Component/Fungsional/AboutComp';
import ListComp from './Component/Class/ListComp';
import TambahComp from './Component/Class/TambahComp';
import EditComp from './Component/Class/EditComp';
import KelasComp from './Component/Hooks/Class/KelasComp';
import HooksComp from './Component/Hooks/Functional/HooksComp';
import HooksUseEffect from './Component/Hooks/Functional/HooksUseEffects';
import { CartContext } from './CartContext';
import ProductComp from './Component/Fungsional/ProductComp';

//import DetailComp from './Component/Fungsional/DetailComp';
//import BootstrapComp from './Component/Class/BootstrapComp';
//import Kursus from './Component/Class/state';
//import Parent from './Component/Class/Parent';
//import logo from './logo.svg';
//import Home from './Component/Fungsional/Home';
//import Beranda from './Component/Class/Beranda';
//import './App.css';
//import Hitung from './Component/Class/state';

const App = () => {

  const[value, setValue] = useState(10)
  
  return (
    <BrowserRouter>
    <CartContext.Provider value={{value, setValue}}>
      <NavbarComp />
      <Switch>
        <Route exact path="/" component={HomePage} />
        <Route exact path="/about" component={AboutComp} />
        <Route exact path="/mahasiswa" component={ListComp} />
        <Route exact path="/mahasiswa/tambah" component={TambahComp} />
        <Route exact path="/mahasiswa/edit" component={EditComp} />
        <Route exact path="/kelas" component={KelasComp} />
        <Route exact path="/hooks" component={HooksComp} />
        <Route exact path="/useeffects" component={HooksUseEffect} />
        <Route exact path="/produk" component={ProductComp} />
        {/*<Route exact path="/detail/:id" component={DetailComp}/>*/}
      </Switch>
      </CartContext.Provider>
    </BrowserRouter>
  );
}

export default App;
