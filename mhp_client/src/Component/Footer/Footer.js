import React from 'react';
import { Link } from 'react-router-dom';
import './Footer.css'
const Footer = () => {
    return (
        <div className='main-footer mt-2'>
            <div className="footer-content">
                <strong>Copyright &copy; 2021-2022
                    <Link to={'/main'}>MacroHealthPlus</Link>
                </strong>
                <p className='d-inline'> All Rights Reserved. Developed by <a href="https://zaimahtech.com/">Zaimah Technologies Ltd</a></p>
                <div className="d-inline-block float-end">
                    <b>Version </b>
                    <p className="d-inline"> 1.0.5 Last update:30-05-2022</p>
                </div>
            </div>
        </div>
    );
};

export default Footer;