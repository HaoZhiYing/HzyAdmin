import{_ as g}from"./index-4034f48f.js";import{d as b,h as x,v as f,i as o,o as u,p as T,l as a,j as r,k as p}from"./vendor-c8880a38.js";const v=b({name:"VxeTableCom",setup(){const e=x({loading:!1,tableData:[],sexList:[{label:"\u5973",value:"0"},{label:"\u7537",value:"1"}]}),d=({cellValue:l})=>{const s=e.sexList.find(n=>n.value===l);return s?s.label:""},i=({value:l,row:s})=>s.age>=l;return f(()=>{e.loading=!0,setTimeout(()=>{e.tableData=[{id:10001,name:"Test1",role:"Develop",sex:"0",age:28,address:"test abc"},{id:10002,name:"Test2",role:"Test",sex:"1",age:22,address:"Guangzhou"},{id:10003,name:"Test3",role:"PM",sex:"0",age:32,address:"Shanghai"},{id:10004,name:"Test4",role:"Designer",sex:"1",age:23,address:"test abc"},{id:10005,name:"Test5",role:"Develop",sex:"1",age:30,address:"Shanghai"},{id:10006,name:"Test6",role:"Designer",sex:"1",age:21,address:"test abc"},{id:10007,name:"Test7",role:"Test",sex:"0",age:29,address:"test abc"},{id:10008,name:"Test8",role:"Develop",sex:"0",age:35,address:"test abc"},{id:10009,name:"Test9",role:"Test",sex:"1",age:21,address:"test abc"},{id:10010,name:"Test10",role:"Develop",sex:"0",age:28,address:"test abc"},{id:10011,name:"Test11",role:"Test",sex:"0",age:29,address:"test abc"},{id:10012,name:"Test12",role:"Develop",sex:"1",age:27,address:"test abc"},{id:10013,name:"Test13",role:"Test",sex:"0",age:24,address:"test abc"},{id:10014,name:"Test14",role:"Develop",sex:"1",age:34,address:"test abc"},{id:10015,name:"Test15",role:"Test",sex:"1",age:21,address:"test abc"},{id:10016,name:"Test16",role:"Develop",sex:"0",age:20,address:"test abc"},{id:10017,name:"Test17",role:"Test",sex:"1",age:31,address:"test abc"},{id:10018,name:"Test18",role:"Develop",sex:"0",age:32,address:"test abc"},{id:10019,name:"Test19",role:"Test",sex:"1",age:37,address:"test abc"},{id:10020,name:"Test20",role:"Develop",sex:"1",age:41,address:"test abc"}],e.loading=!1},500)}),{demo1:e,formatterSex:d,filterAgeMethod:i}}}),h={class:"p-24"},_=p("a",{href:"https://xuliangzhan_admin.gitee.io/vxe-table/v4/table/start/install",target:"_black"},"VxeTable \u5B98\u7F51\u6587\u6863",-1);function D(e,d,i,l,s,n){const t=o("vxe-column"),c=o("vxe-table",!0),m=o("a-card");return u(),T("div",h,[a(m,{title:"VxeTable \u6F14\u793A"},{extra:r(()=>[_]),default:r(()=>[a(c,{border:"",stripe:"",height:"400",loading:e.demo1.loading,"column-config":{resizable:!0},"row-config":{isHover:!0},"checkbox-config":{labelField:"id",highlight:!0,range:!0},data:e.demo1.tableData},{default:r(()=>[a(t,{type:"seq",width:"60"}),a(t,{type:"checkbox",title:"ID",width:"140"}),a(t,{field:"name",title:"Name",sortable:""}),a(t,{field:"sex",title:"Sex",filters:e.sexList,"filter-multiple":!1,formatter:e.formatterSex},null,8,["filters","formatter"]),a(t,{field:"age",title:"Age",sortable:"",filters:[{label:"\u5927\u4E8E16\u5C81",value:16},{label:"\u5927\u4E8E26\u5C81",value:26},{label:"\u5927\u4E8E30\u5C81",value:30}],"filter-method":e.filterAgeMethod},null,8,["filter-method"]),a(t,{field:"address",title:"Address","show-overflow":""})]),_:1},8,["loading","data"])]),_:1})])}var V=g(v,[["render",D]]);export{V as default};