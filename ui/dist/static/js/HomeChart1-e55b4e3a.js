import{L as r}from"./index-95a8e0c1.js";import{_ as s}from"./index-ce93cf89.js";import{d as c,l as d,b as i,o as m,c as _,h as t,q as o}from"./vendor-6202f44b.js";import"./index-e6bad8c8.js";const h=c({name:"HomeChart1Com",setup(){d(()=>{fetch("https://gw.alipayobjects.com/os/bmw-prod/1d565782-dde4-4bb6-8946-ea6a38ccf184.json").then(e=>e.json()).then(e=>{document.getElementById("container-home-chart1").innerHTML="",new r("container-home-chart1",{data:e,padding:"auto",xField:"Date",yField:"scales",xAxis:{tickCount:5},slider:{start:.1,end:.5},height:280}).render()})})}}),l=o("a",{href:"https://g2plot.antv.vision/zh/docs/manual/getting-started",target:"_black"}," \u7EC4\u4EF6\u5730\u5740",-1),p=o("div",{id:"container-home-chart1"},null,-1);function f(e,a,u,b,g,x){const n=i("a-card");return m(),_(n,{title:"\u5E26\u7F29\u7565\u8F74\u7684\u6298\u7EBF",bordered:!1,headStyle:{"border-bottom":0}},{extra:t(()=>[l]),default:t(()=>[p]),_:1})}var w=s(h,[["render",f]]);export{w as default};