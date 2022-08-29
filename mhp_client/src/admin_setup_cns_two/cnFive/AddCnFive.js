import axios from 'axios';
import React, { useState, useEffect } from 'react';
import { Link } from "react-router-dom";
import swal from 'sweetalert';
import CnsTwoSetupSidebar from '../cns_two_setup_mainsidebar/CnsTwoSetupSidebar';

function AddCnFive() {
   

     const [cnFive,setcnFive]=useState({
        name:"",
        error_list: [],
    });

   

    const handleInput=(e)=>{
       setcnFive({
           ...cnFive,[e.target.name]:e.target.value
       });
    }
    const submitcnFive=(e)=>{     
        e.preventDefault();
    //   console.log(cnFive);
        
        axios.post(`/save-cnFive`,cnFive).then(res=>{
            if(res.data.status==200){
                swal("Success", res.data.message, "success");
               setcnFive({
                name:"",
                error_list: [],

               });
            }
            else if(res.data.status==400){
                setcnFive({ ...cnFive, error_list: res.data.errors });

            }
   
        })
    }
    
    return (
        <div>
               <>
    <div className="container">
        <div className="row">
            <div className="col-md-3">
                <CnsTwoSetupSidebar/>
            </div>
        <div className="col-md-9 mt-3">
            <div className="card">
                <div className="card-header">
                    <h6 className="card-title"> Add CN-V
                        <Link to={'/cnFive'} className="btn btn-primary btn-sm float-end"> Back </Link>
                    </h6>
                </div>
                <div className="card-body">
                    <form id="EarCanalForm" onSubmit={submitcnFive}>
                        <div className="card-body">

                <div className="col-md-12">
                
        
                    <div className="form-group">
                        <label htmlFor="history_name" className="col-form-label-sm"> Name </label>
                        <input type="text"  value={cnFive.name} className="form-control" name="name" onChange={handleInput} />
                        <span className="text-danger">{cnFive.error_list.name}</span>

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

export default AddCnFive
