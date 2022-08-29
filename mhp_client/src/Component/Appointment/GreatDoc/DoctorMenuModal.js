import React, { useEffect, useState } from 'react';
import Modal from 'react-modal';
import docMenu1 from "../../../Images/g-doc-menu1.png";
import docMenu2 from "../../../Images/g-doc-menu2.png";
import docMenu3 from "../../../Images/g-doc-menu3.png";
import docMenu4 from "../../../Images/g-doc-menu4.png";
import docMenu5 from "../../../Images/g-doc-menu5.png";
import modalIcon1 from "../../../Images/doc-menu-mdal1.png";
import modalIcon2 from "../../../Images/doc-menu-mdal2.png";
import modalIcon3 from "../../../Images/doc-menu-mdal3.png";
import modalIcon4 from "../../../Images/doc-menu-mdal4.png";
import modalIcon5 from "../../../Images/doc-menu-mdal5.png";
import modalIcon6 from "../../../Images/doc-menu-mdal6.png";
import modalIcon7 from "../../../Images/doc-menu-mdal7.png";
import modalIcon8 from "../../../Images/doc-menu-mdal8.png";
import modalIcon9 from "../../../Images/doc-menu-mdal9.png";
import modalIcon10 from "../../../Images/pediatric examination.png";
import modalIcon111 from "../../../Images/doc_menu_new_11.png";
import medical_certificate from "../../../Images/medical_certificate.png";



import modalIcon12 from "../../../Images/procedureReport image.png";
import { DragDropContext, Droppable, Draggable } from 'react-beautiful-dnd';
import Reminders from './Reminders';
import AntenatalVisits from './AntenatalVisits';
import PhysicalActivity from './HistoryAndExamination/PhysicalActivity';
import PaediatricExamMain from './HistoryAndExamination/Paediatric_examination/PaediatricExamMain.js';
import ContactModal from './ContactModal';
import axios from 'axios';
import DiabeticManagement from './DiabeticManagement';
import ReferrelLetter from './ReferrelLetter';
import ProcedureReport from './ProcedureReport';
import MedicalCertificate from './MedicalCertificate';



const DoctorMenuModal = (props) => {
    const customStyles = {
        content: {
            top: '46%',
            left: '27%',
            right: 'auto',
            bottom: 'auto',
            marginRight: '-50%',
            transform: 'translate(-50%, -50%)',
            width: "50%",
            height: "250px",
            padding: "5px",
            overflow: "hidden"
        },

    };
    const cards = [
        {
            id: "1",
            detail: "Contacts",
            image: modalIcon1
        },
        {
            id: "2",
            detail: "Patient Education",
            image: modalIcon2
        },
        {
            id: "3",
            detail: "Health Summary",
            image: modalIcon3
        },
        {
            id: "4",
            detail: "Physical Activity Prescription",
            image: modalIcon4
        },
        {
            id: "5",
            detail: "Diabetic Management",
            image: modalIcon5
        },
        {
            id: "6",
            detail: "Antenatal Visits",
            image: modalIcon6
        },
        {
            id: "7",
            detail: "Operation List",
            image: modalIcon7
        },
        {
            id: "8",
            detail: "Reminders",
            image: modalIcon8
        },
        {
            id: "9",
            detail: "Converters",
            image: modalIcon9
        },
        {
            id: "10",
            detail: "Paediatric examination",
            image: modalIcon10
        },
        {
            id: "11",
            detail: "Referral Letter",
            image: docMenu5
        },
        {
            id: "12",
            detail: "Procedure Report",
            image: docMenu1
        },
    ]

    const [characters, updateCharacters] = useState(cards);
    function handleOnDragEnd(result) {
        if (!result.destination) return;

        const items = Array.from(characters);
        const [reorderedItem] = items.splice(result.source.index, 1);
        items.splice(result.destination.index, 0, reorderedItem);

        updateCharacters(items);
    }



    // Reminder Modal

    const Styles = {
        content: {
            top: '36%',
            left: '30%',
            height: '80vh',
            width: '80%',
            transform: 'translate(-50%, -50%)',
            backgroundColor: 'rgb(243, 242, 239)'
        },
    };
    const StylesPEM = {
        content: {
            top: '36%',
            left: '30%',
            height: '50vh',
            width: '50%',
            transform: 'translate(-50%, -50%)',
            overflowX: "hidden"
        },
    };
    const StylesPdfPreview = {
        content: {
            top: '35%',
            left: '21%',
            right: 'auto',
            bottom: 'auto',
            transform: 'translate(-50%, -50%)',
            width: "79%",
            height: "85%",
            marginLeft: "38%"
        },
    };
    const Styles1 = {
        content: {
            top: '36%',
            left: '30%',
            height: '500px',
            width: '80%',
            transform: 'translate(-50%, -50%)',
            backgroundColor: 'rgb(243, 242, 239)'
        },
    };
    const StylesProcedure = {
        content: {
            top: '36%',
            left: '30%',
            height: '500px',
            width: '70%',
            transform: 'translate(-50%, -50%)',
            backgroundColor: 'rgb(243, 242, 239)'
        },
    };


    const [modalRemindarIsOpen, setModalRemindarIsOpen] = React.useState(false);
    const [contactModalIsOpen, setContactModalIsOpen] = React.useState(false);

    const [refferalLeterModel, setrefferalLeterModel] = useState(false);

    // procedure report
    const [procedureReportModel, setProcedureReportModel] = useState(false);


    function openRemindarModal() {
        setModalRemindarIsOpen(true);
    }

    function closeRemindarModal() {
        setModalRemindarIsOpen(false);
    }


    // antinatal visits

    const [antenatalModalIsOpen, setAntenatalModalIsOpen] = React.useState(false);
    function openAntenataModal() {
        setAntenatalModalIsOpen(true);
    }
    function closeAntenataModal() {
        setAntenatalModalIsOpen(false);
    }


    // Physical Activity Advice
    const [modalPhysicalActivityIsOpen, setModalPhysicalActivityIsOpen] = useState(false);


    // Pedriatic examination

    const [modalPaediatricExaminationIsOpen, setPaediatricExaminationIsOpen] = useState(false);

    const [pbanModelShow, setpbanModelShow] = useState(false);


    function openPaediatricExaminationModal() {
        setPaediatricExaminationIsOpen(true);
    }

    function closePaediatricExaminationModal() {
        setPaediatricExaminationIsOpen(false);
    }
    function closeContactModal() {
        setContactModalIsOpen(false)
    }

    const [pfileName, setpfileName] = useState()
    const [name, setname] = useState()
    const [pedictrictArray, setpedictrictArray] = useState([])
    const [pdfPreview, setpdfPreview] = useState()

    const [pdfPreviewModelShow, setpdfPreviewModelShow] = useState(false)

    const [randerData, setranderData] = useState()
    useEffect(() => {
        axios.get('/peditric-bangla').then(res => {
           
            setpedictrictArray(res.data.pData)
        })
    }, [randerData])

    const [modalDiabeticManagementIsOpen, setDiabeticManagementIsOpen] = useState(false);



    function openDiabeticManagementModal() {
        setDiabeticManagementIsOpen(true);
    }

    function closeDiabeticManagementModal() {
        setDiabeticManagementIsOpen(false);
    }
    const [MSModelShow, setMSModelShow] = useState(false)

    return (
        <Modal
            isOpen={props.modalIsOpen}
            onRequestClose={props.closeModal}
            style={customStyles}
        >
            <div className="col-12 doctor-menu-container doctor-modal">
                <span className='float-end' style={{ fontSize: "15px", cursor: "pointer" }} onClick={props.closeModal}><i class="fal fa-times"></i></span>
                <nav>
                    <ul>
                        {/* <li className='me-4'> <img src={docMenu1} alt="" className='me-3' /> Appointment </li> */}
                        <li className='me-4'><img src={docMenu2} alt="" className='me-3' />Medication Chart </li>
                        {/* <li className='me-4'><img src={docMenu3} alt="" className='me-3' />Result</li> */}
                        <li className='me-4'><img src={docMenu4} alt="" className='me-3' />MIMS </li>
                        <li onClick={() => setrefferalLeterModel(true)} className='me-4'><img src={docMenu5} alt="" className='me-3' />Referral Letter</li>
                        <li onClick={() => setMSModelShow(true)} className='me-4'><img src={medical_certificate} alt="" className='me-3' />Medical Certificate</li>

                        <Modal
                            isOpen={MSModelShow}
                            onRequestClose={MSModelShow}
                            style={StylesPdfPreview}
                        >
                           <MedicalCertificate setMSModelShow={setMSModelShow}/> 
                        </Modal>

                        <Modal
                            isOpen={refferalLeterModel}
                            onRequestClose={refferalLeterModel}
                            style={StylesPdfPreview}
                        >
                            <ReferrelLetter setrefferalLeterModel={setrefferalLeterModel} patient={props.patient}/>
                        </Modal>

                        <Modal
                            isOpen={procedureReportModel}
                            onRequestClose={procedureReportModel}
                            style={StylesProcedure}
                        >
                            <span className='float-end'><i onClick={() => setProcedureReportModel(false)} className="fal fa-times" style={{ cursor: 'pointer'}}></i></span>
                            <h6 style={{ fontSize: "14px" }}>Procedure Report</h6>
                            <hr />

                            <ProcedureReport patient={props.patient} closeRemindarModal={closeRemindarModal}/>
                        </Modal>

                        <Modal
                            isOpen={modalRemindarIsOpen}
                            onRequestClose={closeRemindarModal}
                            style={Styles}
                        >
                            <span className='float-end'><i onClick={closeRemindarModal} className="fal fa-times" style={{ cursor: 'pointer' }}></i></span>
                            <h6 style={{ fontSize: "14px" }}>Reminders</h6>
                            <hr />
                            <Reminders closeRemindarModal={closeRemindarModal}></Reminders>
                        </Modal>

                        {/* Antenatal Visits */}
                        <Modal
                            isOpen={antenatalModalIsOpen}
                            onRequestClose={closeAntenataModal}
                            style={Styles}
                        >
                            <span className='float-end' style={{ fontSize: "15px", cursor: "pointer" }} onClick={closeAntenataModal}><i className="fal fa-times"></i></span>
                            <h6 style={{ fontSize: "14px" }}>Antenatal Visit</h6>
                            <hr />
                            <AntenatalVisits closeAntenataModal={closeAntenataModal}></AntenatalVisits>
                        </Modal>

                        {/*Physical Activity Advice */}
                        <Modal
                            isOpen={modalPhysicalActivityIsOpen}
                            onRequestClose={modalPhysicalActivityIsOpen}
                            style={Styles1}
                            contentLabel="Physical Activity Advice"
                        >
                            <span className='float-end'><i onClick={() => setModalPhysicalActivityIsOpen(false)} className="fal fa-times"></i></span>
                            <h6 style={{ fontSize: "14px" }}>Physical Activity Advice</h6>
                            <hr />
                            <PhysicalActivity patient_id={props.patient_id} setModalPhysicalActivityIsOpen={setModalPhysicalActivityIsOpen} />
                        </Modal>

                        {/* pedriatic examination */}

                        <Modal
                            isOpen={modalPaediatricExaminationIsOpen}
                            onRequestClose={closePaediatricExaminationModal}
                            style={Styles}
                            contentLabel="Example Modal"
                        >
                            <span className='float-end'><i className="fal fa-times" onClick={closePaediatricExaminationModal} style={{ cursor: 'pointer' }}></i></span>
                            <h6 style={{ fontSize: "14px" }}>Paediatric examination</h6>
                            <hr />
                            <PaediatricExamMain closePaediatricExaminationModal={closePaediatricExaminationModal} patient_id={props.patient_id}></PaediatricExamMain>
                        </Modal>

                        {/* pedriatic examination bangla*/}
                        <Modal
                            isOpen={pbanModelShow}
                            onRequestClose={pbanModelShow}
                            style={StylesPEM}
                            contentLabel="Example Modal"
                        >
                            <span className='float-end'><i className="fal fa-times" onClick={() => setpbanModelShow(false)} style={{ cursor: 'pointer' }}></i></span>
                            <h6 style={{ fontSize: "14px" }}>Paediatric examination Bangla</h6>
                            <hr />

                            <div className='row'>
                                <div className='col-sm-4'>
                                    <input type="text" value={name} onChange={e => setname(e.target.value)} placeholder="Enter File Name" className='form-control' />
                                </div>
                                <div className='col-sm-4'>
                                    <input type="file" accept="application/pdf,application/docx" onChange={e => setpfileName(e.target.files[0])} className='form-control' />
                                </div>

                                {
                                    pfileName ?

                                        <button className='col-sm-3 ml-2 btn btn-outline-success' onClick={() => {
                                            const formData = new FormData();
                                            formData.append('pfileName', pfileName);
                                            formData.append('name', name);
                                            axios.post('save-peditric-bangla', formData).then(res => {
                                                setpfileName()
                                                setname("")
                                                setranderData(Math.random())
                                            })
                                        }} style={{ padding: "1px" }}>save</button>
                                        :
                                        <button className='col-sm-3 ml-2 btn btn-outline-secondary' style={{ padding: "1px" }}>upload</button>
                                }

                                {
                                    pedictrictArray.length > 0 &&

                                    <>
                                        <h6 className='pediatric-exam-heading'>Pediatric Examination </h6>
                                        <ul className='pediatric-exam-pdf-veiw'>
                                            {pedictrictArray.map((item, i) => {
                                                return (
                                                    <li key={i} onClick={() => {
                                                        setpdfPreviewModelShow(true)
                                                        setpdfPreview(item)
                                                    }}>{item.name}</li>

                                                )
                                            })}
                                        </ul>

                                    </>
                                }


                            </div>

                        </Modal>
                        <Modal
                            isOpen={pdfPreviewModelShow}
                            onRequestClose={pdfPreviewModelShow}
                            style={StylesPdfPreview}
                            contentLabel="Example Modal"
                        >
                            <span className='float-end'><i className="fal fa-times" onClick={() => setpdfPreviewModelShow(false)} style={{ cursor: 'pointer' }}></i></span>
                            <h6 style={{ fontSize: "14px" }}>Paediatric Pdf Preview</h6>
                            {/* <hr /> */}
                            {
                                pdfPreview != null &&
                                <iframe width="100%" height="100%" className='pdfPreview' src={`${global.img_url}/Peditrict/${pdfPreview.file}`}></iframe>

                            }
                        </Modal>


                        <Modal
                            isOpen={contactModalIsOpen}
                            onRequestClose={closeContactModal}
                            style={Styles}
                            contentLabel="Example Modal"
                        >
                            <span className='float-end'><i className="fal fa-times" onClick={closeContactModal} style={{ cursor: 'pointer' }}></i></span>
                            <h6 style={{ fontSize: "14px" }}>Patient referral contact</h6>
                            <hr />
                            <ContactModal closeContactModal={closeContactModal} />
                        </Modal>


                        {/* DiabeticManagement */}

                        <Modal
                            isOpen={modalDiabeticManagementIsOpen}
                            onRequestClose={closeDiabeticManagementModal}
                            style={Styles}
                            contentLabel="Example Modal"
                        >
                            <span className='float-end'><i className="fal fa-times" onClick={closeDiabeticManagementModal} style={{ cursor: 'pointer' }}></i></span>
                            <h6 style={{ fontSize: "14px" }}>Diabetic Cycle of Care</h6>
                            <hr />
                            <DiabeticManagement closeDiabeticManagementModal={closeDiabeticManagementModal} patient_id={props.patient_id}></DiabeticManagement>
                        </Modal>
                    </ul>
                </nav>
            </div>
            <DragDropContext onDragEnd={handleOnDragEnd}>
                <Droppable droppableId="characters" direction="horizontal">
                    {(provided) => (
                        <div className='doctor-modal-menu-content' {...provided.droppableProps} ref={provided.innerRef}>
                            <div className="row" >
                                {characters.map(({ id, detail, image }, index) => {
                                    return (
                                        <Draggable key={id} draggableId={id} index={index}>
                                            {(provided) => (
                                                <div onClick={() => {
                                                    if (id == 8) {
                                                        setModalRemindarIsOpen(true)
                                                    }
                                                    if (id == 6) {
                                                        setAntenatalModalIsOpen(true)
                                                    }

                                                    if (id == 4) {
                                                        setModalPhysicalActivityIsOpen(true)
                                                    }
                                                    if (id == 10) {
                                                        setPaediatricExaminationIsOpen(true)
                                                    }
                                                    if (id == 2) {
                                                        setpbanModelShow(true)
                                                    }
                                                    if (id == 1) {
                                                        setContactModalIsOpen(true)
                                                    }

                                                    if (id == 5) {
                                                        setDiabeticManagementIsOpen(true)
                                                    }
                                                    if (id == 11) {
                                                        setrefferalLeterModel(true)
                                                    }
                                                    if (id == 12) {
                                                        setProcedureReportModel(true)
                                                    }
                                                    
                                                }} className='col-2 mb-2 text-center' ref={provided.innerRef} {...provided.draggableProps} {...provided.dragHandleProps}>
                                                    <img src={image} alt={`${detail} image`} />
                                                    <p>
                                                        {detail}
                                                    </p>
                                                </div>
                                            )}
                                        </Draggable>
                                    );
                                })}
                                {provided.placeholder}
                            </div>
                        </div>
                    )}
                </Droppable>
            </DragDropContext>
        </Modal>
    );
};

export default DoctorMenuModal;