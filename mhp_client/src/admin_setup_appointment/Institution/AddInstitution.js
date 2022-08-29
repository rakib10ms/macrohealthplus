import axios from 'axios';
import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import swal from 'sweetalert';
import AddDashboard from '../AddDashboard/AddDashboard';

const AddInstitution = () => {
    const [institution, setInstitution] = useState({
        name: "",
    });


    const submitInstitute = (e) => {
        // alert("hgfdhgf")
        e.preventDefault();
        axios.post(`/institutions-save`, institution).then(res => {
            if (res.data.status === 200) {
                swal("Success", res.data.message, "success");
                setInstitution({
                    name: "",
                });

            }
           
        })
    }
    return (
        <div className="container">
            <div className="row">
                <div className="col-md-3">
                <AddDashboard />
                </div>
                <div className="col-md-9 mt-3">
                    <div className="card">
                        <div className="card-header">
                            <h6 className="card-title"> Add Institution
                                <Link to={'/institution'} className="btn btn-primary btn-sm float-end"> Back </Link>
                            </h6>
                        </div>
                        <div className="card-body">
                            <form id="CervixForm" onSubmit={submitInstitute}>
                                <div className="card-body">
                                    <div className="col-md-12">
                                        <div className="form-group">
                                            <label htmlFor="history_name" className="col-form-label-sm">Institution Name </label>
                                            <input type="text" value={institution.name} className="form-control" name="name" onChange={(e)=>setInstitution({...institution,name:e.target.value})} />
                                    
                                        </div>
                                        <div className="float-right">
                                            <button type="submit" className="btn btn-sm btn-primary text-uppercase float-end mt-2" ><i
                                                className="fas fa-save"  ></i> Save
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
    );
};

export default AddInstitution;