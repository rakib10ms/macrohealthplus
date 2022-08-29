import axios from 'axios';
import MaterialTable from 'material-table';
import React, { useState, useEffect } from 'react';
import { Link } from "react-router-dom";
import Swal from "sweetalert2";
import MusculoSkeletalExaminationSidebar from '../mse_setup_mainsidebar/MusculoSkeletalExaminationSidebar';

const TenderTenernessOverL1ToL6Thoraco = () => {
    const [tenderTenernessOverL1ToL6Thoraco, setTenderTenernessOverL1ToL6Thoraco] = useState([]);

    useEffect(() => {
        axios.get(`/tender-tenerness-over-l1-to-l6-thoraco`).then(res => {
            if (res.data.status === 200) {
                console.log("limping",res.data.tenderTenernessOverL1ToL6Thoraco);
                setTenderTenernessOverL1ToL6Thoraco(res.data.tenderTenernessOverL1ToL6Thoraco);
            }
        });

    }, []);

    const deleteTenderTenernessOverL1ToL6Thoraco = (e, id) => {

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
                axios.delete(`/delete-tender-tenerness-over-l1-to-l6-thoraco/${id}`).then(res => {
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
            title: "L1 To L6 Thoraco Name", field: `name`

            , cellStyle: {
                marginLeft: 50,
                width: 600
            },
        },
        {
            title: "Action", field: "patient", render: (row) => <div><Link to={`/edit-tender-tenerness-over-l1-to-l6-thoraco/${row.id}`} class="btn btn-info btn-sm action-btn"><i class="fas fa-edit"></i></Link>&nbsp;
                <button onClick={(e) => deleteTenderTenernessOverL1ToL6Thoraco(e, row.id)} className="btn btn-danger btn-sm action-btn"> <i class="fas fa-trash"></i> </button></div>
        },
    ];
    return (
        <div className="container">
            <div className="row">
                <div className="col-md-3">
                    <MusculoSkeletalExaminationSidebar />
                </div>
                <div className="col-md-9 mt-3">
                    <div className="card">
                        <div className="card-header">
                            <h6 className="card-title"> Tender/Tenerness Over L1 To L6 Thoraco
                                <Link to='/add-tender-tenerness-over-l1-to-l6-thoraco' className="btn btn-primary btn-sm float-end"> Add  </Link>
                            </h6>
                        </div>
                        <div className="card-body">

                            <MaterialTable
                                columns={columns}
                                data={tenderTenernessOverL1ToL6Thoraco}
                                options={{
                                    search: true,
                                    showTitle: false,
                                    searchFieldAlignment: "left",
                                    pageSize: 5,
                                    emptyRowsWhenPaging: false,
                                    pageSizeOptions: [5, 10, 20, 50, 100]
                                }}

                            />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    );
};

export default TenderTenernessOverL1ToL6Thoraco;