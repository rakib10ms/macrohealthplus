import React, { useEffect } from 'react';
import Modal from 'react-modal';
import './GreatDoc.css';
const VitalSignModal = (props) => {
    const customStyles = {
        content: {
            top: '32%',
            left: '25%',
            right: 'auto',
            bottom: 'auto',
            marginRight: '-50%',
            transform: 'translate(-50%, -50%)',
            width: "60%",
            height: "400px",
            padding:"10px",
            zIndex : "3000"
            
        },

    };

    useEffect(() => {
        Modal.setAppElement('body');
    }, []);
    

    return (
        <div className='vital-modal'>
            <Modal
                isOpen={props.modalIsOpen}
                onRequestClose={props.closeModal}
                style={customStyles}
                contentLabel="Example Modal"
                
            >
                <span className='float-end' style={{ fontSize: "15px", cursor: "pointer" }} onClick={props.closeModal}><i class="fal fa-times"></i></span>
                <h6 className="card-title">Patients Vital Signs</h6>
                <div className="card-body">
                    <div className="vital-patient-container">
                        <div className="my-vital-signs mt-3">
                            <div className="row all-vital-sign-container">
                                {
                                    props.vitalSign.length>0 ?
                                    props.vitalSign.map((item,i) => {
                                        return (                                        
                                                <div key={i} className="col-sm-6 col-md-4  mb-3">
                                                    <div className="vital-sign row m-1">
                                                        <div>

                                                            <div style={{ height: "3px", background: item.color }} className='w-50 float-end'></div>
                                                        </div>
                                                        <div className="sign-title col-9">
                                                            <span className="ms-1 little-heading">{item.name}</span> <br />
                                                            <input className="d-inline" id="inputVitalSgin" name="vitalValue" placeholder={item.value} type="text" disabled />
                                                            <span className="little-text">{item.units_id}</span>
                                                        </div>
                                                        <div className="sign-iocn col-3">
                                                            <img src={`${global.img_url}/images/VitalSignIcon/${item.icon}`} alt="" />
                                                        </div>
                                                    </div>
                                                </div> 
                                        )
                                    })
                                    : 
                                    <h6 className='text-danger text-center'>No vital sign added !</h6>
                                }

                            </div>
                        </div>
                    </div>
                </div>
            </Modal>
        </div>
    );
};

export default VitalSignModal;