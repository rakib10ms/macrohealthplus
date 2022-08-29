import React, { useState } from 'react';
import './PedriaticExamPage12.css';
import dental from './dental.png';
function PaediatricPage23(props) {

    const [language, setLanguage] = useState('english');
    const handleLanguage = (e) => {
        setLanguage(e.target.value);

    }
    return (
        <>
            <div className='float-end me-4 '>
                <select class="form-select form-select-sm col-12 mb-3 " aria-label=".form-select-sm example" onChange={handleLanguage}>
                    <option selected value="english">Choose</option>
                    <option value="bangla">বাংলা </option>
                    <option value="english">English</option>
                </select>
            </div>

            {language === 'english' &&
                <div className='bg-white py-3 px-5 rounded-3'>
                    <div className='d-flex align-items-center'>
                        <h5 className='pb-1'><b className='text-danger'>Before school starts (parents/Carer) </b> </h5>
                    </div>

                    <h6 className='mt-2 ' style={{ lineHeight: '1.6' }}>
                        Children who attend pre-school and participate in a quality early
                        childhood education program in the year before school are more likely
                        to have the social, cognitive and emotional skills needed to engage with
                        learning when starting kindergarten.
                    </h6>



                    <div className="mt-5">
                        <h6 class=""><b>You can do a lot to help prepare your child for kindergarten before their big
                            ‘first day’.
                        </b>
                        </h6>
                    </div>

                    <div className='advice mt-5'>
                        <ul className='fw-bold'>
                            <li> Give your child lots of love and support. Be excited and enthusiastic about starting school</li>
                            <li>  Take your child to kindergarten or pre-school orientation day/s so they are familiar with the grounds.</li>
                            <li>  Explain the basic school rules, such as putting up your hand, asking
                                before going to the toilet, listening quietly when
                                necessary, and doing
                                what the teacher asks.</li>
                            <li>  Show your child where the toilets are.</li>
                            <li>  Try on the uniform and shoes before the first day, just to make sure
                                everything fits..</li>
                            <li>  Visit the school when other children are there so your child can get
                                used to the noise of the playground and the size of the
                                ‘big’ students.</li>
                            <li>  Show your child where the after-school care facilities are, if needed..</li>

                        </ul>
                    </div>


                    <div className='pedriatric_btn'>
                        <button className='pedriatric_btn_left' onClick={props.closePaediatricExaminationModal}>Cancel</button>
                        <button className='pedriatric_btn_middle'>Save</button>
                        <button className='pedriatric_btn_right' onClick={() => {
                            props.passData(24)
                        }}>Next <i class="fa-solid fa-angle-right"></i></button>
                        <button className='pedriatric_page4_btn_previous' onClick={() => {
                            props.passData(22)
                        }}><i class="fa-solid fa-angle-left"></i> Previous Page</button>
                    </div>
                </div>
            }

            {language === 'bangla' &&
                <div className='bg-white py-3 px-5 rounded-3'>
                    <div className='d-flex align-items-center'>
                        <h5 className='pb-1'><b className='text-danger'>স্কুল শুরু হওয়ার আগে (অভিভাবক/পরিচর্যাকারী)</b> </h5>
                    </div>

                    <h6 className='mt-2 ' style={{ lineHeight: '1.6' }}>
                        যে শিশুরা প্রি-স্কুলে যায় এবং একটি গুণগত মানের প্রথম দিকে অংশগ্রহণ করে
                        স্কুলের আগে বছরের শৈশব শিক্ষা কার্যক্রমের সম্ভাবনা বেশি
                        সাথে জড়িত থাকার জন্য প্রয়োজনীয় সামাজিক, জ্ঞানীয় এবং মানসিক দক্ষতা থাকা
                        কিন্ডারগার্টেন শুরু করার সময় শেখা।
                    </h6>



                    <div className="mt-5">
                        <h6 class=""><b>আপনার বাচ্চাকে বড় হওয়ার আগে কিন্ডারগার্টেনের জন্য প্রস্তুত করতে আপনি অনেক কিছু করতে পারেন
                            'প্রথম দিন'
                        </b>
                        </h6>
                    </div>

                    <div className='advice mt-5'>
                        <ul className='fw-bold'>
                            <li> আপনার সন্তানকে প্রচুর ভালবাসা এবং সমর্থন দিন। স্কুল শুরু করার বিষয়ে উত্তেজিত এবং উত্সাহী হন</li>
                            <li> আপনার সন্তানকে কিন্ডারগার্টেন বা প্রি-স্কুল ওরিয়েন্টেশন ডে/সে নিয়ে যান যাতে তারা কারণগুলির সাথে পরিচিত হয়।</li>
                            <li> আপনার সন্তানকে কিন্ডারগার্টেন বা প্রি-স্কুল ওরিয়েন্টেশন ডে/সে নিয়ে যান যাতে তারা কারণগুলির সাথে পরিচিত হয়</li>
                            <li>  আপনার শিশুকে দেখান কোথায় টয়লেট আছে</li>
                            <li> প্রথম দিনের আগে ইউনিফর্ম এবং জুতা চেষ্টা করুন, শুধু নিশ্চিত করতে
                                সবকিছু মিলে যায়।</li>
                            <li>  অন্য বাচ্চারা যখন সেখানে থাকে তখন স্কুলে যান যাতে আপনার বাচ্চা পেতে পারে
                                খেলার মাঠের গোলমাল এবং এর আকারে অভ্যস্ত
                                'বড়' ছাত্র।</li>
                            <li>  আপনার সন্তানকে দেখান কোথায় স্কুল-পরবর্তী যত্ন সুবিধা, যদি প্রয়োজন হয়</li>

                        </ul>
                    </div>


                    <div className='pedriatric_btn'>
                        <button className='pedriatric_btn_middle'>Save</button>
                        <button className='pedriatric_btn_right' onClick={() => {
                            props.passData(24)
                        }}>Next <i class="fa-solid fa-angle-right"></i></button>
                        <button className='pedriatric_page4_btn_previous' onClick={() => {
                            props.passData(22)
                        }}><i class="fa-solid fa-angle-left"></i> Previous Page</button>
                    </div>
                </div>
            }


        </>

    )
}
export default PaediatricPage23;