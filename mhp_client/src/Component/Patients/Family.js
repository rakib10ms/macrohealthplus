import React, { useEffect, useState } from "react";
import axios from "axios";
import swal from 'sweetalert';
import { Link, useNavigate } from "react-router-dom";
import PaediatricExamMain from "./paediatric/PaediatricExamMain";
import './AddNewPatient/FamilyHistory.css';

export default function Family(props) {

  console.log('props Family',props)
  var url = window.location.href;
  var urlsplit = url.split("/");
  var lastpart = urlsplit[urlsplit.length - 1];
  if (lastpart === '') {
    lastpart = urlsplit[urlsplit.length - 2];
  }

  const [occupationlist, setOccupationList] = useState([]);
  const [doctorslist, setDoctorsList] = useState([]);

  const [occupationalhazards, setoccupationalhazardslist] = useState([]);
  const [currentsmokinghistory, setcurrentsmokinghistorylist] = useState([]);
  const [tobaccotype, settobaccotypelist] = useState([]);
  const [tobaccoamountcost, settobaccoamountcostlist] = useState([]);
  const [advicesuggestion, setadvicesuggestionlist] = useState([]);
  const [pastalcconsumption, setpastalcconsumptionlist] = useState([]);



  const [patientInput, setPatient] = useState({
    alcohol_id: '',
    days_per_week: '',
    standard_drinks_per_day: '',
    past_alc_consumption: '',
    year_started: '',
    year_stopped: '',
    comments: '',

    Ocu_id: '',
    occupation_id: '',
    occupation_details: '',
    employee_id: '',
    year_commented: '',
    year_ceased: '',
    occupational_hazards_exposer: '',
    extra_details: '',

    tabaco_id: '',
    current_smoking_history: '',
    date_started: '',
    tobacco_type: '',
    tobacco_year_started: '',
    tobacco_year_stopped: '',
    is_fresho_leaf: '',
    amount_per_day: '',
    is_cessation_advice: '',
    advice_suggestion: '',
    comments_tobacco: '',
  });


  const handleInput = (e) => {
    e.persist();
    setPatient({ ...patientInput, [e.target.name]: e.target.value });
  }

  const [allcheckbox, setCheckboxes] = useState([]);

  const handleCheckbox = (e) => {
    e.persist();
    setCheckboxes({ ...allcheckbox, [e.target.name]: e.target.checked });
  }

  useEffect(() => {

    axios.get(`/patients-additional-dropdown`).then(res => {
      if (res.data.status === 200) {
        setOccupationList(res.data.occupation);
        setDoctorsList(res.data.doctors);

        setoccupationalhazardslist(res.data.occupationalhazards);
        setcurrentsmokinghistorylist(res.data.currentsmokinghistory);
        settobaccotypelist(res.data.tobaccotype);
        settobaccoamountcostlist(res.data.tobaccoamountcost);
        setadvicesuggestionlist(res.data.advicesuggestion);
        setpastalcconsumptionlist(res.data.pastalcconsumption);

      }
    })

    var url = window.location.href;
    var urlsplit = url.split("/");
    var lastpart = urlsplit[urlsplit.length - 1];
    if (lastpart === '') {
      lastpart = urlsplit[urlsplit.length - 2];
    }

    axios.get(`/patients-family-social/${lastpart}`).then(res => {
      if (res.data.status === 200) {
        // setPatient(res.data.alcohols);
        // setCheckboxes(res.data.alcohols);
        // setPatient(res.data.occupation_details);
        // setPatient(res.data.social_tobacco);

        setPatient({
          alcohol_id: res.data.alcohols.id,
          days_per_week: res.data.alcohols.days_per_week,
          standard_drinks_per_day: res.data.alcohols.standard_drinks_per_day,
          past_alc_consumption: res.data.alcohols.past_alc_consumption,
          year_started: res.data.alcohols.year_started,
          year_stopped: res.data.alcohols.year_stopped,
          comments: res.data.alcohols.comments,


          Ocu_id: res.data.occupation_details.id,
          occupation_id: res.data.occupation_details.occupation_id,
          occupation_details: res.data.occupation_details.occupation_details,
          employee_id: res.data.occupation_details.employee_id,
          year_commented: res.data.occupation_details.year_commented,
          year_ceased: res.data.occupation_details.year_ceased,
          occupational_hazards_exposer: res.data.occupation_details.occupational_hazards_exposer,
          extra_details: res.data.occupation_details.extra_details,

          tabaco_id: res.data.social_tobacco.id,
          current_smoking_history: res.data.social_tobacco.current_smoking_history,
          date_started: res.data.social_tobacco.date_started,
          tobacco_type: res.data.social_tobacco.tobacco_type,
          tobacco_year_started: res.data.social_tobacco.tobacco_year_started,
          tobacco_year_stopped: res.data.social_tobacco.tobacco_year_stopped,
          is_fresho_leaf: res.data.social_tobacco.is_fresho_leaf,
          amount_per_day: res.data.social_tobacco.amount_per_day,
          is_cessation_advice: res.data.social_tobacco.is_cessation_advice,
          advice_suggestion: res.data.social_tobacco.advice_suggestion,
          comments_tobacco: res.data.social_tobacco.comments_tobacco,
        })
      }

    });

  }, []);

  console.log("Patien tabaco", patientInput)
  const navigate = useNavigate();
  const updatePatientFamily = (e) => {
    e.preventDefault();

    const formData = new FormData();

    formData.append('alcohol_id', patientInput.alcohol_id);
    formData.append('is_drinker', allcheckbox.is_drinker ? 'Yes' : 'No');
    formData.append('days_per_week', patientInput.days_per_week);
    formData.append('standard_drinks_per_day', patientInput.standard_drinks_per_day);
    formData.append('past_alc_consumption', patientInput.past_alc_consumption);
    formData.append('year_started', patientInput.year_started);
    formData.append('year_stopped', patientInput.year_stopped);
    formData.append('comments', patientInput.comments);

    formData.append('Ocu_id', patientInput.Ocu_id);
    formData.append('occupation_id', patientInput.occupation_id);
    formData.append('occupation_details', patientInput.occupation_details);
    formData.append('employee_id', patientInput.employee_id);
    formData.append('year_commented', patientInput.year_commented);
    formData.append('year_ceased', patientInput.year_ceased);
    formData.append('occupational_hazards_exposer', patientInput.occupational_hazards_exposer);
    formData.append('extra_details', patientInput.extra_details);

    formData.append('tabaco_id', patientInput.tabaco_id);
    formData.append('current_smoking_history', patientInput.current_smoking_history);
    formData.append('date_started', patientInput.date_started);
    formData.append('tobacco_type', patientInput.tobacco_type);
    formData.append('tobacco_year_started', patientInput.tobacco_year_started);
    formData.append('tobacco_year_stopped', patientInput.tobacco_year_stopped);
    formData.append('is_fresho_leaf', patientInput.is_fresho_leaf);
    formData.append('amount_per_day', patientInput.amount_per_day);
    formData.append('is_cessation_advice', patientInput.is_cessation_advice);
    formData.append('advice_suggestion', patientInput.advice_suggestion);
    formData.append('comments_tobacco', patientInput.comments_tobacco);

    var url = window.location.href;
    var urlsplit = url.split("/");
    var lastpart = urlsplit[urlsplit.length - 1];
    if (lastpart === '') {
      lastpart = urlsplit[urlsplit.length - 2];
    }

    if (patientInput.alcohol_id !== '' || patientInput.Ocu_id !== '' || patientInput.tabaco_id !== '') {
      // console.log("patientInput.alcohol_id",patientInput.alcohol_id);
      // console.log("patientInput.Ocu_id",patientInput.Ocu_id);
      // console.log("patientInput.tabaco_id",patientInput.tabaco_id);

      axios.post(`/update-family-details/${lastpart}`, formData).then(res => {
        console.log("Update", res);
        swal("Success", res.data.message, "success");
        navigate('/patients')
      })

    } else {
      axios.post(`/add-family-details/${lastpart}`, formData).then(res => {
        if (res.data.status === 200) {
          console.log("Res", res);

          swal("Success", res.data.message, "success");

          setPatient({
            days_per_week: '',
            standard_drinks_per_day: '',
            past_alc_consumption: '',
            year_started: '',
            year_stopped: '',
            comments: '',

            occupation_id: '',
            occupation_details: '',
            employee_id: '',
            year_commented: '',
            year_ceased: '',
            occupational_hazards_exposer: '',
            extra_details: '',

            current_smoking_history: '',
            date_started: '',
            tobacco_type: '',
            tobacco_year_started: '',
            tobacco_year_stopped: '',
            is_fresho_leaf: '',
            amount_per_day: '',
            is_cessation_advice: '',
            advice_suggestion: '',
            comments_tobacco: '',

          });

        }
      });
    }

  }
  return (
    <div className="row family-history-container patient-history">

      <div className="ms-1 col-md-12">
        <div >
          <div className="d-flex custom-card justify-content-between mb-2">
            <h6 className="ml-3 mt-2">Family & Social History
            </h6>
            {/* <button onClick={updatePatientFamily} className="btn btn-sm btn-primary mt-2 mr-3">Submit</button> */}

          </div>
          <div className="custom-card mb-2">
            <ul class="nav nav-pills" id="pills-tab" role="tablist">
              <li class="nav-item" role="presentation">
                <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">Alcohol</button>
              </li>
              <li class="nav-item" role="presentation">
                <button class="nav-link" id="pills-contact-tab" data-bs-toggle="pill" data-bs-target="#pills-contact" type="button" role="tab" aria-controls="pills-contact" aria-selected="false">Tobacco</button>
              </li>
              <li class="nav-item" role="presentation">
                <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">Occupation</button>
              </li>
              <li class="nav-item" role="presentation">
                <button class="nav-link" id="pills-paediatric-tab" data-bs-toggle="pill" data-bs-target="#pills-paediatric" type="button" role="tab" aria-controls="pills-paediatric" aria-selected="false">Paediatric</button>
              </li>
            </ul>
          </div>

            <div class="tab-content" id="pills-tabContent">

              <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
              <form onSubmit={updatePatientFamily}>

                <div className="card p-3">
                  {/* <h5 className="card-header">Alcohol</h5> */}
                  <div className="mb-3">
                    <label className="form-check-label col-form-label col-form-label-sm">Current Alcohol Consumption :</label>
                    <input class="form-check-input check-box" type="checkbox" name="is_drinker" onChange={handleCheckbox} defaultChecked={allcheckbox.is_drinker === 'Yes' ? true : false} />
                    <label className="form-check-label col-form-label col-form-label-sm ml-5">Non Drinker</label>
                  </div>
                  <div class="mb-3">
                    <label className="form-label col-form-label col-form-label-sm">Day per week</label>
                    <input type="text" class="form-control from-control-sm" name="days_per_week" onChange={handleInput} value={patientInput.days_per_week} />
                  </div>
                  <div class="mb-3">
                    <label className="form-label col-form-label col-form-label-sm">Standard drinks per day</label>
                    <input type="text" class="form-control from-control-sm" name="standard_drinks_per_day" onChange={handleInput} value={patientInput.standard_drinks_per_day} />
                  </div>
                  <div class="mb-3">
                    <label className="form-check-label col-form-label col-form-label-sm">Past Alcohol Consumption:</label>

                    <select class="form-select form-select-sm" aria-label="" name="occupation_id" onChange={handleInput} value={patientInput.occupation_id}>
                      <option>Select</option>
                      {
                        pastalcconsumption.map((item) => {
                          return (
                            <option value={item.id} key={item.id}>{item.alcohol_consumption_name}</option>
                          )
                        })
                      }
                    </select>
                  </div>

                  <div class="mb-3">
                    <label className="form-label col-form-label col-form-label-sm">Year Started</label>
                    <input type="date" class="form-control from-control-sm" name="year_started" onChange={handleInput} value={patientInput.year_started} />
                  </div>
                  <div class="mb-3">
                    <label className="form-label col-form-label col-form-label-sm">Year Stopped</label>
                    <input type="date" class="form-control from-control-sm" name="year_stopped" onChange={handleInput} value={patientInput.year_stopped} />
                  </div>
                  <div class="mb-3">
                    <label className="form-label col-form-label col-form-label-sm">Comments</label>
                    <textarea className="form-control  from-control-sm" rows="3" name="comments" onChange={handleInput} value={patientInput.comments}></textarea>
                  </div>
                </div>
                <div>
                <input className="btn float-end btn-sm btn-primary" type="submit" />
              </div>
                </form>
              </div>
              <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
              <form onSubmit={updatePatientFamily}>
                <div className="card p-2">
                  {/* <h5 className="card-header">Occupation</h5> */}
                  <div className="card-body">
                    <div className="mb-3">
                      <label className="form-label col-form-label col-form-label-sm">Occupation</label>
                      <select class="form-select form-select-sm" aria-label="" name="occupation_id" onChange={handleInput} value={patientInput.occupation_id}>
                        <option>Select</option>
                        {
                          occupationlist.map((item) => {
                            return (
                              <option value={item.id} key={item.id}>{item.occupation_name}</option>
                            )
                          })
                        }
                      </select>
                    </div>
                    <div class="mb-3">
                      <label className="form-label col-form-label col-form-label-sm">Details</label>
                      <input type="text" class="form-control  from-control-sm" name="occupation_details" onChange={handleInput} value={patientInput.occupation_details} />
                    </div>
                    <div className="mb-3">
                      <label className="form-label col-form-label col-form-label-sm">Employee</label>
                      <select class="form-select form-select-sm" aria-label="" name="employee_id" onChange={handleInput} value={patientInput.employee_id}>
                        <option selected>Select</option>
                        {
                          doctorslist.map((item) => {
                            return (
                              <option value={item.id} key={item.id}>{item.dr_family_name}</option>
                            )
                          })
                        }
                      </select>
                    </div>
                    <div class="mb-3">
                      <label className="form-label col-form-label col-form-label-sm">Year Commenced</label>
                      <input type="text" class="form-control  from-control-sm" name="year_commented" onChange={handleInput} value={patientInput.year_commented} />
                    </div>
                    <div class="mb-3">
                      <label className="form-label col-form-label col-form-label-sm">Year Ceased</label>
                      <input type="text" class="form-control from-control-sm" name="year_ceased" onChange={handleInput} value={patientInput.year_ceased} />
                    </div>


                    <div class="mb-1">
                      <label className="form-check-label col-form-label col-form-label-sm">Occupational Hazards/Exposer:</label>
                      <select class="form-select form-select-sm" aria-label="" name="occupation_id" onChange={handleInput} value={patientInput.occupation_id}>
                        <option>Select</option>
                        {
                          occupationalhazards.map((item) => {
                            return (
                              <option value={item.id} key={item.id}>{item.occupational_hazards_name}</option>
                            )
                          })
                        }
                      </select>
                    </div>

                    <div class="mb-3">
                      <label className="form-label col-form-label col-form-label-sm">Extra Details</label>
                      <textarea className="form-control" rows="3" name="extra_details" onChange={handleInput} value={patientInput.extra_details}></textarea>
                    </div>
                  </div>
                </div>
                <div>
                <input className="btn float-end btn-sm btn-primary" type="submit" />
              </div>
                </form>
              </div>
              <div class="tab-pane fade" id="pills-contact" role="tabpanel" aria-labelledby="pills-contact-tab">
              <form onSubmit={updatePatientFamily}>
                <div className="card p-2">
                  {/* <h5 className="card-header">Tobacco</h5> */}
                  <div className="card-body">
                    <div class="mb-1">
                      <label className="form-check-label col-form-label col-form-label-sm">Current Smoking History:</label>
                      <select class="form-select form-select-sm" aria-label="" name="occupation_id" onChange={handleInput} value={patientInput.occupation_id}>
                        <option>Select</option>
                        {
                          currentsmokinghistory.map((item) => {
                            return (
                              <option value={item.id} key={item.id}>{item.current_smoking_histories_name}</option>
                            )
                          })
                        }
                      </select>
                    </div>
                    <div class="mb-3">
                      <label className="form-label col-form-label col-form-label-sm"> Date Started </label>
                      <input type="date" class="form-control date-option from-control-sm" name="date_started" onChange={handleInput} value={patientInput.date_started} />
                    </div>
                    <div class="mb-1">
                      <label className="form-check-label col-form-label col-form-label-sm">Type:</label>
                      <select class="form-select form-select-sm" aria-label="" name="occupation_id" onChange={handleInput} value={patientInput.occupation_id}>
                        <option>Select</option>
                        {
                          tobaccotype.map((item) => {
                            return (
                              <option value={item.id} key={item.id}>{item.tobacco_types_name}</option>
                            )
                          })
                        }
                      </select>
                    </div>
                    <div class="mb-3">
                      <label className="form-label col-form-label col-form-label-sm"> Year Started </label>
                      <input type="date" class="form-control  from-control-sm" name="tobacco_year_started" onChange={handleInput} value={patientInput.tobacco_year_started} />
                    </div>
                    <div class="mb-3">
                      <label className="form-label col-form-label col-form-label-sm">Year Stopped</label>
                      <input type="date" class="form-control from-control-sm" name="tobacco_year_stopped" onChange={handleInput} value={patientInput.tobacco_year_stopped} />
                    </div>
                    <div class="mb-3">
                      <label class="form-check-label col-form-label col-form-label-sm" for="flexRadioDefault1">
                        Eat Fresho Leaf and Beatle Nuts :
                      </label>
                      <input class="form-check-input ml-2" type="checkbox" name="is_fresho_leaf" onChange={handleInput} value={patientInput.is_fresho_leaf} />
                    </div>
                    <div class="mb-3">
                      <label className="form-check-label col-form-label col-form-label-sm">Amount (Per Day):</label>
                      <select class="form-select form-select-sm" aria-label="" name="occupation_id" onChange={handleInput} value={patientInput.occupation_id}>
                        <option>Select</option>
                        {
                          tobaccoamountcost.map((item) => {
                            return (
                              <option value={item.id} key={item.id}>{item.tobacco_cost_amounts_name}</option>
                            )
                          })
                        }
                      </select>
                    </div>
                    <div class="mb-3">
                      <label className="form-label col-form-label col-form-label-sm">Patient would like cessation advice/support:</label>
                      <input class="form-check-input ml-2" type="checkbox" name="is_cessation_advice" onChange={handleInput} value={patientInput.is_cessation_advice} />
                      {/* <label class="form-label col-form-label col-form-label-sm ml-5">
                        Yes
                      </label> */}

                    </div>
                    <div class="mb-3">
                      <label className="form-check-label col-form-label col-form-label-sm">Advice and Suggestion:</label>
                      <select class="form-select form-select-sm" aria-label="" name="occupation_id" onChange={handleInput} value={patientInput.occupation_id}>
                        <option>Select</option>
                        {
                          advicesuggestion.map((item) => {
                            return (
                              <option value={item.id} key={item.id}>{item.advice_suggestions_name}</option>
                            )
                          })
                        }
                      </select>
                    </div>
                    <div class="mb-3">
                      <label className="form-label col-form-label col-form-label-sm">Comments</label>
                      <textarea className="form-control" rows="3" name="comments_tobacco" onChange={handleInput} value={patientInput.comments_tobacco}></textarea>
                    </div>

                  </div>

                </div>
                <div>
                <input className="btn float-end btn-sm btn-primary" type="submit" />
              </div>
                </form>
              </div>

              <div class="tab-pane fade" id="pills-paediatric" role="tabpanel" aria-labelledby="pills-paediatric-tab">
                <div className="card">
                  <div className="card-body">
                    <PaediatricExamMain patient_id={props.patient_id}/>
                  </div>
                </div>
              </div>

            </div>
        </div>
      </div>
    </div>
  );
}
