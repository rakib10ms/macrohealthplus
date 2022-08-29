import React, { useState, useEffect } from "react";
import './LabModule.css'
function LabModuleHome3() {

    const [toogleState, setToogleState] = useState(1);

    console.log('check', toogleState)


    function toogleTab(index) {
        setToogleState(index)

    }

    return (
        <>
            <div class="shadow-sm p-2 mb-3 mt-2 bg-body rounded">
                <h5 className="mx-2" >Letterhead & e-sigh</h5>
            </div>

            <div className="d-flex">
                <i class="fa-solid fa-circle-info mt-1"></i>
                <p className="mx-3">Please contact customer support for assistance in updating letterhead and signatures</p>
            </div>


            <div className="report-sec">
                <div class="row">
                    <div className="col-md-7">
                        <div class="shadow-sm p-2 mb-3 mt-2 bg-body rounded border border-dark" style={{ minHeight: '100vh' }}>

                            <div className="top-h ">
                                <h1 class="display-4 text-center mt-5 pt-5">Report</h1>

                            </div>

                            <div className="bottom-h mt-5 pt-5">
                                <div className="d-flex mt-5 pt-5">
                                    <i class="fa-solid fa-pen-to-square mt-1"></i>

                                    <p className="mx-3">Show lab incharge signature:</p>
                                </div>
                                <div class="sign-op col-md-12">
                                    <div className="row mt-1">
                                        <div class="mb-3 col-md-6">
                                            <label for="exampleFormControlTextarea1" class="form-label">Lab incharge signature:</label>

                                            <select class="form-select" aria-label="Default select example">
                                                <option selected>Lab Incharge Signature</option>
                                                <option value="1">Aminur</option>
                                                <option value="1">Dr Rahim</option>
                                                <option value="1">Dr Akimim</option>

                                            </select>
                                        </div>

                                        <div class="mb-3 col-md-6">
                                            <label for="exampleFormControlTextarea1" class="form-label">Doctor signature:</label>
                                            <select class="form-select" aria-label="Default select example">
                                                <option selected>Lab Incharge Signature</option>
                                                <option value="1">Aminur</option>
                                                <option value="1">Dr Rahim</option>
                                                <option value="1">Dr Akimim</option>

                                            </select>
                                        </div>
                                    </div>

                                </div>

                                <div class="signat mt-4">
                                    <div class="row">
                                        <div class="mb-3 mt-4 col-md-6">
                                            <input class="form-control form-control-sm" type="file" id="formFile" />
                                        </div>
                                        <div class="mb-3 mt-4 col-md-6">
                                            <input class="form-control form-control-sm" type="file" id="formFile" />
                                        </div>
                                    </div>
                                    

                                </div>



                            </div>



                        </div>

                        <div className="footer-sign mt-4">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label for="exampleFormControlTextarea1" class="form-label">USG Report signature text:</label>
                                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="2">Signature</textarea>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="mb-3">
                                        <label for="exampleFormControlTextarea1" class="form-label">Digital Xray Report signature text:</label>
                                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="2">Signature</textarea>
                                    </div>
                                </div>

                            </div>
                            <button type="submit" className="btns  ">
                                Update
                            </button>
                        </div>


                    </div>
                    <div className="col-md-5">
                        <div class="shadow-sm p-2 mb-3 mt-2 bg-body rounded">
                            <h5>Upload Letterhead</h5>

                            <div class="mb-3 mt-4 col-md-8">
                                <input class="form-control form-control-sm" type="file" id="formFile" />
                            </div>



                            <button type="submit" className="btns mt-4 mb-4">
                                Update
                            </button>

                        </div>
                    </div>
                </div>




            </div>




        </>
    );
}

export default LabModuleHome3;