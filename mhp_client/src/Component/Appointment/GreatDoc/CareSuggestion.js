import React, { useState, useEffect } from 'react';
import axios from "axios";
import './CareSuggestion.css';
import { Link } from "react-router-dom";
import swal from 'sweetalert';
import { ToastContainer, toast } from 'react-toastify';

const CareSuggestion = (props) => {
    const [allSuggestionName, setAllSuggestionName] = useState([]);
    const [allCareDetails, setAllCareDetails] = useState([]);

    const [suggestionValue, setSuggestionvalue] = useState({
        allValues: []
    })

    const [detailsValue, setDetailsValue] = useState({
        allValues: []
    })



    const handleCheckBoxSuggestion = (e) => {
        const { value, checked } = e.target;
        const { allValues } = suggestionValue;

        if (checked) {
            setSuggestionvalue({
                allValues: [...allValues, value],
            });
        }

        else {
            setSuggestionvalue({
                allValues: allValues.filter((e) => e !== value),
            });
        }
    }

    const handleCheckBoxDetails = (e) => {
        const { value, checked } = e.target;
        const { allValues } = detailsValue;

        if (checked) {
            setDetailsValue({
                allValues: [...allValues, value],
            });
        }

        else {
            setDetailsValue({
                allValues: allValues.filter((e) => e !== value),
            });
        }
    }

    const data = {
        care_suggestion_id: suggestionValue.allValues,
        care_details_id: detailsValue.allValues,

    }



    useEffect(() => {
        axios.get(`/care-suggestion`).then(res => {
            if (res.data.status == 200) {
                setAllSuggestionName(res.data.care_suggestion);
            }
        })
        axios.get(`/care-details`).then(res => {
            if (res.data.status == 200) {
                setAllCareDetails(res.data.care_details);
            }
        })

    }, [])



    const submitcareSuggestion = (e) => {
        e.preventDefault();
        if(data.care_suggestion_id.length==0 || data.care_details_id ==0){
            toast.error("Please Provide all valid input");
        }
        else{
            axios.post(`/save-greatdoc-care-suggestion`, data).then(res => {
                if (res.data.status == 200) {
                    toast.success("Care Suggestions added successfully");
                    // setcareSuggestion({
                    //     care_suggestion_name: "",
                    //     error_list: [],
    
                    // });
    
                }
                let class1 = document.getElementsByClassName('id1');
                for (let i = 0; i <= class1.length; i++) {
                    return class1[i].checked=false;
                }
    
            })
        }
  

    }
    return (
        <>
            <div className='care_suggestion_container d-flex'>
                <p>Tick for inclusion as preventive care</p>
                <div className='preventive_care_box'>
                    {allSuggestionName.map((item, i) => {
                        return (
                            <div className='' key={i}>
                                <input type="checkbox" id="id1" name="" onChange={handleCheckBoxSuggestion} className='ms-3 mt-2 id1' value={item.id} />
                                <label for="" className='ms-2'>{item.care_suggestion_name}</label> <br />
                            </div>
                        )
                    })}

                </div>
                <p>Add On Detail</p>
                <div className='detail_box'>
                    {allCareDetails.map((item, i) => {
                        return (
                            <div className='' key={i}>
                                <input type="checkbox" id="id2" name="" className='ms-3 mt-2 id2' value={item.id} onChange={handleCheckBoxDetails} />
                                <label for="" className='ms-2'>{item.care_details_name}</label> <br />
                            </div>
                        )
                    })}
                </div>
            </div>
            <div className='care_suggestion_btn'>
                <button className='care_suggestion_btn_right' onClick={props.closeCareSuggestionModal}>Cancel</button>
                <button className='care_suggestion_btn_left' onClick={submitcareSuggestion}>Save</button>
            </div>
        </>
    );
};

export default CareSuggestion;