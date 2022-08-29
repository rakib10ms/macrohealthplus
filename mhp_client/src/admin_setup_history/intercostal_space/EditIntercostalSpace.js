import React, { useState, useEffect } from 'react';
import { Link } from "react-router-dom";
import axios from "axios";
import swal from "sweetalert";
import HistorySetupSidebar from "../history_setup_mainsidebar/HistorySetupSidebar";


function EditIntercostalSpace(props) {

    const [intercostal_spaceInput, setIntercostalSpace] = useState([]);
    const [error, setError] = useState([]);

    const [selection_criterialist, setSelectionCriterialist] = useState([]);

    useEffect(() => {

        axios.get(`/selection-criteria-dropdown`).then(res => {
            if (res.data.status === 200) {
                setSelectionCriterialist(res.data.selection_criteria);
            }
        })

        var url = window.location.href;
        var urlsplit = url.split("/");
        var lastpart = urlsplit[urlsplit.length - 1];
        if (lastpart === '') {
            lastpart = urlsplit[urlsplit.length - 2];
        }

        // const intercostal_space_id = props.match.params.id;
        axios.get(`/edit-intercostal-space/${lastpart}`).then(res => {

            if (res.data.status === 200) {
                setIntercostalSpace(res.data.intercostal_space);
            } else if (res.data.status === 404) {

                setError(res.data.errors);

            }

        });

    }, []);


    const handleInput = (e) => {
        e.persist();
        setIntercostalSpace({ ...intercostal_spaceInput, [e.target.name]: e.target.value });
    }

    const updateIntercostalSpace = (e) => {
        e.preventDefault();

        var url = window.location.href;
        var urlsplit = url.split("/");
        var lastpart = urlsplit[urlsplit.length - 1];
        if (lastpart === '') {
            lastpart = urlsplit[urlsplit.length - 2];
        }
        const data = intercostal_spaceInput;
        axios.post(`/update-intercostal-space/${lastpart}`, data).then(res => {
            if (res.data.status === 200) {
                console.log(res.data.status);
                swal("Success", res.data.message, "success");
                setIntercostalSpace({
                    ...intercostal_spaceInput,
                });
                setError('');
            } else {
                setError(res.data.errors)
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
                                <h6 className="card-title"> Edit Intercostal Space
                                    <Link to={'/intercostal-space'} className="btn btn-primary btn-sm float-end"> Back </Link>
                                </h6>
                            </div>
                            <div className="card-body">
                                <form onSubmit={updateIntercostalSpace}>
                                    <div className="card-body">

                                        <div className="col-md-12">
                                            <div className="form-group">
                                                <label htmlFor="intercostal_space_name" className="col-form-label-sm"> Intercostal Space Name </label>
                                                <input type="text" onChange={handleInput} value={intercostal_spaceInput.intercostal_space_name} className="form-control font-size-patient" name="intercostal_space_name" />
                                                <span className="text-danger">{error.intercostal_space_name}</span>
                                            </div>

                                            <div className='form-group mt-3'>
                                                <label htmlFor="history_name" className="col-form-label-sm mt-1  "><b className='me-3'>Selection </b></label>
                                                <div class="form-check form-check-inline  ">
                                                    <input className="form-check-input mt-1" type="radio" onChange={handleInput} name="selection_criteria"id="inlineRadio1" value="single" checked={intercostal_spaceInput.selection_criteria=='single'?true:''}/>
                                                    <label className="form-check-label" for="inlineRadio1"> <span style={{marginLeft:"-28px"}}>Single </span></label>
                                                    </div>
                                                    <div className="form-check form-check-inline">
                                                    <input className="form-check-input mt-1" type="radio" onChange={handleInput} name="selection_criteria" id="inlineRadio2" value="multiple" checked={intercostal_spaceInput.selection_criteria=='multiple'?true:''}/>
                                                    <label className="form-check-label" for="inlineRadio2"> <span style={{marginLeft:"-28px"}}>Multiple </span></label>
                                            </div>
                                        </div>

                                            <div className="float-right">
                                                <button type="submit" className="btn btn-primary btn-sm text-uppercase float-end mt-2"><i
                                                    className="fas fa-save"></i> Update
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

export default EditIntercostalSpace;