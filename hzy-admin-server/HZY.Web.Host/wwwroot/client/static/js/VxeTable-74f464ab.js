import{_ as m}from"./PageContainer.vue_vue_type_script_setup_true_lang-5b68ebe0.js";import{d as r,y as g,q as b,r as o,o as x,e as f,w as d,a,f as T}from"./index-1d0f4517.js";import"./AppIcon.vue_vue_type_script_setup_true_lang-35292c61.js";const _=T("a",{href:"https://xuliangzhan_admin.gitee.io/vxe-table/v4/table/start/install",target:"_black"},"VxeTable \u5B98\u7F51\u6587\u6863",-1),p=r({name:"VxeTableCom"}),C=r({...p,setup(v){const t=g({loading:!1,tableData:[],sexList:[{label:"\u5973",value:"0"},{label:"\u7537",value:"1"}]}),i=({cellValue:l})=>{const s=t.sexList.find(e=>e.value===l);return s?s.label:""},n=({value:l,row:s})=>s.age>=l;return b(()=>{t.loading=!0,setTimeout(()=>{t.tableData=[{id:10001,name:"Test1",role:"Develop",sex:"0",age:28,address:"test abc"},{id:10002,name:"Test2",role:"Test",sex:"1",age:22,address:"Guangzhou"},{id:10003,name:"Test3",role:"PM",sex:"0",age:32,address:"Shanghai"},{id:10004,name:"Test4",role:"Designer",sex:"1",age:23,address:"test abc"},{id:10005,name:"Test5",role:"Develop",sex:"1",age:30,address:"Shanghai"},{id:10006,name:"Test6",role:"Designer",sex:"1",age:21,address:"test abc"},{id:10007,name:"Test7",role:"Test",sex:"0",age:29,address:"test abc"},{id:10008,name:"Test8",role:"Develop",sex:"0",age:35,address:"test abc"},{id:10009,name:"Test9",role:"Test",sex:"1",age:21,address:"test abc"},{id:10010,name:"Test10",role:"Develop",sex:"0",age:28,address:"test abc"},{id:10011,name:"Test11",role:"Test",sex:"0",age:29,address:"test abc"},{id:10012,name:"Test12",role:"Develop",sex:"1",age:27,address:"test abc"},{id:10013,name:"Test13",role:"Test",sex:"0",age:24,address:"test abc"},{id:10014,name:"Test14",role:"Develop",sex:"1",age:34,address:"test abc"},{id:10015,name:"Test15",role:"Test",sex:"1",age:21,address:"test abc"},{id:10016,name:"Test16",role:"Develop",sex:"0",age:20,address:"test abc"},{id:10017,name:"Test17",role:"Test",sex:"1",age:31,address:"test abc"},{id:10018,name:"Test18",role:"Develop",sex:"0",age:32,address:"test abc"},{id:10019,name:"Test19",role:"Test",sex:"1",age:37,address:"test abc"},{id:10020,name:"Test20",role:"Develop",sex:"1",age:41,address:"test abc"}],t.loading=!1},200)}),(l,s)=>{const e=o("vxe-column"),c=o("vxe-table",!0),u=o("a-card");return x(),f(m,null,{default:d(()=>[a(u,{title:"VxeTable \u6F14\u793A"},{extra:d(()=>[_]),default:d(()=>[a(c,{border:"",stripe:"",height:"400",loading:t.loading,"column-config":{resizable:!0},"row-config":{isHover:!0},"checkbox-config":{labelField:"id",highlight:!0,range:!0},data:t.tableData},{default:d(()=>[a(e,{type:"seq",width:"60"}),a(e,{type:"checkbox",title:"ID",width:"140"}),a(e,{field:"name",title:"Name",sortable:""}),a(e,{field:"sex",title:"Sex",filters:t.sexList,"filter-multiple":!1,formatter:i},null,8,["filters"]),a(e,{field:"age",title:"Age",sortable:"",filters:[{label:"\u5927\u4E8E16\u5C81",value:16},{label:"\u5927\u4E8E26\u5C81",value:26},{label:"\u5927\u4E8E30\u5C81",value:30}],"filter-method":n}),a(e,{field:"address",title:"Address","show-overflow":""})]),_:1},8,["loading","data"])]),_:1})]),_:1})}}});export{C as default};