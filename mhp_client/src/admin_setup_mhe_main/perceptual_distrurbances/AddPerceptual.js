import axios from 'axios';
import React, { useState, useEffect } from 'react';
import { Link } from "react-router-dom";
import swal from 'sweetalert';
import MheMainSetupSidebar from '../mhe_main_setup_mainsidebar/MheMainSetupSidebar';

function AddPerceptual() {
   

    const[statuslist,setStatusList]=useState([]);
     const [perceptual,setperceptual]=useState({
        perceptual_name:"",
        status_id:"",
        selection_criteria:"",
        error_list: [],
    });

    useEffect(() => {  
        axios.get(`/examination-status-dropdown`).then(res => {
            console.log(res.data.status_list);
            if (res.data.status === 200) {
                setStatusList(res.data.status_list);
            }
        })
    }, 
    []);

    const handleInput=(e)=>{
       setperceptual({
           ...perceptual,[e.target.name]:e.target.value
       });
    }

    const submitCanal=(e)=>{     
        e.preventDefault();
        const data={
            perceptual_name:perceptual.perceptual_name,
            status_id:perceptual.status_id,
            selection_criteria:perceptual.selection_criteria,
        }
    
        axios.post(`/save-perceptual`,data).then(res=>{
            if(res.data.status==200){
                swal("Success", res.data.message, "success");
               setperceptual({
                perceptual_name:"",
                status_id:"",
                selection_criteria:"",
                error_list: [],

               });
            }
            else if(res.data.status==400){
                setperceptual({ ...perceptual, error_list: res.data.errors });

            }
   
        })
    }
    
    return (
        <div>
               <>
    <div className="container">
        <div className="row">
            <div className="col-md-3">
                <MheMainSetupSidebar/>
            </div>
        <div className="col-md-9 mt-3">
            <div className="card">
                <div className="card-header">
                    <h6 className="card-title"> Add perceptual
                        <Link to={'/perceptual'} className="btn btn-primary btn-sm float-end"> Back </Link>
                    </h6>
                </div>
                <div className="card-body">
                    <form id="EarCanalForm" onSubmit={submitCanal}>
                        <div className="card-body">

                <div className="col-md-12">
                
        
                    <div className="form-group">
                        <label htmlFor="history_name" className="col-form-label-sm"> Name </label>
                        <input type="text"  value={perceptual.perceptual_name} className="form-control" name="perceptual_name" onChange={handleInput} />
                        <span className="text-danger">{perceptual.error_list.perceptual_name}</span>

                    </div>
                    <div>
                        <label htmlFor="inputPassword4"
                                className="form-label  col-form-label col-form-label-sm">Status</label>

                        <select id="inputState" onChange={handleInput} value={perceptual.status_id} name="status_id"
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
                            <span className="text-danger">{perceptual.error_list.status_id}</span>

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
            <span className="text-danger">{perceptual.error_list.selection_criteria}</span>

                
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

export default AddPerceptual
