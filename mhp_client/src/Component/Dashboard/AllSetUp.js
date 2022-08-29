import React, { useState } from 'react';
import { Link } from 'react-router-dom';
import './dashboard_sidebar.css';
const AllSetUp = () => {
    const [data, setData] = useState([
        {
            title: "Appointment Setup",
            setup: [
                { name: "Ethnicity", link: "/ethnicity" },
                { name: "Religions", link: "/religions" },
                { name: "Occupation", link: "/occupation" },
                { name: "Country", link: "/country" },
                { name: "City", link: "/city" },
            ]
        },
        {
            title: "Doctor Setup",
            setup: [
                { name: "Test", link: "/all-test" },
                { name: "Reaction", link: "/reaction" },
                { name: "Diagnosis", link: "/diagnosis" },
                { name: "Drug Name", link: "/drug-name" },
                { name: "Specialist", link: "/specialist" },
            ]
        },
        {
            title: "Billing Setup",
            setup: [
                { title: "Billing Setup", name: "Digital", link: "/digital" },
                { title: "Billing Setup", name: "Card", link: "/card" },
                { title: "Billing Setup", name: "Branch", link: "/branch" },
                { title: "Billing Setup", name: "Bank", link: "/bank" },
                { title: "Billing Setup", name: "Doctor Fee Name", link: "/doctorFee-name" },
            ]
        },
        {
            title: "Anatomy Setup",
            setup: [
                { title: "Anatomy Setup", name: "Main Body Part", link: "/main-body-part" },
                { title: "Anatomy Setup", name: "Sub Body Part", link: "/sub-body-part" },
                { title: "Anatomy Setup", name: "Symptoms", link: "/symptoms-anatomy" },
            ]
        },
    ]);
    const [allData, setAllData] = useState([
        { title: "Doctor Setup", name: "Test", link: "/all-test" },
        { title: "Doctor Setup", name: "Reaction", link: "/reaction" },
        { title: "Doctor Setup", name: "Diagnosis", link: "/diagnosis" },
        { title: "Doctor Setup", name: "Drug Name", link: "/drug-name" },
        { title: "Doctor Setup", name: "Specialist", link: "/specialist" },
        { title: "Appointment Setup", name: "Ethnicity", link: "/ethnicity" },
        { title: "Appointment Setup", name: "Religions", link: "/religions" },
        { title: "Appointment Setup", name: "Occupation", link: "/occupation" },
        { title: "Appointment Setup", name: "Country", link: "/country" },
        { title: "Appointment Setup", name: "City", link: "/city" },
        { title: "Billing Setup", name: "Digital", link: "/digital" },
        { title: "Billing Setup", name: "Card", link: "/card" },
        { title: "Billing Setup", name: "Branch", link: "/branch" },
        { title: "Billing Setup", name: "Bank", link: "/bank" },
        { title: "Billing Setup", name: "Doctor Fee Name", link: "/doctorFee-name" },
        { title: "Anatomy Setup", name: "Main Body Part", link: "/main-body-part" },
        { title: "Anatomy Setup", name: "Sub Body Part", link: "/sub-body-part" },
        { title: "Anatomy Setup", name: "Symptoms", link: "/symptoms-anatomy" },
    ]);
    const [filteredData, setFilteredData] = useState([])
    const filter = [
        { name: "Appointment" },
        { name: "Doctor" },
        { name: "History" },
    ]
    return (
        <div className='all-setup-container custom-card h-100 ms-2 mt-2 p-3'>
            <div className="setup-search d-flex mt-2">
                <h5 className="me-3">Setup</h5>
                <input type="text" onChange={(e) => {
                    let value = allData.filter(item => item.name.toLowerCase().match(e.target.value.toLowerCase()));
                    e.target.value.length > 2 ?
                        setFilteredData(value) : setFilteredData([])

                }} className="form-control form-control-sm w-25" placeholder='Search'/>
            </div>
            <div className="row mt-3">
                {
                    filteredData.length < 1 &&
                    data.map((item, i) => <div className="col-3">
                        <div key={i} className="setup-card g-doc-scroll">
                            <h6>{item.title}</h6>
                            <ul>
                                {item.setup.map((item, i) => <Link to={item.link}><li>{item.name}</li></Link>)}
                            </ul>
                        </div>
                    </div>)
                }
                {
                    filteredData.length > 0 &&
                    filteredData.map((item, i) => <div className="col-3">
                        <div key={i} className="setup-card">
                            <h6>{item.title}</h6>
                            <ul>
                                <Link to={item.link}><li>{item.name}</li></Link>
                            </ul>
                        </div>
                    </div>)
                }
            </div>
        </div>
    );
};

export default AllSetUp;