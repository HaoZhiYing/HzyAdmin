import{d as N,z as M,a5 as P,E,s as R,r as n,o as l,e as c,w as a,a as t,u as x,j as s,m as g,c as F,k as q,t as C,F as T,f as z,p as U}from"./index-4c73da82.js";import{_ as y}from"./AppIcon.vue_vue_type_script_setup_true_lang-0270c94b.js";import{S,_ as G}from"./Info.vue_vue_type_script_setup_true_lang-22b0fd09.js";import{_ as H}from"./PageContainer.vue_vue_type_script_setup_true_lang-0b11d899.js";import{_ as J}from"./TableCurd.vue_vue_type_script_setup_true_lang-604abf26.js";const Q={key:0},W={key:1},X=["onClick"],Y=z("a",{class:"text-danger"},"\u5220\u9664",-1),Z=N({name:"system_function"}),le=N({...Z,setup(ee){const u=M({search:{state:!1,vm:{api:void 0,browser:void 0,ip:void 0,os:void 0,rangeTime:[],startTime:void 0,endTime:void 0}},loading:!1,page:1,size:10,total:100,columns:[],data:[]}),k=P(),B=E(),D=E(),b=E();R(()=>{f()});async function f(){u.loading=!0;const r=await S.findList(u.page,u.size,u.search.vm);u.loading=!1,r.code==1&&(u.page=r.data.page,u.size=r.data.size,u.total=r.data.total,u.columns=r.data.columns,u.data=r.data.dataSource)}async function w(r){var p,m;let o=[];if(r?o.push(r):o=(m=(p=B.value)==null?void 0:p.getSelectedRowKeys())!=null?m:[],o.length==0)return U.message.error("\u8BF7\u9009\u62E9\u8981\u5220\u9664\u7684\u884C!");u.loading=!0;const _=await S.deleteList(o);u.loading=!1,_.code==1&&(U.message.success("\u5220\u9664\u6210\u529F!"),f())}return(r,o)=>{const _=n("a-input"),p=n("a-form-item"),m=n("a-col"),$=n("a-range-picker"),v=n("a-button"),L=n("a-space"),O=n("a-row"),V=n("a-form"),A=n("a-popconfirm"),j=n("a-checkbox"),I=n("a-popover"),d=n("a-table-column"),h=n("a-tag"),K=n("a-divider");return l(),c(H,null,{default:a(()=>[t(J,{ref_key:"refTableCurd",ref:B,config:u,onChange:o[10]||(o[10]=({page:e,pageSize:i})=>{u.page=e==0?1:e,u.size=i,f()}),onShowSizeChange:o[11]||(o[11]=({current:e,size:i})=>{u.page=e==0?1:e,u.size=i,f()})},{search:a(()=>[x(k).search?(l(),c(V,{key:0,ref_key:"refSearchForm",ref:b,model:u.search.vm},{default:a(()=>[t(O,{gutter:[16,0]},{default:a(()=>[t(m,{xs:24,sm:12,md:8,lg:6,xl:6},{default:a(()=>[t(p,{name:"api",label:"\u63A5\u53E3\u5730\u5740"},{default:a(()=>[t(_,{value:u.search.vm.api,"onUpdate:value":o[0]||(o[0]=e=>u.search.vm.api=e),placeholder:"\u63A5\u53E3\u5730\u5740"},null,8,["value"])]),_:1})]),_:1}),t(m,{xs:24,sm:12,md:8,lg:6,xl:6},{default:a(()=>[t(p,{name:"browser",label:"\u6D4F\u89C8\u5668"},{default:a(()=>[t(_,{value:u.search.vm.browser,"onUpdate:value":o[1]||(o[1]=e=>u.search.vm.browser=e),placeholder:"\u6D4F\u89C8\u5668"},null,8,["value"])]),_:1})]),_:1}),t(m,{xs:24,sm:12,md:8,lg:6,xl:6},{default:a(()=>[t(p,{name:"ip",label:"ip\u5730\u5740"},{default:a(()=>[t(_,{value:u.search.vm.ip,"onUpdate:value":o[2]||(o[2]=e=>u.search.vm.ip=e),placeholder:"ip\u5730\u5740"},null,8,["value"])]),_:1})]),_:1}),t(m,{xs:24,sm:12,md:8,lg:6,xl:6},{default:a(()=>[t(p,{name:"os",label:"\u64CD\u4F5C\u7CFB\u7EDF"},{default:a(()=>[t(_,{value:u.search.vm.os,"onUpdate:value":o[3]||(o[3]=e=>u.search.vm.os=e),placeholder:"\u64CD\u4F5C\u7CFB\u7EDF"},null,8,["value"])]),_:1})]),_:1}),t(m,{xs:24,sm:12,md:8,lg:6,xl:6},{default:a(()=>[t(p,{name:"rangeTime",label:"\u65E5\u671F\u533A\u95F4"},{default:a(()=>[t($,{value:u.search.vm.rangeTime,"onUpdate:value":o[4]||(o[4]=e=>u.search.vm.rangeTime=e),class:"w100"},null,8,["value"])]),_:1})]),_:1}),t(m,{xs:24,sm:12,md:8,lg:6,xl:6,class:"text-right"},{default:a(()=>[t(L,{size:8},{default:a(()=>[t(v,{onClick:o[5]||(o[5]=e=>{var i;u.page=1,(i=b.value)==null||i.resetFields(),f()})},{default:a(()=>[s(" \u91CD\u7F6E ")]),_:1}),t(v,{type:"primary",onClick:o[6]||(o[6]=e=>{u.page=1,f()})},{default:a(()=>[s(" \u67E5\u8BE2 ")]),_:1})]),_:1})]),_:1})]),_:1})]),_:1},8,["model"])):g("",!0)]),"toolbar-left":a(()=>[x(k).search?(l(),c(v,{key:0,onClick:o[7]||(o[7]=e=>u.search.state=!u.search.state)},{default:a(()=>[u.search.state?(l(),F("div",Q,[t(y,{name:"UpOutlined"}),s("\xA0\xA0\u6536\u8D77")])):(l(),F("div",W,[t(y,{name:"DownOutlined"}),s("\xA0\xA0\u5C55\u5F00")]))]),_:1})):g("",!0),x(k).insert?(l(),c(v,{key:1,type:"primary",onClick:o[8]||(o[8]=()=>{var e;return(e=D.value)==null?void 0:e.open()})},{icon:a(()=>[t(y,{name:"PlusOutlined"})]),default:a(()=>[s(" \u65B0\u5EFA ")]),_:1})):g("",!0),x(k).delete?(l(),c(A,{key:2,title:"\u60A8\u786E\u5B9A\u8981\u5220\u9664?",onConfirm:o[9]||(o[9]=e=>w()),okText:"\u786E\u5B9A",cancelText:"\u53D6\u6D88"},{default:a(()=>[t(v,{type:"primary",danger:""},{icon:a(()=>[t(y,{name:"DeleteOutlined"})]),default:a(()=>[s(" \u6279\u91CF\u5220\u9664 ")]),_:1})]),_:1})):g("",!0)]),"toolbar-right":a(()=>[t(I,null,{content:a(()=>[(l(!0),F(T,null,q(u.columns.filter(e=>e.fieldName.substr(0,1)!="_"),e=>(l(),F("div",null,[t(j,{checked:e.show,"onUpdate:checked":i=>e.show=i},{default:a(()=>[s(C(e.title),1)]),_:2},1032,["checked","onUpdate:checked"])]))),256))]),default:a(()=>[t(v,{type:"text"},{icon:a(()=>[t(y,{name:"setting-outlined"})]),_:1})]),_:1})]),"table-col":a(()=>[t(d,{title:"\u63A5\u53E3\u5730\u5740","data-index":"api",width:250,ellipsis:!0}),t(d,{title:"\u64CD\u4F5C\u7CFB\u7EDF","data-index":"os"}),t(d,{title:"\u6D4F\u89C8\u5668","data-index":"browser"}),t(d,{title:"ip\u5730\u5740","data-index":"ip"}),t(d,{title:"\u63A5\u53E3\u63CF\u8FF0",width:200},{default:a(({record:e})=>[s(C(e.controllerDisplayName)+" ",1),e.controllerDisplayName&&e.actionDisplayName?(l(),F(T,{key:0},[s(" - ")],64)):g("",!0),s(" "+C(e.actionDisplayName),1)]),_:1}),t(d,{title:"\u63A5\u53E3\u8017\u65F6","data-index":"takeUpTime"},{default:a(({record:e})=>[e.takeUpTime>=1e3?(l(),c(h,{key:0,color:"orange"},{default:a(()=>[s(C(e.takeUpTime)+"(\u6BEB\u79D2)",1)]),_:2},1024)):e.takeUpTime>=2e3?(l(),c(h,{key:1,color:"red"},{default:a(()=>[s(C(e.takeUpTime)+"(\u6BEB\u79D2)",1)]),_:2},1024)):(l(),c(h,{key:2,color:"#87d068"},{default:a(()=>[s(C(e.takeUpTime)+"(\u6BEB\u79D2)",1)]),_:2},1024))]),_:1}),t(d,{title:"\u64CD\u4F5C\u4EBA\u59D3\u540D","data-index":"userName"}),t(d,{title:"\u64CD\u4F5C\u4EBA\u8D26\u53F7","data-index":"loginName"}),t(d,{title:"\u521B\u5EFA\u65F6\u95F4","data-index":"creationTime",width:150}),t(d,{title:"\u64CD\u4F5C","data-index":"id"},{default:a(({record:e})=>[z("a",{href:"javascript:;",onClick:()=>{var i;return(i=D.value)==null?void 0:i.open(e.id)}},"\u8BE6\u60C5",8,X),t(K,{type:"vertical"}),x(k).delete?(l(),c(A,{key:0,title:"\u60A8\u786E\u5B9A\u8981\u5220\u9664?",onConfirm:i=>w(e.id),okText:"\u786E\u5B9A",cancelText:"\u53D6\u6D88"},{default:a(()=>[Y]),_:2},1032,["onConfirm"])):g("",!0)]),_:1})]),_:1},8,["config"]),t(G,{ref_key:"refInfo",ref:D,onSuccess:()=>f()},null,8,["onSuccess"])]),_:1})}}});export{le as default};
