import{b as S,r as O,a as T,l as Y,o as F,c as d,m as c,d as w,h as t,w as o,g as n,q as f,A as C,z as g,n as m,f as v,F as M,e as B,t as I}from"./index-1d940afe.js";import V from"./List-69c5a1a0.js";import{I as z,s as k}from"./Info-3c614e66.js";const A=m("\u67E5\u8BE2"),E=m("\u91CD\u7F6E"),R=m(" \u9AD8\u7EA7\u68C0\u7D22 "),$=m(" \u6E05\u7A7A\u6240\u6709\u6570\u636E "),j=m(" - "),K=["onClick"],P={name:"sys_operation_log"},W=Object.assign(P,{setup(q){const b=S(),e=O({search:{state:!1,fieldCount:2,vm:{name:null,api:null,browser:null,ip:null,os:null,rangeTime:[],startTime:null,endTime:null}},loading:!1,pageSizeOptions:[10,20,50,100,500,1e3],rows:10,page:1,total:0,data:[],form:{visible:!1,key:""}}),x=T(null),D=T(null),y=b.getPowerByMenuId(Y.currentRoute.value.meta.menuId),s={onChange(i){const{currentPage:a,pageSize:u}=i;e.page=a==0?1:a,e.rows=u,s.findList()},onResetSearch(){e.page=1;let i=e.search.vm;for(let a in i)i[a]=null;s.findList()},findList(){e.loading=!0,e.search.vm.rangeTime&&e.search.vm.rangeTime.length==2&&(e.search.vm.startTime=e.search.vm.rangeTime[0].format("YYYY-MM-DD"),e.search.vm.endTime=e.search.vm.rangeTime[1].format("YYYY-MM-DD")),k.findList(e.rows,e.page,e.search.vm).then(i=>{let a=i.data;e.loading=!1,e.page=a.page,e.rows=a.size,e.total=a.total,e.data=a.dataSource})},deleteList(){k.deleteAllData().then(i=>{i.code==1&&(I.message("\u5220\u9664\u6210\u529F!","\u6210\u529F"),s.findList())})},openForm(i){x.value.openForm({visible:!0,key:i})},exportExcel(){k.exportExcel(e.search.vm)}};return F(()=>{s.findList()}),(i,a)=>{const u=d("a-input"),p=d("a-col"),L=d("a-range-picker"),_=d("a-button"),U=d("a-row"),N=d("a-popconfirm"),r=d("vxe-column"),h=d("a-tag");return c(),w("div",null,[t(V,{ref_key:"refList",ref:D,tableData:n(e),onOnChange:s.onChange},{search:o(()=>[t(U,{gutter:[15,15]},{default:o(()=>[t(p,{xs:24,sm:12,md:8,lg:6,xl:4},{default:o(()=>[t(u,{value:n(e).search.vm.api,"onUpdate:value":a[0]||(a[0]=l=>n(e).search.vm.api=l),placeholder:"\u63A5\u53E3\u5730\u5740"},null,8,["value"])]),_:1}),t(p,{xs:24,sm:12,md:8,lg:6,xl:4},{default:o(()=>[t(u,{value:n(e).search.vm.browser,"onUpdate:value":a[1]||(a[1]=l=>n(e).search.vm.browser=l),placeholder:"\u6D4F\u89C8\u5668"},null,8,["value"])]),_:1}),t(p,{xs:24,sm:12,md:8,lg:6,xl:4},{default:o(()=>[t(u,{value:n(e).search.vm.ip,"onUpdate:value":a[2]||(a[2]=l=>n(e).search.vm.ip=l),placeholder:"ip\u5730\u5740"},null,8,["value"])]),_:1}),t(p,{xs:24,sm:12,md:8,lg:6,xl:4},{default:o(()=>[t(u,{value:n(e).search.vm.os,"onUpdate:value":a[3]||(a[3]=l=>n(e).search.vm.os=l),placeholder:"\u64CD\u4F5C\u7CFB\u7EDF"},null,8,["value"])]),_:1}),t(p,{xs:24,sm:12,md:8,lg:6,xl:4},{default:o(()=>[t(L,{value:n(e).search.vm.rangeTime,"onUpdate:value":a[4]||(a[4]=l=>n(e).search.vm.rangeTime=l)},null,8,["value"])]),_:1}),t(p,{xs:24,sm:12,md:8,lg:6,xl:4,style:{float:"right"}},{default:o(()=>[t(_,{type:"primary",class:"mr-15",onClick:s.findList},{default:o(()=>[A]),_:1},8,["onClick"]),t(_,{class:"mr-15",onClick:s.onResetSearch},{default:o(()=>[E]),_:1},8,["onClick"])]),_:1})]),_:1})]),toolbar:o(()=>[t(u,{value:n(e).search.vm.name,"onUpdate:value":a[5]||(a[5]=l=>n(e).search.vm.name=l),placeholder:"\u63A5\u53E3\u5730\u5740",onKeyup:s.findList},null,8,["value","onKeyup"]),n(y).search?(c(),f(_,{key:0,onClick:a[6]||(a[6]=l=>n(e).search.state=!n(e).search.state)},{icon:o(()=>[t(C,{name:n(e).search.state?"UpOutlined":"DownOutlined"},null,8,["name"])]),default:o(()=>[R]),_:1})):g("",!0),n(y).delete?(c(),f(N,{key:1,title:"\u60A8\u786E\u5B9A\u8981\u5220\u9664\u5417?",onConfirm:a[7]||(a[7]=l=>s.deleteList()),okText:"\u786E\u5B9A",cancelText:"\u53D6\u6D88"},{default:o(()=>[t(_,{type:"danger"},{icon:o(()=>[t(C,{name:"DeleteOutlined"})]),default:o(()=>[$]),_:1})]),_:1})):g("",!0)]),"table-col":o(()=>[t(r,{field:"api",title:"\u63A5\u53E3\u5730\u5740","show-overflow":"","min-width":"300"}),t(r,{field:"os",title:"\u64CD\u4F5C\u7CFB\u7EDF",width:"100"}),t(r,{field:"browser",title:"\u6D4F\u89C8\u5668",width:"100"}),t(r,{field:"ip",title:"ip\u5730\u5740",width:"120"}),t(r,{title:"\u63A5\u53E3\u63CF\u8FF0",width:"300"},{default:o(({row:l})=>[m(v(l.controllerDisplayName)+" ",1),l.controllerDisplayName&&l.actionDisplayName?(c(),w(M,{key:0},[j],64)):g("",!0),m(" "+v(l.actionDisplayName),1)]),_:1}),t(r,{field:"takeUpTime",title:"\u63A5\u53E3\u8017\u65F6",width:"100"},{default:o(({row:l})=>[l.takeUpTime>=1e3?(c(),f(h,{key:0,color:"orange"},{default:o(()=>[m(v(l.takeUpTime)+"(\u6BEB\u79D2)",1)]),_:2},1024)):l.takeUpTime>=2e3?(c(),f(h,{key:1,color:"red"},{default:o(()=>[m(v(l.takeUpTime)+"(\u6BEB\u79D2)",1)]),_:2},1024)):(c(),f(h,{key:2,color:"#87d068"},{default:o(()=>[m(v(l.takeUpTime)+"(\u6BEB\u79D2)",1)]),_:2},1024))]),_:1}),t(r,{field:"userName",title:"\u64CD\u4F5C\u4EBA\u59D3\u540D",width:"120"}),t(r,{field:"loginName",title:"\u64CD\u4F5C\u4EBA\u8D26\u53F7",width:"120"}),t(r,{field:"creationTime",title:"\u521B\u5EFA\u65F6\u95F4",width:"180"}),t(r,{field:"id",title:"\u64CD\u4F5C",width:"100"},{default:o(({row:l})=>[B("a",{href:"javascript:void(0)",onClick:G=>s.openForm(l.id)},"\u8BE6\u60C5",8,K)]),_:1})]),_:1},8,["tableData","onOnChange"]),t(z,{ref_key:"refForm",ref:x,onOnSuccess:a[8]||(a[8]=()=>s.findList())},null,512)])}}});export{W as default};
