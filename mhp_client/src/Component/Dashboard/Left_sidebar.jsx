import React, { useEffect } from 'react'
import { useState } from 'react';
import { Link, useLocation } from 'react-router-dom'
import './dashboard_sidebar.css'

export default function Left_sidebar(props) {

  const [doctorStorageData, setdoctorStorageData] = useState({
    user_type: ''
  });

  useEffect(() => {
    const storageData = JSON.parse(localStorage.getItem('userData'))

    setdoctorStorageData(storageData)

  }, []);
  const location = useLocation();

  console.log("props in sidebar", props)
  const { superAdmin, billingPer, patientPer, employeePer, administrationPer, appointmentPer, doctorPer, doctorSetupPer, appointmentSetupPer, anotomySetup, billingSetupper, historySetupPer, nursePer } = props.permissionDataSend
  return (
    <nav className="sidebar newSidebar sidebar-offcanvas mt-2" id="sidebar">
      <ul className="nav ps ps--active-scrolling-y">
        <li className={`nav-item`}>
          <Link className="nav-link" to="main">
            <i className="icon-grid menu-icon"></i>
            <span className="menu-title">Dashboard</span>
          </Link>
        </li>

        {/* <li className={`nav-item`}>
          <Link className="nav-link" data-toggle="collapse" to="appointment-setup" aria-expanded="false" aria-controls="tables">
            <i className="fa fa-cog menu-icon"></i>
            <span className="menu-title">Appointment Setup</span>
          </Link>
        </li> */}

        {
          appointmentSetupPer &&
          <li className={`nav-item`}>
            <a className="nav-link" data-toggle="collapse" href="#AppointmentSetup" aria-expanded="false" aria-controls="tables">
              <i className="fal fa-cog menu-icon"></i>
              <span className="menu-title">Appt. Setup</span>
              <i className="menu-arrow"></i>
            </a>
            <div className="collapse" id="AppointmentSetup">
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/appointment-all-setup" ? "active-nav" : ""}`}><Link className="nav-link" to="appointment-all-setup">Main</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/diagnosis-procedure-setup" ? "active-nav" : ""}`}><Link className="nav-link" to="diagnosis-procedure-setup">Diagnosis/Procedure</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/radiology-setup" ? "active-nav" : ""}`}><Link className="nav-link" to="radiology-setup">Radiology Setup</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/pathology-setup" ? "active-nav" : ""}`}><Link className="nav-link" to="pathology-setup">Pathology Setup</Link></li>
              </ul>
            </div>
          </li>
        }


        {
          doctorSetupPer &&
          <li className={`nav-item`}>
            <a className="nav-link" data-toggle="collapse" href="#doctors-setup" aria-expanded="false" aria-controls="tables">
              <i className="fal fa-users-cog menu-icon"></i>
              <span className="menu-title">Doctors Setup</span>
              <i className="menu-arrow"></i>
            </a>
            <div className="collapse" id="doctors-setup">
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/doctors-setup" ? "active-nav" : ""}`}> <Link className="nav-link" to="doctors-setup">Doctors</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/doctors-custom-meidicne-setup" ? "active-nav" : ""}`}> <Link className="nav-link" to="doctors-custom-meidicne-setup">Custom Medicine</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/immunisation-setup" ? "active-nav" : ""}`}> <Link className="nav-link" to="immunisation-setup">Immunisation</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/physical-activity-prescription-setup" ? "active-nav" : ""}`}> <Link className="nav-link" to="physical-activity-prescription-setup">Physical Activity</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/reminder-setup" ? "active-nav" : ""}`}> <Link className="nav-link" to="reminder-setup">Reminders</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/care-setup" ? "active-nav" : ""}`}> <Link className="nav-link" to="care-setup">Care Suggestion</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/medication-chart-setup" ? "active-nav" : ""}`}> <Link className="nav-link" to="medication-chart-setup">Medication Chart</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/lab-setup" ? "active-nav" : ""}`}> <Link className="nav-link" to="lab-setup">Lab Setup</Link></li>
              </ul>


              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/doctor-inbox-setup" ? "active-nav" : ""}`}> <Link className="nav-link" to="doctor-inbox-setup">Doctor Inbox Setup</Link></li>
              </ul>

              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/procedure-report-setup" ? "active-nav" : ""}`}> <Link className="nav-link" to="procedure-report-setup">Procedure Report Setup</Link></li>
              </ul>
            </div>
          </li>

        }


        {
          billingSetupper &&
          <li className={`nav-item ${location.pathname === "/billing-setup" ? "active-nav" : ""}`}>
            <Link className="nav-link" data-toggle="collapse" to="billing-setup" aria-expanded="false" aria-controls="tables">
              <i className="fal fa-file-invoice menu-icon"></i>
              <span className="menu-title">Billing Setup</span>
            </Link>
          </li>

        }

        {
          anotomySetup &&
          <li className={`nav-item ${location.pathname === "/anatomy-setup" ? "active-nav" : ""}`}>
            <Link className="nav-link" data-toggle="collapse" to="anatomy-setup" aria-expanded="false" aria-controls="tables">
              <i className="fal fa-person menu-icon"></i>
              <span className="menu-title">Anatomy Setup</span>
            </Link>
          </li>
        }

        {
          historySetupPer &&
          <li className={`nav-item`}>
            <a className="nav-link" data-toggle="collapse" href="#history" aria-expanded="false" aria-controls="form-elements">
              <i className="fal fa-history menu-icon"></i>
              <span className="menu-title">History Setup</span>
              <i className="menu-arrow"></i>
            </a>
            <div className="collapse" id="history">
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/history-setup" ? "active-nav" : ""}`}> <Link className="nav-link" to="history-setup">Cardiovascular</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/ent-setup" ? "active-nav" : ""}`}><Link className="nav-link" to="ent-setup">ENT</Link></li>
              </ul>

              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/cns-one-setup" ? "active-nav" : ""}`}><Link className="nav-link" to="cns-one-setup">CNS Part one</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/cns-two-setup" ? "active-nav" : ""}`}><Link className="nav-link" to="cns-two-setup">CNS Part two</Link></li>
              </ul>

              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/mhe-all-setup" ? "active-nav" : ""}`}><Link className="nav-link" to="mhe-all-setup">Mental Health Main</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/mhe-others-setup" ? "active-nav" : ""}`}><Link className="nav-link" to="mhe-others-setup">Mental Health Others</Link></li>
              </ul>


              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/mre-setup" ? "active-nav" : ""}`}><Link className="nav-link" to="mre-setup">Respiratory</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/gastro-setup" ? "active-nav" : ""}`}><Link className="nav-link" to="gastro-setup">Gastro Intestinal</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/gastro-urinary-setup" ? "active-nav" : ""}`}><Link className="nav-link" to="gastro-urinary-setup">Genito Urinary</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/general-examination-setup" ? "active-nav" : ""}`}><Link className="nav-link" to="general-examination-setup">General</Link></li>
              </ul>
              {/* <ul className="nav flex-column sub-menu">
      <li className="nav-item "  >
        <a className="nav-link navbar-toggler" data-bs-toggle="collapse" data-bs-target="#eyePart" aria-controls="eyePart" aria-expanded="false">
          <span className="menu-title">Eye</span>
          <i className="menu-arrow"></i>
        </a>
        <div className="collapse" id="eyePart">
          <ul className="nav flex-column sub-menu">
            <li className={`nav-item`}><Link className="nav-link" to="eye-examination-one-setup">Part one</Link></li>
            <li className={`nav-item`}><Link className="nav-link" to="eye-examination-two-setup">part two</Link></li>
          </ul>
        </div>
      </li>
    </ul> */}

              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/eye-examination-one-setup" ? "active-nav" : ""}`}><Link className="nav-link" to="eye-examination-one-setup">Eye part one</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/eye-examination-two-setup" ? "active-nav" : ""}`}><Link className="nav-link" to="eye-examination-two-setup">Eye part two</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/musculo-skeletal-examination-setup" ? "active-nav" : ""}`}><Link className="nav-link" to="musculo-skeletal-examination-setup">Musculo Skeletal</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/neurological-examination-setup" ? "active-nav" : ""}`}><Link className="nav-link" to="neurological-examination-setup">Neurological</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/womens-health-setup" ? "active-nav" : ""}`}><Link className="nav-link" to="womens-health-setup">Women's Health</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/skin-dermatology-setup" ? "active-nav" : ""}`}><Link className="nav-link" to="skin-dermatology-setup">Skin Dermatology</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/mlh-setup" ? "active-nav" : ""}`}><Link className="nav-link" to="mlh-setup">All History</Link></li>
              </ul>
            </div>
          </li>

        }



        {
          appointmentPer &&
          <li className={`nav-item`}>
            <a className="nav-link" data-toggle="collapse" href="#appointment" aria-expanded="false" aria-controls="form-elements">
              <i className="fal fa-calendar-check menu-icon"></i>
              <span className="menu-title">Appointment</span>
              <i className="menu-arrow"></i>
            </a>
            <div className="collapse" id="appointment">
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/appointment" ? "active-nav" : ""}`}><Link className="nav-link" to="appointment">Appointment Schedule</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/patient-card" ? "active-nav" : ""}`}><Link className="nav-link" to="patient-card">Patient Card</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/appointment-list" ? "active-nav" : ""}`}><Link className="nav-link" to="appointment-list">Appointment list</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/doctor-list" ? "active-nav" : ""}`}><Link className="nav-link" to="doctor-list">Doctor list</Link></li>
              </ul>

              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/appointment-status" ? "active-nav" : ""}`}><Link className="nav-link" to="appointment-status">Appointment Status</Link></li>
              </ul>
            </div>
          </li>

        }

        {
          doctorPer &&
          <li className={`nav-item`}>
            <a className="nav-link" data-toggle="collapse" href="#doctors" aria-expanded="false" aria-controls="tables">
              <i className="fal fa-user-md menu-icon"></i>
              <span className="menu-title ">Doctor</span>
              <i className="menu-arrow"></i>
            </a>
            <div className="collapse" id="doctors">
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/doctors" ? "active-nav" : ""}`}> <Link className="nav-link" to="doctors">All doctors</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/new-doctors" ? "active-nav" : ""}`}> <Link className="nav-link" to="new-doctors">Add doctor</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/doctors-inbox" ? "active-nav" : ""}`}> <Link className="nav-link" to="doctors-inbox">Doctor's Inbox</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/doctors-chamber" ? "active-nav" : ""}`}> <Link className="nav-link" to="doctors-chamber">Doctor Chamber</Link></li>
              </ul>
              {/* {
                doctorStorageData.user_type == 'Doctor' &&
                <ul className="nav flex-column sub-menu">
                  <li className={`nav-item ${location.pathname === "/great-doc" ? "active-nav" : ""}`}><Link className="nav-link" to="great-doc">Great Doc</Link></li>
                </ul>
              } */}
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/great-doc" ? "active-nav" : ""}`}><Link className="nav-link" to="great-doc">Great Doc</Link></li>
              </ul>
            </div>
          </li>
        }

        {
          employeePer &&
          <li className={`nav-item`}>
            <a className="nav-link" data-toggle="collapse" href="#employee" aria-expanded="false" aria-controls="tables">
              <i className="fal fa-users menu-icon"></i>
              <span className="menu-title">Employee</span>
              <i className="menu-arrow"></i>
            </a>
            <div className="collapse" id="employee">
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/employee" ? "active-nav" : ""}`}> <Link className="nav-link" to="employee">All Employee</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/add-employee" ? "active-nav" : ""}`}> <Link className="nav-link" to="add-employee">Add employee</Link></li>
              </ul>
            </div>
          </li>
        }

        {
          nursePer &&
          <>
            <li className={`nav-item`}>
              <a className="nav-link" data-toggle="collapse" href="#lab_panel" aria-expanded="false" aria-controls="tables">
                {/* <i className="fal fa-user-nurse menu-icon"></i> */}
                <i class=" fal fa-solid fa-flask menu-icon"></i>
                <span className="menu-title">Lab Module</span>
                <i className="menu-arrow"></i>
              </a>

              <div className="collapse" id="lab_panel">
                <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/lab-module-new" ? "active-nav" : ""}`}> <Link className="nav-link" to="lab-module-new">Lab Panel </Link></li>
                <li className={`nav-item ${location.pathname === "" ? "active-nav" : ""}`}> <Link className="nav-link" to="#">Lab Technicitian </Link></li>
                <li className={`nav-item ${location.pathname === "" ? "active-nav" : ""}`}> <Link className="nav-link" to="#">Billing </Link></li>
                <li className={`nav-item ${location.pathname === "" ? "active-nav" : ""}`}> <Link className="nav-link" to="#">Report Delivery </Link></li>
                </ul>
              </div>
              {/* <div className="collapse" id="lab_panel">
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/patient-vital-reading" ? "active-nav" : ""}`}> <Link className="nav-link" to="patient-vital-reading">Vital Reading</Link></li>
                <li className={`nav-item ${location.pathname === "/ipd-patient" ? "active-nav" : ""}`}> <Link className="nav-link" to="ipd-patient">IPD Patient</Link></li>
                <li className={`nav-item ${location.pathname === "/lab-module-new" ? "active-nav" : ""}`}> <Link className="nav-link" to="lab-module-new">lab Module </Link></li>
              </ul>


            </div> */}
            </li>








            <li className={`nav-item`}>
              <a className="nav-link" data-toggle="collapse" href="#nurse" aria-expanded="false" aria-controls="tables">
                <i className="fal fa-user-nurse menu-icon"></i>
                <span className="menu-title">Nurse</span>
                <i className="menu-arrow"></i>
              </a>

              <div className="collapse" id="nurse">
                <ul className="nav flex-column sub-menu">
                  <li className={`nav-item ${location.pathname === "/patient-vital-reading" ? "active-nav" : ""}`}> <Link className="nav-link" to="patient-vital-reading">Vital Reading</Link></li>
                  <li className={`nav-item ${location.pathname === "/ipd-patient" ? "active-nav" : ""}`}> <Link className="nav-link" to="ipd-patient">IPD Patient</Link></li>
                </ul>
              </div>

            </li>


          </>
        }

        {
          patientPer &&
          <li className={`nav-item`}>
            <a className="nav-link" data-toggle="collapse" href="#patients" aria-expanded="false" aria-controls="tables">
              <i className="fal fa-users-medical menu-icon"></i>
              <span className="menu-title">Patients</span>
              <i className="menu-arrow"></i>
            </a>
            <div className="collapse" id="patients">
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/patients" ? "active-nav" : ""}`}> <Link className="nav-link" to="patients">All Patients</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/newpatient" ? "active-nav" : ""}`}> <Link className="nav-link" to="newpatient">Add Patients</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/lab-module" ? "active-nav" : ""}`}> <Link className="nav-link" to="lab-module">Lab Module</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/vital-sign-setup" ? "active-nav" : ""}`}> <Link className="nav-link" to="vital-sign-setup">Vital Sign Setup</Link></li>
              </ul>

              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/allergy-setup" ? "active-nav" : ""}`}> <Link className="nav-link" to="allergy-setup">Allergy Setup</Link></li>
              </ul>
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/ehr" ? "active-nav" : ""}`}> <Link className="nav-link" to="ehr">EHR</Link></li>
              </ul>
            </div>

          </li>

        }


        {
          administrationPer &&
          <li className={`nav-item`}>
            <a className="nav-link" data-toggle="collapse" href="#addnewuser" aria-expanded="false" aria-controls="tables">
              <i className="fal fa-user-cog menu-icon"></i>
              <span className="menu-title">Administration</span>
              <i className="menu-arrow"></i>
            </a>
            <div className="collapse" id="addnewuser">
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/sign-up" ? "active-nav" : ""}`}> <Link className="nav-link" to="sign-up">User Creation</Link></li>
              </ul>

              {
                superAdmin &&
                <ul className="nav flex-column sub-menu">
                  <li className={`nav-item ${location.pathname === "/sign-up-admin" ? "active-nav" : ""}`}> <Link className="nav-link" to="sign-up-admin">Admin Registration</Link></li>
                </ul>
              }


              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/feature-permission" ? "active-nav" : ""}`}> <Link className="nav-link" to="feature-permission">Feature permission</Link></li>
              </ul>

              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/user-role-system" ? "active-nav" : ""}`}> <Link className="nav-link" to="user-role-system">User Role Managment</Link></li>
              </ul>
            </div>

          </li>

        }

        {
          billingPer &&
          <li className={`nav-item`}>
            <a className="nav-link" data-toggle="collapse" href="#billing" aria-expanded="false" aria-controls="tables">
              <i className="fal fa-file-invoice-dollar menu-icon"></i>
              <span className="menu-title">Billing & Invoice</span>
              <i className="menu-arrow"></i>
            </a>
            <div className="collapse" id="billing">
              <ul className="nav flex-column sub-menu">
                <li className={`nav-item ${location.pathname === "/billingPatient " ? "active-nav" : ""}`}> <Link className="nav-link" to="/billingPatient">Billing & Invoice</Link></li>

              </ul>

            </div>

          </li>
        }
      </ul>
    </nav>
  )
}
