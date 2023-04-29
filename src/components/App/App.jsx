import React from 'react';
import axios from 'axios';
import './App.css';
import NavBar from '../NavBar/NavBar';
import Layout from '../Layout/Layout';
import Mistborn from '../Mistborn/Mistborn';
import Home from '../Home/Home';
import Elantris from '../Elantris/Elantris';
import WayOfKings from '../WayOfKings/WayOfKings';
import { useState, useEffect } from 'react';
import {Routes, Route} from 'react-router-dom';

function App() {

    return (
      <div className="App">
        <main>
          <Routes>
            <Route element={<Layout />}>
              <Route path="/" element={<Home />} />
              <Route path='/mistborn' element={<Mistborn />} />
              <Route path='/wayofkings' element={<WayOfKings />} />
              <Route path='/elantris' element={<Elantris />} />
            </Route>
        </Routes>
        </main>
      </div>
    );
}

export default App;
