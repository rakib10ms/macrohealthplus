import React, { useState } from 'react';
import './HistoryAndExamination.css';
import clinic1 from "../../../../Images/clinical1.png";
import clinic2 from "../../../../Images/clinical2.png";
import clinic3 from "../../../../Images/clinical3.png";
import clinic4 from "../../../../Images/clinical4.png";
import clinic5 from "../../../../Images/clinical5.png";
import clinic6 from "../../../../Images/clinical6.png";
import clinic7 from "../../../../Images/clinical7.png";
import clinic8 from "../../../../Images/clinical8.png";
import clinic9 from "../../../../Images/clinical9.png";
import clinic10 from "../../../../Images/clinical10.png";
import clinic11 from "../../../../Images/Mentalicon.png";
import clinicN from "../../../../Images/neurology.png";
import clinicW from "../../../../Images/womens-health.png";
import Respiratory from './Respiratory';
import Modal from 'react-modal';
import Cardiovascular from './Cardiovascular';
import Cns from './Cns';
import Ent from './Ent';
import General from './General';
import Gestro from './Gestro';
import Genito from './Genito';
import Eye from './Eye';
import Masculo from './Masculo';
import Mental from './Mental';
import Skin from './Skin';
import Neurological from './Neurological';
import WomenHealth from './WomenHealth';
const HistoryAndExamination = (props) => {


    const [generalShow, setgeneralShow] = useState(false)
    const [RespiratoryShow, setRespiratoryShow] = useState(false)
    const [GestroShow, setGestroShow] = useState(false)
    const [CNSShow, setCNSShow] = useState(false);
    const [mentalShow, setMentalShow] = useState(false);


    const customStyles = {
        content: {
            top: '37%',
            left: '21%',
            right: 'auto',
            bottom: 'auto',
            transform: 'translate(-50%, -50%)',
            width: "80%",
            height: "83%",
            background: "#F3F2EF",
            padding: "10px",
            marginLeft: "38%"
        },

    };

    const closeWindo = () => {
        props.closeModal()
        setgeneralShow(false)
        setRespiratoryShow(false)
        setGestroShow(false)
        setCNSShow(false)
    }


    return (
        <Modal
            isOpen={props.modalIsOpen}
            onRequestClose={props.closeModal}
            style={customStyles}
            contentLabel="Example Modal"
        >
            <div style={{ backgroundColor: "#F3F2EF" }}>
                <span className='float-end' style={{ fontSize: "15px", cursor: "pointer", marginTop: "-5px" }} onClick={closeWindo}><i className="fal fa-times"></i></span>
                <h6 style={{ fontSize: "14px" }}>History & Examination</h6>
                <hr className='top-hr' />
                <div className="history-conatiner">
                    <div className="row m-1">
                        <div className="col-1 history-sidebar text-center">

                            <div className="d-flex align-items-start">
                                <div className="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                                    <button onClick={() => props.setactiveClassForHistory("General")} className={props.activeClassForHistory == "General" ? "nav-link active mt-2" : "nav-link"} id="v-pills-settings-tab7" data-bs-toggle="pill" data-bs-target="#v-pills-settings7" type="button" role="tab" aria-controls="v-pills-settings7" aria-selected="false">
                                        <div className='text-center history-nav-img'>
                                            <img src={clinic1} alt="" className="" />
                                            <p>Genaral</p>
                                        </div>
                                    </button>
                                    <hr />
                                    <button onClick={() => props.setactiveClassForHistory("Cardiovascular")} className={props.activeClassForHistory == "Cardiovascular" ? "nav-link active mt-2" : "nav-link"} id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true">
                                        <div className='text-center history-nav-img'>
                                            <img src={clinic2} alt="" className="" />
                                            <p>Cardivascular</p>
                                        </div>
                                    </button>
                                    <hr />
                                    <button onClick={() => props.setactiveClassForHistory("Respiratory")} className={props.activeClassForHistory == "Respiratory" ? "nav-link active mt-2" : "nav-link"} id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false">
                                        <div className='text-center history-nav-img'>
                                            <img src={clinic3} alt="" className="" />
                                            <p>Respiratory</p>
                                        </div>
                                    </button>
                                    <hr />
                                    <button onClick={() => props.setactiveClassForHistory("Gestro Int")} className={props.activeClassForHistory == "Gestro Int" ? "nav-link active mt-2" : "nav-link"} id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#v-pills-messages" type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false">
                                        <div className='text-center history-nav-img'>
                                            <img src={clinic4} alt="" className="" />
                                            <p>Gestro Int</p>
                                        </div>
                                    </button>
                                    <hr />
                                    <button onClick={() => props.setactiveClassForHistory("CNS")} className={props.activeClassForHistory == "CNS" ? "nav-link active mt-2" : "nav-link"} id="v-pills-settings-tab" data-bs-toggle="pill" data-bs-target="#v-pills-settings" type="button" role="tab" aria-controls="v-pills-settings" aria-selected="false">
                                        <div className='text-center history-nav-img'>
                                            <img src={clinic5} alt="" className="" />
                                            <p>Cranial Nerves</p>
                                        </div>
                                    </button>
                                    <hr />
                                    <button onClick={() => props.setactiveClassForHistory("Genito Urinary")} className={props.activeClassForHistory == "Genito Urinary" ? "nav-link active mt-2" : "nav-link"} id="v-pills-settings-tab1" data-bs-toggle="pill" data-bs-target="#v-pills-settings1" type="button" role="tab" aria-controls="v-pills-settings1" aria-selected="false">
                                        <div className='text-center history-nav-img'>
                                            <img src={clinic6} alt="" className="" />
                                            <p>Genito Urinary</p>
                                        </div>
                                    </button>
                                    <hr />
                                    <button onClick={() => props.setactiveClassForHistory("ENT")} className={props.activeClassForHistory == "ENT" ? "nav-link active mt-2" : "nav-link"} id="v-pills-settings-tab2" data-bs-toggle="pill" data-bs-target="#v-pills-settings2" type="button" role="tab" aria-controls="v-pills-settings2" aria-selected="false">
                                        <div className='text-center history-nav-img'>
                                            <img src={clinic7} alt="" className="" />
                                            <p>ENT</p>
                                        </div>
                                    </button>
                                    <hr />
                                    <button onClick={() => props.setactiveClassForHistory("EYE")} className={props.activeClassForHistory == "EYE" ? "nav-link active mt-2" : "nav-link"} id="v-pills-settings-tab3" data-bs-toggle="pill" data-bs-target="#v-pills-settings3" type="button" role="tab" aria-controls="v-pills-settings3" aria-selected="false">
                                        <div className='text-center history-nav-img'>
                                            <img src={clinic8} alt="" className="" />
                                            <p>Eye</p>
                                        </div>
                                    </button>
                                    <hr />
                                    <button onClick={() => props.setactiveClassForHistory("Skin")} className={props.activeClassForHistory == "Skin" ? "nav-link active mt-2" : "nav-link"} id="v-pills-settings-tab4" data-bs-toggle="pill" data-bs-target="#v-pills-settings4" type="button" role="tab" aria-controls="v-pills-settings4" aria-selected="false">
                                        <div className='text-center history-nav-img'>
                                            <img src={clinic9} alt="" className="" />
                                            <p>Skin</p>
                                        </div>
                                    </button>
                                    <hr />
                                    <button onClick={() => props.setactiveClassForHistory("Masculo Skel")} className={props.activeClassForHistory == "Masculo Skel" ? "nav-link active mt-2" : "nav-link"} id="v-pills-settings-tab5" data-bs-toggle="pill" data-bs-target="#v-pills-settings5" type="button" role="tab" aria-controls="v-pills-settings5" aria-selected="false">
                                        <div className='text-center history-nav-img'>
                                            <img src={clinic10} alt="" className="" />
                                            <p>Masculo Skel</p>
                                        </div>
                                    </button>
                                    <hr />
                                    <button onClick={() => props.setactiveClassForHistory("Mental Health")} className={props.activeClassForHistory == "Mental Health" ? "nav-link active mt-2" : "nav-link"} id="v-pills-settings-tab6" data-bs-toggle="pill" data-bs-target="#v-pills-settings6" type="button" role="tab" aria-controls="v-pills-settings6" aria-selected="false">
                                        <div className='text-center history-nav-img'>
                                            <img src={clinic11} alt="" className="" />
                                            <p>Mental Health</p>
                                        </div>
                                    </button>
                                    <hr />
                                    <button onClick={() => props.setactiveClassForHistory("Neurological")} className={props.activeClassForHistory == "Neurological" ? "nav-link active mt-2" : "nav-link"} id="v-pills-settings-tab8" data-bs-toggle="pill" data-bs-target="#v-pills-settings8" type="button" role="tab" aria-controls="v-pills-settings8" aria-selected="false">
                                        <div className='text-center history-nav-img'>
                                            <img src={clinicN} alt="" className="" />
                                            <p>Neurological</p>
                                        </div>
                                    </button>
                                    <hr />
                                    <button onClick={() => props.setactiveClassForHistory("Women’s Health")} className={props.activeClassForHistory == "Women’s Health" ? "nav-link active mt-2" : "nav-link"} id="v-pills-settings-tab9" data-bs-toggle="pill" data-bs-target="#v-pills-settings9" type="button" role="tab" aria-controls="v-pills-settings9" aria-selected="false">
                                        <div className='text-center history-nav-img'>
                                            <img src={clinicW} alt="" className="" />
                                            <p>Women’s Health</p>
                                        </div>
                                    </button>
                                </div>

                            </div>
                        </div>
                        <div className="col-11 history-main-content">
                            <div className="tab-content" id="v-pills-tabContent">
                                <div className={props.activeClassForHistory == "General" ? "tab-pane fade show active" : "tab-pane"} id="v-pills-settings7" role="tabpanel" aria-labelledby="v-pills-settings-tab7">
                                    {props.activeClassForHistory == "General" && <General patient_id={props.patient_id} setgeneralPropsValue={props.setgeneralPropsValue} />}
                                </div>
                                <div className={props.activeClassForHistory == "Cardiovascular" ? "tab-pane fade show active" : "tab-pane"} id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                                    {props.activeClassForHistory == "Cardiovascular" && <Cardiovascular setcardivascularPropsValue={props.setcardivascularPropsValue} patient_id={props.patient_id} />}
                                </div>
                                <div className={props.activeClassForHistory == "Respiratory" ? "tab-pane fade show active" : "tab-pane"} id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                                    {props.activeClassForHistory == "Respiratory" && <Respiratory patient_id={props.patient_id} />}
                                </div>
                                <div className={props.activeClassForHistory == "Gestro Int" ? "tab-pane fade show active" : "tab-pane"} id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                                    {props.activeClassForHistory == "Gestro Int" && <Gestro patient_id={props.patient_id} />}
                                </div>
                                <div className={props.activeClassForHistory == "CNS" ? "tab-pane fade show active" : "tab-pane"} id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">
                                    {props.activeClassForHistory == "CNS" && <Cns patient_id={props.patient_id} />}
                                </div>
                                <div className={props.activeClassForHistory == "Genito Urinary" ? "tab-pane fade show active" : "tab-pane"} id="v-pills-settings1" role="tabpanel" aria-labelledby="v-pills-settings-tab1">
                                    {props.activeClassForHistory == "Genito Urinary" && <Genito patient_id={props.patient_id} />}
                                </div>
                                <div className={props.activeClassForHistory == "ENT" ? "tab-pane fade show active" : "tab-pane"} id="v-pills-settings2" role="tabpanel" aria-labelledby="v-pills-settings-tab2">
                                    {props.activeClassForHistory == "ENT" && <Ent patient_id={props.patient_id} />}
                                </div>
                                <div className={props.activeClassForHistory == "EYE" ? "tab-pane fade show active" : "tab-pane"} id="v-pills-settings3" role="tabpanel" aria-labelledby="v-pills-settings-tab3">
                                    {props.activeClassForHistory == "EYE" && <Eye patient_id={props.patient_id} />}
                                </div>
                                <div className={props.activeClassForHistory == "Skin" ? "tab-pane fade show active" : "tab-pane"} id="v-pills-settings4" role="tabpanel" aria-labelledby="v-pills-settings-tab4">
                                    {props.activeClassForHistory == "Skin" && <Skin patient_id={props.patient_id} />}
                                </div>
                                <div className={props.activeClassForHistory == "Masculo Skel" ? "tab-pane fade show active" : "tab-pane"} id="v-pills-settings5" role="tabpanel" aria-labelledby="v-pills-settings-tab5">
                                    {props.activeClassForHistory == "Masculo Skel" && <Masculo patient_id={props.patient_id} />}
                                </div>
                                <div className={props.activeClassForHistory == "Mental Health" ? "tab-pane fade show active" : "tab-pane"} id="v-pills-settings6" role="tabpanel" aria-labelledby="v-pills-settings-tab6">
                                    {props.activeClassForHistory == "Mental Health" && <Mental patient_id={props.patient_id} />}
                                </div>
                                <div className={props.activeClassForHistory == "Neurological" ? "tab-pane fade show active" : "tab-pane"} id="v-pills-settings8" role="tabpanel" aria-labelledby="v-pills-settings-tab8">
                                    {props.activeClassForHistory == "Neurological" && <Neurological patient_id={props.patient_id} />}
                                </div>
                                <div className={props.activeClassForHistory == "Women’s Health" ? "tab-pane fade show active" : "tab-pane"} id="v-pills-settings9" role="tabpanel" aria-labelledby="v-pills-settings-tab9">
                                    {props.activeClassForHistory == "Women’s Health" && <WomenHealth patient_id={props.patient_id} />}
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </Modal>
    );
};

export default HistoryAndExamination;