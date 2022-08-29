import axios from 'axios';
import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import swal from 'sweetalert';
import ProcedureReportSetupSidebar from '../ProcedureReportSetupSidebar';

const AddFollowupName = () => {

    const [followupName,setFollowupName] = useState({
           followup_name:""
    });

    const saveFollowupName =(e)=>{
     e.preventDefault();
    
     const followupNames ={
         name:followupName
     }
     
     axios.post('/save-followup-name',followupNames)
     .then(res => {
         if (res.data.status === 200) {
             swal("Success", res.data.message, "success");
             setFollowupName({
                followup_name:""
             });
 
         }
         else if (res.data.status === 400) {
            setFollowupName({ ...followupName, error_list: res.data.errors });
 
         }
      }
     )}

    return (
        <div>
            <>
                <div className="container">
                    <div className="row">
                        <div className="col-md-3">
                            <ProcedureReportSetupSidebar />
                        </div>
                        <div className="col-md-9 mt-3">
                            <div className="card">
                                <div className="card-header">
                                    <h6 className="card-title"> Add Follow Up Name
                                        <Link to={'/followup'} className="btn btn-primary btn-sm float-end"> Back </Link>
                                    </h6>
                                </div>
                                <div className="card-body">
                                    <form id="RadiologyTestTypeForm" onSubmit={saveFollowupName}>
                                        <div className="card-body">
                                            <div className="col-md-12">
                                                <div className="form-group">
                                                    <label htmlFor="" className="col-form-label-sm"> Name </label>
                                                    <input type="text" className="form-control" value={followupName.followup_name} name="followup_name" onChange={(e)=>{setFollowupName(e.target.value)}}/>
                                                    <span className="text-danger"></span>
                                                </div>
                                                <div className="float-right">
                                                    <button type="submit" className="btn btn-sm btn-primary  text-uppercase float-end mt-2" ><i
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
    );
};

export default AddFollowupName;