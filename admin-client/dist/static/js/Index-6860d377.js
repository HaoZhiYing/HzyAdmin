import{d as E,r as G,R as K,b as C,e as M,f as l,o as s,l as u,w as o,a as t,u as x,j as i,z as g,c as h,D as P,t as k,G as $,g as O,T as D}from"./index-2f681d41.js";import{_ as w}from"./AppIcon.vue_vue_type_script_setup_true_lang-c9c34753.js";import{S as L,_ as q}from"./Info.vue_vue_type_script_setup_true_lang-1c5b227f.js";import{_ as H}from"./PageContainer.vue_vue_type_script_setup_true_lang-3d3dfadb.js";import{_ as J}from"./TableCurd.vue_vue_type_script_setup_true_lang-7162f1fc.js";const Q={key:0},W={key:1},X=["onClick"],Y=O("a",{class:"text-danger"},"删除",-1),le=E({name:"system_function",__name:"Index",setup(Z){const a=G({search:{state:!1,vm:{api:void 0,browser:void 0,ip:void 0,os:void 0,rangeTime:[],startTime:void 0,endTime:void 0},sort:[]},loading:!1,page:1,size:10,total:100,columns:[],data:[]}),y=K(),U=C(),b=C(),S=C();M(()=>{p()});async function p(){try{a.loading=!0;const r=await L.findList(a.page,a.size,a.search.vm,a.search.sort);if(a.loading=!1,r.code!=1)return;a.page=r.data.page,a.size=r.data.size,a.total=r.data.total,a.columns=r.data.columns,a.data=r.data.dataSource}catch{a.loading=!1}}async function z(r){var f;let n=[];if(r?n.push(r):n=((f=U.value)==null?void 0:f.getSelectedRowKeys())??[],n.length==0)return D.message.error("请选择要删除的行!");try{a.loading=!0;const c=await L.deleteList(n);if(a.loading=!1,c.code!=1)return;D.message.success("删除成功!"),p()}catch{a.loading=!1}}return(r,n)=>{const f=l("a-input"),c=l("a-form-item"),_=l("a-col"),B=l("a-range-picker"),v=l("a-button"),F=l("a-space"),V=l("a-row"),I=l("a-form"),N=l("a-popconfirm"),j=l("a-checkbox"),A=l("a-popover"),d=l("a-table-column"),T=l("a-tag"),R=l("a-divider");return s(),u(H,null,{default:o(()=>[t(J,{ref_key:"refTableCurd",ref:U,config:a,onChange:n[10]||(n[10]=e=>{a.page=e.pagination.current??1,a.size=e.pagination.pageSize??a.size,a.search.sort=e.sorter instanceof Array?[...e.sorter]:[e.sorter],p()}),onShowSizeChange:n[11]||(n[11]=({current:e,size:m})=>{a.page=e==0?1:e,a.size=m,p()})},{search:o(()=>[x(y).search?(s(),u(I,{key:0,ref_key:"refSearchForm",ref:S,model:a.search.vm},{default:o(()=>[t(V,{gutter:[16,0]},{default:o(()=>[t(_,{xs:24,sm:12,md:8,lg:6,xl:6},{default:o(()=>[t(c,{name:"api",label:"接口地址"},{default:o(()=>[t(f,{value:a.search.vm.api,"onUpdate:value":n[0]||(n[0]=e=>a.search.vm.api=e),placeholder:"接口地址"},null,8,["value"])]),_:1})]),_:1}),t(_,{xs:24,sm:12,md:8,lg:6,xl:6},{default:o(()=>[t(c,{name:"browser",label:"浏览器"},{default:o(()=>[t(f,{value:a.search.vm.browser,"onUpdate:value":n[1]||(n[1]=e=>a.search.vm.browser=e),placeholder:"浏览器"},null,8,["value"])]),_:1})]),_:1}),t(_,{xs:24,sm:12,md:8,lg:6,xl:6},{default:o(()=>[t(c,{name:"ip",label:"ip地址"},{default:o(()=>[t(f,{value:a.search.vm.ip,"onUpdate:value":n[2]||(n[2]=e=>a.search.vm.ip=e),placeholder:"ip地址"},null,8,["value"])]),_:1})]),_:1}),t(_,{xs:24,sm:12,md:8,lg:6,xl:6},{default:o(()=>[t(c,{name:"os",label:"操作系统"},{default:o(()=>[t(f,{value:a.search.vm.os,"onUpdate:value":n[3]||(n[3]=e=>a.search.vm.os=e),placeholder:"操作系统"},null,8,["value"])]),_:1})]),_:1}),t(_,{xs:24,sm:12,md:8,lg:6,xl:6},{default:o(()=>[t(c,{name:"rangeTime",label:"日期区间"},{default:o(()=>[t(B,{value:a.search.vm.rangeTime,"onUpdate:value":n[4]||(n[4]=e=>a.search.vm.rangeTime=e),class:"w100"},null,8,["value"])]),_:1})]),_:1}),t(_,{xs:24,sm:12,md:8,lg:6,xl:6,class:"text-right"},{default:o(()=>[t(F,{size:8},{default:o(()=>[t(v,{onClick:n[5]||(n[5]=e=>{var m;a.page=1,(m=S.value)==null||m.resetFields(),p()})},{default:o(()=>[i(" 重置 ")]),_:1}),t(v,{type:"primary",onClick:n[6]||(n[6]=e=>{a.page=1,p()})},{default:o(()=>[i(" 查询 ")]),_:1})]),_:1})]),_:1})]),_:1})]),_:1},8,["model"])):g("",!0)]),"toolbar-left":o(()=>[x(y).search?(s(),u(v,{key:0,onClick:n[7]||(n[7]=e=>a.search.state=!a.search.state)},{default:o(()=>[a.search.state?(s(),h("div",Q,[t(w,{name:"UpOutlined"}),i("  收起")])):(s(),h("div",W,[t(w,{name:"DownOutlined"}),i("  展开")]))]),_:1})):g("",!0),x(y).insert?(s(),u(v,{key:1,type:"primary",onClick:n[8]||(n[8]=()=>{var e;return(e=b.value)==null?void 0:e.open()})},{icon:o(()=>[t(w,{name:"PlusOutlined"})]),default:o(()=>[i(" 新建 ")]),_:1})):g("",!0),x(y).delete?(s(),u(N,{key:2,title:"您确定要删除?",onConfirm:n[9]||(n[9]=e=>z()),okText:"确定",cancelText:"取消"},{default:o(()=>[t(v,{type:"primary",danger:""},{icon:o(()=>[t(w,{name:"DeleteOutlined"})]),default:o(()=>[i(" 批量删除 ")]),_:1})]),_:1})):g("",!0)]),"toolbar-right":o(()=>[t(A,null,{content:o(()=>[(s(!0),h($,null,P(a.columns.filter(e=>e.fieldName.substr(0,1)!="_"),e=>(s(),h("div",null,[t(j,{checked:e.show,"onUpdate:checked":m=>e.show=m},{default:o(()=>[i(k(e.title),1)]),_:2},1032,["checked","onUpdate:checked"])]))),256))]),default:o(()=>[t(v,{type:"text"},{icon:o(()=>[t(w,{name:"setting-outlined"})]),_:1})]),_:1})]),"table-col":o(()=>[t(d,{title:"接口地址","data-index":"api",width:250,ellipsis:!0}),t(d,{title:"操作系统","data-index":"os"}),t(d,{title:"浏览器","data-index":"browser"}),t(d,{title:"ip地址","data-index":"ip"}),t(d,{title:"接口描述",width:200},{default:o(({record:e})=>[i(k(e.controllerDisplayName)+" ",1),e.controllerDisplayName&&e.actionDisplayName?(s(),h($,{key:0},[i(" - ")],64)):g("",!0),i(" "+k(e.actionDisplayName),1)]),_:1}),t(d,{title:"接口耗时","data-index":"takeUpTime"},{default:o(({record:e})=>[e.takeUpTime>=1e3?(s(),u(T,{key:0,color:"orange"},{default:o(()=>[i(k(e.takeUpTime)+"(毫秒)",1)]),_:2},1024)):e.takeUpTime>=2e3?(s(),u(T,{key:1,color:"red"},{default:o(()=>[i(k(e.takeUpTime)+"(毫秒)",1)]),_:2},1024)):(s(),u(T,{key:2,color:"#87d068"},{default:o(()=>[i(k(e.takeUpTime)+"(毫秒)",1)]),_:2},1024))]),_:1}),t(d,{title:"操作人姓名","data-index":"userName"}),t(d,{title:"操作人账号","data-index":"loginName"}),t(d,{title:"创建时间","data-index":"creationTime",width:150}),t(d,{title:"操作","data-index":"id"},{default:o(({record:e})=>[O("a",{href:"javascript:;",onClick:()=>{var m;return(m=b.value)==null?void 0:m.open(e.id)}},"详情",8,X),t(R,{type:"vertical"}),x(y).delete?(s(),u(N,{key:0,title:"您确定要删除?",onConfirm:m=>z(e.id),okText:"确定",cancelText:"取消"},{default:o(()=>[Y]),_:2},1032,["onConfirm"])):g("",!0)]),_:1})]),_:1},8,["config"]),t(q,{ref_key:"refInfo",ref:b,onSuccess:()=>p()},null,8,["onSuccess"])]),_:1})}}});export{le as default};
