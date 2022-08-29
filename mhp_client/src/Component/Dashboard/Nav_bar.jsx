import React, { useEffect, useState } from 'react'
import { useNavigate, Link } from 'react-router-dom';
import logo from '../../Images/MHPNavLogo.png';
import menu from '../../Images/menu-icon-top.png';
import mhp_logo from '../../Images/plus-logo.png'
import user_logo from './Icons/user.png';
import patient from '../../Images/PatientNav.png';
import doc from '../../Images/DoctorNav.png';
import greatDoc from '../../Images/Great DocNav.png';
import bill from '../../Images/BillingNav.png';
import employee from '../../Images/EmployeeNav.png';
import appointment from '../../Images/AppointmentNav.png';
// drawer
import Box from '@mui/material/Box';
import SwipeableDrawer from '@mui/material/SwipeableDrawer';
import axios from 'axios';
// drawer
export default function Nav_bar() {

  //drawer
  const [state, setState] = React.useState(false);

  const toggleDrawer = (open) => (event) => {
    if (
      event &&
      event.type === 'keydown' &&
      (event.key === 'Tab' || event.key === 'Shift')
    ) {
      return;
    }

    setState(open);
  };


  //drawer
  const [doctorData, setDoctorData] = useState('')

  const [userInfo, setuserInfo] = useState();
  useEffect(() => {
    const storageData = localStorage.getItem('userData')
    const storageUser = JSON.parse(storageData)
    setuserInfo(storageUser)
    if (storageUser.user_type === "Doctor") {
      axios.get(`/single-doctor/${storageUser.user_id}`).then(res => {

        if (res.data.status === 200) {
          setDoctorData(res.data.doctor);
        }

      })
    }

  }, [])
  let navigate = useNavigate();
  function logout() {
    localStorage.clear();
    navigate('/');
    window.location.reload(true);
  }
  const fixedModules = [
    { name: "Patient", route: "/patients", icon: patient },
    { name: "Doctor", route: "/doctors", icon: doc },
    { name: "Employee", route: "/employee", icon: employee },
    { name: "Billing", route: "/billingPatient", icon: bill },
    { name: "Appointment", route: "/main", icon: appointment },
    { name: "Great Doc", route: "/great-doc", icon: greatDoc },
  ]
  const [modules, setModules] = useState([
    { name: "Patient", route: "/patients", icon: patient },
    { name: "Doctor", route: "/doctors", icon: doc },
    { name: "Employee", route: "/employee", icon: employee },
    { name: "Billing", route: "/billingPatient", icon: bill },
    { name: "Appointment", route: "/main", icon: appointment },
    { name: "Great Doc", route: "/great-doc", icon: greatDoc },
  ])
  const storageData = JSON.parse(localStorage.getItem('userData'))
  return (
    <nav className="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
      <div className="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
        <Link className="navbar-brand brand-logo" to="/main"><img src={logo} className="mr-2" alt="logo" /></Link>
        <Link className="navbar-brand brand-logo-mini" to="/main"><img src={mhp_logo} alt="logo" /></Link>
      </div>
      <div className="navbar-menu-wrapper d-flex align-items-center justify-content-end">
        <button className="navbar-toggler nav-toggle-btn navbar-toggler align-self-center" data-toggle="minimize">
          <span className="icon-menu" />
        </button>
        <ul className="navbar-nav mr-lg-2">
          <li className="nav-item nav-search d-none d-lg-block">
            {/* <div className="input-group">
                <div className="input-group-prepend hover-cursor" id="navbar-search-icon">
                  <span className="input-group-text" id="search">
                    <i className="icon-search" />
                  </span>
                </div>
                <input type="text" className="form-control" id="navbar-search-input" placeholder="Search now" aria-label="search" aria-describedby="search" />
              </div> */}
          </li>
        </ul>
        <ul className="navbar-nav navbar-nav-right">
          <li className="nav-item">
            <Link to="/all-setup" className='nav-link'>
              <i className="fad fa-cogs"></i>
            </Link>
          </li>
          <li className="nav-item dropdown">
            <a className="nav-link count-indicator dropdown-toggle" id="notificationDropdown" href="#" data-toggle="dropdown">
              <i className="icon-bell mx-0" />
              <span className="count" />
            </a>
            <div className="dropdown-menu dropdown-menu-right navbar-dropdown preview-list" aria-labelledby="notificationDropdown">
              <p className="mb-0 font-weight-normal float-left dropdown-header">Notifications</p>
              <a className="dropdown-item preview-item">
                <div className="preview-thumbnail">
                  <div className="preview-icon bg-success">
                    <i className="ti-info-alt mx-0" />
                  </div>
                </div>
                <div className="preview-item-content">
                  <h6 className="preview-subject font-weight-normal">Application Error</h6>
                  <p className="font-weight-light small-text mb-0 text-muted">
                    Just now
                  </p>
                </div>
              </a>
              <a className="dropdown-item preview-item">
                <div className="preview-thumbnail">
                  <div className="preview-icon bg-warning">
                    <i className="ti-settings mx-0" />
                  </div>
                </div>
                <div className="preview-item-content">
                  <h6 className="preview-subject font-weight-normal">Settings</h6>
                  <p className="font-weight-light small-text mb-0 text-muted">
                    Private message
                  </p>
                </div>
              </a>
              <a className="dropdown-item preview-item">
                <div className="preview-thumbnail">
                  <div className="preview-icon bg-info">
                    <i className="ti-user mx-0" />
                  </div>
                </div>
                <div className="preview-item-content">
                  <h6 className="preview-subject font-weight-normal">New user registration</h6>
                  <p className="font-weight-light small-text mb-0 text-muted">
                    2 days ago
                  </p>
                </div>
              </a>
            </div>
          </li>
          <li className="nav-item nav-profile dropdown">
            <a className="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
              {
                doctorData ?
                  <img alt="" data-bs-toggle="tooltip" title={storageData.name}  src={`${global.img_url}/doctors/images/${doctorData.dr_images}`} />
                  :
                  <img data-bs-toggle="tooltip" title={storageData.name} src={user_logo} alt="profile" />
              }

            </a>
            <div className="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
              <Link to="user-profile" className="dropdown-item">
                <i className="ti-user text-primary" />
                Profile
              </Link>
              <Link to="password_change" className="dropdown-item">
                <i className="ti-key text-primary" />
                Change password
              </Link>
              <Link to="main" className="dropdown-item">
                <i className="ti-dashboard text-primary" />
                Dashboard
              </Link>
              <a onClick={logout} className="dropdown-item">
                <i className="ti-power-off text-primary" />
                Logout
              </a>
            </div>
          </li>
          <li className='nav-item nav-menu-icon' onClick={toggleDrawer(true)}>
            <img className='img-fluid' src={menu} alt="" />
          </li>
        </ul>
        <button className="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
          <span className="icon-menu" />
        </button>
      </div>
      <div>
        <SwipeableDrawer
          anchor={"right"}
          open={state}
          onClose={toggleDrawer(false)}
          onOpen={toggleDrawer(true)}
        >
          <div style={{ width: "380px" }}>
            <i style={{ fontSize: "18px", cursor: "pointer" }} onClick={toggleDrawer(false)} className="float-right fal fa-times m-2"></i>
            <div className="nav-menu-container">
              <div className="mx-3">
                <input type="text" onChange={(e) => {
                  const data = modules.filter(item => item.name.toLowerCase().match(e.target.value.toLowerCase()));
                  e.target.value.length > 0 ?
                    setModules(data) : setModules(fixedModules)
                }} className="form-control form-control-sm" placeholder="Search modules" />
              </div>
              <div className="nav-menu-content mt-3 mx-4">
                <h6>All modules</h6>
                <div className="row">
                  {
                    modules.map((item, i) => <div key={i} className="col-6 module-container">
                      <Link to={item.route}>
                        <span className="m-2"><img src={item.icon} alt="" className="img-fluid me-2" /> {item.name}</span>
                      </Link>
                    </div>)
                  }
                </div>
              </div>
            </div>
          </div>
        </SwipeableDrawer>
      </div>
    </nav>
  )
}
