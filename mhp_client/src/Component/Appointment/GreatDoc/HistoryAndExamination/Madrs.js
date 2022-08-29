import React from 'react';
import Modal from 'react-modal';
import './Madrs.css';

const Madrs = (props) => {

    const customStyles = {
        content: {
            top: '38%',
            left: '21%',
            right: 'auto',
            bottom: 'auto',
            transform: 'translate(-50%, -50%)',
            width: "80%",
            height: "85%",
            background: "#ffffff",
            padding: "10px",
            marginLeft: "38%"
        },

    };

    return (
        <div>
             <Modal
                isOpen={props.madrsIsOpen}
                onRequestClose={props.closeMadrsModal}
                style={customStyles}
                contentLabel="Example Modal"
            >
                <span className='float-end' style={{ fontSize: "18px", cursor: "pointer" }} onClick={props.closeMadrsModal}><i class="fal fa-times"></i></span>
                <h6 className="card-title" style={{ fontSize: "14px" }}>Montgomery and Asberg (MADRS) Depression Rating Scal:Page-1</h6>
                <hr className='popup-hr' /> 
            <div className='d-flex justify-content-between'>
            <div className='cns-container'>
                <ul class="nav nav-pills mb-2" id="pills-tab" role="tablist">
                  <li class="nav-item" role="presentation">
                     <button class="nav-link active" id="pills-home-tab" data-bs-toggle="pill" data-bs-target="#pills-home" type="button" role="tab" aria-controls="pills-home" aria-selected="true">Page-1</button>
                  </li>
                  <li class="nav-item" role="presentation">
                    <button class="nav-link" id="pills-profile-tab" data-bs-toggle="pill" data-bs-target="#pills-profile" type="button" role="tab" aria-controls="pills-profile" aria-selected="false">Page-2</button>
                  </li>
                </ul>
            </div>
            <p className='mt-1'>Date:7 August 2022</p>
            </div>

             <div class="tab-content" id="pills-tabContent">
               <div class="tab-pane fade show active" id="pills-home" role="tabpanel" aria-labelledby="pills-home-tab">
               <div className='apparent_sadness mt-2'>
                    <div className='apparent_two'>
                    <b>1.Apparent Sadness</b> <br/>
                    <b>Representing despondency,gloom and and despair,(more than just ordinary transient low spirits) reflected in speech,facial expression,and posture.Rate by depth and inability to brighten up.</b> <br/> <br/>
                    <div>
                    <input type="radio" id="" name="fav_language1" value=""/>
                    <label for="html" className='ms-2'>0-Looks Dispirited but dose brighten up difficulty</label> <br></br>
                    <input type="radio" id="" name="fav_language1" value=""/>
                    <label for="html" className='ms-2'>1-Appears sad and unhappy most of the time</label> <br></br>
                    <input type="radio" id="" name="fav_language1" value=""/>
                    <label for="html" className='ms-2'>2-Looks miserable all the time and extremly dispondent</label> <br></br>
                    </div>
                    </div>
                </div>
                <div className='apparent_sadness mt-2'>
                    <div className='apparent_two'>
                    <b>2.Reported Sadness</b> <br/>
                    <b>Representing reports of depressed mood,regardless of weather it is reflected in appearance or not.Includes low spirits,despondency or the feeling being beyond help and without hope.Rate according to intensity,duration and the extent to which the mood is reported to be influenced by events.</b> <br/> <br/>
                    <div>
                    <input type="radio" id="" name="fav_language2" value=""/>
                    <label for="html" className='ms-2'>0-Occasional sadness is keeping with the circumstances</label> <br></br>
                    <input type="radio" id="" name="fav_language2" value=""/>
                    <label for="html" className='ms-2'>1-Sad or low but brightens up without difficulty.</label> <br></br>
                    <input type="radio" id="" name="fav_language2" value=""/>
                    <label for="html" className='ms-2'>2-Percasive feelings of sadness or gloominess.The mood is still influenced by external circumstances</label> <br></br>
                    <input type="radio" id="" name="fav_language2" value=""/>
                    <label for="html" className='ms-2'>3-Continuous or unvarying sadness,misery or despondency</label> <br></br>
                    </div>
                    </div>
                </div>
                <div className='apparent_sadness mt-2'>
                    <div className='apparent_two'>
                    <b>3.Inner tension</b> <br/>
                    <b>Representing feelings of ill-defined discomfort, edginess, inner turmoil, mental tension mounting to either panic,dread or anguish. Rate according to intensity, frequency, duration and the extent of reassurance called for.</b> <br/> <br/>
                    <div>
                    <input type="radio" id="" name="fav_language3" value=""/>
                    <label for="html" className='ms-2'>0- Placid. Only fleeting inner tension</label> <br></br>
                    <input type="radio" id="" name="fav_language3" value=""/>
                    <label for="html" className='ms-2'>1- Occasional feelings of edginess and ill-defined discomfort</label> <br></br>
                    <input type="radio" id="" name="fav_language3" value=""/>
                    <label for="html" className='ms-2'>2- Continuous feelings to inner tension or intermittent panic which the patient can only master withsome difficulty</label> <br></br>
                    <input type="radio" id="" name="fav_language3" value=""/>
                    <label for="html" className='ms-2'>3- Unrelating dread or anquish or overwhelming panic</label> <br></br>
                    </div>
                    </div>
                </div>
                <div className='apparent_sadness mt-2'>
                    <div className='apparent_two'>
                    <b>4. Reduced sleep</b> <br/>
                    <b>Representing feelings of ill-defined discomfort, edginess, inner turmoil, mental tension mounting to either panic,dread or anguish. Rate according to intensity, frequency, duration and the extent of reassurance called for.</b> <br/> <br/>
                    <div>
                    <input type="radio" id="" name="fav_language4" value=""/>
                    <label for="html" className='ms-2'>0- Sleeps as usual</label> <br></br>
                    <input type="radio" id="" name="fav_language4" value=""/>
                    <label for="html" className='ms-2'>1- Slight difficulty dropping off to sleep or slightly reduced, light or fitful sleep</label> <br></br>
                    <input type="radio" id="" name="fav_language4" value=""/>
                    <label for="html" className='ms-2'>2- Sleep reduced or broken by at least two hours</label> <br></br>
                    <input type="radio" id="" name="fav_language4" value=""/>
                    <label for="html" className='ms-2'>3- Less than two or three hours sleep</label> <br></br>
                    </div>
                    </div>
                </div>
                <div className='apparent_sadness mt-2'>
                    <div className='apparent_two'>
                    <b>5. Reduced appetite</b> <br/>
                    <b>Representing the feeling of a loss of appetite compared with when well. Rate by loss of desire for food or the need to force oneself to eat.</b> <br/> <br/>
                    <div>
                    <input type="radio" id="" name="fav_language5" value=""/>
                    <label for="html" className='ms-2'>0- Normal or increased appetite</label> <br></br>
                    <input type="radio" id="" name="fav_language5" value=""/>
                    <label for="html" className='ms-2'>1- Slightly reduced appetite</label> <br></br>
                    <input type="radio" id="" name="fav_language5" value=""/>
                    <label for="html" className='ms-2'>2- No appetite or food is testeless</label> <br></br>
                    <input type="radio" id="" name="fav_language5" value=""/>
                    <label for="html" className='ms-2'>3- Sleep reduced or broken by at least two hours</label> <br></br>
                    <input type="radio" id="" name="fav_language5" value=""/>
                    <label for="html" className='ms-2'>4- Needs persuasion to eat at all</label> <br></br>
                    </div>
                    </div>
                </div>
                <div className='apparent_sadness mt-2'>
                    <div className='apparent_two'>
                    <b>6. INSOMNIA: MIDDLE OF THE SIGHT</b> <br/> <br/>
                    <div>
                    <input type="radio" id="" name="fav_language6" value=""/>
                    <label for="html" className='ms-2'>0- No Difficulty</label> <br></br>
                    <input type="radio" id="" name="fav_language6" value=""/>
                    <label for="html" className='ms-2'>1- Patient complains of beign restless and disturbed during the night</label> <br></br>
                    <input type="radio" id="" name="fav_language6" value=""/>
                    <label for="html" className='ms-2'>2- Walking during the night- any getting out bed rates2 (expect for purposes of voiding)</label> <br></br>
                    </div>
                    </div>
                </div>
                <div className='pedriatric_btn'>
                <button className='pedriatric_btn_left' onClick={props.closeMadrsModal}>Cancel</button>              
                <button className='pedriatric_btn_middle'>Save</button>
            </div>
               </div>

               {/* Tab2 */}

               <div class="tab-pane fade" id="pills-profile" role="tabpanel" aria-labelledby="pills-profile-tab">
               <div className='apparent_sadness mt-2'>
                    <div className='apparent_two'>
                    <b>7.Concentration difficulties</b> <br/>
                    <b>Representing difficulties in collecting one's thoughts mounting to incapacitating lack of concentration.Rate according to intensity, frequency, and degree of incapacity produced.</b> <br/> <br/>
                    <div>
                    <input type="radio" id="" name="fav_language7" value=""/>
                    <label for="html" className='ms-2'>0- No difficulties in concentrating</label> <br></br>
                    <input type="radio" id="" name="fav_language7" value=""/>
                    <label for="html" className='ms-2'>1- Occasional difficulties in collecting one’s thoughts</label> <br></br>
                    <input type="radio" id="" name="fav_language7" value=""/>
                    <label for="html" className='ms-2'>2-Appears sad and unhappy most of the time</label> <br></br>
                    <input type="radio" id="" name="fav_language7" value=""/>
                    <label for="html" className='ms-2'>3- Difficulties in concentrating and sustaining thought which reduces ability to read or hold a conversation</label> <br></br>
                    <input type="radio" id="" name="fav_language7" value=""/>
                    <label for="html" className='ms-2'>4- Unable to read or converse without great difficulty</label> <br></br>
                    </div>
                    </div>
                </div>
               <div className='apparent_sadness mt-2'>
                    <div className='apparent_two'>
                    <b>8. Lassitude</b> <br/>
                    <b>Representing a difficulty getting started or slowness initiating and performing everyday activities.</b> <br/> <br/>
                    <div>
                    <input type="radio" id="" name="fav_language8" value=""/>
                    <label for="html" className='ms-2'>0- Hardly any difficulty in getting started or no sluggishness</label> <br></br>
                    <input type="radio" id="" name="fav_language8" value=""/>
                    <label for="html" className='ms-2'>1- Difficulties in starting activities</label> <br></br>
                    <input type="radio" id="" name="fav_language8" value=""/>
                    <label for="html" className='ms-2'>2- Difficulties in starting simple routine activities which are carried out with effort </label> <br></br>
                    <input type="radio" id="" name="fav_language8" value=""/>
                    <label for="html" className='ms-2'>3- Complete lassitude. Unable to do anything without help</label> <br></br>
                    </div>
                    </div>
                </div>
               <div className='apparent_sadness mt-2'>
                    <div className='apparent_two'>
                    <b>9. Inability to feel</b> <br/>
                    <b>Representing the subjective experience of reduced interest in the surroundings, or activities that normally give pleasure. The ability to react with adequate emotion to circumstances or people is reduced.</b> <br/> <br/>
                    <div>
                    <input type="radio" id="" name="fav_language9" value=""/>
                    <label for="html" className='ms-2'>0- Normal interest in the surroundings and in other people</label> <br></br>
                    <input type="radio" id="" name="fav_language9" value=""/>
                    <label for="html" className='ms-2'>1- Reduced ability to enjoy usual interests</label> <br></br>
                    <input type="radio" id="" name="fav_language9" value=""/>
                    <label for="html" className='ms-2'>2- Loss of interest in the surroundings or loss of feelings for friends and acquaintances</label> <br></br>
                    <input type="radio" id="" name="fav_language9" value=""/>
                    <label for="html" className='ms-2'>3- The experience of being emotionally paralysed, inability to feel anger, grief or pleasure and a complete or even painful failure to feel for close relatives and friends.</label> <br></br>
                    </div>
                    </div>
                </div>
                <div className='apparent_sadness mt-2'>
                    <div className='apparent_two'>
                    <b>10. Pessimistic thoughts</b> <br/>
                    <b>Representing thoughts of guilt, inferiority, self-reproach, sinfulness, remorse and ruin.</b> <br/> <br/>
                    <div>
                    <input type="radio" id="" name="fav_language10" value=""/>
                    <label for="html" className='ms-2'>0- No pessimistic thoughts</label> <br></br>
                    <input type="radio" id="" name="fav_language10" value=""/>
                    <label for="html" className='ms-2'>1- Fluctuating ideas of failure, self-reproach or self depreciation</label> <br></br>
                    <input type="radio" id="" name="fav_language10" value=""/>
                    <label for="html" className='ms-2'>2-Persistent self-accusations, or definite but still rational ideas of guilt or sin or increasingly pessimistic about the future</label> <br></br>
                    <input type="radio" id="" name="fav_language10" value=""/>
                    <label for="html" className='ms-2'>3- Delusions of ruin, remorse or unredeemable sin or self-accusations which are absurd and unshakable.</label> <br></br>
                    </div>
                    </div>
                </div>
                <div className='apparent_sadness mt-2'>
                    <div className='apparent_two'>
                    <b>11. Suicidal thoughts</b> <br/>
                    <b>Representing the feeling that life is not worth living, that a natural death would be welcome, suicidal thoughts,and preparations for suicide. Suicidal attempts should not in themselves influence the rating.</b> <br/> <br/>
                    <div>
                    <input type="radio" id="" name="fav_language11" value=""/>
                    <label for="html" className='ms-2'>0- Enjoys life or takes it as it comes</label> <br></br>
                    <input type="radio" id="" name="fav_language11" value=""/>
                    <label for="html" className='ms-2'>1- Weary of life or only fleeting suicidal thoughts.</label> <br></br>
                    <input type="radio" id="" name="fav_language11" value=""/>
                    <label for="html" className='ms-2'>2-Probably better off dead or suicidal thoughts are common, and suicide is considered as a possiblesolution, but without specific plans or intention</label> <br></br>
                    <input type="radio" id="" name="fav_language11" value=""/>
                    <label for="html" className='ms-2'>3- Explicit plans for suicide when there is an opportunity or active preparations for suicide</label> <br></br>
                    </div>
                    </div>
                </div>
                <div className='pedriatric_btn'> 
                <button className='pedriatric_btn_left' onClick={props.closeMadrsModal}>Cancel</button>              
                <button className='pedriatric_btn_middle'>Save</button>
            </div>
               </div>
            </div>        
            </Modal>
        </div>
    );
};

export default Madrs;