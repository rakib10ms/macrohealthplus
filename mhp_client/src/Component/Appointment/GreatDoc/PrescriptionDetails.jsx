import React from 'react'
import Modal from 'react-modal';
import { Tooltip } from '@material-ui/core';
import { Info } from '@material-ui/icons';
import Tab from 'react-bootstrap/Tab';
import Tabs from 'react-bootstrap/Tabs';

export default function PrescriptionDetails(props) {

    const customStyles = {
        content: {
            top: '37%',
            left: '25%',
            right: 'auto',
            bottom: 'auto',
            marginRight: '-50%',
            transform: 'translate(-50%, -50%)',
            width: "50%",
            height: "350px",
            background: "#ffff",
            zIndex: "200000"
        },

    };

    console.log("props.preDetails", props)

    return (
        <Modal
            isOpen={props.preDetailModelShow}
            onRequestClose={props.closeModal}
            style={customStyles}
        >
            <div className='pdetails_header'>
                <div>Medication Details</div>

                <span style={{
                    fontSize: "15px",
                    cursor: "pointer",
                    marginRight: "5px"
                }} onClick={() => {
                    props.setpreDetailModelShow(false)
                }}><i className="fal fa-times"></i></span>
            </div>
            <div className='PresDetails_main'>

                <div>
                    <div>
                        {/* <div className="billing custom-card">
                            <div className="BillingHeader">
                                <ul className="nav nav-pills" id="pills-tab" role="tablist">
                                    <li className="nav-item">
                                        <button className="nav-link active" id="doctors-note" data-bs-toggle="pill" data-bs-target="#doctors-note" type="button" role="tab" aria-controls="pills-note" aria-selected="true">Note</button>
                                    </li>
                                    <li className="nav-item" >
                                        <button className="nav-link" id="pills-rx" data-bs-toggle="pill" data-bs-target="#pills-rx" type="button" role="tab" aria-controls="pills-rx" aria-selected="false">Rx</button>
                                    </li>
                                </ul>

                            </div>
                            <div className="tab-content" id="pills-tabContent">
                                <div className="tab-pane fade show active" id="doctors-note" role="tabpanel" aria-labelledby="doctors-note">
                                    <div className='doctosNote'>

                                        <h6>Doctors Notes</h6>
                                        <div dangerouslySetInnerHTML={{ __html: props.doctorsNotesShow }} />
                                    </div>

                                </div>
                                <div className="tab-pane fade" id="pills-rx" role="tabpanel" aria-labelledby="pills-rx">
                                <h6>sdafsdf</h6>
                                    <table class="table drgsDetailPres">
                                        <tbody>
                                            <tr style={{ backgroundColor: "#e4e4e4" }}>

                                                <td>Drug Name</td>
                                                <td>Dose</td>
                                                <td>Quantity</td>
                                                <td>Repeats</td>
                                                <td>Mims Info</td>
                                            </tr>

                                            {
                                                props.preDetails.length > 0 ?

                                                    props.preDetails.map((item, i) => {
                                                        return (
                                                            <tr>
                                                                <td>{item.rx.drug_name}</td>
                                                                <td>{item.dose} {item.rx.frequency}</td>
                                                                <td>{item.rx.quantity}</td>
                                                                <td>{item.rx.repeats}</td>
                                                                <td> 
                                                                <Tooltip title="MIMS Infomation">
                                                                    <Info className='infoIcon'></Info>
                                                                </Tooltip>
                                                                </td>

                                                            </tr>
                                                        )
                                                    }) :
                                                    <div className='PresDetails_single'>
                                                        <h5>Loading.........</h5>
                                                    </div>
                                            }


                                        </tbody>
                                    </table>

                                    {
                                        props.preDetails.length > 0 ?

                                            props.preDetails.map((item, i) => {
                                                return (
                                                    <div key={i} className='PresDetails_single'>
                                                        <div className='presDetails_heading'>
                                                            <h5 style={{ color: "#d45757" }}>{item.rx.drug_name}</h5>

                                                            <Tooltip title="MIMS Infomation">
                                                                <Info className='infoIcon'></Info>
                                                            </Tooltip>
                                                        </div>
                                                        <div style={{ marginLeft: "20px" }}>
                                                            <p>{item.dose} {item.rx.frequency}</p>
                                                            <p>Quantity: {item.rx.quantity}  Repeats: {item.rx.repeats}</p>
                                                        </div>
                                                    </div>
                                                )
                                            }) :

                                            <div className='PresDetails_single'>
                                                <h5>Loading.........</h5>
                                            </div>
                                    }
                                </div>
                            </div>
                        </div> */}
                        <div className="cns-container">
                            <Tabs
                                defaultActiveKey="home"
                                id="justify-tab-example"
                                className="mb-3"
                            >
                                <Tab eventKey="home" title="Note">
                                    <div className='doctosNote'>

                                        <h6>Doctors Notes</h6>
                                        <div dangerouslySetInnerHTML={{ __html: props.doctorsNotesShow }} />
                                    </div>
                                </Tab>
                                <Tab eventKey="profile" title="Rx">
                                    <table class="table drgsDetailPres">
                                        <tbody>
                                            <tr style={{ backgroundColor: "#e4e4e4" }}>

                                                <td>Drug Name</td>
                                                <td>Dose</td>
                                                <td>Quantity</td>
                                                <td>Repeats</td>
                                                <td>Mims Info</td>
                                            </tr>

                                            {
                                                props.preDetails.length > 0 ?

                                                    props.preDetails.map((item, i) => {
                                                        return (
                                                            <tr>
                                                                <td>{item.rx.drug_name}</td>
                                                                <td>{item.dose} {item.rx.frequency}</td>
                                                                <td>{item.rx.quantity}</td>
                                                                <td>{item.rx.repeats}</td>
                                                                <td>
                                                                    <Tooltip title="MIMS Infomation">
                                                                        <Info className='infoIcon'></Info>
                                                                    </Tooltip>
                                                                </td>

                                                            </tr>
                                                        )
                                                    }) :
                                                    <div className='PresDetails_single'>
                                                        <h5>Loading.........</h5>
                                                    </div>
                                            }


                                        </tbody>
                                    </table>

                                    {/* {
                                        props.preDetails.length > 0 ?

                                            props.preDetails.map((item, i) => {
                                                return (
                                                    <div key={i} className='PresDetails_single'>
                                                        <div className='presDetails_heading'>
                                                            <h5 style={{ color: "#d45757" }}>{item.rx.drug_name}</h5>

                                                            <Tooltip title="MIMS Infomation">
                                                                <Info className='infoIcon'></Info>
                                                            </Tooltip>
                                                        </div>
                                                        <div style={{ marginLeft: "20px" }}>
                                                            <p>{item.dose} {item.rx.frequency}</p>
                                                            <p>Quantity: {item.rx.quantity}  Repeats: {item.rx.repeats}</p>
                                                        </div>
                                                    </div>
                                                )
                                            }) :

                                            <div className='PresDetails_single'>
                                                <h5>Loading.........</h5>
                                            </div>
                                    } */}
                                </Tab>
                            </Tabs>
                        </div>
                    </div>
                </div>

            </div>
        </Modal>


    )
}
