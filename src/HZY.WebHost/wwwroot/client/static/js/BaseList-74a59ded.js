var p=Object.defineProperty,u=Object.defineProperties;var _=Object.getOwnPropertyDescriptors;var t=Object.getOwnPropertySymbols;var y=Object.prototype.hasOwnProperty,f=Object.prototype.propertyIsEnumerable;var n=(a,s,e)=>s in a?p(a,s,{enumerable:!0,configurable:!0,writable:!0,value:e}):a[s]=e,d=(a,s)=>{for(var e in s||(s={}))y.call(s,e)&&n(a,e,s[e]);if(t)for(var e of t(s))f.call(s,e)&&n(a,e,s[e]);return a},r=(a,s)=>u(a,_(s));import{_ as g}from"./index-ea35a67a.js";import{d as w,s as C,u as N,f as b,q as c,v as l,y as L,m as h,C as x,A as B}from"./vendor-e651fafa.js";const v=[{title:"Name",dataIndex:"name"},{title:"Age",dataIndex:"age"},{title:"Address",dataIndex:"address"}],P=[{key:"1",name:"John Brown",age:32,address:"New York No. 1 Lake Park"},{key:"2",name:"Jim Green",age:42,address:"London No. 1 Lake Park"},{key:"3",name:"Joe Black",age:32,address:"Sidney No. 1 Lake Park"},{key:"4",name:"Disabled User",age:99,address:"Sidney No. 1 Lake Park"}],S=w({name:"BaseListCom",setup(){const a=C({columns:v,data:P}),s={onChange:(e,o)=>{console.log(`selectedRowKeys: ${e}`,"selectedRows: ",o)},getCheckboxProps:e=>({disabled:e.name==="Disabled User",name:e.name})};return r(d({},N(a)),{rowSelection:s})}}),$={key:0};function I(a,s,e,o,A,D){const m=b("a-table");return c(),l("div",null,[L(m,{"row-selection":a.rowSelection,columns:a.columns,"data-source":a.data},{bodyCell:h(({column:i,text:k})=>[i.dataIndex==="name"?(c(),l("a",$,x(k),1)):B("",!0)]),_:1},8,["row-selection","columns","data-source"])])}var V=g(S,[["render",I]]);export{V as default};
