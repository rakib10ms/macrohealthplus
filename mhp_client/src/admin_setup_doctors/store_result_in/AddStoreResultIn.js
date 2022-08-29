import axios from 'axios';
import React, { useState, useEffect } from 'react';
import { Link } from "react-router-dom";
import swal from 'sweetalert';
import DoctorInboxSetupSidebar from '../../DoctorInbox/DoctorInboxSetupSidebar';
function AddStoreResultIn() {
   
    const [storeResultIn,setstoreResultIn]=useState({
        store_result_in:"",
        error_list:[],
    });
   

    const handleInput=(e)=>{
       setstoreResultIn({
           ...storeResultIn,[e.target.name]:e.target.value
       });
    }
    const submitstoreResultIn=(e)=>{     
        e.preventDefault();
    //   console.log(storeResultIn);
        
        axios.post(`/save-storeResultIn`,storeResultIn).then(res=>{
            if(res.data.status==200){
                swal("Success", res.data.message, "success");
               setstoreResultIn({
                storeResultIn_name:"",
                error_list: [],

               });
            }
            else if(res.data.status==400){
                setstoreResultIn({ ...storeResultIn, error_list: res.data.errors });

            }
   
        })
    }
    
    return (
        <div>
               <>
    <div className="container">
        <div className="row">
            <div className="col-md-3">
                <DoctorInboxSetupSidebar />
            </div>
        <div className="col-md-9 mt-3">
            <div className="card">
                <div className="card-header">
                    <h6 className="card-title"> Add storeResultIn
                        <Link to={'/store-result-in'} className="btn btn-primary btn-sm float-end"> Back </Link>
                    </h6>
                </div>
                <div className="card-body">
                    <form id="storeResultInForm" onSubmit={submitstoreResultIn}>
                        <div className="card-body">

                <div className="col-md-12">
                
        
                    <div className="form-group">
                        <label htmlFor="history_name" className="col-form-label-sm"> Name </label>
                        <input type="text"  value={storeResultIn.storeResultIn} className="form-control" name="store_result_in" onChange={handleInput} />
                        {/* <span className="text-danger">{cnFour.error_list.name}</span> */}

                    </div>
                
                
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

export default AddStoreResultIn
