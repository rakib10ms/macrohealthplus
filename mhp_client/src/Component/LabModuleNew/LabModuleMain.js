import React, { useState, useEffect } from "react";
import LabModuleHome1 from "./LabModuleHome1";
import LabModuleHome2 from "./LabModuleHome2";
import LabModuleHome3 from "./LabModuleHome3";
import LabModuleHome4 from "./LabModuleHome4";
import LabModuleHome5 from "./LabModuleHome5";
import TestGroup from "./Setup/TestGroup";
import './LabModule.css'
import TestCategory from "./Setup/TestCategory";
import TestName from "./Setup/TestName";
import TestDatabse from "./Setup/TestDatabase";
function LabModuleMain() {

    const [toogleState, setToogleState] = useState(1);

    console.log('check', toogleState)


    function toogleTab(index) {
        setToogleState(index)

    }


    // const [toogleSideTabState, setToogleSideTabState] = useState('');


    // console.log('c1',toogleSideTabState)

    // function toogleSideTab(val) {
    //     setToogleSideTabState(val)

    // }

    return (
        <div className="home-main">
            <div className="container">
                <div className="row">
                    <div className="col-md-12">

                        <h5 className="pt-3 px-4 pb-0">Lab Module-LAB Panel</h5>
                        <hr />


                        <div className="main-pan  " >
                            <div className="row">
                                <div className="col-md-2" style={{ cursor: 'pointer' }}>
                                    <div class="shadow-sm pt-3  sidebarhover bg-body rounded " style={{ minHeight: '100%', textAlign: 'justify'}}>
                                        <p className="todyas-report  sidebarhover mt-2 mx-4">Today's Reports</p>
                                        <p className="todyas-report  sidebarhover mt-2 mx-4">Search Reports</p>
                                        <p className="todyas-report  sidebarhover mt-2 mx-4">Test Panels</p>
                                        {/* <p className="todyas-report  sidebarhover mt-2 mx-4" onClick={() => toogleTab('test-group')}>Test Group</p> */}
                                        <p className={` todyas-report  sidebarhover mt-2 mx-4 ${toogleState === 'test-group'? "addButtonStyle" : ""}`} onClick={() => toogleTab('test-group')}>Test Group</p>
                                        <p className={` todyas-report  sidebarhover mt-2 mx-4 ${toogleState === 'test-category'? "addButtonStyle" : ""}`} onClick={() => toogleTab('test-category')}>Test Categories</p>
                                        <p className={` todyas-report  sidebarhover mt-2 mx-4 ${toogleState === 'test-name'? "addButtonStyle" : ""}`} onClick={() => toogleTab('test-name')}>Test Names</p>
                                        <p className={`todyas-report  sidebarhover mt-2 mx-4 ${toogleState === 'test-database'? "addButtonStyle" : ""}`} onClick={() => toogleTab('test-database')}>Test Database</p>
                                        {/* <p className="todyas-report  sidebarhover mt-2 mx-4 ">Test Database</p> */}
                                        <p className="todyas-report  sidebarhover mt-2 mx-4">Test Count</p>
                                       
                                    </div>

                                </div>
                                <div className="col-md-10">
                                    <div class="shadow-sm p-2 mb-3 bg-body rounded">
                                        <h6 className="mx-2" >MACRO CLINIC SETUP</h6>
                                    </div>
                                    {/* <div class="shadow-sm p-1 bg-body rounded">
                                        <div className="row">

                                            <div className="col-md-9">

                                                <div class="input-group">
                                                    <input class="form-control form-control-sm mx-2 " type="search" id="example-search-input" placeholder="search here.." />
                               

                                                </div>


                                            </div>

                                            <div className="col-md-2 d-flex justify-content-end ms-auto">

                                                <i class="fa fa-cog mt-1 px-1" aria-hidden="true"></i>
                                                <p className="home-1st-note mx-2"> SetUp</p>
                                                <i class="fas fa-angle-down mt-1 px-1"></i>

                                            </div>

                                        </div>
                                    </div> */}

                                    <div class="tab-a mt-3" style={{ cursor: 'pointer' }}>
                                        <div id="" class="d-flex align-items-center justify-content-around rounded-2 py-1 px-3" style={{ backgroundColor: "#69B128" }}>
                                            <div class={`d-flex align-items-center ${toogleState === 1 && 'act'}`} onClick={() => toogleTab(1)}>
                                                <span className={`${toogleState === 1 ? "btn-chipa-update" : "btn-chipa"}`}>1</span>


                                                <p className={`mx-2 my-2 ${toogleState == 1 ? 'p-color-update' : 'p-color'}`} > Center Details</p>
                                            </div>
                                            <div class={`d-flex align-items-center ${toogleState === 2 && 'act'}`} onClick={() => toogleTab(2)}>
                                                <span className={`${toogleState === 2 ? "btn-chipa-update" : "btn-chipa"}`}>2</span>
                                                <p className={`mx-2 my-2 ${toogleState === 2 ? 'p-color-update' : 'p-color'}`} > Rate List</p>
                                            </div>
                                            <div class={`d-flex align-items-center ${toogleState === 3 && 'act'}`} onClick={() => toogleTab(3)}>
                                                <span className={`${toogleState === 3 ? "btn-chipa-update" : "btn-chipa"}`}>3</span>
                                                <p className={`mx-2 my-2 ${toogleState === 3 ? 'p-color-update' : 'p-color'}`} > Letterhead & e-sigh</p>
                                            </div>
                                            <div class={`d-flex align-items-center ${toogleState === 4 && 'act'}`} onClick={() => toogleTab(4)}>
                                                <span className={`${toogleState === 4 ? "btn-chipa-update" : "btn-chipa"}`}>4</span>
                                                <p className={`mx-2 my-2 ${toogleState === 4 ? 'p-color-update' : 'p-color'}`} > SMS</p>
                                            </div>

                                            <div class={`d-flex align-items-center ${toogleState === 5 && 'act'}`} onClick={() => toogleTab(5)}>
                                                <span className={`${toogleState === 5 ? "btn-chipa-update" : "btn-chipa"}`}>5</span>
                                                <p className={`mx-2 my-2 ${toogleState === 5 ? 'p-color-update' : 'p-color'}`} > Panels</p>
                                            </div>
                                            <div class={`d-flex align-items-center ${toogleState === 6 && 'act'}`} onClick={() => toogleTab(6)}>
                                                <span className={`${toogleState === 6 ? "btn-chipa-update" : "btn-chipa"}`}>6</span>
                                                <p className={`mx-2 my-2 ${toogleState == 6 ? 'p-color-update' : 'p-color'}`} > Proofread</p>
                                            </div>
                                        </div>

                                    </div>

                                    {
                                        toogleState === 1 && <LabModuleHome1> </LabModuleHome1>

                                    }

                                    {
                                        toogleState === 2 && <LabModuleHome2> </LabModuleHome2>


                                    }
                                    {
                                        toogleState === 3 && <LabModuleHome3> </LabModuleHome3>


                                    }
                                    {
                                        toogleState === 4 && <LabModuleHome4> </LabModuleHome4>


                                    }
                                    {
                                        toogleState === 5 && <LabModuleHome5> </LabModuleHome5>


                                    }

                                    {
                                        toogleState==='test-group' && <TestGroup> </TestGroup>
                                    }

{
                                        toogleState==='test-category' && <TestCategory> </TestCategory>
                                    }

{
                                        toogleState==='test-name' && <TestName> </TestName>
                                    }

{
                                        toogleState==='test-database' && <TestDatabse> </TestDatabse>
                                    }

                                








                                </div>


                            </div>

                        </div>

                    </div>





                </div>
            </div>
            {/* <div class="bt d-flex justify-content-end mx-5">
                <div class="next-btn mb-3 mt-3 me-5 " onClick={() => toogleTab(toogleState + 1)}>
                    Next
                </div>
            </div> */}

        </div>
    );
}

export default LabModuleMain;