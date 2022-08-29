import React, { useState, useEffect } from "react";
import './LabModule.css'
function LabModuleHome4() {

    const [toogleState, setToogleState] = useState(1);

    console.log('check', toogleState)


    function toogleTab(index) {
        setToogleState(index)

    }

    const check = "rakib";

    const [welcomeSmsInput, setWelcomeSmsInput] = useState('Welcome to Macro Clinic Please save for any enquiries. -- MHP Software');
    const [billSmsInput, setbillSmsInput] = useState('Hello, Your reg. no. REG_NO You paid FEE_PAID, Total Fee: TOTAL_FEE Balance: BALANCE MHP Software');
    const [reportSmsInput, setreportSmsInput] = useState('Your report is ready. Kindly collect from the lab/centre -- from MHP Clinic -- MHP Software');



    return (
        <>
            <div class="shadow-sm p-2 mb-3 mt-2 bg-body rounded">
                <h5 className="mx-2" >SMS Settings</h5>
            </div>

            <div className="row px-2">

                <div class="col-md-7 d-flex rounded pt-1 px-4" style={{ background: "#E1ECD7", overflowY: 'none', height: '50px' }}>
                    <i class="fa-solid fa-circle-info " style={{ marginTop: "13px" }}></i>
                    <p className="mx-3 my-2 " >SMS is charged at 20p per credit. Buy credits from accounts page</p>

                </div>



                {/* <div className="col-md-4   d-flex  rounded pt-1" style={{background:"#E1ECD7"}}>
                    <i class="fa-solid fa-circle-question mt-1"></i>
                  <p className="mx-3"> <b> How it works ?</b></p>

                    </div> */}


                <div class="accordion accordion-flush col-md-5 rounded" id="accordionFlushExample">
                    <div class="accordion-item" style={{ background: "#E1ECD7" }}>
                        <h2 class="accordion-header" id="flush-headingOne">
                            <button class="accordion-button collapsed" type="button" style={{ background: "#E1ECD7" }} data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                                <i class="fa-solid fa-circle-question mt-1"></i>

                                <b className=" mx-2"> How it works ?</b>
                            </button>
                        </h2>
                        <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                            <div class="accordion-body">Placeholder content for this accordion, which is intended to demonstrate the accordion-flush class. This is the first item's accordion body.</div>
                        </div>
                    </div>
                </div>


            </div>


            <div class="shadow-sm pt-5 pb-5 mt-3 bg-body rounded">

                <div className="wrrap">
                    <div className="row">
                        <div className="col-md-4 px-5">
                            <div className="">
                                <div className="top d-flex mx-3 ">
                                    <input class="form-check-input p-1" type="checkbox" value="" id="flexCheckDefault" />

                                    <p className="">Send Welcome Sms</p>

                                </div>
                                <div className="bottoms mt-2">
                                    <div className="mobile">
                                        <div class="tops1 d-flex justify-content-center ">
                                            <div className="foot1 mt-4">
                                            </div>
                                            <div className="foot2 mx-2 mt-4">

                                            </div>

                                        </div>
                                        <div class="tops1-center px-3 ">

                                            {/* <div className="bg-white mt-3 p-2" style={{ height: '240px' }}>
                                                <h5>MHP Lab</h5>
                                                <hr />
                                                <p>Welcome to Macro Clinic Please save for any enquiries. </p>
                                                <p class="mt-3 mb-2">-- </p>



                                                <p class="mt-2">

                                                    MHP Software</p>
                                            </div> */}

                                            <div class="hu bg-white mt-3">
                                                <h5 class="pt-1 px-2">MHP LAB </h5>
                                                <div class="">
                                                    <hr />

                                                </div>
                                                <textarea class="form-control mt-3 border-0 outline-0" id="exampleFormControlTextarea1" rows="12" >

                                                    {welcomeSmsInput}
                                                </textarea>

                                            </div>





                                        </div>

                                        <div class="tops1-footer d-flex justify-content-center mt-2">

                                            <div className="fott">

                                            </div>

                                        </div>

                                    </div>

                                </div>

                            </div>

                        </div>
                        <div className="col-md-4 px-5">
                            <div className="">
                                <div className="top d-flex mx-3 ">
                                    <input class="form-check-input p-1" type="checkbox" value="" id="flexCheckDefault" />

                                    <p className="">Send Bill Sms</p>

                                </div>
                                <div className="bottoms mt-2">
                                    <div className="mobile">
                                        <div class="tops1 d-flex justify-content-center ">
                                            <div className="foot1 mt-4">
                                            </div>
                                            <div className="foot2 mx-2 mt-4">

                                            </div>

                                        </div>
                                        <div class="tops1-center px-3 ">

                                            {/* <div className="bg-white mt-3 p-2" style={{ height: '240px' }}>
    <h5>MHP Lab</h5>
    <hr />
    <p>Welcome to Macro Clinic Please save for any enquiries. </p>
    <p class="mt-3 mb-2">-- </p>



    <p class="mt-2">

        MHP Software</p>
</div> */}

                                            <div class="hu bg-white mt-3">
                                                <h5 class="pt-1 px-2">MHP LAB </h5>
                                                <div class="">
                                                    <hr />

                                                </div>
                                                <textarea class="form-control mt-3 border-0 outline-0" id="exampleFormControlTextarea1" rows="12" >
                                                    {billSmsInput}

                                                </textarea>

                                            </div>





                                        </div>

                                        <div class="tops1-footer d-flex justify-content-center mt-2">

                                            <div className="fott">

                                            </div>

                                        </div>

                                    </div>

                                </div>

                            </div>

                        </div>

                        <div className="col-md-4 px-5">
                            <div className="">
                                <div className="top d-flex mx-3 ">
                                    <input class="form-check-input p-1" type="checkbox" value="" id="CheckDefault" />

                                    <p className="">Send Report Ready Sms</p>

                                </div>
                                <div className="bottoms mt-2">
                                    <div className="mobile">
                                        <div class="tops1 d-flex justify-content-center ">
                                            <div className="foot1 mt-4">
                                            </div>
                                            <div className="foot2 mx-2 mt-4">

                                            </div>

                                        </div>
                                        <div class="tops1-center px-3 ">

                                            {/* <div className="bg-white mt-3 p-2" style={{ height: '240px' }}>
    <h5>MHP Lab</h5>
    <hr />
    <p>Welcome to Macro Clinic Please save for any enquiries. </p>
    <p class="mt-3 mb-2">-- </p>



    <p class="mt-2">

        MHP Software</p>
</div> */}

                                            <div class="hu bg-white mt-3">
                                                <h5 class="pt-1 px-2">MHP LAB </h5>
                                                <div class="">
                                                    <hr />

                                                </div>
                                                <textarea class="form-control mt-3 border-0 outline-0" id="exampleFormControlTextarea1" rows="12" >

                                                    {reportSmsInput}
                                                </textarea>

                                            </div>





                                        </div>

                                        <div class="tops1-footer d-flex justify-content-center mt-2">

                                            <div className="fott ">

                                            </div>

                                        </div>

                                    </div>

                                </div>

                            </div>

                        </div>


                    </div>
                </div>

            </div>

            <button type="submit" className="btns mt-3 ">
                Update
            </button>


        </>
    );
}

export default LabModuleHome4;