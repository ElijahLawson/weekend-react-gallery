import axios from 'axios';
import { useState } from 'react';

function GalleryItem(props) {

    const [isClicked, setIsClicked] = useState(false);

    const galleryItem = props.item
    function handleLikesUpdate(idToUpdate) {
        axios({
            method: 'PUT',
            url: `/${props.book}/like/${idToUpdate}`
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
        <div className="gallery-item border-8 border-slate-200 grid items-center" key={galleryItem.id}>
            {!isClicked ? <img className=" m-auto row-span-2 h-[250px] w-[250px]" src={galleryItem.path} onClick={() => {handleImgTextToggle()}}></img> :
             <div className="flex h-48" onClick={() => {handleImgTextToggle()}}><p className="m-auto">{galleryItem.description}</p></div>}
            {!isClicked ? <button className="text-white bg-gray-800 hover:bg-gray-900 font-medium rounded-full text-sm px-5 py-2.5 mb-2 dark:bg-gray-800 dark:hover:bg-gray-700 dark:focus:ring-gray-700 dark:border-gray-700 m-auto mt-4" type="submit" 
                                onClick={() => {handleLikesUpdate(galleryItem.id)}}>🤍</button> : ''}
            <p>{galleryItem.likes} people love this!</p>
        </div>
    )
}

export default GalleryItem;