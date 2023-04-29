import GalleryList from '../GalleryList/GalleryList.jsx';
import Header from '../Header/Header.jsx';
import { useState, useEffect } from 'react';
import axios from 'axios';

function WayOfKings() {

    useEffect(() => {
        getGalleryList();
      }, [])

      const [galleryList, setGalleryList] = useState([]);
    
      function getGalleryList() {
        axios({
          method: 'GET',
          url: '/wayOfKings'
        }).then((response) => {
          setGalleryList(response.data)
        }).catch((error) => {
          console.log('The GET request for gallery from server failed.')
          console.log(error);
        })
      }

    return (
        <GalleryList galleryList={galleryList} getGalleryList={getGalleryList} book={'wayOfKings'}/>
    )
}

export default WayOfKings;