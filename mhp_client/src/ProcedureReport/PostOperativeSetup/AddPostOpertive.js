import axios from 'axios';
import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import swal from 'sweetalert';
import ProcedureReportSetupSidebar from '../ProcedureReportSetupSidebar';

const AddPostOpertive = () => {

    const [postOperativeName,setPostOperativeName] = useState({
           post_operative_name:""
    });

    const saveFollowupName =(e)=>{
     e.preventDefault();
    
     const postNames ={
         name:postOperativeName
     }
     
     axios.post('/save-post-operative-name',postNames)
     .then(res => {
         if (res.data.status === 200) {
             swal("Success", res.data.message, "success");
             setPostOperativeName({
                post_operative_name:""
             });
 
         }
         else if (res.data.status === 400) {
            setPostOperativeName({ ...postOperativeName, error_list: res.data.errors });
 
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
                                    <h6 className="card-title"> Add Post Operative Name
                                        <Link to={'/post-operative'} className="btn btn-primary btn-sm float-end"> Back </Link>
                                    </h6>
                                </div>
                                <div className="card-body">
                                    <form id="RadiologyTestTypeForm" onSubmit={saveFollowupName}>
                                        <div className="card-body">
                                            <div className="col-md-12">
                                                <div className="form-group">
                                                    <label htmlFor="" className="col-form-label-sm"> Name </label>
                                                    <input type="text" className="form-control" value={postOperativeName.post_operative_name} name="post_operative_name" onChange={(e)=>{setPostOperativeName(e.target.value)}}/>
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

export default AddPostOpertive;