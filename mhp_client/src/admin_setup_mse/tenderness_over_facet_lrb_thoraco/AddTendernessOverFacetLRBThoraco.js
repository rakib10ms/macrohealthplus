import axios from 'axios';
import React, { useState } from 'react';
import { Link } from "react-router-dom";
import swal from 'sweetalert';
import MusculoSkeletalExaminationSidebar from '../mse_setup_mainsidebar/MusculoSkeletalExaminationSidebar';

const AddTendernessOverFacetLRBThoraco = () => {
    const [tendernessOverFacetLRBThoraco, setTendernessOverFacetLRBThoraco] = useState({
        name: "",
        error:""
    });
    const handleChange = (e) => {
        setTendernessOverFacetLRBThoraco({ ...tendernessOverFacetLRBThoraco, [e.target.name]: e.target.value })
    }
    const SubmitTendernessOverFacetLRBThoraco = (e) => {
        // alert("tendernessOverFacetLRBThoraco")
        e.preventDefault();
        axios.post("/add-tenderness-over-facet-lrb-thoraco",tendernessOverFacetLRBThoraco)
        .then(res=>{
            if (res.data.status == 200) {
                swal("Success", res.data.message, "success");
                setTendernessOverFacetLRBThoraco({
                    name:""
                });
    
            }
            else if(res.data.status===400){
                setTendernessOverFacetLRBThoraco({...tendernessOverFacetLRBThoraco,error:res.data.message.name[0]})
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
                            <h6 className="card-title"> Add Tenderness Over Facet LRB
                                <Link to={'/tenderness-over-facet-lrb-thoraco'} className="btn btn-primary btn-sm float-end"> Back </Link>
                            </h6>
                        </div>
                        <div className="card-body">
                            <form id="TendernessOverFacetLRBThoracoForm" onSubmit={SubmitTendernessOverFacetLRBThoraco}>
                                <div className="card-body">

                                    <div className="col-md-12">
                                        <div className="mb-3">
                                            <label className="form-label">Name</label>
                                            <input type="text" name='name' onChange={(e) => handleChange(e)} value={tendernessOverFacetLRBThoraco.name} className="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" />
                                            <span className='text-danger'>{tendernessOverFacetLRBThoraco.error}</span>
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

export default AddTendernessOverFacetLRBThoraco;