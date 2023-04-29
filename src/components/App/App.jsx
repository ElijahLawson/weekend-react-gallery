import React from 'react';
import axios from 'axios';
import './App.css';
import GalleryList from '../GalleryList/GalleryList.jsx';
import GalleryItem from '../GalleryItem/GalleryItem';
import { useState, useEffect } from 'react';

function App() {

  useEffect(() => {
    getGalleryList();
  }, [])

  const [galleryList, setGalleryList] = useState([]);

  function getGalleryList() {
    axios({
      method: 'GET',
      url: '/gallery'
    }).then((response) => {
      console.log(response);
      setGalleryList(response.data)
    }).catch((error) => {
      console.log('The GET request for gallery from server failed.')
      console.log(error);
    })
  }

    return (
      <div className="App">
        <header className="App-header">
          <h1 className="App-title">The Symbols of Allomancy</h1>
        </header>

        <GalleryList galleryList={galleryList} getGalleryList={getGalleryList} />
      </div>
    );
}

export default App;
