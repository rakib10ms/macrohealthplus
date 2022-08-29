import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import axios from "axios";
import '../../Patients/AddNewPatient/AddNewPatient.css';
import MaterialTable, { MTableToolbar } from 'material-table';
import { Checkbox, Select, MenuItem, Grid, Tooltip } from '@material-ui/core';
import PrintIcon from '@mui/icons-material/Print';
import jsPDF from 'jspdf';
import 'jspdf-autotable';
// import ReactExport from "react-export-excel";
import moment from 'moment';
import Swal from "sweetalert2";
import '../../../imageUrl';


// const ExcelFile = ReactExport.ExcelFile;
// const ExcelSheet = ReactExport.ExcelFile.ExcelSheet;                               
// const ExcelColumn = ReactExport.ExcelFile.ExcelColumn;
function AllPatients() {

    const [loading, setLoading] = useState(true);
    const [allpatients, setAllpatients] = useState([]);
    const [genders, setGenderDropdown] = useState([]);
    const [statuses, setStatusesList] = useState([]);
    const [filter, setFilter] = useState(false);
    const [status, setStatus] = useState("status");
    const [sortedData, setSortededData] = useState([]);
    const [sex, setSex] = useState("sex");
    const [age, setAge] = useState("age");

    useEffect(() => {

        axios.get(`/patients`).then(res => {
            // console.log(res.data);

            if (res.data.status === 200) {
                setAllpatients(res.data.patients);
                setSortededData(res.data.patients);
                setGenderDropdown(res.data.genders);
                setStatusesList(res.data.statuses);
                setLoading(false);
            }


        });

    }, []);

    // Filters option
    useEffect(() => {
        if (status === 'status') {
            setSortededData(allpatients)
        } else {
            setSortededData(allpatients.filter(patient => patient.statuses.status_name.toLowerCase() === status.toLowerCase()))
        }

    }, [status]);

    useEffect(() => {
        if (sex == 'sex') {
            setSortededData(allpatients)
        } else {
            setSortededData(allpatients.filter(patient => patient.patient_birth_sex.birth_sex_name.toLowerCase() === sex.toLowerCase()))
        }

        // else if (sex == 'male') {
        //     setSortededData(allpatients.filter(patient => patient.patient_birth_sex_id == 'Male'))
        // }
        // else if (sex == 'female') {
        //     setSortededData(allpatients.filter(patient => patient.patient_birth_sex_id == 'Female'))
        // }
        // else if (sex == 'others') {
        //     setSortededData(allpatients.filter(patient => patient.patient_birth_sex_id == 'Others'))
        // }

    }, [sex]);

    const dateConvert = (date = new Date()) => {
        const newDate = new Date();
        let year = newDate.getFullYear();
        let dobDate = new Date(date);
        let dobYear = dobDate.getFullYear();
        let patientAge = year - dobYear;
        return patientAge;
    }


    useEffect(() => {
        if (age === 'age') {
            setSortededData(allpatients)
        }
        else if (age === 10) {
            setSortededData(allpatients.filter(patient => dateConvert(patient.patient_dob) >= 1 && dateConvert(patient.patient_dob) <= 10));
        }
        else if (age === 20) {
            setSortededData(allpatients.filter(patient => dateConvert(patient.patient_dob) >= 11 && dateConvert(patient.patient_dob) <= 20));
        }
        else if (age === 30) {
            setSortededData(allpatients.filter(patient => dateConvert(patient.patient_dob) >= 21 && dateConvert(patient.patient_dob) <= 30));
        }
        else if (age === 40) {
            setSortededData(allpatients.filter(patient => dateConvert(patient.patient_dob) >= 31 && dateConvert(patient.patient_dob) <= 40));
        }
        else if (age === 50) {
            setSortededData(allpatients.filter(patient => dateConvert(patient.patient_dob) >= 41 && dateConvert(patient.patient_dob) <= 50));
        }


    }, [age]);
    // Filter Option
    console.log(allpatients);
    const deletePatient = (e, id) => {

        e.preventDefault();
        const thisClicked = e.currentTarget;

        Swal.fire({
            title: 'Are you sure?',
            text: "You won't be able to revert this!",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Yes, delete it!'
        }).then((result) => {
            if (result.isConfirmed) {
                axios.delete(`/delete-patients/${id}`).then(res => {
                    if (res.data.status === 200) {
                        thisClicked.closest("tr").remove();
                    }
                });
                Swal.fire(
                    'Deleted!',
                    'Your data has been deleted.',
                    'success'
                )
            }
        })
    };

    const columns = [
        {
            title: "Name", field: "patient_first_name", render: (row) => <div>{row.patient_images !== "" ? <img className="me-2" src={`${global.img_url}/images/files/${row.patient_images}`} width="20px" alt="No Image" /> : <img className="me-2" src={`https://static.thenounproject.com/png/363640-200.png`} width="20px" alt="No Image" />}{row.patient_title_id == null ? '' : row.title.title_name} {row.patient_first_name == null ? '' : row.patient_first_name} {row.patient_middle_name == null ? '' : row.patient_middle_name} {row.patient_last_name == null ? '' : row.patient_last_name}</div>
            , cellStyle: {
                width: 300
            },
        },
        {
            title: "HI No", field: "patient_hn_number", type: 'numeric', render: (row) => <div>{row.patient_hn_number == null ? '' : row.patient_hn_number}</div>, cellStyle: {
                width: 150
            },
        },
        { title: "Mobile", field: "patient_mobile_phone", type: 'numeric', render: (row) => <div>{row.patient_mobile_phone == null ? '' : row.patient_mobile_phone}</div> },
        { title: "Email", field: "patient_email", render: (row) => <div>{row.patient_email == null ? '' : row.patient_email}</div> },
        { title: "DOB", field: "patient_dob", type: 'numeric', render: (row) => <div>{row.patient_dob == null ? '' : moment(row.patient_dob).format('MM/DD/YYYY')}</div> },
        { title: "Status", field: "patient_status", render: (row) => <div>{row.patient_status == null ? '' : row.statuses.status_name}</div> },
        { title: "Sex", field: "patient_birth_sex_id", render: (row) => <div>{row.patient_birth_sex_id == null ? '' : row.patient_birth_sex.birth_sex_name}</div> },
        {
            title: "Action", field: "patient", render: (row) => <div className="text-center" style={{ fontSize: "3px" }}><Link to={`/edit-patients/${row.id}`} className="btn action-btn btn-sm" data-bs-toggle="tooltip" title="Edit Patients"><i className="far fa-edit"></i></Link>&nbsp;
                <button onClick={(e) => deletePatient(e, row.id)} className="btn action-btn btn-sm"> <i className="far fa-trash"></i> </button>&nbsp;
                <Link to={`/patients-profile/${row.id}`} className="btn action-btn btn-sm" data-bs-toggle="tooltip" title="Patients Profile"><i className="far fa-user-alt"></i></Link>
                {/* <Link to={`/lab-module/${row.id}`} className="btn action-btn btn-sm" data-bs-toggle="tooltip" title="Lab Module"> <i class="far fa-flask"></i>
                </Link> */}
            </div>
        },
    ];



    // export
    const printPdf = () => {
        const doc = new jsPDF();
        doc.text("Patient List", 90, 10);
        doc.autoTable({
            theme: "grid",
            headStyles: { fillColor: [255, 255, 255], textColor: [0, 0, 0] },
            columns: columns.map(col => ({ ...col, dataKey: col.field })),
            body: sortedData
        })
        doc.save("Ptaient.pdf")
    }


    return (
        <div className="ms-2 all-patients mt-2">
            <div className="custom-card patients-head ">
                <h5 className="fw-normal py-2 px-2  text-start mb-2 text-login">Patients List
                    <Link to='/newpatient' className="btn btn-primary me-1 btn-sm float-end"> Add Patients </Link>
                </h5>
            </div>

            <div className="custom-card patient-table mt-2">
                <MaterialTable
                    columns={columns}

                    data={sortedData}
                    isLoading={loading === true ? true : false}
                    options={{
                        search: true,
                        filtering: filter,
                        showTitle: false,
                        searchFieldAlignment: "left",
                        searchFieldStyle: { borderRadius: 16 },
                        pageSize: 10,
                        emptyRowsWhenPaging: false,
                        pageSizeOptions: [5, 10, 20, 50, 100],
                        // exportButton: true,

                    }}
                    components={{
                        Toolbar: (props) => <div>
                            <Grid style={{}}>
                                <button onClick={() => { setStatus("status"); }} className={`btn btn-outline data-table-btn ${status === "status" ? "active-data" : ""}  ms-2 me-1`}>All</button>
                                {
                                    statuses.map((item, i) => {
                                        return (
                                            <button key={i} onClick={() => { setStatus(`${item.status_name}`); }} className={`btn btn-outline data-table-btn ${status === item.status_name ? "active-data" : ""} ms-2 `}> {item.status_name}</button>
                                        )
                                    })
                                }
                                <Tooltip title="Export to Pdf" placement="bottom"><PrintIcon className="float-end export-icon pe-auto me-3 mt-1" onClick={() => printPdf()} /></Tooltip>


                            </Grid>
                            <MTableToolbar style={{ width: 80, fontSize: 14 }} {...props} />
                        </div>
                    }}
                    actions={[

                        {
                            icon: () => <div className="filter-selected"><Select
                                labelId="demo-simple-select-label"
                                id="demo-simple-select"
                                value={age}
                                // label="Age"
                                onChange={(e) => setAge(e.target.value)}

                                style={{ width: 70, fontSize: 14 }}
                            >
                                <MenuItem value={"age"}><em>Age</em></MenuItem>
                                <MenuItem value={10}>1-10</MenuItem>
                                <MenuItem style={{ width: 70, fontSize: 14 }} value={20}>11-20</MenuItem>
                                <MenuItem style={{ width: 80, fontSize: 14 }} value={30}>21-30</MenuItem>
                                <MenuItem style={{ width: 80, fontSize: 14 }} value={40}>31-40</MenuItem>
                                <MenuItem style={{ width: 80, fontSize: 14 }} value={50}>41-50</MenuItem>
                            </Select></div>,
                            isFreeAction: true
                        },
                        {
                            icon: () => <div className="filter-selected"><Select
                                labelId="demo-simple-select-label"
                                id="demo-simple-select"
                                value={status}
                                onChange={(e) => setStatus(e.target.value)}

                                style={{ width: 100, fontSize: 14 }}
                                align="middle"
                            >
                                <MenuItem style={{ width: 100, fontSize: 14 }} value={"status"}><em>Status</em></MenuItem>
                                {
                                    statuses.map((item, i) => {
                                        return (
                                            <MenuItem style={{ width: 100, fontSize: 14 }} value={item.status_name} key={item.status_name}><i className="fas fa-circle status-icon status-icon-active me-1"></i> {item.status_name}</MenuItem>
                                        )
                                    })
                                }

                            </Select>
                            </div>,
                            isFreeAction: true
                        },
                        {
                            icon: () =>
                                <div className="filter-selected"><Select
                                    labelId="demo-simple-select-label"
                                    id="demo-simple-select"
                                    value={sex}
                                    // label="Age"

                                    onChange={(e) => setSex(e.target.value)}
                                    style={{ width: 110, fontSize: 14 }}
                                >
                                    <MenuItem style={{ width: 110, fontSize: 14 }} value={"sex"}><em>Sex</em></MenuItem>
                                    {
                                        genders.map((item, i) => {
                                            return (
                                                <MenuItem style={{ width: 110, fontSize: 14 }} value={item.birth_sex_name} key={item.id}><i className="fas fa-male sex-icon me-1"></i> {item.birth_sex_name}</MenuItem>
                                            )
                                        })
                                    }

                                </Select>
                                </div>,
                            isFreeAction: true
                        },

                    ]}
                />


            </div>
        </div>
    )
}

export default AllPatients;
