import {Link, Outlet} from "react-router-dom"
import Header from "../Header/Header";
import NavBar from "../NavBar/NavBar";

function Layout() {
    return (
        <>
            <Header />
            <NavBar />
            <Outlet />
        </>
    )
}

export default Layout;