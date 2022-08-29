import React, { useState, useEffect } from "react";
import './LabModule.css'
function LabModuleHome1() {

  const [toogleState, setToogleState] = useState(1);

  console.log('check', toogleState)


  function toogleTab(index) {
    setToogleState(index)

  }

  return (
    <div class="shadow-sm p-2 bg-body rounded mt-2">
      {/* <h6 className=" mx-2" >Center Details
    <hr /> */}
      <div className="center-detail-sec p-2">
        <div className="row">
          <div className="col-md-7 px-2">
            <span className="px-2" style={{ fontSize: '14px', fontWeight: "500" }}>Center Details</span>

            <div className=" d-flex flex-wrap py-1 px-2">

              <div class="form-check me-3 mt-3 home-1st-note">
                <input class="form-check-input" type="checkbox" value="" id="defaultCheck1" />
                <label class="form-check-label mx-1" for="defaultCheck1">
                  Lab case
                </label>
              </div>
              <div class="form-check me-3 mt-3 home-1st-note">
                <input class="form-check-input" type="checkbox" value="" id="defaultCheck1" />
                <label class="form-check-label mx-1" for="defaultCheck1">
                  Usg case
                </label>
              </div>
              <div class="form-check me-3 mt-3 home-1st-note">
                <input class="form-check-input" type="checkbox" value="" id="defaultCheck1" />
                <label class="form-check-label mx-1" for="defaultCheck1">
                  Digital xray case
                </label>
              </div>
              <div class="form-check me-3 mt-3 home-1st-note">
                <input class="form-check-input" type="checkbox" value="" id="defaultCheck1" />
                <label class="form-check-label mx-1" for="defaultCheck1">
                  Xray case
                </label>
              </div>
              <div class="form-check me-3 mt-3 home-1st-note">
                <input class="form-check-input" type="checkbox" value="" id="defaultCheck1" />
                <label class="form-check-label mx-1" for="defaultCheck1">
                  Outsource lab case
                </label>
              </div>
              <div class="form-check me-3 mt-3 home-1st-note">
                <input class="form-check-input" type="checkbox" value="" id="defaultCheck1" />
                <label class="form-check-label mx-1" for="defaultCheck1">
                  Ecg case
                </label>
              </div>
              <div class="form-check me-3 mt-3 home-1st-note">
                <input class="form-check-input" type="checkbox" value="" id="defaultCheck1" />
                <label class="form-check-label mx-1" for="defaultCheck1">
                  CT scan case
                </label>
              </div>

              <div class="form-check me-3 mt-3 home-1st-note">
                <input class="form-check-input" type="checkbox" value="" id="defaultCheck1" />
                <label class="form-check-label mx-1" for="defaultCheck1">
                  MRI case
                </label>
              </div>
            </div>

            <div className="form-boot mt-4">
              <div class="mb-2 mx-2" >
                <label for="exampleFormControlInput1" class="form-label"> Email address</label>
                <input type="email" class="form-control" id="exampleFormControlInput1" />
              </div>

              <div class="mb-2 mx-2" >
                <label for="exampleFormControlInput1" class="form-label">Address Line 1</label>
                <input type="email" class="form-control" id="exampleFormControlInput1" />
              </div>

              <div class="mb-2 mx-2" >
                <label for="exampleFormControlInput1" class="form-label"> Address Line 2</label>
                <input type="email" class="form-control" id="exampleFormControlInput1" />
              </div>

              <div className="d-flex">

                <div class="mb-2 mx-2  me-3">
                  <label for="exampleFormControlInput1" class="form-label"> City</label>
                  <input type="email" class="form-control" id="exampleFormControlInput1" />
                </div>

                <div class="mb-2 mx-2  me-3">
                  <label for="exampleFormControlInput1" class="form-label"> Postal Code</label>
                  <input type="email" class="form-control" id="exampleFormControlInput1" />
                </div>

                <div class="mb-2 mx-2  me-3">
                  <label for="exampleFormControlInput1" class="form-label"> Country</label>
                  <select class="form-select form-select " aria-label=".form-select-lg example">
                    {/* <option selected>Open this select menu</option> */}
                    <option value="1">Bangladesh</option>
                    <option value="2">India</option>
                    <option value="3">pakistan</option>
                  </select></div>

              </div>




            </div>


          </div>
          <div className="col-md-5">
            <b className="d-block mx-1">Note:</b>
            <div class="inside-quo px-1 mt-1">
              <span className="home-1st-note">1. Centre detalis will be used to print the bills.</span>
              <span className="home-1st-note">2. Centre phone numbe will be used in the welcome sms.</span >

              <span className="mt-3 home-1st-note">Country: Bangladesh</span >
              <span className="home-1st-note">Currency symbol: Taka</span >
              <span className="home-1st-note">Time Zone: Dhaka</span >
            </div>



          </div>
        </div>

      </div>

    </div>
  );
}

export default LabModuleHome1;