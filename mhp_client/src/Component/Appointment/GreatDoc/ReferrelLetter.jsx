import JoditEditor from 'jodit-react';
import moment from 'moment';
import React, { useEffect, useRef, useState } from 'react'
import CreateTemplate from './CreateTemplate';
import Modal from 'react-modal';
import { Autocomplete, TextField } from '@mui/material';
import './ReferalLetter.css'
import axios from 'axios';
import { toast } from 'react-toastify';


export default function ReferrelLetter(props) {

  const { patient_first_name, patient_last_name, id } = props.patient

  const [note, setNote] = useState("");
  const editor = useRef(null);
  const [customTem, setcustomTem] = useState([])
  const [updateTemDrop, setupdateTemDrop] = useState()

  useEffect(() => {
    axios.get('get-custom-template').then(res => {
      setcustomTem(res.data.tem)
    })
  }, [updateTemDrop])

  const [updateState, setupdateState] = useState()

  useEffect(() => {
    const storageData = JSON.parse(localStorage.getItem('userData'))
    setNote(
      `<p style="text-align: right; line-height: 1;"><img src="${global.img_url}/logo/logo.png" alt="" width="91" style="float: left;" height="63"></p>
      <p style="text-align: right; line-height: 1;"><span style="color: rgb(106, 168, 79);"><strong style="font-family: Tahoma, Geneva, sans-serif;">&nbsp; Macrohealthplus Medical Centre</strong></span></p>
      <p style="text-align: right; line-height: 1;"><span style="color: rgb(106, 168, 79);">+01 234 567 889 | info@macrohealthplus.com</span></p>
      <hr>
      <p><span style="font-family: Tahoma, Geneva, sans-serif; font-size: 14px;"><strong>${moment(Date.now()).format("Do MMM YYYY")}</strong></span></p>
      <p><span style="font-family: Tahoma, Geneva, sans-serif; font-size: 14px;"><strong></strong></span><br><span style="font-family: Tahoma, Geneva, sans-serif; font-size: 14px;"><strong>Re:</strong> ${patient_first_name == null ? '' : patient_first_name} ${patient_last_name == null ? '' : patient_last_name} Letter of Medical Necessity</span></p>
      
      
      
      <p style="text-align: justify;"><span style="font-family: Tahoma, Geneva, sans-serif; font-size: 14px;"><br></span></p>
      <p style="text-align: justify;"><span style="font-family: Tahoma, Geneva, sans-serif; font-size: 14px;"><strong>Dear Dr. [Bariatric Surgeon’s Name]</strong></span></p>
      <p style="text-align: justify;"><span style="font-family: Tahoma, Geneva, sans-serif; font-size: 14px;">I am referring <strong>${patient_first_name == null ? '' : patient_first_name} ${patient_last_name == null ? '' : patient_last_name}</strong> for evaluation and consideration for a weight&nbsp;</span><span style="font-family: Tahoma, Geneva, sans-serif; font-size: 14px;">management surgical procedure. (S)He currently weighs [# of lbs] pounds and is&nbsp;</span><span style="font-family: Tahoma, Geneva, sans-serif; font-size: 14px;">[# of in.] inches tall. Her/His BMI is [BMI #].&nbsp;</span><span style="font-family: Tahoma, Geneva, sans-serif; font-size: 14px;">I have been [patient’s name]’s primary care physician for the past [#of yrs] years.</span></p>
      <p style="text-align: justify;"><span style="font-family: Tahoma, Geneva, sans-serif; font-size: 14px;">I have supervised several of her/his weight control diets and programs. None of these have resulted in any sustained weight loss. As a result of this persistent morbid obesity, her/his co-morbid conditions are becoming more difficult to manage. These co-morbid</span></p>
      <p style="text-align: justify;"><span style="font-family: Tahoma, Geneva, sans-serif; font-size: 14px;">conditions are as follows:</span></p>
      <p style="text-align: justify;"><span style="font-family: Tahoma, Geneva, sans-serif; font-size: 14px;">Duration: Medication:</span></p>
      <p style="text-align: justify;"><span style="font-family: Tahoma, Geneva, sans-serif; font-size: 14px;">1. Hypertension 3 years Norvasc/Tenormin</span></p>
      <p style="text-align: justify;"><span style="font-family: Tahoma, Geneva, sans-serif; font-size: 14px;">2. Diabetes Mellitus 5 years Glucophage</span></p>
      <p style="text-align: justify;"><span style="font-family: Tahoma, Geneva, sans-serif; font-size: 14px;">3. Obesity Related Depression 3 years Prozac</span></p>
      <p style="text-align: justify;"><span style="font-family: Tahoma, Geneva, sans-serif; font-size: 14px;">Losing weight will certainly make these conditions easier to manage. Since non-surgical programs have failed to provide any long-term benefits for the patient, I feel surgery is her/his only option.</span></p>
      <p style="text-align: justify;"><span style="font-family: Tahoma, Geneva, sans-serif; font-size: 14px;">I hope you will find <strong>${patient_first_name == null ? '' : patient_first_name} ${patient_last_name == null ? '' : patient_last_name}</strong> a suitable candidate for the surgical weight&nbsp;</span><span style="font-family: Tahoma, Geneva, sans-serif; font-size: 14px;">reduction program. It will provide a tool to assist her/him in losing weight, as well as maintain that weight loss. I anticipate that this will provide her/him with a significantly&nbsp;</span><span style="font-family: Tahoma, Geneva, sans-serif; font-size: 14px;">improved quality of life.</span></p>
      <p style="text-align: justify;"><span style="font-family: Tahoma, Geneva, sans-serif; font-size: 14px;"><br></span></p>
      <p style="text-align: justify;"><span style="font-family: Tahoma, Geneva, sans-serif; font-size: 14px;">Sincerely,</span></p>
      <p style="text-align: justify;"><span style="font-family: Tahoma, Geneva, sans-serif; font-size: 14px;"><strong>${storageData.name}</strong></span></p>
      <p style="text-align: justify;"><span style="font-family: Tahoma, Geneva, sans-serif; font-size: 14px;">[Signature]</span></p>`
    )
  }, [updateState]);

  const config = {
    // removeButtons: ["source","iframe","xpath","wrap-nodes","video","table-keyboard-navigation","color","copy-format","drag-and-drop",'drag-and-drop-element',"enter","error-messages","file","focus","font","format-block","fullsize","hotkeys","hr","about","key-arrow-outside","limit","line-height","link","media","mobile","ordered-list","paste","paste-from-word","paste-storage","placeholder","powered-by-jodit","preview","print","backspace","add-new-line","clipboard"],
    readonly: false, // all options from https://xdsoft.net/jodit/doc/,
    removeButtons: ["fullsize", "about", "clean-html", "clipboard", "powered-by-jodit", "redo-undo"],
  };

  const [createTemModel, setcreateTemModel] = useState(false)
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

  const [afterSave, setafterSave] = useState("")

  const saveData = () => {
    const storageData = JSON.parse(localStorage.getItem('userData'))

    const data = {
      patient_id: id,
      data: note,
      user_id: storageData.user_id,
      user_type: storageData.user_type

    }
    axios.post('/save-patient-referal-letter', data).then(res => {
      toast.success(res.data.message)
      setafterSave(res.data.message)
    })
  }

  return (
    <div>
      <span className='float-end'><i onClick={()=>{  
        props.setrefferalLeterModel(false)
        setafterSave("")
        }} className="fal fa-times" style={{ cursor: 'pointer' }}></i></span>
      <div className='d-flex'>
        <h6 style={{ fontSize: "14px" }}>Referral Letter</h6>

        <select name="template" className='temDropDown' onChange={(e) => {
          if (e.target.value == 'default') {
            setupdateState(Math.random())
          } else {
            setNote(e.target.value)
          }
        }}>
          <option value="default" defaultValue>Select Template</option>
          <option value="default">Standard RL</option>
          {
            customTem.length > 0 && customTem.map((item, i) => {
              return (
                <option key={i} value={item.data}>{item.name}</option>
              )
            })
          }
        </select>
        {
          afterSave.length > 1 ?
          <i class="fa-solid fa-circle-check createLeater" style={{color:"green"}}></i>
          :
          <i onClick={saveData} class="fa-solid fa-floppy-disk createLeater"></i>
        }
        <i onClick={() => setcreateTemModel(true)} class="fa-solid fa-circle-plus createLeater"></i>
      </div>
      {/* <hr /> */}
      <Modal
        isOpen={createTemModel}
        onRequestClose={createTemModel}
        style={StylesPdfPreview}
      >
        <CreateTemplate setcreateTemModel={setcreateTemModel} setupdateTemDrop={setupdateTemDrop} />
      </Modal>
      <JoditEditor
        ref={editor}
        value={note}
        config={config}
        tabIndex={1} // tabIndex of textarea
        onBlur={(newContent) => setNote(newContent)} // preferred to use only this option to update the content for performance reasons
        onChange={(newContent) => {
          //console.log("Data for Text editor", newContent)
        }}
      />
    </div>
  )
}
