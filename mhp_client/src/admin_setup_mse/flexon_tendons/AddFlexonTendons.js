import axios from 'axios';
import React, { useState } from 'react';
import { Link } from "react-router-dom";
import swal from 'sweetalert';
import MusculoSkeletalExaminationSidebar from '../mse_setup_mainsidebar/MusculoSkeletalExaminationSidebar';

const AddFlexonTendons = () => {
    const [flexonTendons, setFlexonTendons] = useState({
        name: "",
        error:""
    });
    const handleChange = (e) => {
        setFlexonTendons({ ...flexonTendons, [e.target.name]: e.target.value })
    }
    const SubmitFlexonTendons = (e) => {
        // alert("flexonTendons")
        e.preventDefault();
        axios.post("/add-flexon-tendons",flexonTendons)
        .then(res=>{
            if (res.data.status == 200) {
                swal("Success", res.data.message, "success");
                setFlexonTendons({
                    name:""
                });
    
            }
            else if(res.data.status===400){
                setFlexonTendons({...flexonTendons,error:res.data.message.name[0]})
            }
        })
    }
    return (
        <div className="container">
            <div className="row">
                <div className="col-md-3">
                    <MusculoSkeletalExaminationSidebar />
                </div>
                <div className="col-md-9 mt-3">
                    <div className="card">
                        <div className="card-header">
                            <h6 className="card-title"> Add Flexon Tendons
                                <Link to={'/flexon-tendons'} className="btn btn-primary btn-sm float-end"> Back </Link>
                            </h6>
                        </div>
                        <div className="card-body">
                            <form id="FlexonTendonsForm" onSubmit={SubmitFlexonTendons}>
                                <div className="card-body">

                                    <div className="col-md-12">
                                        <div className="mb-3">
                                            <label className="form-label">Name</label>
                                            <input type="text" name='name' onChange={(e) => handleChange(e)} value={flexonTendons.name} className="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" />
                                            <span className='text-danger'>{flexonTendons.error}</span>
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

export default AddFlexonTendons;