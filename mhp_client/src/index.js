import React from 'react';
import ReactDOM from 'react-dom';
import './index.css';
import App from './App';
import reportWebVitals from './reportWebVitals';
import {BrowserRouter} from 'react-router-dom'
import './imageUrl'
import axios from 'axios';

// local
 axios.defaults.baseURL = "http://127.0.0.1:8000/api";
 
// dev live
 //axios.defaults.baseURL = "https://dev.macrohealthplus.org/mhp_server/public/api";


// greatdoc live
 //axios.defaults.baseURL = "http://greatdoc.org/mhp_server/public/api";

// live 
 //axios.defaults.baseURL = "https://macrohealthplus.org/mhp_server/public/api";
// axios.defaults.baseURL = "https://dev.macrohealthplus.org/test/public/api"
// 

ReactDOM.render(
  
  // <React.StrictMode>
  //   <BrowserRouter>
  //     <App />
  //   </BrowserRouter>
  // </React.StrictMode>,
  <BrowserRouter>
    <App />
  </BrowserRouter>,
  document.getElementById('root')
);

reportWebVitals();

