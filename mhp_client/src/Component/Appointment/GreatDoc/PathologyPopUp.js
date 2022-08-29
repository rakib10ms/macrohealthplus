import React from 'react';
import Modal from 'react-modal';
import Pathology from './Pathology';

const PathologyPopUp = (props) => {
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
    return (
            <Modal
            isOpen={props.modalIsOpen}
            onRequestClose={props.closeModal}
            style={customStyles}
            contentLabel="Example Modal"
        >
            <span className='float-end' style={{ fontSize: "15px", cursor: "pointer", marginTop: "-5px" }} onClick={props.closeModal}><i className="fal fa-times"></i></span>
            <h6 style={{ fontSize: "14px" }}>Pathology Request</h6>
            <Pathology closeModal={props.closeModal} patient_id={props.patient_id}/>
           </Modal>
    );
};

export default PathologyPopUp;