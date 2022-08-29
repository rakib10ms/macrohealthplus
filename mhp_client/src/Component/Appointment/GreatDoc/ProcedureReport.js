import axios from 'axios';
import React, { useEffect, useRef, useState } from 'react';
import './ProcedureReport.css';
import moment from 'moment';
import { toast } from 'react-toastify';
import { useReactToPrint } from 'react-to-print';


const ProcedureReport = (props) => {

   const [items,setItems] = useState([]);
   const [indication,setIndication] = useState([]);
   const [procedure,setProcedure] = useState([]);
   const [findings,setFindings] = useState([]);
   const [incisioon,setIncisioon] = useState([]);
   const [pathologies,setPathologies] = useState([]);
   const [draings,setDraings] = useState([]);
   const [antobi,setAntobi] = useState([]);
   const [bloodL,setBloodL] = useState([]);
   const [process,setProcess] = useState([]);
   const [observing,setObserving] = useState([]);
   const [diets,setDiets] = useState([]);
   const [analgos,setAnalgos] = useState([]);
   const [dvtP,setDvtP] = useState([]);
   const [antobiTwo,setAntobiTwo] = useState([]);
   const [disCha,setDisCha] = useState([]);
   const [followUps,setFollowUps] = useState([]);
   const [postOp,setPostOp] = useState([]);


// getting all data using useEffect.
   
useEffect(() => {
   axios.get(`/itemNumbers-name`)
         .then(res=>{
            if(res.data.status===200){
               setItems(res.data.itemNumbersName)
            }
         })
   axios.get(`/indication-name`)
         .then(res=>{
            if(res.data.status===200){
               setIndication(res.data.indicationName)
            }
         })
         axios.get(`/procedure-name`)
         .then(res=>{
            if(res.data.status===200){
               setProcedure(res.data.procedureName)
            }
         })
         axios.get(`/findings-name`)
         .then(res=>{
            if(res.data.status===200){
               setFindings(res.data.findingsName)
            }
         })
         axios.get(`/incision`)
         .then(res=>{
            if(res.data.status===200){
               setIncisioon(res.data.incisionName)
            }
         })
         axios.get(`/pathology-name`)
         .then(res=>{
            if(res.data.status===200){
               setPathologies(res.data.pathologyName)
            }
         })
         axios.get(`/drain-name`)
         .then(res=>{
            if(res.data.status===200){
               setDraings(res.data.drainName)
            }
         })
         axios.get(`/procedure-Details`)
         .then(res=>{
            if(res.data.status===200){
               setProcess(res.data.procedureDetails)
            }
         })
         axios.get(`/antibiotics-name`)
         .then(res=>{
            if(res.data.status===200){
               setAntobi(res.data.antibioticsName)
            }
         })
         axios.get(`/blood-loss-name`)
         .then(res=>{
            if(res.data.status===200){
               setBloodL(res.data.bloodLossName)
            }
         })
         axios.get(`/observation-name`)
         .then(res=>{
            if(res.data.status===200){
               setObserving(res.data.observationName)
            }
         })
         axios.get(`/diet-name`)
         .then(res=>{
            if(res.data.status===200){
               setDiets(res.data.dietName)
            }
         })
         axios.get(`/diet-name`)
         .then(res=>{
            if(res.data.status===200){
               setDiets(res.data.dietName)
            }
         })
         axios.get(`/analgesia-name`)
         .then(res=>{
            if(res.data.status===200){
               setAnalgos(res.data.analgesiaName)
            }
         })
         axios.get(`/dvt-prop-name`)
         .then(res=>{
            if(res.data.status===200){
               setDvtP(res.data.dvtPropName)
            }
         })
         axios.get(`/antibiotics-two-name`)
         .then(res=>{
            if(res.data.status===200){
               setAntobiTwo(res.data.antibioticsTwoName)
            }
         })
         axios.get(`/antibiotics-two-name`)
         .then(res=>{
            if(res.data.status===200){
               setAntobiTwo(res.data.antibioticsTwoName)
            }
         })
         axios.get(`/discharge-name`)
         .then(res=>{
            if(res.data.status===200){
               setDisCha(res.data.dischargeName)
            }
         })
         axios.get(`/followup-name`)
         .then(res=>{
            if(res.data.status===200){
               setFollowUps(res.data.followupName)
            }
         })
         axios.get(`/post-operative-name`)
         .then(res=>{
            if(res.data.status===200){
               setPostOp(res.data.postOperativeName)
            }
         })

}, [])

   // get doctor data
   const storageData = JSON.parse(localStorage.getItem('userData'))

   // 
   const [itemNumbers,setItemNumbers]=useState("");
   const [indicatee,setIndicatee]=useState();
   const [proceduree,setProceduree]=useState("");
   const [findingss,setFindingss]=useState("");
   const [incision,setIncision]=useState("");
   const [processs,setProcesss]=useState("");
   const [drain,setDrain]=useState("");
   const [antibiotics,setAntibiotics]=useState("");
   const [bloodLoss,setBloodLoss]=useState("");
   const [pathology,setPathology]=useState("");
   const [observation,setObservation]=useState("");
   const [diet,setDiet]=useState("");
   const [analgesia,setAnalgesia]=useState("");
   const [dvtProp,setDvtProp]=useState("");
   const [antibioticsTwo,setAntibioticsTwo]=useState("");
   const [discharge,setDischarge]=useState("");
   const [followUp,setFollowUp]=useState("");
   const [postOperative,setPostOperative]=useState("");


   const handleItemNumbers=(e)=>{
        setItemNumbers(e.target.value)
   }
   const handleIndicatee=(e)=>{
        setIndicatee(e.target.value)
   }
   const handleProceduree=(e)=>{
      setProceduree(e.target.value)
   }
   const handleFindingss=(e)=>{
      setFindingss(e.target.value)
   }
   const handleIncision=(e)=>{
      setIncision(e.target.value)
   }
   const handleProcesss=(e)=>{
      setProcesss(e.target.value)
   }
   const handleDrain=(e)=>{
      setDrain(e.target.value)
   }
   const handleAntibiotics=(e)=>{
      setAntibiotics(e.target.value)
   }
   const handleBloodLoss=(e)=>{
      setBloodLoss(e.target.value)
   }
   const handlePathology=(e)=>{
      setPathology(e.target.value)
   }
   const handleObservation=(e)=>{
      setObservation(e.target.value)
   }
   const handleDiet=(e)=>{
      setDiet(e.target.value)
   }
   const handleAnalgesia=(e)=>{
      setAnalgesia(e.target.value)
   }
   const handleDvtProp=(e)=>{
      setDvtProp(e.target.value)
   }
   const handleAntibioticsTwo=(e)=>{
      setAntibioticsTwo(e.target.value)
   }
   const handleDischarge=(e)=>{
      setDischarge(e.target.value)
   }
   const handleFollowUp=(e)=>{
      setFollowUp(e.target.value)
   }
   const handlePostOperative=(e)=>{
      setPostOperative(e.target.value)
   }

   const handleSave = () => {
      const procedureReportData={
         item_numbers:itemNumbers,
         indicateee:indicatee,
         proceduree:proceduree,
         findings:findingss,
         incision:incision,
         processs:processs,
         drain:drain,
         antibiotics:antibiotics,
         blood_loss:bloodLoss,
         pathology:pathology,
         observation:observation,
         diet:diet,
         analgesia:analgesia,
         dvt_prop:dvtProp,
         antibiotics_two:antibioticsTwo,
         discharge:discharge,
         followup:followUp,
         post_operative:postOperative,
      }

      

      axios.post(`/save-addProcedureChartReport`, procedureReportData).then(res => {
          if (res.data.status == 200) {
           toast.success("Procedure Report Added Successfully");
           setItemNumbers('');
           setIndicatee('');
           setProceduree('');
           setFindingss('');
           setIncision('');
           setProcesss('');
           setDrain('');
           setAntibiotics('');
           setBloodLoss('');
           setPathology('');
           setObservation('');
           setDiet('');
           setAnalgesia('');
           setDvtProp('');
           setDvtProp('');
           setDischarge('');
           setAntibioticsTwo('');
           setPostOperative('');
          }

      })
  }


//   print
  const componentRef = useRef();
  const handlePrint = useReactToPrint({
   content: () => componentRef.current,
});
 

// conditional rendering
const [itemNums,setItemNums]=useState(false);
const [indications,setIndications]=useState(false);
const [proced,setProced]=useState(false);
const [incise,setIncise]=useState(false);
const [find,setFind]=useState(false);
const [patho,setPatho]=useState(false);
const [drains,setDrains]=useState(false);
const [anto,setAnto]=useState(false);
const [bLoss,setBLoss]=useState(false);
const [processed,setProcessed]=useState(false);
const [observed,setObserved]=useState(false);
const [dieted,setDieted]=useState(false);
const [analgesed,setAnalgesed]=useState(false);
const [dvt,setDvt]=useState(false);
const [antTwo,setAntTwo]=useState(false);
const [dis,setDis]=useState(false);
const [folows,setFolows]=useState(false);
const [post,setPost]=useState(false);


    return (
        <div className='bg-white p-3 pb-5'>
            <div ref={componentRef}>
            <div className='d-flex justify-content-between'>
                 <div>
                      <strong>{props.patient.patient_first_name}</strong> <br/>
                        <strong>DOB:{props.patient.patient_dob}</strong><br/>
                        <strong>HN{props.patient.patient_hn_number}</strong><br/>
                      <strong>Sex:{props.patient.birth_sex_name}</strong><br/>
                 </div>
                 <div>
                    <strong>31 CARCOOLA CRES</strong> <br/>
                    <strong>NORMAN HURST 2076</strong>
                 </div>
            </div>
                 <div className='procedure_text'>
                   <h4>Procedure Report:</h4>
                </div>
            <div className='d-flex justify-content-between'>
                <div>
                    <strong>Procedure Date:</strong>
                    <span> {moment().format('Do MMMM YYYY')}</span> <br/>
                    <strong>Anesthetic:</strong>
                    <span> General/Local</span> <br/>
                    <strong>Anesthetist:</strong>
                    <span> Dr Peter Roberts</span>
                </div>
                <div>
                    <strong>Surgeon:</strong>
                    <span> {storageData.name}</span> <br/>
                    <strong>Assistant:</strong>
                    <span> 1.Dr Marina Cavada</span> <br/>
                    <span className='dr_text'> 2.Dr Arun Thiagarajan</span>
                </div> 
            </div>

            <div className='procedure_report_box'>
            <div className='d-flex'>
                <div className='item_number_box'>
                   <label for="" className='me-4 fw-bold'>Item Numbers:</label>
                   {
                     itemNums?<select name="itemNumbers" id="" className='item_number_box' value={itemNumbers} onChange={handleItemNumbers} style={{border: '1px solid rgba(0, 0, 0, 0.25)'}}>
                     <option value="">Select</option>
                     {
                       items.map((item,i)=>{
                          return(
                             <option value={item.id} key={i}>{item.name}</option>
                          )
                       })
                    }
                   </select>:
                   <textarea id="" name="itemNumbers" rows="" cols="" className='incision_textbox' value={itemNumbers} onChange={handleItemNumbers}  onKeyPress={event => {
                     if (event.key === 'Enter') {
                        const itemData={
                           name:itemNumbers
                        }
                        axios.post('/save-itemNumbers',itemData)
                             .then(res=>{
                              if (res.data.status == 200) {
                                 axios.get(`/itemNumbers-name`)
                                 .then(res=>{
                                 if(res.data.status===200){
                                 setItems(res.data.itemNumbersName)
                                 }
                                 })
                                 toast.success("Successfully Added Item Numbers");              
                              }
                              else if (res.data.status == 400) {
                                 setIndicatee({ ...indicatee, error_list: res.data.errors });
                      
                              }
                             })
                         }
                      }}>
                   </textarea>
                   }
                </div>
                
               {
                  itemNums?<div>
                  <i className='fa fa-minus increase_icon'onClick={()=>setItemNums(!itemNums)}></i>
                  </div>
                  :<div>
                  <i className="icon-plus increase_icon" onClick={()=>setItemNums(!itemNums)}></i>
                  </div>
               }           
                <div className='item_number_box'>
                <label for="" className='me-4 fw-bold'>Indication:</label>
                {
                  indications?<select name="indication" id="" className='item_number_box' value={indicatee} onChange={handleIndicatee} style={{border: '1px solid rgba(0, 0, 0, 0.25)'}}>
                  <option value="">Select</option>
                    {
                       indication.map((item,i)=>{
                          return(
                             <option value={item.id} key={i}>{item.name}</option>
                          )
                       })
                    }
                  </select>:<textarea id="" name="indication" rows="" cols="" className='incision_textbox' value={indicatee} onChange={handleIndicatee} onKeyPress={event => {
                  if (event.key === 'Enter') {
                     const indicateData={
                        name:indicatee
                     }
                     axios.post('/save-indication',indicateData)
                          .then(res=>{
                           if (res.data.status == 200) {
                              axios.get(`/indication-name`)
                             .then(res=>{
                              if(res.data.status===200){
                              setIndication(res.data.indicationName)
                              }
                              })
                              toast.success("Successfully Added Indication");              
                           }
                           else if (res.data.status == 400) {
                              setIndicatee({ ...indicatee, error_list: res.data.errors });
                   
                           }
                          })
                      }
                   }}>
                  </textarea>
                }
                </div>
                {
                  indications?<div>
                  <i className="fa fa-minus indication_icon" onClick={()=>setIndications(!indications)}></i>
                  </div>:
                  <div>
                  <i className="icon-plus indication_icon" onClick={()=>setIndications(!indications)}></i>
                  </div>
                }
                             
            </div>

            <div className='d-flex mt-3'>
                <div className='item_number_box'>
                   <label for="" className='me-5 fw-bold'>Procedure:</label>
                   {
                     proced?<select name="procedure" id="" className='item_number_box' value={proceduree} onChange={handleProceduree} style={{border: '1px solid rgba(0, 0, 0, 0.25)'}}>
                     <option value="">Selected</option>
                     {
                        procedure.map((item,i)=>{
                           return(
                              <option value={item.id} key={i}>{item.name}</option>
                           )
                        })
                     }
                   </select>:<textarea id="" name="procedure" rows="" cols="" className='incision_textbox' value={proceduree} onChange={handleProceduree} onKeyPress={event => {
                  if (event.key === 'Enter') {
                     const procedureData={
                        name:proceduree
                     }
                     axios.post('/save-procedure-report-name',procedureData)
                          .then(res=>{
                           if (res.data.status == 200) {
                              axios.get(`/procedure-name`)
                             .then(res=>{
                              if(res.data.status===200){
                             setProcedure(res.data.procedureName)
                             }
                            })
                            toast.success("Successfully Added Procedure");              
                           }
                           else if (res.data.status == 400) {
                              setProcedure({ ...proceduree, error_list: res.data.errors });
                   
                           }
                          })
                      }
                   }}>
                     </textarea>
                   }
                </div>
                {
                  proced?<div>
                  <i className="fas fa-minus procedure_icon" onClick={()=>setProced(!proced)}></i>
                  </div>:
                   <div>
                   <i className="icon-plus procedure_icon" onClick={()=>setProced(!proced)}></i>
                   </div>
                }
                <div className='item_number_box'>
                <label for="" className='me-3 fw-bold'>Findings:</label>
                {
                  find?<select name="findings" id="" className='item_number_box ms-3' value={findingss} onChange={handleFindingss} style={{border: '1px solid rgba(0, 0, 0, 0.25)',marginLeft:'3px'}}>
                  <option>Selected</option>
                  {
                     findings.map((item,i)=>{
                        return(
                           <option value={item.id} key={i}>{item.name}</option>
                        )
                     })
                  }
                </select>:<textarea id="" name="findings" rows="" cols="" className='incision_textbox ms-3' value={findingss} onChange={handleFindingss} onKeyPress={event => {
                  if (event.key === 'Enter') {
                     const procedureFindings={
                        name:findingss
                     }
                     axios.post('/save-findings',procedureFindings)
                          .then(res=>{
                           if (res.data.status == 200) {
                              axios.get(`/findings-name`)
                              .then(res=>{
                                 if(res.data.status===200){
                                    setFindings(res.data.findingsName)
                                 }
                              })
                              toast.success("Successfully Added Findings");             
                           }
                           else if (res.data.status == 400) {
                              setFindings({ ...findings, error_list: res.data.errors });
                   
                           }
                          })
                      }
                   }}>
                  </textarea>
                }
                </div>
                {
                  find?<div>
                  <i className="fas fa-minus indication_icon" onClick={()=>setFind(!find)}></i>
                  </div>:
                  <div>
                  <i className="icon-plus indication_icon" onClick={()=>setFind(!find)}></i></div>
                }
            </div>
            </div>

            <div>
                <h6 className='mt-4'>Procedure Details</h6>
            </div>
            <div className='procedure_report_box'>
            <div className='d-flex'>
                <div className='item_number_box ms-3'>
                <label for=""className='fw-bold text_area_text'>Incision:</label>
                {
                  incise? <select name="incision" id="" className='item_number_box' value={incision} onChange={handleIncision} style={{border: '1px solid rgba(0, 0, 0, 0.25)'}}>
                  <option>Select</option>
                  {
                        incisioon.map((item,i)=>{
                           return(
                              <option value={item.id} key={i}>{item.name}</option>
                           )
                        })
                     }
                </select>:<textarea id="" name="incision" rows="" cols="" className='incision_textbox'  value={incision} onChange={handleIncision}onKeyPress={event => {
                     if (event.key === 'Enter') {
                        const incisionData={
                           name:incision
                        }
                        axios.post('/save-incision',incisionData)
                             .then(res=>{
                              if (res.data.status == 200) {
                                 axios.get(`/incision`)
                                 .then(res=>{
                                    if(res.data.status===200){
                                       setIncisioon(res.data.incisionName)
                                    }
                                 })
                                 toast.success("Successfully Added Incision");              
                              }
                              else if (res.data.status == 400) {
                                 setIncisioon({ ...incision, error_list: res.data.errors });
                      
                              }
                             })
                         }
                      }}></textarea>
                }
                  
               </div>
               {
                  incise?<div>
                  <i className="fas fa-minus incision_icon" onClick={()=>setIncise(!incise)}></i>
                  </div>:
                  <div>
                  <i className="icon-plus incision_icon" onClick={()=>setIncise(!incise)}></i>
                  </div>
               }
               <div className='item_number_box'>
                <label for="" className='fw-bold me-3' style={{marginLeft:'-10px'}}>Pathology:</label>
                {
                  patho?<select name="pathology" id="" className='item_number_box ms-2'  value={pathology} onChange={handlePathology} style={{border: '1px solid rgba(0, 0, 0, 0.25)'}}>
                  <option value="">Select</option>
                  {
                        pathologies.map((item,i)=>{
                           return(
                              <option value={item.id} key={i}>{item.name}</option>
                           )
                        })
                     }
                </select>:<textarea id="" name="pathology" rows="" cols="" className='incision_textbox ms-2' value={pathology} onChange={handlePathology} onKeyPress={event => {
                     if (event.key === 'Enter') {
                        const pathologyData={
                           name:pathology
                        }
                        axios.post('/save-pathology',pathologyData)
                             .then(res=>{
                              if (res.data.status == 200) {
                                 axios.get(`/pathology-name`)
                                 .then(res=>{
                                    if(res.data.status===200){
                                       setPathologies(res.data.pathologyName)
                                    }
                                 })
                                 toast.success("Successfully Added Pathology");              
                              }
                              else if (res.data.status == 400) {
                                 setPathologies({ ...pathology, error_list: res.data.errors });
                      
                              }
                             })
                         }
                      }}></textarea>
                }
                </div>
                {
                  patho? <div>
                  <i className="fas fa-minus indication_icon" onClick={()=>setPatho(!patho)}></i>
                  </div>:
                  <div>
                     <i className="icon-plus indication_icon" onClick={()=>setPatho(!patho)}></i>
                  </div>
                }
            </div>

            <div className='d-flex mt-3'>
            <div className='item_number_box ms-3'>
               <label for="" style={{marginRight:'64px'}} className='fw-bold text_area_text'>Drain:</label>
               {
                  drains?<select name="drain" id="" className='item_number_box'  value={drain} onChange={handleDrain} style={{border: '1px solid rgba(0, 0, 0, 0.25)'}}>
                  <option value="">Select</option>
                  {
                        draings.map((item,i)=>{
                           return(
                              <option value={item.id} key={i}>{item.name}</option>
                           )
                        })
                     }
                </select>:<textarea id="" name="drain" rows="" cols="" className='incision_textbox' value={drain} onChange={handleDrain}onKeyPress={event => {
                     if (event.key === 'Enter') {
                        const drainData={
                           name:drain
                        }
                        axios.post('/save-drain-name',drainData)
                             .then(res=>{
                              if (res.data.status == 200) {
                                 axios.get(`/drain-name`)
                                 .then(res=>{
                                    if(res.data.status===200){
                                       setDraings(res.data.drainName)
                                    }
                                 })
                                 toast.success("Successfully Added Drain");              
                              }
                              else if (res.data.status == 400) {
                                 setDraings({ ...drain, error_list: res.data.errors });
                      
                              }
                             })
                         }
                      }}></textarea>
               }
               </div>
               {
                  drains? <div>
                  <i className="fas fa-minus incision_icon" onClick={()=>setDrains(!drains)}></i>
                  </div>:
                  <div>
                  <i className="icon-plus incision_icon" onClick={()=>setDrains(!drains)}></i>
                  </div>
               }
           
                <div className='item_number_box'>
                <label for="" className='fw-bold me-2' style={{marginLeft:'-10px'}}>Antibiotics:</label>
                {
                  anto?<select name="antibiotics" id="" className='item_number_box anti ms-2' value={antibiotics} onChange={handleAntibiotics} style={{border: '1px solid rgba(0, 0, 0, 0.25)'}}>
                  <option value="">Select</option>
                  {
                        antobi.map((item,i)=>{
                           return(
                              <option value={item.id} key={i}>{item.name}</option>
                           )
                        })
                     }
                </select>:<textarea id="" name="antibiotics" rows="" cols="" className='incision_textbox ms-2' value={antibiotics} onChange={handleAntibiotics} onKeyPress={event => {
                     if (event.key === 'Enter') {
                        const antiData={
                           name:antibiotics
                        }
                        axios.post('/save-antibiotics-name',antiData)
                             .then(res=>{
                              if (res.data.status == 200) {
                                 axios.get(`/antibiotics-name`)
                                 .then(res=>{
                                    if(res.data.status===200){
                                       setAntobi(res.data.antibioticsName)
                                    }
                                 })
                                 toast.success("Successfully Added Antibiotics");              
                              }
                              else if (res.data.status == 400) {
                                 setAntobi({ ...antibiotics, error_list: res.data.errors });
                      
                              }
                             })
                         }
                      }}></textarea>
                }
                </div>
                {
                  anto?<div>
                  <i className="fas fa-minus indication_icon" onClick={()=>setAnto(!anto)}></i>
                  </div>:
                  <div>
                <i className="icon-plus indication_icon" onClick={()=>setAnto(!anto)}></i>
                </div>
                }
            </div>

            <div className='d-flex mt-3'>
            <div className='item_number_box ms-3'>
               <label for="" style={{marginRight:'6px'}} className='fw-bold text_area_text'>Blood Loss(ml):</label>
               {
                  bLoss?<select name="bloodLoss" id="" className='item_number_box anti' value={bloodLoss} onChange={handleBloodLoss} style={{border: '1px solid rgba(0, 0, 0, 0.25)'}}>
                  <option value="">Select</option>
                  {
                        bloodL.map((item,i)=>{
                           return(
                              <option value={item.id} key={i}>{item.name}</option>
                           )
                        })
                     }
                </select>:<textarea id="" name="bloodLoss" rows="" cols="" className='incision_textbox' value={bloodLoss} onChange={handleBloodLoss} onKeyPress={event => {
                     if (event.key === 'Enter') {
                        const bloodData={
                           name:bloodLoss
                        }
                        axios.post('/save-blood-loss-name',bloodData)
                             .then(res=>{
                              if (res.data.status == 200) {
                                 axios.get(`/blood-loss-name`)
                                 .then(res=>{
                                 if(res.data.status===200){
                                 setBloodL(res.data.bloodLossName)
                                 }
                                 })
                                 toast.success("Successfully Added Blood Loss");              
                              }
                              else if (res.data.status == 400) {
                                 setBloodL({ ...bloodLoss, error_list: res.data.errors });
                      
                              }
                             })
                         }
                      }}></textarea>
               }
               </div>
               {
                  bLoss?<div>
                  <i className="fas fa-minus bloodLoss_icon" onClick={()=>setBLoss(!bLoss)}></i>
                  </div>:
                  <div>
                  <i className="icon-plus bloodLoss_icon" onClick={()=>setBLoss(!bLoss)}></i>
                  </div>
               }    
             </div>         
            </div>

            <div className='procedure_report_box'>
                <label for="" className='fw-bold me-3'>Process:</label>
                {
                  processed?<select name="process" id="" className='ms-5 process_box' value={processs} onChange={handleProcesss} style={{border: '1px solid rgba(0, 0, 0, 0.25)',position:'relative'}}>
                  <option value="">Selected</option>
                  {
                     process.map((item,i)=>{
                        return(
                           <option value={item.id} key={i}>{item.name}</option>
                        )
                     })
                  }
                </select>:<textarea id="" name="process" rows="" cols="" className='incision_textbox process_text' value={processs} onChange={handleProcesss} onKeyPress={event => {
                  if (event.key === 'Enter') {
                     const procedureDetailss={
                        name:processs
                     }
                     axios.post('/save-procedure-Details',procedureDetailss)
                          .then(res=>{
                           if (res.data.status == 200) {
                              axios.get(`/procedure-Details`)
                              .then(res=>{
                                 if(res.data.status===200){
                                    setProcesss(res.data.procedureDetails)
                                 }
                              })
                              toast.success("Successfully Added Process");              
                           }
                           else if (res.data.status == 400) {
                              setProcesss({ ...processs, error_list: res.data.errors });                  
                           }
                          })
                      }
                   }}></textarea>
                }
                   { 
                     processed?<div>
                     <i className="fas fa-minus process_icon" onClick={()=>setProcessed(!processed)} style={{position:'absolute',marginTop:'-30px',marginLeft:'758px', cursor: 'pointer'}}></i>
                 </div>:
                 <div>
                <i className="icon-plus process_icon" onClick={()=>setProcessed(!processed)} style={{position:'absolute',marginTop:'-15px',marginLeft:'758px', cursor: 'pointer'}}></i>
                </div> 
                   }                    
            </div>
             
            <div>
                <h6 className='mt-4'>Post Operative Orders</h6>
            </div>
            <div className='procedure_report_box pb-5'>
            <div className='d-flex'>
                <div className='item_number_box'>
                   <label for="" className='me-5 fw-bold'>Observation:</label>
                   {
                     observed?<select name="observation" id="" className='process_box observation_select_box' value={observation} onChange={handleObservation}>
                     <option value="">Select</option>
                     {
                        observing.map((item,i)=>{
                           return(
                              <option value={item.id} key={i}>{item.name}</option>
                           )
                        })
                     }
                   </select>:<textarea id="" name="observation" rows="" cols="" className='incision_textbox observe' value={observation} onChange={handleObservation} onKeyPress={event => {
                     if (event.key === 'Enter') {
                        const observationData={
                           name:observation
                        }
                        axios.post('/save-observation-name',observationData)
                             .then(res=>{
                              if (res.data.status == 200) {
                                 axios.get(`/observation-name`)
                                 .then(res=>{
                                    if(res.data.status===200){
                                       setObserving(res.data.observationName)
                                    }
                                 })
                                 toast.success("Successfully Added Observation");              
                              }
                              else if (res.data.status == 400) {
                                 setObserving({ ...observation, error_list: res.data.errors });
                      
                              }
                             })
                         }
                      }}></textarea>
                   }
                </div>
                {
                  observed?<div>
                  <i className="fas fa-minus observation_icon" onClick={()=>setObserved(!observed)}></i>
                  </div>:
                   <div>
                   <i className="icon-plus observation_icon" onClick={()=>setObserved(!observed)}></i>
                   </div>
                }

                <div className='item_number_box'>
                <label for="" className='me-5 fw-bold'>Diet:</label>
                {
                  dieted?<select name="diet" id="" className='ms-2 process_box observation_select_box' value={diet} onChange={handleDiet} style={{border: '1px solid rgba(0, 0, 0, 0.25)',position:'relative'}}>
                  <option value="">Select</option>
                  {
                        diets.map((item,i)=>{
                           return(
                              <option value={item.id} key={i}>{item.name}</option>
                           )
                        })
                     }
                </select>:<textarea id="" name="diet" rows="" cols="" className='incision_textbox observe ms-2' value={diet} onChange={handleDiet} onKeyPress={event => {
                     if (event.key === 'Enter') {
                        const dietData={
                           name:diets
                        }
                        axios.post('/save-diet',dietData)
                             .then(res=>{
                              if (res.data.status == 200) {
                                 axios.get(`/diet-name`)
                                .then(res=>{
                                if(res.data.status===200){
                                setDiets(res.data.dietName)
                                }
                                })
                                 toast.success("Successfully Added Diet");              
                              }
                              else if (res.data.status == 400) {
                                 setDiets({ ...diets, error_list: res.data.errors });
                      
                              }
                             })
                         }
                      }}></textarea>
                }
                </div>
                
                  {
                     dieted?<div>
                     <i className="fas fa-minus indication_icon" onClick={()=>setDieted(!dieted)}></i>
                     </div>:
                     <div>
                     <i className="icon-plus indication_icon" onClick={()=>setDieted(!dieted)}></i>
                     </div>
                  }
                  
            </div>
            <div className='d-flex mt-3'>
                <div className='item_number_box'>
                   <label for="" className='me-5 fw-bold'>Analgesia:</label>
                   {
                     analgesed?<select name="analgesia" id="" className='ms-1 process_box observation_select_box' value={analgesia} onChange={handleAnalgesia}>
                     <option value="">Selected</option>
                     {
                        analgos.map((item,i)=>{
                           return(
                              <option value={item.id} key={i}>{item.name}</option>
                           )
                        })
                     }
                   </select>:<textarea id="" name="analgesia" rows="" cols="" className='incision_textbox observe ms-1' value={analgesia} onChange={handleAnalgesia} onKeyPress={event => {
                     if (event.key === 'Enter') {
                        const analgesiaData={
                           name:analgesia
                        }
                        axios.post('/save-analgesia-name',analgesiaData)
                             .then(res=>{
                              if (res.data.status == 200) {
                                 axios.get(`/analgesia-name`)
                                .then(res=>{
                                 if(res.data.status===200){
                                 setAnalgos(res.data.analgesiaName)
                                  }
                                 })
                                 toast.success("Successfully Added Analgesia Data");              
                              }
                              else if (res.data.status == 400) {
                                 setAnalgos({ ...analgesia, error_list: res.data.errors });
                      
                              }
                             })
                         }
                      }}></textarea>
                   }
                </div>
                {
                  analgesed?<div>
                  <i className="fas fa-minus observation_icon" onClick={()=>setAnalgesed(!analgesed)}></i>
                  </div>:
                  <div>
                  <i className="icon-plus observation_icon" onClick={()=>setAnalgesed(!analgesed)}></i>
                  </div>
                }
               
                <div className='item_number_box'>
                <label for="" className='fw-bold me-3'>DVT Prop:</label>
                {
                  dvt?<select name="dvtProp" id="" className='ms-2 process_box observation_select_box' value={dvtProp} onChange={handleDvtProp} style={{border: '1px solid rgba(0, 0, 0, 0.25)',position:'relative'}}>
                  <option value="">Selected</option>
                  {
                        dvtP.map((item,i)=>{
                           return(
                              <option value={item.id} key={i}>{item.name}</option>
                           )
                        })
                     }
                </select>:<textarea id="" name="dvtProp" rows="" cols="" className='incision_textbox observe ms-2' value={dvtProp} onChange={handleDvtProp} onKeyPress={event => {
                     if (event.key === 'Enter') {
                        const dvtData={
                           name:dvtProp
                        }
                        axios.post('/save-dvt-prop-name',dvtData)
                             .then(res=>{
                              if (res.data.status == 200) {
                                 axios.get(`/dvt-prop-name`)
                                .then(res=>{
                                if(res.data.status===200){
                                setDvtP(res.data.dvtPropName)
                                }
                                })
                                 toast.success("Successfully Added Dvt Prop");              
                              }
                              else if (res.data.status == 400) {
                                 setDvtP({ ...dvtProp, error_list: res.data.errors });                  
                              }
                             })
                         }
                      }}></textarea>
                }
                </div>
                {
                  dvt?<div>
                  <i className="fas fa-minus indication_icon" onClick={()=>setDvt(!dvt)}></i>
                  </div>:
                  <div>
                  <i className="icon-plus indication_icon" onClick={()=>setDvt(!dvt)}></i>
                  </div>
                }
                
            </div>
            <div className='d-flex mt-3'>
                <div className='item_number_box'>
                   <label for="" className='me-4 fw-bold'>Antibiotics:</label>
                   {
                     antTwo?<select name="antibioticsTwo" id="" className='ms-3 process_box observation_select_box' value={antibioticsTwo} onChange={handleAntibioticsTwo} style={{border: '1px solid rgba(0, 0, 0, 0.25)',position:'relative'}}>
                     <option value="">Select</option>
                     {
                        antobiTwo.map((item,i)=>{
                           return(
                              <option value={item.id} key={i}>{item.name}</option>
                           )
                        })
                     }
                   </select>: <textarea id="" name="antibioticsTwo" rows="" cols="" className='incision_textbox observe' value={antibioticsTwo} style={{marginLeft:'21px'}} onChange={handleAntibioticsTwo} onKeyPress={event => {
                     if (event.key === 'Enter') {
                        const antiTwoData={
                           name:antibioticsTwo
                        }
                        axios.post('/save-antibiotics-two-name',antiTwoData)
                             .then(res=>{
                              if (res.data.status == 200) {
                                 axios.get(`/antibiotics-two-name`)
                                .then(res=>{
                                if(res.data.status===200){
                                setAntobiTwo(res.data.antibioticsTwoName)
                                }
                                })
                                 toast.success("Successfully Added Antibiotics");              
                              }
                              else if (res.data.status == 400) {
                                 setAntobiTwo({ ...antibioticsTwo, error_list: res.data.errors });
                      
                              }
                             })
                         }
                      }}></textarea>
                   }
                </div>
                {
                  antTwo? <div>
                  <i className="fas fa-minus observation_icon" onClick={()=>setAntTwo(!antTwo)}></i>
                  </div>:
                  <div>
                <i className="icon-plus observation_icon" onClick={()=>setAntTwo(!antTwo)}></i>
                </div>
                }
                
                <div className='item_number_box'>
                <label for="" className='fw-bold'>Discharge:</label>
                {
                  dis?<select name="discharge" id="" className='item_number_box ms-4' value={discharge} onChange={handleDischarge} style={{border: '1px solid rgba(0, 0, 0, 0.25)'}}>
                  <option value="">Select</option>
                  {
                        disCha.map((item,i)=>{
                           return(
                              <option value={item.id} key={i}>{item.name}</option>
                           )
                        })
                     }
                </select>:<textarea id="" name="discharge" rows="" cols="" className='incision_textbox observe' value={discharge} style={{marginLeft:'21px'}} onChange={handleDischarge} onKeyPress={event => {
                     if (event.key === 'Enter') {
                        const dischargeData={
                           name:discharge
                        }
                        axios.post('/save-discharge-name',dischargeData)
                             .then(res=>{
                              if (res.data.status == 200) {
                                 axios.get(`/discharge-name`)
                                .then(res=>{
                                if(res.data.status===200){
                                setDisCha(res.data.dischargeName)
                                }
                                })
                                 toast.success("Successfully Added Discharge");              
                              }
                              else if (res.data.status == 400) {
                                 setDisCha({ ...discharge, error_list: res.data.errors });
                      
                              }
                             })
                         }
                      }}></textarea>
                }                 
                </div>
                {
                  dis?<div>
                  <i className="fas fa-minus indication_icon" onClick={()=>setDis(!dis)}></i>
                  </div>:
                  <div>
                <i className="icon-plus indication_icon" onClick={()=>setDis(!dis)}></i>
                </div>
                }              
            </div>
            <div className='d-flex mt-3'>
                <div className='item_number_box'>
                   <label for="" className='me-5 fw-bold' style={{marginTop:'17px'}}>Follow Up:</label>
                   {
                     folows?<select name="followUp" id="" className='item_number_box3' value={followUp} onChange={handleFollowUp} style={{border: '1px solid rgba(0, 0, 0, 0.25)'}}>
                     <option value="">Select</option>
                     {
                        followUps.map((item,i)=>{
                           return(
                              <option value={item.id} key={i}>{item.name}</option>
                           )
                        })
                     }
                   </select>:<textarea id="" name="followUp" rows="" cols="" className='item_number_box3' value={followUp} style={{marginLeft:'1px',border: '1px solid rgba(0, 0, 0, 0.25)'}} onChange={handleFollowUp} onKeyPress={event => {
                     if (event.key === 'Enter') {
                        const followupData={
                           name:followUp
                        }
                        axios.post('/save-followup-name',followupData)
                             .then(res=>{
                              if (res.data.status == 200) {
                                 axios.get(`/followup-name`)
                                .then(res=>{
                                if(res.data.status===200){
                                setFollowUps(res.data.followupName)
                                }
                                })
                                 toast.success("Successfully Added Follow Up");              
                              }
                              else if (res.data.status == 400) {
                                 setFollowUps({ ...followUp, error_list: res.data.errors });                    
                              }
                             })
                         }
                      }}></textarea>
                   }
                   
                </div>
                {
                  folows?<div>
                  <i className="fas fa-minus followUp_icon" onClick={()=>setFolows(!folows)}></i>
                  </div>:
                  <div>
                <i className="icon-plus followUp_icon" onClick={()=>setFolows(!folows)}></i>
                </div>
                }
                         
                <div className='item_number_box'>
                <label for="" className='fw-bold me-3' style={{position:'relative'}}>Post <br/><span>Operative</span> <br/> <span>Instruction</span>:</label>
                {
                  post?<select name="postOperative" id="" className='item_number_box3' value={postOperative} onChange={handlePostOperative} style={{border: '1px solid rgba(0, 0, 0, 0.25)'}}>
                  <option value="">Select</option>
                  {
                        postOp.map((item,i)=>{
                           return(
                              <option value={item.id} key={i}>{item.name}</option>
                           )
                        })
                     }
                </select>:<textarea id="" name="postOperative" rows="" cols="" className='item_number_box3' value={postOperative} onChange={handlePostOperative} style={{border: '1px solid rgba(0, 0, 0, 0.25)'}} onKeyPress={event => {
                     if (event.key === 'Enter') {
                        const postData={
                           name:postOperative
                        }
                        axios.post('/save-post-operative-name',postData)
                             .then(res=>{
                              if (res.data.status == 200) {
                                 axios.get(`/post-operative-name`)
                                .then(res=>{
                                if(res.data.status===200){
                                setPostOp(res.data.postOperativeName)
                                }
                                })
                                 toast.success("Successfully Added Post Operative");              
                              }
                              else if (res.data.status == 400) {
                                 setPostOp({ ...postOperative, error_list: res.data.errors });
                      
                              }
                             })
                         }
                      }}></textarea>
                }
                </div>
                {
                  post?<div>
                  <i className="fas fa-minus operative_icon" onClick={()=>setPost(!post)}></i>
                  </div>:
                  <div>
                <i className="icon-plus operative_icon" onClick={()=>setPost(!post)}></i>
                </div>
                }
                
            </div>
            </div>
            <div>
                <p className='mt-2'>
                  Electronically Signed By: Dr {storageData.name} {moment().format('Do MMMM YYYY, h:mm:ss a')}
                </p>
                <small>CAUTION:This message may contain both confidential and privileged information intended only for the addresses named above.If you are not intended recipient you are hereby notified that any dissemination,distribution or reproduction of this message is prohibited.If you have received this this message in error please notify the sender immediately,then destroy the original message.Any views expressed in this message are solely those of the individual.</small>
            </div>
            </div>
            <div className='report-btn2 mt-3'>
                <button className='report-save-btn2' onClick={handleSave}>Save</button>
                <button className='report-print-btn2' onClick={handlePrint}>Print</button>
            </div>
        </div>
    );
};

export default ProcedureReport;
// 