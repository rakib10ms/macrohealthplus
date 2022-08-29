import React, { useState } from 'react';
import {Link} from 'react-router-dom';
import axios from 'axios';
import swal from 'sweetalert';
import ProcedureReportSetupSidebar from './ProcedureReportSetupSidebar';

const AddProcedureName = () => {

    const [procedureName,setProcedureName] = useState({
        procedure_name:""
    });

    const saveProcedureName =(e)=>{
     e.preventDefault();
 
     const procedureReportName ={
         name:procedureName
     }
     
     axios.post('/save-procedure-report-name',procedureReportName)
     .then(res => {
         if (res.data.status == 200) {
            console.log(res.data)
             swal("Success", res.data.message, "success");
             setProcedureName({
                procedure_name:""
             });
 
         }
         else if (res.data.status == 400) {
             setProcedureName({ ...procedureName, error_list: res.data.errors });
 
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
                                    <h6 className="card-title"> Add Procedure Report Name
                                        <Link to={'/procedure-report-name'} className="btn btn-primary btn-sm float-end"> Back </Link>
                                    </h6>
                                </div>
                                <div className="card-body">
                                    <form id="RadiologyTestTypeForm" onSubmit={saveProcedureName}>
                                        <div className="card-body">
                                            <div className="col-md-12">
                                                <div className="form-group">
                                                    <label htmlFor="" className="col-form-label-sm"> Name </label>
                                                    <input type="text" value={procedureName.procedure_name} className="form-control" name="procedure_name" onChange={(e)=>{setProcedureName(e.target.value)}}/>
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

export default AddProcedureName;