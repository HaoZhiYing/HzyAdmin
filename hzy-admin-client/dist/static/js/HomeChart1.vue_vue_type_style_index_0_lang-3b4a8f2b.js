import{L as r}from"./index-b175d235.js";import{d as s,q as c,r as d,o as i,e as _,w as t,f as o}from"./index-07368c36.js";const u=o("a",{href:"https://g2plot.antv.vision/zh/docs/manual/getting-started",target:"_black"}," \u7EC4\u4EF6\u5730\u5740",-1),h=o("div",{id:"container-home-chart1"},null,-1),f=s({__name:"HomeChart1",setup(l){return c(()=>{fetch("https://gw.alipayobjects.com/os/bmw-prod/1d565782-dde4-4bb6-8946-ea6a38ccf184.json").then(e=>e.json()).then(e=>{document.getElementById("container-home-chart1").innerHTML="",new r("container-home-chart1",{data:e,padding:"auto",xField:"Date",yField:"scales",xAxis:{tickCount:5},slider:{start:.1,end:.5},height:280}).render()})}),(e,n)=>{const a=d("a-card");return i(),_(a,{title:"\u5E26\u7F29\u7565\u8F74\u7684\u6298\u7EBF",bordered:!1,headStyle:{"border-bottom":0}},{extra:t(()=>[u]),default:t(()=>[h]),_:1})}}});export{f as _};