import GalleryItem from '../GalleryItem/GalleryItem'
import './GalleryList.css';

function GalleryList(props) {

    const galleryList = props.galleryList;
    console.log(galleryList);
    return(
        <div className='.container'>
            {galleryList.map((item) => {
                return (
                    <GalleryItem
                        item={item}
                        getGalleryList={props.getGalleryList}
                    />
                )
            })}
        </div>
    )

}

export default GalleryList;