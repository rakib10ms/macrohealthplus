import axios from 'axios';
import MaterialTable from 'material-table';
import React, { useState, useEffect } from 'react';
import { Link } from "react-router-dom";
import Swal from "sweetalert2";
import MlhSetupSidebar from '../mlh_setup_mainsidebar/MlhSetupSidebar';

function CommonHistory() {
    const [history, sethistory] = useState([]);

    useEffect(() => {
        axios.get(`/commonHistory`).then(res => {
            if (res.data.status === 200) {
                sethistory(res.data.commonHistory);
            }

        });

    }, []);

    const deletehistory = (e, id) => {

        e.preventDefault();
        const thisClicked = e.currentTarget;
        //  thisClicked.innerText = "Deleting";

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
                axios.delete(`/delete-commonHistory/${id}`).then(res => {
                    if (res.data.status === 200) {
                        thisClicked.closest("tr").remove();
                        //   swal("Success", res.data.message, "success");
                    }
                });
                Swal.fire(
                    'Deleted!',
                    'Your data has been deleted.',
                    'success'
                )
            }
        })
 

    }

    const columns = [
        {
            title: "SL", field: "", render: (row) => <div>{row.tableData.id + 1}</div>,

              width: "40 !important"
        },
        {
            title: "Common History Name", field: `history_name`

            , cellStyle: {
                marginLeft: 50,
                width:600
            },
        },
        {
            title: "Examination Heading", field: `examination_heading.examinationHeading_name`

            , cellStyle: {
                marginLeft: 50,
                width:600
            },
        },

        {
            title: "Action", field: "patient", render: (row) => <div><Link to={`/edit-common-history/${row.id}`} class="btn btn-info btn-sm action-btn"><i class="fas fa-edit"></i></Link>&nbsp;
                <button onClick={(e) => deletehistory(e, row.id)} className="btn btn-danger btn-sm action-btn"> <i class="fas fa-trash"></i> </button></div>
        },
    ];
    return (
        <>
           
            <div className="ms-2">
                <div className="row">
                    <div className="col-md-3">
                    <MlhSetupSidebar/>
                    </div>
                    <div className="col-md-9 mt-2">
                        <div className="custom-card">
                            <div className="card-header">
                                <h6 className="card-title">Common History
                                    <Link to='/add-common-history' className="btn btn-primary btn-sm float-end"> Add  </Link>
                                </h6>
                            </div>
                            <div className="card-body">
                                
                                <MaterialTable
                                    columns={columns}
                                    data={history}
                                    options={{
                                        search: true,
                                        // filtering: filter,
                                        showTitle: false,
                                        searchFieldAlignment: "left",
                                        pageSize: 5,
                                        emptyRowsWhenPaging:false,
                                        pageSizeOptions: [5, 10, 20, 50, 100]
                                    }}

                                />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            
        </>

    )
}

export default CommonHistory