import{d as T,z as W,a5 as X,E,b as Y,s as Z,a6 as D,x as ee,p as F,r as l,o as s,e as f,w as a,a as o,u as v,j as m,m as p,c as y,k as N,t as te,F as S,f as ae}from"./index-4c73da82.js";import{_ as h}from"./AppIcon.vue_vue_type_script_setup_true_lang-0270c94b.js";import{_ as ne}from"./Info.vue_vue_type_script_setup_true_lang-f96e8068.js";import{_ as oe}from"./PageContainer.vue_vue_type_script_setup_true_lang-0b11d899.js";import{_ as ue}from"./TableCurd.vue_vue_type_script_setup_true_lang-604abf26.js";import{S as le}from"./SysOrganizationService-d24f20a3.js";const se={key:0},re={key:1},ie=["onClick"],de=ae("a",{class:"text-danger"},"\u5220\u9664",-1),ce=T({name:"system_user"}),ke=T({...ce,props:{isFindBack:{type:Boolean,default:!1},defaultRowIds:null,type:{type:Boolean,default:!0}},emits:["findBackChange"],setup(O,{emit:U}){const w=O,n=W({search:{state:!1,vm:{name:void 0,loginName:void 0,organizationId:void 0}},loading:!1,page:1,size:10,total:100,columns:[],data:[]}),_=X(),C=E(),B=E(),z=E(),R=E(),L=E({defaultRowIds:Y(()=>w.defaultRowIds)});Z(()=>{k(),le.sysOrganizationTree().then(u=>{R.value=u.data.rows})});async function k(){n.loading=!0;const u=await D.findList(n.page,n.size,n.search.vm);n.loading=!1,u.code==1&&(n.page=u.data.page,n.size=u.data.size,n.total=u.data.total,n.columns=u.data.columns,n.data=u.data.dataSource,x.setCheckboxRow())}async function A(u){var d,c;let e=[];if(u?e.push(u):e=(c=(d=C.value)==null?void 0:d.getSelectedRowKeys())!=null?c:[],e.length==0)return F.message.error("\u8BF7\u9009\u62E9\u8981\u5220\u9664\u7684\u884C!");n.loading=!0;const i=await D.deleteList(e);n.loading=!1,i.code==1&&(F.message.success("\u5220\u9664\u6210\u529F!"),k())}function K(){D.exportExcel(n.search.vm)}const x={initRows(){!w.isFindBack||ee(()=>w.defaultRowIds,u=>{x.setCheckboxRow()})},setCheckboxRow(){var u,e;!w.isFindBack||((u=C.value)==null||u.clearSelectedRowKeys(),(e=C.value)==null||e.setSelectedRowKeys(L.value.defaultRowIds))},onChange(){var e,i;if(!!w.isFindBack){var u=(i=(e=C.value)==null?void 0:e.getSelectedRowKeys())!=null?i:[];if(u&&u.length==0)return F.message.warning("\u8BF7\u9009\u62E9\u4E00\u6761\u6570\u636E!");if(w.type&&u.length>1)return F.message.warning("\u53EA\u80FD\u9009\u62E9\u4E00\u6761\u6570\u636E!");U("findBackChange",x.getRowsByIds(u))}},getRowsByIds(u){var e=[],i=n.data;for(let d=0;d<i.length;d++){const c=i[d];u.filter(b=>b==c.id).length>0&&e.push(c)}return e}};return x.initRows(),(u,e)=>{const i=l("a-input"),d=l("a-form-item"),c=l("a-col"),b=l("a-tree-select"),g=l("a-button"),V=l("a-space"),j=l("a-row"),M=l("a-form"),I=l("a-popconfirm"),H=l("a-menu-item"),P=l("a-menu"),q=l("a-dropdown"),G=l("a-checkbox"),J=l("a-popover"),$=l("a-table-column"),Q=l("a-divider");return s(),f(oe,{show:!u.$props.isFindBack},{default:a(()=>[o(ue,{ref_key:"refTableCurd",ref:C,config:n,onChange:e[10]||(e[10]=({page:t,pageSize:r})=>{n.page=t==0?1:t,n.size=r,k()}),onShowSizeChange:e[11]||(e[11]=({current:t,size:r})=>{n.page=t==0?1:t,n.size=r,k()})},{search:a(()=>[v(_).search?(s(),f(M,{key:0,ref_key:"refSearchForm",ref:z,model:n.search.vm},{default:a(()=>[o(j,{gutter:[16,0]},{default:a(()=>[o(c,{xs:24,sm:12,md:8,lg:6,xl:6},{default:a(()=>[o(d,{class:"mb-0",name:"name",label:"\u771F\u5B9E\u59D3\u540D"},{default:a(()=>[o(i,{value:n.search.vm.name,"onUpdate:value":e[0]||(e[0]=t=>n.search.vm.name=t),placeholder:"\u771F\u5B9E\u540D\u79F0"},null,8,["value"])]),_:1})]),_:1}),o(c,{xs:24,sm:12,md:8,lg:6,xl:6},{default:a(()=>[o(d,{class:"mb-0",name:"loginName",label:"\u8D26\u6237\u540D\u79F0"},{default:a(()=>[o(i,{value:n.search.vm.loginName,"onUpdate:value":e[1]||(e[1]=t=>n.search.vm.loginName=t),placeholder:"\u8D26\u6237\u540D\u79F0"},null,8,["value"])]),_:1})]),_:1}),o(c,{xs:24,sm:12,md:8,lg:6,xl:6},{default:a(()=>[o(d,{class:"mb-0",name:"organizationId",label:"\u6240\u5C5E\u7EC4\u7EC7"},{default:a(()=>[o(b,{value:n.search.vm.organizationId,"onUpdate:value":e[2]||(e[2]=t=>n.search.vm.organizationId=t),"dropdown-style":{maxHeight:"400px",overflow:"auto"},placeholder:"\u6240\u5C5E\u7EC4\u7EC7","allow-clear":"","tree-default-expand-all":"","tree-data":R.value,"field-names":{children:"children",label:"title",value:"key"},class:"w100"},null,8,["value","tree-data"])]),_:1})]),_:1}),o(c,{xs:24,sm:12,md:8,lg:6,xl:6,class:"text-right"},{default:a(()=>[o(V,{size:8},{default:a(()=>[o(g,{onClick:e[3]||(e[3]=t=>{var r;n.page=1,(r=z.value)==null||r.resetFields(),k()})},{default:a(()=>[m(" \u91CD\u7F6E ")]),_:1}),o(g,{type:"primary",onClick:e[4]||(e[4]=t=>{n.page=1,k()})},{default:a(()=>[m(" \u67E5\u8BE2 ")]),_:1})]),_:1})]),_:1})]),_:1})]),_:1},8,["model"])):p("",!0)]),"toolbar-left":a(()=>[v(_).search?(s(),f(g,{key:0,onClick:e[5]||(e[5]=t=>n.search.state=!n.search.state)},{default:a(()=>[n.search.state?(s(),y("div",se,[o(h,{name:"UpOutlined"}),m("\xA0\xA0\u6536\u8D77")])):(s(),y("div",re,[o(h,{name:"DownOutlined"}),m("\xA0\xA0\u5C55\u5F00")]))]),_:1})):p("",!0),v(_).insert?(s(),f(g,{key:1,type:"primary",onClick:e[6]||(e[6]=()=>{var t;return(t=B.value)==null?void 0:t.open()})},{icon:a(()=>[o(h,{name:"PlusOutlined"})]),default:a(()=>[m(" \u65B0\u5EFA ")]),_:1})):p("",!0),v(_).delete?(s(),f(I,{key:2,title:"\u60A8\u786E\u5B9A\u8981\u5220\u9664?",onConfirm:e[7]||(e[7]=t=>A()),okText:"\u786E\u5B9A",cancelText:"\u53D6\u6D88"},{default:a(()=>[o(g,{type:"primary",danger:""},{icon:a(()=>[o(h,{name:"DeleteOutlined"})]),default:a(()=>[m(" \u6279\u91CF\u5220\u9664 ")]),_:1})]),_:1})):p("",!0),u.$props.isFindBack?(s(),f(g,{key:3,type:"primary",onClick:e[8]||(e[8]=t=>x.onChange())},{icon:a(()=>[o(h,{name:"CheckOutlined"})]),default:a(()=>[m(" \u5E26\u56DE\u6570\u636E ")]),_:1})):p("",!0)]),"toolbar-right":a(()=>[o(q,null,{overlay:a(()=>[o(P,null,{default:a(()=>[o(H,{key:"1",onClick:e[9]||(e[9]=t=>K())},{default:a(()=>[m("\u5BFC\u51FA Excel")]),_:1})]),_:1})]),default:a(()=>[o(g,null,{default:a(()=>[m(" \u66F4\u591A "),o(h,{name:"ellipsis-outlined"})]),_:1})]),_:1}),o(J,null,{content:a(()=>[(s(!0),y(S,null,N(n.columns.filter(t=>t.fieldName.substr(0,1)!="_"),t=>(s(),y("div",null,[o(G,{checked:t.show,"onUpdate:checked":r=>t.show=r},{default:a(()=>[m(te(t.title),1)]),_:2},1032,["checked","onUpdate:checked"])]))),256))]),default:a(()=>[o(g,{type:"text"},{icon:a(()=>[o(h,{name:"setting-outlined"})]),_:1})]),_:1})]),"table-col":a(()=>[(s(!0),y(S,null,N(n.columns.filter(t=>t.fieldName!=="id"),t=>(s(),y(S,{key:t.fieldName},[t.show?(s(),f($,{key:0,title:t.title,"data-index":t.fieldName},null,8,["title","data-index"])):p("",!0)],64))),128)),v(_).update||v(_).delete?(s(),f($,{key:0,title:"\u64CD\u4F5C","data-index":"id"},{default:a(({record:t})=>[v(_).update?(s(),y("a",{key:0,href:"javascript:;",onClick:()=>{var r;return(r=B.value)==null?void 0:r.open(t.id)}},"\u7F16\u8F91",8,ie)):p("",!0),o(Q,{type:"vertical"}),v(_).delete?(s(),f(I,{key:1,title:"\u60A8\u786E\u5B9A\u8981\u5220\u9664?",onConfirm:r=>A(t.id),okText:"\u786E\u5B9A",cancelText:"\u53D6\u6D88"},{default:a(()=>[de]),_:2},1032,["onConfirm"])):p("",!0)]),_:1})):p("",!0)]),_:1},8,["config"]),o(ne,{ref_key:"refInfo",ref:B,onSuccess:()=>k()},null,8,["onSuccess"])]),_:1},8,["show"])}}});export{ke as _};
