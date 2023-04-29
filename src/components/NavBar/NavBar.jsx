import {Link} from 'react-router-dom';
function NavBar() {

    return(
        <div className="w-auto bg-slate-200 p-4 -mt-4 mb-6 text-2xl">
            <Link to='/' className="mr-7 hover:underline focus:text-lg">Home</Link>
            <Link to='/wayofkings' className="mr-7 hover:underline focus:text-lg">The Way of Kings</Link>
            <Link to='/mistborn' className="mr-7 hover:underline focus:text-lg">Mistborn</Link>
            <Link to='/elantris' className="hover:underline focus:text-lg">Elantris</Link>
        </div>
    )
}

export default NavBar;