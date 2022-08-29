import React, { useEffect, useState } from 'react';
import Modal from 'react-modal';
import './PedriaticExam.css';
import { Autocomplete } from '@mui/material';
import PaediatricPage1 from './Paediatric_page1';
import PaediatricPage2 from './Paediatric_page2';
import PaediatricPage3 from './Paediatric_page3';
import PaediatricPage4 from './Paediatric_page4';
import PaediatricPage5 from './Paediatric_page5';
import PaediatricPage6 from './Paediatric_page6';
import PaediatricPage7 from './Paediatric_page7';
import PaediatricPage8 from './Paediatric_page8';
import PaediatricPage9 from './Paediatric_page9';
import PaediatricPage10 from './Paediatric_page10';
import PaediatricPage11 from './Paediatric_page11';
import PaediatricPage12 from './Paediatric_page12';
import PaediatricPage13 from './Paediatric_page13';
import PaediatricPage14 from './Paediatric_page14';
import PaediatricPage15 from './Paediatric_page15';
import PaediatricPage16 from './Paediatric_page16';
import PaediatricPage17 from './Paediatric_page17';
import PaediatricPage18 from './Paediatric_page18';
import PaediatricPage19 from './Paediatric_page19';
import PaediatricPage20 from './Paediatric_page20';
import PaediatricPage21 from './Paediatric_page21';
import PaediatricPage22 from './Paediatric_page22';
import PaediatricPage23 from './Paediatric_page23';
import PaediatricPage24 from './Paediatric_page24';
import TextField from '@mui/material/TextField';



const PaediatricExamMain = (props) => {

    const [pageName, setPageName] = useState(1);

    //search input
    const [pageNo, setPageNo] = useState(parseInt(1));

    console.log('type of page No', typeof (pageNo), pageNo)

    //all page names with page no
    const pageNameList = [
        { page_no: 1, page_name: 'Maternal information' },
        { page_no: 1, page_name: 'Neonatal information' },
        { page_no: 2, page_name: 'Milestone' },
        { page_no: 3, page_name: 'Family health history and risk factors (for parents)' },
        { page_no: 4, page_name: 'New Born examination' },
        { page_no: 5, page_name: 'Infant Screening – Hearing' },
        { page_no: 6, page_name: 'Questions for parents/carers' },
        { page_no: 7, page_name: 'Child health check 1 to 4 weeks  By Doctor or Nurse' },
        { page_no: 8, page_name: 'The 6 to 8 week visit' },
        { page_no: 9, page_name: 'Child health check 6 to 8 weeks for Nurse/Doctor' },
        { page_no: 10, page_name: 'The 4 months old Questionary' },
        { page_no: 11, page_name: 'The 6 months old Visit:' },
        { page_no: 12, page_name: 'Dental' },
        { page_no: 13, page_name: 'Child health check (6 months)' },
        { page_no: 14, page_name: 'The 12 months old Check' },
        { page_no: 15, page_name: 'The 12 months health checkl' },
        { page_no: 16, page_name: 'The 18 month visit for (parents/carers)' },
        { page_no: 17, page_name: 'The 18 months health check' },
        { page_no: 18, page_name: 'The 2year health check for parents/carers' },
        { page_no: 19, page_name: 'The 2 years Child health check:' },
        { page_no: 20, page_name: '3 years old (for parents or carrer)' },
        { page_no: 21, page_name: 'The 3 years Child health check:' },
        { page_no: 22, page_name: '4 years old (for parents0)' },
        { page_no: 23, page_name: 'Before school starts (parents/Carer)' },
        { page_no: 24, page_name: 'The 4 year health check: (for Doctor/Nurse)' },

    ];

    const handleInputSearch = (e) => {

        if (e.target.value == '') {
            let emptyValue = e.target.value;
            setPageNo(parseInt(emptyValue || 0));
        }
        else {
            let valCheck = (e.target.value);
            let numberForm = parseInt(valCheck);
            setPageNo(numberForm);
        }

    }

    useEffect(() => {
        setPageNo(pageName)

    }, [pageName])

    useEffect(() => {
        setPageName(pageNo)

    }, [pageNo])
    const [toogle, setToogle] = useState(false);
    const handleToogle = () => {
        setToogle(!toogle)
    }

    //footer next and prev logic 
    const [nextPage, setNextPage] = useState('');
    const passData = (data) => {
        setNextPage(data);
        setPageNo(data);
    };

    //cancel logic 

    const [modalPaediatricExaminationIsOpen, setPaediatricExaminationIsOpen] = useState(false);


    function closePaediatricExaminationModal() {
        setPaediatricExaminationIsOpen(false);
    }


    return (

        <div className='bg-white mb-5 ' style={{ overflowX: 'hidden' }}>
            <div className='page-filter d-flex p-2 '>
                <div className='col-12 d-flex justify-content-between '>
                    <div className='col-6'>
                    </div>
                    <div className='col-2 filter_input_box'>
                        <div onClick={handleToogle} className='filter_border p-1' style={{ cursor: 'pointer' }}>
                            <i class="fal fa-sliders-h ms-3" ></i>
                            <span className='ms-4'>Filter</span>
                        </div>
                        {toogle &&
                            <div>
                                <Autocomplete
                                style={{marginTop:"10px"}}
                                    disablePortal
                                    id="combo-box-demo"
                                    options={pageNameList}
                                    getOptionLabel={(option) => option.page_name}
                                    onChange={(e, newValue) => {
                                        if (newValue !== null) {
                                            setPageName(newValue.page_no)
                                        }
                                    }}
                                    size="small"
                                    sx={{ width: 200 }}
                                    renderInput={(params) => <TextField {...params} label="Pages" />}
                                />
                            </div>
                        }
                    </div>
                    <div className='page_box col-4 ms-5'>
                        <label for="lname" className='page_text'>Page</label>
                        <input type="text" id="" name="" className='page_box_input ps-2' placeholder={pageNo} value={pageNo} onChange={handleInputSearch} />
                        <label for="" className='ms-2'> of 24</label>
                        <div className='chevron_icon'>
                            <span><i class="fa-solid fa-chevron-left ms-2 pe-2 text-white" onClick={
                                () => {
                                    if (pageNo !== 1) {
                                        setPageNo(pageNo - 1)
                                    }

                                }
                            }></i></span>
                            <span><i class="fa-solid fa-chevron-right ms-2 pe-1 text-white" onClick={() => {
                                if (pageNo !== 24) {
                                    setPageNo(pageNo + 1)
                                }
                            }}></i></span>
                        </div>
                    </div>
                </div>
            </div>
            {pageName == 1 && <PaediatricPage1 closePaediatricExaminationModal={props.closePaediatricExaminationModal} passData={passData} propsData={props} > </PaediatricPage1>}
            {pageName == 2 && <PaediatricPage2 closePaediatricExaminationModal={props.closePaediatricExaminationModal} passData={passData} propsData={props}> </PaediatricPage2>}
            {pageName == 3 && <PaediatricPage3 closePaediatricExaminationModal={props.closePaediatricExaminationModal} passData={passData} propsData={props}> </PaediatricPage3>}
            {pageName == 4 && <PaediatricPage4 closePaediatricExaminationModal={props.closePaediatricExaminationModal} passData={passData} propsData={props} ></PaediatricPage4>}
            {pageName == 5 && <PaediatricPage5 closePaediatricExaminationModal={props.closePaediatricExaminationModal} passData={passData} propsData={props}></PaediatricPage5>}
            {pageName == 6 && <PaediatricPage6 closePaediatricExaminationModal={props.closePaediatricExaminationModal} passData={passData} propsData={props}></PaediatricPage6>}
            {pageName == 7 && <PaediatricPage7 closePaediatricExaminationModal={props.closePaediatricExaminationModal} passData={passData} propsData={props}></PaediatricPage7>}
            {pageName == 8 && <PaediatricPage8 closePaediatricExaminationModal={props.closePaediatricExaminationModal} passData={passData} propsData={props}></PaediatricPage8>}
            {pageName == 9 && <PaediatricPage9 closePaediatricExaminationModal={props.closePaediatricExaminationModal} passData={passData} propsData={props}></PaediatricPage9>}
            {pageName == 10 && <PaediatricPage10 closePaediatricExaminationModal={props.closePaediatricExaminationModal} passData={passData} propsData={props}></PaediatricPage10>}
            {pageName == 11 && <PaediatricPage11 closePaediatricExaminationModal={props.closePaediatricExaminationModal} passData={passData} propsData={props}></PaediatricPage11>}
            {pageName == 12 && <PaediatricPage12 closePaediatricExaminationModal={props.closePaediatricExaminationModal} passData={passData} propsData={props}> </PaediatricPage12>}
            {pageName == 13 && <PaediatricPage13 closePaediatricExaminationModal={props.closePaediatricExaminationModal} passData={passData} propsData={props}> </PaediatricPage13>}
            {pageName == 14 && <PaediatricPage14 closePaediatricExaminationModal={props.closePaediatricExaminationModal} passData={passData} propsData={props}> </PaediatricPage14>}
            {pageName == 15 && <PaediatricPage15 closePaediatricExaminationModal={props.closePaediatricExaminationModal} passData={passData} propsData={props}> </PaediatricPage15>}
            {pageName == 16 && <PaediatricPage16 closePaediatricExaminationModal={props.closePaediatricExaminationModal} passData={passData} propsData={props}> </PaediatricPage16>}
            {pageName == 17 && <PaediatricPage17 closePaediatricExaminationModal={props.closePaediatricExaminationModal} passData={passData} propsData={props} patient_id={props.patient_id}> </PaediatricPage17>}
            {pageName == 18 && <PaediatricPage18 closePaediatricExaminationModal={props.closePaediatricExaminationModal} passData={passData} propsData={props}> </PaediatricPage18>}
            {pageName == 19 && <PaediatricPage19 closePaediatricExaminationModal={props.closePaediatricExaminationModal} passData={passData} propsData={props}> </PaediatricPage19>}
            {pageName == 20 && <PaediatricPage20 closePaediatricExaminationModal={props.closePaediatricExaminationModal} passData={passData} propsData={props}> </PaediatricPage20>}
            {pageName == 21 && <PaediatricPage21 closePaediatricExaminationModal={props.closePaediatricExaminationModal} passData={passData} propsData={props}> </PaediatricPage21>}
            {pageName == 22 && <PaediatricPage22 closePaediatricExaminationModal={props.closePaediatricExaminationModal} passData={passData} propsData={props}> </PaediatricPage22>}
            {pageName == 23 && <PaediatricPage23 closePaediatricExaminationModal={props.closePaediatricExaminationModal} passData={passData} propsData={props}> </PaediatricPage23>}
            {pageName == 24 && <PaediatricPage24 closePaediatricExaminationModal={props.closePaediatricExaminationModal} passData={passData} propsData={props}> </PaediatricPage24>}
        </div>

    );
};


export default PaediatricExamMain;