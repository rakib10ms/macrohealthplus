import axios from 'axios';
import React, { useEffect, useState } from 'react';
import { Link, useParams } from "react-router-dom";
import swal from 'sweetalert';
import MusculoSkeletalExaminationSidebar from '../mse_setup_mainsidebar/MusculoSkeletalExaminationSidebar';


const EditPainOverPosterior = () => {
    const [painOverPosterior, setPainOverPosterior] = useState({
        name: "",
    });
    const handleChange = (e) => {
        setPainOverPosterior({ ...painOverPosterior, [e.target.name]: e.target.value })
    }
    let params = useParams();
    useEffect(() => {
        axios.get(`/edit-pain-over-posterior/${params.id}`)
            .then(res => setPainOverPosterior(res.data.painOverPosterior))
    }, []);
    const updatePainOverPosterior = (e) => {
        console.log("painOverPosterior", painOverPosterior)
        e.preventDefault();
        axios.post(`/update-pain-over-posterior/${params.id}`, painOverPosterior)
            .then(res => {
                if (res.data.status == 200) {
                    swal("Success", res.data.message, "success");
                    setPainOverPosterior({
                        name: ""
                    });

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
                            <h6 className="card-title"> Edit Pain Over Posterior
                                <Link to={'/pain-over-posterior'} className="btn btn-primary btn-sm float-end"> Back </Link>
                            </h6>
                        </div>
                        <div className="card-body">
                            <form id="PainOverPosteriorForm" onSubmit={updatePainOverPosterior}>
                                <div className="card-body">

                                    <div className="col-md-12">
                                        <div className="mb-3">
                                            <label className="form-label">Name</label>
                                            <input type="text" name='name' onChange={(e) => handleChange(e)} value={painOverPosterior.name} className="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" />
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

export default EditPainOverPosterior;