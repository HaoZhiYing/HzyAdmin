import{C as i}from"./index-9d131c9f.js";import{d as o,z as s,b as n,s as d,x as h,o as u,c as f}from"./index-4c73da82.js";const b=["id"],O=o({__name:"BarChartTransverse",props:{id:{default:new Date().getTime()+"_"+Math.floor(Math.random()*1e3)},data:null,height:{default:500},valueAlias:null},setup(l){const e=l,t=s({id:n(()=>e.id),chartObject:null,data:n(()=>e.data)}),r=()=>{t.chartObject=new i({container:t.id,autoFit:!0,height:e.height}),t.chartObject.scale({value:{min:0,alias:e.valueAlias}}),t.chartObject.axis("type",{title:null,tickLine:null,line:null}),t.chartObject.axis("value",{label:null,title:{offset:30,style:{fontSize:12,fontWeight:300}}}),t.chartObject.legend(!1),t.chartObject.coordinate().transpose(),t.chartObject.interval().position("type*value").size(26).label("value",{style:{fill:"#8d8d8d"},offset:10}),t.chartObject.interaction("element-active")},c=a=>{!t.chartObject||(t.chartObject.annotation().clear(!0),t.chartObject.data(a),t.chartObject.render())};return d(()=>{r(),c(t.data)}),h(t.data,a=>{c(a)}),(a,p)=>(u(),f("div",{id:t.id},null,8,b))}});export{O as default};
