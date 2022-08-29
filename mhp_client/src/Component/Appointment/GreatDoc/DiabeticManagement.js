import { Popover } from '@mui/material';
import React, { useState } from 'react';

const DiabeticManagement = (props) => {


    const [bp, setBp] = useState("");
    const [weight, setWeight] = useState(false);
    const [height, setHeight] = useState(false);
    const [bmi, setBmi] = useState(false);

    const [uncorrected, setUncorrected] = useState(false);
    const [corrected, setCorrected] = useState(false);
    const [fundusExamination, setFundusExamination] = useState(false);

    const [deformity, setDeformity] = useState(false);
    const [dorsalisPedisPulse, setDorsalisPedisPulse] = useState(false);
    const [posteriorTibialis, setPosteriorTibialis] = useState(false);
    const [ankleBrachialIndexAbi, setAnkleBrachialIndexAbi] = useState(false);
    const [abiInterpretation, setAbiInterpretation] = useState(false);
    const [ulcer, setUlcer] = useState(false);

    const [decreasedSensation, setDecreasedSensation] = useState(false);
    const [vibration, setVibration] = useState(false);
    const [pinPrick, setPinPrick] = useState(false);
    const [temperature, setTemperature] = useState(false);

    const [hbA1c, setHbA1c] = useState(false);
    const [allSameDate, setAllSameDate] = useState(false);
    const [lookUpInvestigations, setLookUpInvestigations] = useState(false);

    const [totalChol , setTotalChol ] = useState(false);
    const [LdlChol , setLdlChol ] = useState(false);
    const [hdl, setHdl] = useState(false);
    const [trig, setTrig] = useState(false);

    const [acr, setAcr] = useState(false);
    const [serumCreatinine, setSerumCreatinine] = useState(false);
    const [microAlbuminemia, setMicroAlbuminemia] = useState(false);
    const [egfr, setEgfr] = useState(false);

    const [endocrinologist, setEndocrinologist] = useState(false);
    const [ophthalmologist, setOphthalmologist] = useState(false);
    const [renalSpecialist, setRenalSpecialist] = useState(false);
    const [annualInfluenza, setAnnualInfluenza] = useState(false);
    const [pneumococcalVaccination, setPneumococcalVaccination] = useState(false);
    const [covidVaccination , setCovidVaccination ] = useState(false);


    const [change1, setChange1] = useState(false);
    const [anchorEl1, setAnchorEl1] = useState(null);
    const open1 = Boolean(anchorEl1);
    const id1 = open1 ? 'simple-popover' : undefined;

    return (
        <div className='bg-white p-4 rounded-3'>
            <div className='row'>
                <div className='col-4'>
                  <div className="d-flex justify-content-between newBorn_date_box pt-2">
                      <p className="w-75 ps-2">Date</p>
                         <div className="ms-1">
                            <label className="me-1">
                                    <input
                                        type="date"
                                        name="Date"
                                        className="date__input"
                                        id="togBtn"
                                    />
                                </label>
                            </div>
                        </div>
                    </div>
               </div>
            
            <div className='row shadow-lg bg-white mt-3 p-3 rounded'>
            <div>
                <p className='fw-bold' style={{marginBottom:'-14px'}}>Observation</p>
                <hr></hr>
            </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">BP</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Pregnancy complications"
                                        name="Pregnancy complications"
                                        onChange={(e) => { setChange1(!change1); setBp("") }}
                                        id="togBtn"
                                    />
                                    <div className="slider round" onClick={(e) => setAnchorEl1(e.currentTarget)}></div>
                                    {
                                        change1 &&
                                        <Popover
                                            id={id1}
                                            open={open1}
                                            anchorEl={anchorEl1}
                                            onClose={() => setAnchorEl1(null)}
                                            anchorOrigin={{
                                                vertical: 'bottom',
                                                horizontal: 'center',
                                            }}
                                            transformOrigin={{
                                                vertical: 'top',
                                                horizontal: 'center',
                                            }}
                                        >

                                            <div className="text-box" style={{ width: "90px", padding: "4px" }}>

                                                <div className="d-flex">
                                                    <input className="form-control" value={bp} type="text" name="cough1" onChange={(e) => { setBp(e.target.value) }} id="exampleCheck1" />
                                                </div>

                                            </div>
                                        </Popover>
                                    }
                                </label>
                            </div>
                        </div>
                        <div className="history-popup-value">
                            <p className='ms-2'>{bp}</p>
                        </div>
                    </div>
                </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Weight</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Weight"
                                        name="Weight"
                                        onChange={(e) => { setWeight(!weight) }}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Height</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Height"
                                        name="Height"
                                        onChange={(e) => { setHeight(!height) }}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div className='row' style={{marginTop:'-12px'}}>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">BMI</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="BMI"
                                        name="BMI"
                                        onChange={(e) => { setBmi(!bmi) }}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>  
            </div>
            </div>

            <div className='mt-3 mb-3'>
                <p className='fw-bold'>Microvascular assessment</p>
            </div>
               <div className='shadow-lg bg-white mt-3 p-3 rounded'>
               <div className='row'>
               <div>
                <p className='fw-bold' style={{marginBottom:'-14px'}}>Eye</p>
                <hr></hr>
            </div>
                <div className='col-4'>
                  <div className="d-flex justify-content-between newBorn_date_box pt-2">
                      <p className="w-75 ps-2">Date</p>
                         <div className="ms-1">
                            <label className="me-1">
                                    <input
                                        type="date"
                                        name="Date"
                                        className="date__input"
                                        id="togBtn"
                                    />
                                </label>
                            </div>
                        </div>
                    </div>
               </div>


               <div className='row shadow-lg bg-white mt-3 pt-2 pb-4 rounded'>
               <div>
                <p className='fw-bold mt-2' style={{marginBottom:'-14px'}}>Visual acuity   distal</p>
                <hr></hr>
            </div>
               <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Uncorrected</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Uncorrected"
                                        name="Uncorrected"
                                        onChange={(e) => { setUncorrected(!uncorrected)}}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Corrected</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Corrected"
                                        name="Corrected"
                                        onChange={(e) => { setCorrected(!corrected) }}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Fundus examination</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Fundus examination"
                                        name="Fundus examination"
                                        onChange={(e) => { setFundusExamination(!fundusExamination) }}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>

               </div>
            </div>

               <div className='row shadow-lg bg-white mt-3 p-3 rounded'>
               <div className='row'>
               <div>
                <p className='fw-bold' style={{marginBottom:'-14px'}}>Feet</p>
                <hr></hr>
            </div>
                <div className='col-4'>
                  <div className="d-flex justify-content-between newBorn_date_box pt-2">
                      <p className="w-75 ps-2">Date</p>
                         <div className="ms-1">
                            <label className="me-1">
                                    <input
                                        type="date"
                                        name="Date"
                                        className="date__input"
                                        id="togBtn"
                                    />
                                </label>
                            </div>
                        </div>
                    </div>
               </div>


               <div className='row shadow-lg bg-white mt-3 pt-2 pb-4 rounded'>
               <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Deformity</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Deformity"
                                        name="Deformity"
                                        onChange={(e) => { setDeformity(!deformity)}}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Dorsalis Pedis Pulse</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Dorsalis Pedis Pulse"
                                        name="Dorsalis Pedis Pulse"
                                        onChange={(e) => { setDorsalisPedisPulse(!dorsalisPedisPulse) }}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Posterior tibialis</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Posterior tibialis"
                                        name="Posterior tibialis"
                                        onChange={(e) => { setPosteriorTibialis(!posteriorTibialis) }}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div className='row'>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Ankle brachial index ABI</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Ankle brachial index ABI"
                                        name="Ankle brachial index ABI"
                                        onChange={(e) => { setAnkleBrachialIndexAbi(!ankleBrachialIndexAbi)}}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2 ms-1">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">ABI interpretation</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="ABI interpretation"
                                        name="ABI interpretation"
                                        onChange={(e) => { setAbiInterpretation(!abiInterpretation) }}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2 ms-1">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Ulcer</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Ulcer"
                                        name="Ulcer"
                                        onChange={(e) => { setUlcer(!ulcer) }}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
               </div>
            </div>

            <div className='row shadow-lg bg-white mt-3 p-3 rounded'>
               <div className='row'>
               <div>
                <p className='fw-bold' style={{marginBottom:'-14px'}}>Neuropathy</p>
                <hr></hr>
            </div>
                <div className='col-4'>
                  <div className="d-flex justify-content-between newBorn_date_box pt-2">
                      <p className="w-75 ps-2">Date</p>
                         <div className="ms-1">
                            <label className="me-1">
                                    <input
                                        type="date"
                                        name="Date"
                                        className="date__input"
                                        id="togBtn"
                                    />
                                </label>
                            </div>
                        </div>
                    </div>
               </div>


               <div className='row shadow-lg bg-white mt-3 pt-2 pb-4 rounded'>
               <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Decreased sensation ,pins and needles, Neuropathic pain </p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Decreased sensation ,pins and needles, Neuropathic pain"
                                        name="Decreased sensation ,pins and needles, Neuropathic pain "
                                        onChange={(e) => { setDecreasedSensation(!decreasedSensation)}}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Vibration</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Vibration"
                                        name="Vibration"
                                        onChange={(e) => { setVibration(!vibration) }}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Pin prick with monofilment</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Pin prick with monofilment"
                                        name="Pin prick with monofilment"
                                        onChange={(e) => { setPinPrick(!pinPrick) }}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div className='row'>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Temperature</p>
                              <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Temperature"
                                        name="Temperature"
                                        onChange={(e) => { setTemperature(!temperature)}}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                  </div>
                </div>
               </div>
            </div>


            <div className='row shadow-lg bg-white mt-3 p-3 rounded'>
               <div>
                <p className='fw-bold' style={{marginBottom:'-14px'}}> Metabolic status </p>
                <hr></hr>
            </div>
               <div className='row'>
                  <div className='col-4 gx-4'>
                    <div className='row shadow-lg bg-white rounded p-2'>
                    <div className='col-12'>
                  <div className="d-flex justify-content-between newBorn_date_box pt-2">
                      <p className="w-75 ps-2">Date</p>
                         <div className="ms-1">
                            <label className="me-1">
                                    <input
                                        type="date"
                                        name="Date"
                                        className="date__input"
                                        id="togBtn"
                                    />
                                </label>
                            </div>
                        </div>
                    </div>
                    <div className='col-12'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Hb A1c</p>
                              <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Hb A1c"
                                        name="Hb A1c"
                                        onChange={(e) => { setHbA1c(!hbA1c)}}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                    </div>
                    <div className='col-12'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">All same date</p>
                              <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="All same date"
                                        name="All same date"
                                        onChange={(e) => { setAllSameDate(!allSameDate)}}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                    </div>
                    <div className='col-12'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Look up Investigations</p>
                              <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Look up Investigations"
                                        name="Look up Investigations"
                                        onChange={(e) => { setLookUpInvestigations(!lookUpInvestigations)}}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                    </div>
                    </div>
                  </div>

                  <div className='col-4 gx-5'>
                  <div className='row shadow-lg bg-white rounded p-2'>
                    <div className='col-12'>
                  <div className="d-flex justify-content-between newBorn_date_box pt-2">
                      <p className="w-75 ps-2">Date</p>
                         <div className="ms-1">
                            <label className="me-1">
                                    <input
                                        type="date"
                                        name="Date"
                                        className="date__input"
                                        id="togBtn"
                                    />
                                </label>
                            </div>
                        </div>
                    </div>
                    <div className='col-12'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Total Chol </p>
                              <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Total Chol "
                                        name="Total Chol "
                                        onChange={(e) => { setTotalChol(!totalChol)}}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                    </div>
                    <div className='col-12'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">LDL Chol</p>
                              <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="LDL Chol"
                                        name="LDL Chol"
                                        onChange={(e) => { setLdlChol(!LdlChol)}}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                    </div>
                    <div className='col-12'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">HDL</p>
                              <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="HDL"
                                        name="HDL"
                                        onChange={(e) => { setHdl(!hdl)}}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                    </div>
                    <div className='col-12'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Trig</p>
                              <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Trig"
                                        name="Trig"
                                        onChange={(e) => { setTrig(!trig)}}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                    </div>
                    </div>
                  </div>

                  <div className='col-4 gx-5'>
                  <div className='row shadow-lg bg-white rounded p-2'>
                    <div className='col-12'>
                  <div className="d-flex justify-content-between newBorn_date_box pt-2">
                      <p className="w-75 ps-2">Date</p>
                         <div className="ms-1">
                            <label className="me-1">
                                    <input
                                        type="date"
                                        name="Date"
                                        className="date__input"
                                        id="togBtn"
                                    />
                                </label>
                            </div>
                        </div>
                    </div>
                    <div className='col-12'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">ACR</p>
                              <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="ACR"
                                        name="ACR"
                                        onChange={(e) => { setAcr(!acr)}}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                    </div>
                    <div className='col-12'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Serum creatinine</p>
                              <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Serum creatinine"
                                        name="Serum creatinine"
                                        onChange={(e) => { setSerumCreatinine(!serumCreatinine)}}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                    </div>
                    <div className='col-12'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Micro-albuminemia</p>
                              <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Micro-albuminemia"
                                        name="Micro-albuminemia"
                                        onChange={(e) => { setMicroAlbuminemia(!microAlbuminemia)}}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                    </div>
                    <div className='col-12'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">eGFR</p>
                              <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="eGFR"
                                        name="eGFR"
                                        onChange={(e) => { setEgfr(!egfr)}}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                    </div>
                    </div>
                  </div>
               </div>
            </div>
             <div className='row shadow-lg bg-white mt-3 p-3 rounded'>
            <div>
                <p className='fw-bold' style={{marginBottom:'-14px'}}>Refer</p>
                <hr></hr>
            </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Endocrinologist</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Endocrinologist"
                                        name="Endocrinologist"
                                        onChange={(e) => { setEndocrinologist(!endocrinologist)}}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Ophthalmologist</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Ophthalmologist"
                                        name="Ophthalmologist"
                                        onChange={(e) => { setOphthalmologist(!ophthalmologist) }}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Renal  specialist</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Renal  specialist"
                                        name="Renal  specialist"
                                        onChange={(e) => { setRenalSpecialist(!renalSpecialist) }}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
             <div className='row shadow-lg bg-white mt-3 p-3 rounded'>
            <div>
                <p className='fw-bold' style={{marginBottom:'-14px'}}>Vaccination</p>
                <hr></hr>
            </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Annual  Influenza</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Annual  Influenza"
                                        name="Annual  Influenza"
                                        onChange={(e) => { setAnnualInfluenza(!annualInfluenza)}}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Pneumococcal Vaccination 65yr</p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Pneumococcal Vaccination >65yr"
                                        name="Pneumococcal Vaccination >65yr"
                                        onChange={(e) => { setPneumococcalVaccination(!pneumococcalVaccination) }}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div className='col-4'>
                    <div className="paedriatric_btn_container pt-2">
                        <div className="d-flex justify-content-around">
                            <p className="w-75">Covid Vaccination </p>
                            <div className="ms-1">
                                <label className="switch me-1">
                                    <input
                                        type="checkbox"
                                        value="Covid Vaccination"
                                        name="Covid Vaccination"
                                        onChange={(e) => { setCovidVaccination(!covidVaccination) }}
                                        id="togBtn"
                                    />
                                    <div className="slider round"></div>
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>   
            <div className='pedriatric_btn'> 
                <button className='pedriatric_btn_left' onClick={props.closeDiabeticManagementModal}>Cancel</button>              
                <button className='pedriatric_btn_middle'>Save</button>
            </div>
        </div>
    );
};

export default DiabeticManagement;