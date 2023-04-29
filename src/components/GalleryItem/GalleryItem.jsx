import './GalleryItem.css'
import axios from 'axios';
import { useState } from 'react';

function GalleryItem(props) {

    const [isClicked, setIsClicked] = useState(false);

    const galleryItem = props.item
    
    function handleLikesUpdate(idToUpdate) {
        axios({
            method: 'PUT',
            url: `/gallery/like/${idToUpdate}`
        }).then((response) => {
            props.getGalleryList();
            console.log('Success!')
        }).catch((error) => {
            console.log('The Axios POST request failed.')
        })
    }

    function handleImgTextToggle() {
        (isClicked) ? setIsClicked(false) : setIsClicked(true);
    }
    
    return(
        <div className="gallery-item" key={galleryItem.id} >
            {!isClicked ? <img src={galleryItem.path} onClick={() => {handleImgTextToggle()}}></img> : <div className="description" onClick={() => {handleImgTextToggle()}}><p>{galleryItem.description}</p></div>}
            <button type="submit" onClick={() => {handleLikesUpdate(galleryItem.id)}} className="">Love it!</button>
            <p>{galleryItem.likes} people love this!</p>
        </div>
    )
}

export default GalleryItem;

