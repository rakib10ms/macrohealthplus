import React, { useEffect, useState } from 'react';
import { Link } from "react-router-dom";
import axios from "axios";
import swal from "sweetalert";

import HistorySetupSidebar from "../history_setup_mainsidebar/HistorySetupSidebar";

function AddApexBeat() {

    const [apex_beatInput, setApexBeat] = useState({
        apex_beat_name: '',
        selection_criteria: '',
        error_list: [],
    });

    const handleInput = (e) => {
        e.persist();
        setApexBeat({ ...apex_beatInput, [e.target.name]: e.target.value })
    }

 

    const submitApexBeat = (e) => {
        e.preventDefault();

        const data = {
            apex_beat_name: apex_beatInput.apex_beat_name,
            selection_criteria: apex_beatInput.selection_criteria,
        }

        axios.post(`/save-apex-beat`, data).then(res => {
            // console.log(res.data.selection_criteria);
            if (res.data.status === 200) {
                swal("Success", res.data.message, "success");

                setApexBeat({
                    ...apex_beatInput,

                    apex_beat_name: '',
                    selection_criteria_id: '',
                    error_list: [],

                });

            } else if (res.data.status === 400) {
                setApexBeat({ ...apex_beatInput, error_list: res.data.errors });
            }

        });
    }

    return (
        <>
            
            <div className="container">
                <div className="row">
                    <div className="col-md-3">
                        <HistorySetupSidebar></HistorySetupSidebar>
                    </div>
                    <div className="col-md-9 mt-3">
                        <div className="card">
                            <div className="card-header">
                                <h6 className="card-title">Add Apex Beat
                                    <Link to={'/apex-beat'} className="btn btn-primary btn-sm float-end"> Back </Link>
                                </h6>
                            </div>
                            <div className="card-body">
                                <form onSubmit={submitApexBeat} id="apex_beatForms">
                                    <div className="card-body">

                                        <div className="col-md-12">
                                            <div className="form-group">
                                                <label htmlFor="apex_beat_name" className="col-form-label-sm">Apex Beat Name</label>
                                                <input type="text" onChange={handleInput} value={apex_beatInput.apex_beat_name} className="form-control font-size-patient" name="apex_beat_name" />
                                                <span className="text-danger">{apex_beatInput.error_list.apex_beat_name}</span>
                                            </div>

                                            <div className='form-group mt-3'>
                                                <label htmlFor="history_name" className="col-form-label-sm mt-1  "><b className='me-3'>Selection </b></label>
                                                <div class="form-check form-check-inline  ">
                                                    <input className="form-check-input mt-1" type="radio" onChange={handleInput} name="selection_criteria"id="inlineRadio1" value="single" />
                                                    <label className="form-check-label" for="inlineRadio1"> <span style={{marginLeft:"-28px"}}>Single </span></label>
                                                    </div>
                                                    <div className="form-check form-check-inline">
                                                    <input className="form-check-input mt-1" type="radio" onChange={handleInput} name="selection_criteria" id="inlineRadio2" value="multiple" />
                                                    <label className="form-check-label" for="inlineRadio2"> <span style={{marginLeft:"-28px"}}>Multiple </span></label>
                                            </div>
                                        </div>
                                        <span className="text-danger">{apex_beatInput.error_list.selection_criteria}</span>

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

    )
}


export default AddApexBeat;