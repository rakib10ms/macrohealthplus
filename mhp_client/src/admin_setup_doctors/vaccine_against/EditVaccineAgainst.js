import axios from 'axios';
import React, { useEffect, useState } from 'react';
import { Link, useParams } from "react-router-dom";
import swal from 'sweetalert';
import ImmunisationSetupSidebar from '../immunisation_setup_sidebar/ImmunisationSetupSidebar';
import { render } from 'react-dom';
// import { COUNTRIES } from './countries';
import './style.css';
import { WithContext as ReactTags } from 'react-tag-input';
import { setTime } from '@syncfusion/ej2-react-schedule';

const EditVaccineAgainst = () => {
    const [vaccineAgainst, setvaccineAgainst] = useState('');
    const [allVaccineName, setAllVaccineName] = useState([]);

    console.log('check edit data', vaccineAgainst);
    const handleChange = (e) => {
        setvaccineAgainst({ ...vaccineAgainst, [e.target.name]: e.target.value })
    }
    let params = useParams();
    useEffect(() => {
        axios.get(`/edit-vaccine-against/${params.id}`)
            .then(res => {setvaccineAgainst(res.data.vaccine_against)
                setVaccineId(res.data.vaccine_against.vaccine_id)
    })
    }, []);

    useEffect(() => {
        axios.get(`/vaccine-name`).then(res => {

            if (res.data.status === 200) {
                setAllVaccineName(res.data.vaccine_name);
            } else if (res.data.status === 404) {

            }

        });

    }, []);

    const tranformArray = vaccineAgainst.against_tags;

    setTimeout(function () {
        console.log('check', tranformArray.split(','));
    }, 1000)








    const [vaccineId, setVaccineId] = useState('');

    console.log('vaccine id check',vaccineId)
    const handleInputChange = (e) => {
        setVaccineId(e.target.value)
    }

    ////////////////////tag input ////////////////

    const Keys = {
        TAB: 9,
        SPACE: 32,
        COMMA: 188,
    };

    const KeyCodes = {
        comma: 188,
        enter: 13
    };

    const delimiters = [KeyCodes.comma, KeyCodes.enter];


    const [tags, setTags] = React.useState([
        // { id: 'Vietnam', text: 'Vietnam' },
        // { id: 'Turkey', text: 'Turkey' }
    ]);

    const handleDelete = i => {
        setTags(tags.filter((tag, index) => index !== i));
    };

    const handleAddition = tag => {
        setTags([...tags, tag]);
    };

    const handleDrag = (tag, currPos, newPos) => {
        const newTags = tags.slice();

        newTags.splice(currPos, 1);
        newTags.splice(newPos, 0, tag);

        // re-render
        setTags(newTags);
    };

    const handleTagClick = index => {
        console.log('The tag at index ' + index + ' was clicked');
    };

    const tagString = Array.prototype.map.call(tags, function (item) { return item.text; }).join(",");
    const tagArray = tagString.split(',');

    const SubmitAgainstVaccine = (e) => {
        // alert("vaccineName")
        e.preventDefault();

        const datas = {
            vaccine_id: vaccineId,
            against_tags: tagArray
        }

        console.log('submitted data check', datas);
        axios.put(`/update-vaccine-against/${params.id}`, datas)
            .then(res => {
                if (res.data.status == 200) {
                    swal("Success", res.data.message, "success");
                    setVaccineId('');
                    setTags([{ id: "", text: "" }]);
                }

            })
    }

    return (
        <div className="container">
            <div className="row">
                <div className="col-md-3">
                    <ImmunisationSetupSidebar />
                </div>
                <div className="col-md-9 mt-3">
                    <div className="card">
                        <div className="card-header">
                            <h6 className="card-title"> Edit Vaccine Against
                                <Link to={'/vaccine-against'} className="btn btn-primary btn-sm float-end"> Back </Link>
                            </h6>
                        </div>
                        <div className="card-body">
                            <form id="vaccineAgainstForm" onSubmit={SubmitAgainstVaccine}>
                                <div className="card-body">

                                    <div className="col-md-12">
                                        <div className="mb-3">
                                            <label htmlFor="inputPassword4"
                                                className="form-label  col-form-label col-form-label-sm">Vaccine Name</label>

                                            <select id="inputState" onChange={handleInputChange} value={vaccineId} name="vaccine_id"
                                                className="form-select  col-form-label-sm font-size-patient" selected>
                                                <option selected>Select</option>
                                                {
                                                    allVaccineName.map((item, i) => {
                                                        return (
                                                            <option value={item.id} key={i}>{item.vaccine_name}</option>
                                                        )
                                                    })

                                                }
                                            </select>

                                        </div>
                                        <div className="mb-3">
                                            <label className="form-label">Name</label>
                                            <ReactTags
                                                tags={tags}
                                                delimiters={delimiters}
                                                handleDelete={handleDelete}
                                                handleAddition={handleAddition}
                                                handleDrag={handleDrag}
                                                handleTagClick={handleTagClick}
                                                inputFieldPosition="bottom"
                                                autocomplete
                                            />
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

export default EditVaccineAgainst;