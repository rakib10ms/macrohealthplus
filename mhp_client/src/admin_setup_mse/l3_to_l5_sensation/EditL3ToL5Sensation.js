import axios from 'axios';
import React, { useEffect, useState } from 'react';
import { Link, useParams } from "react-router-dom";
import swal from 'sweetalert';
import MusculoSkeletalExaminationSidebar from '../mse_setup_mainsidebar/MusculoSkeletalExaminationSidebar';


const EditL3ToL5Sensation = () => {
    const [l3ToL5Sensation, setL3ToL5Sensation] = useState({
        name: "",
    });
    const handleChange = (e) => {
        setL3ToL5Sensation({ ...l3ToL5Sensation, [e.target.name]: e.target.value })
    }
    let params = useParams();
    useEffect(() => {
        axios.get(`/edit-l3-to-l5-sensation/${params.id}`)
            .then(res => setL3ToL5Sensation(res.data.l3ToL5Sensation))
    }, []);
    const updateL3ToL5Sensation = (e) => {
        console.log("l3ToL5Sensation", l3ToL5Sensation)
        e.preventDefault();
        axios.post(`/update-l3-to-l5-sensation/${params.id}`, l3ToL5Sensation)
            .then(res => {
                if (res.data.status == 200) {
                    swal("Success", res.data.message, "success");
                    setL3ToL5Sensation({
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
                            <h6 className="card-title"> Edit L3 To L5 Sensation
                                <Link to={'/l3-to-l5-sensation'} className="btn btn-primary btn-sm float-end"> Back </Link>
                            </h6>
                        </div>
                        <div className="card-body">
                            <form id="L3ToL5SensationForm" onSubmit={updateL3ToL5Sensation}>
                                <div className="card-body">

                                    <div className="col-md-12">
                                        <div className="mb-3">
                                            <label className="form-label">Name</label>
                                            <input type="text" name='name' onChange={(e) => handleChange(e)} value={l3ToL5Sensation.name} className="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" />
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

export default EditL3ToL5Sensation;