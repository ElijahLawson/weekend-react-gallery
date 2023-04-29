import GalleryItem from './GalleryItem/GalleryItem'
import './GalleryList.css';

function GalleryList(props) {

    const galleryList = props.galleryList;

    return(
        <div className='grid grid-cols-4 gap-4'>
            {galleryList.map((item) => {
                return (
                    <GalleryItem
                        key={item.id}
                        item={item}
                        getGalleryList={props.getGalleryList}
                        book = {props.book}
                    />
                )
            })}
        </div>
    )

}

export default GalleryList;