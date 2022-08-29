import React from 'react'
import './InvoicePreview.css'
import logo from '../../../src/Images/billing-logo.png';


export default function InvoicePreview(props) {
    const allPayment = props.allPayment;
    console.log(allPayment, "allPay")
    return (
        <>
            <div className='MainBody'>
                <header className="HeaderInvoice clearfix">
                    <div id="logo">
                        <img src={logo} />
                    </div>
                    <div id="company">
                        <h2 className="name">Macrohealth Plus</h2>
                        <div>455 Foggy Heights, AZ 85004, US</div>
                        <div>(602) 519-0450</div>
                        <div><a className='invoiceLink' href="mailto:invoice@macrohelthplus.org">invoice@macrohelthplus.org</a></div>
                    </div>
                </header>
                <main>
                    <div id="details" className="clearfix">
                        <div id="client">
                            <div className="to">INVOICE TO:</div>
                            <h2 className="name">{props.patientDetails.patient_first_name}</h2>
                            <div className="address">{props.patientDetails.patient_address1}</div>
                            <div className="email"><a className='invoiceLink' href="mailto:john@example.com">{props.patientDetails.patient_email}</a></div>
                        </div>
                        <div id="invoice">
                            <h1>{props.invoiceNumber}</h1>
                            <div className="date">Date of Invoice: {props.issueDate}</div>
                            <div className="date">Due Date: {props.issueDate}</div>
                        </div>
                    </div>
                    <table className='invoiceTable' border={0} cellSpacing={0} cellPadding={0}>
                        <thead>
                            <tr>
                                <th className="no">Item Code</th>
                                <th className="no">DESCRIPTION</th>
                                <th className="no">PRICE</th>
                                <th className="no">QUANTITY</th>
                                <th className="no">TOTAL</th>
                            </tr>
                        </thead>
                        <tbody>
                            {
                                props.Billings[0].map((bill, i) => {
                                    return (
                                        <tr key={i}>
                                            <td className="">{bill.item_code}</td>
                                            <td className="">{bill.item_details}</td>
                                            <td className="">{bill.rate}</td>
                                            <td className="">{bill.qty == null ? 1 : bill.qty}</td>
                                            <td className="">{bill.total}</td>
                                        </tr>
                                    )
                                })
                            }

                        </tbody>
                        <tfoot>
                            <tr>
                                <td colSpan={2} />
                                <td colSpan={2}>SUBTOTAL</td>
                                <td>{props.totalSubtotal}</td>
                            </tr>
                            <tr>
                                <td colSpan={2} />
                                <td colSpan={2}>TAX</td>
                                <td>0</td>
                            </tr>

                            <tr>
                                <td colSpan={2} />
                                <td colSpan={2}>GRAND TOTAL</td>
                                <td>{props.totalSubtotal} BDT</td>
                            </tr>

                        </tfoot>
                    </table>

                    <div className="row">
                        <div className="col-6">
                            <div id="thanks">
                                Thank you!
                            </div>
                        </div>
                        <div className="col-6 d-flex justify-content-end">
                            <div>
                                {
                                    allPayment.length > 0 &&
                                    allPayment.map((item, i) => {
                                        return (

                                            item.payment_type === "Cash" ? <p> <span style={{ width: "150px",display:"inline-block" }}>{item.payment_type} </span> <span className='me-2'> : {item.amount}</span></p>
                                                : item.payment_type === "Card" ? <p> <span style={{ width: "150px",display:"inline-block" }}>{item.card_id.card_name} </span> <span className='me-2'> : {item.amount}</span></p>
                                                    : item.payment_type === "Digital Payment" ? <p> <span style={{ width: "150px",display:"inline-block" }}>{item.digital_id.digital_name} </span><span className='me-2'> : {item.amount}</span></p>
                                                        : item.payment_type === "Bank" && <p><span style={{ width: "150px",display:"inline-block" }}>{item.payment_type}</span><span className='me-2'> : {item.amount}</span></p>
                                        )
                                    })
                                }
                            </div>
                        </div>
                    </div>
                    <div id="notices">
                        <div>NOTICE:</div>
                        <div className="notice">A finance charge of 1.5% will be made on unpaid balances after 30 days.</div>
                    </div>
                </main>
                <footer>
                    Invoice was created on a computer and is valid without the signature and seal.
                </footer>
            </div>

        </>
    )
}
