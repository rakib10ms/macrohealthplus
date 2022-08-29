import React, { useEffect, useState } from 'react';
import { Link } from "react-router-dom";
import axios from "axios";
import swal from "sweetalert";

import HistorySetupSidebar from "../history_setup_mainsidebar/HistorySetupSidebar";

function AddHeartSound() {

    const[statuslist,setStatusList]=useState([]);
     const [heartSound,setheartSound]=useState({
        heartSound_name:"",
         status_id:"",
        selection_criteria:"",
        error_list: [],
    });

    useEffect(() => {  
        axios.get(`/heartSound-status`).then(res => {
            if (res.data.status === 200) {
                console.log(res.data);
                setStatusList(res.data.status_list);
            }
        })
    }, 
    []);

    const handleInput=(e)=>{
       setheartSound({
           ...heartSound,[e.target.name]:e.target.value
       });
    }

    const submitheartSound=(e)=>{     
        e.preventDefault();
        const data={
            heartSound_name:heartSound.heartSound_name,
             status_id:heartSound.status_id,
            selection_criteria:heartSound.selection_criteria,
        }
    
        axios.post(`/save-heartSound`,data).then(res=>{
            if(res.data.status==200){
                swal("Success", res.data.message, "success");
               setheartSound({
                heartSound_name:"",
                 status_id:"",
                selection_criteria:"",
                error_list: [],

               });
            }
            else if(res.data.status==400){
                setheartSound({ ...heartSound, error_list: res.data.errors });

            }
   
        })
    }
    
    return (
        <div>
               <>
    <div className="container">
        <div className="row">
            <div className="col-md-3">
                <HistorySetupSidebar/>
            </div>
        <div className="col-md-9 mt-3">
            <div className="card">
                <div className="card-header">
                    <h6 className="card-title"> Add Heart Sound
                        <Link to={'/heartSound'} className="btn btn-primary btn-sm float-end"> Back </Link>
                    </h6>
                </div>
                <div className="card-body">
                    <form id="heartSoundForm" onSubmit={submitheartSound}>
                        <div className="card-body">

                <div className="col-md-12">
                
        
                    <div className="form-group">
                        <label htmlFor="history_name" className="col-form-label-sm"> Name </label>
                        <input type="text"  value={heartSound.heartSound_name} className="form-control" name="heartSound_name" onChange={handleInput} />
                        <span className="text-danger">{heartSound.error_list.heartSound_name}</span>

                    </div>
                    <div>
                        <label htmlFor="inputPassword4"
                                className="form-label  col-form-label col-form-label-sm">Status</label>

                        <select id="inputState" onChange={handleInput} value={heartSound.status_id} name="status_id"
                            className="form-select  col-form-label-sm font-size-patient">
                            <option selected>Select</option>
                            {
                                statuslist.map((item) => {
                                    return (
                                        <option value={item.id} key={item.id}>{item.history_exam_status_name}</option>
                                    )
                                })
                            }
                            </select>
                            <span className="text-danger">{heartSound.error_list.status_id}</span>

                    </div>


         <div className='form-group mt-3'>
                    <label htmlFor="history_name" className="col-form-label-sm mt-1  "><b className='me-3'>Selection </b></label>
                    <div class="form-check form-check-inline  ">
                        <input className="form-check-input mt-1" type="radio" onChange={handleInput} name="selection_criteria"id="inlineRadio1" value="single"/>
                        <label className="form-check-label" for="inlineRadio1"> <span style={{marginLeft:"-28px"}}>Single </span></label>
                        </div>
                        <div className="form-check form-check-inline">
                        <input className="form-check-input mt-1" type="radio" onChange={handleInput} name="selection_criteria" id="inlineRadio2" value="multiple"/>
                        <label className="form-check-label" for="inlineRadio2"> <span style={{marginLeft:"-28px"}}>Multiple </span></label>
                </div>
            </div>
            <span className="text-danger">{heartSound.error_list.selection_criteria}</span>


                
                    <div className="float-right">
                        <button type="submit" className="btn btn-sm btn-primary text-uppercase float-end mt-2"><i
                            className="fas fa-save"></i> Save
                        </button>
                    </div>
                </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>

        </div>
    </div>
        </>
        </div>
    )
}

export default AddHeartSound;