<%@ Page Title="" Language="C#" MasterPageFile="~/header.master" AutoEventWireup="true" CodeFile="tractor.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <img src="image/mini-slider-5.jpg" width="100%"/>
    import react from "react";
import {useState} from "react";

export default function getdata()
{
    const countries =[
        {
            name: "india",
            states: [
                {
                    name: "gujarat",
                    cities:["surendranagar","ahemdabad","rajkot"]
                },
                {
                    name: "maharashra",
                    cities: ["mumbai","pune","nagpur"]
                },
                {
                    name: "delhi",
                    cities: ["newdelhi","shergarh","siri"]
                },
            ],
        },
        {
            name: "usa",
            states: [
                {
                    name: "california",
                    cities:["sanjose","oakland","long beach"]
                },
                {
                    name: "texas",
                    cities: ["houston","austin","san antonio"]
                },
                {
                    name: "florida",
                    cities: ["miami","tampa","destin"]
                },
            ],
        },
    ];


const [country,setcountry] = useState('--Country--');
const [state,setstate] = useState('--State--');
const [city,setcity] = useState('--City--');
const [states,setstates] = useState([]);
const [cities,setcities] = useState([]);

const changeCountry = (event) => {
    setcountry(event.target.value);
    setstates(countries.find(ctr => ctr.name === event.target.value).states)
}
const changeState = (event) => {
    setstate(event.target.value);
    setstates(states.find(state => state.name === event.target.value).cities)
}
return
{
    <div className="justify-contant-center d-flex w-100 vh-100 bg-dark text-white">
        <div className="w-50 mt-5">
            <h3>Select Country nad States</h3>
            <select className="form-control" value="{country}" onChange="changeCountry">
                <Option>--Country--</Option>
                {countries.map(ctr =>(
                    <Option value={ctr.name}>{ctr.name}</Option>
                ))}
            </select>
            <br/>
            <select className="form-control" value={state} onChange={changeState}>
                <Option>--state--</Option>
                {state.map(state => (
                    <Option value={state.name}>{state.name}</Option>
                ))}
            </select>
            <br/>
            <select className="form-control" value={city}>
                <Option>--City--</Option>
                {cities.map(city => (
                    <Option value={city}>{city}</Option>
                ))}
            </select>
        </div>
    </div>
};
}

</asp:Content>

