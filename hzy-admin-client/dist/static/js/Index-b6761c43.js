import{d as Y,x as U,a5 as q,E as D,q as K,m as E,r as u,o as i,e as p,w as t,a as e,u as l,j as d,i as c,c as k,t as $,ah as M,f as P}from"./index-2f630cca.js";import{_ as x}from"./AppIcon.vue_vue_type_script_setup_true_lang-5b59e4b3.js";import{S as h,_ as R}from"./Info.vue_vue_type_script_setup_true_lang-abf4b8fd.js";import{_ as G}from"./PageContainer.vue_vue_type_script_setup_true_lang-554ea529.js";import{_ as H}from"./TableCurd.vue_vue_type_script_setup_true_lang-0417d9e7.js";import"./AppIconList-0a60ec2b.js";import"./_plugin-vue_export-helper-c4cb8a60.js";const J={key:0},Q={key:1},W=["onClick"],X=["onClick"],Z=P("a",{class:"text-danger"},"\u5220\u9664",-1),ee=Y({name:"system_menu"}),re=Y({...ee,setup(te){const o=U({search:{state:!1,vm:{name:void 0}},loading:!1,page:1,size:10,total:100,columns:[],data:[]}),r=q(),A=D(),F=D(),B=D();K(()=>{f()});async function f(){try{o.loading=!0;const _=await h.getAll(o.search.vm);if(o.loading=!1,_.code!=1)return;o.data=E.genTreeData(_.data,null)}catch{o.loading=!1}}async function T(_){var C,g;let n=[];if(_?n.push(_):n=(g=(C=A.value)==null?void 0:C.getSelectedRowKeys())!=null?g:[],n.length==0)return E.message.error("\u8BF7\u9009\u62E9\u8981\u5220\u9664\u7684\u884C!");try{o.loading=!0;const y=await h.deleteList(n);if(o.loading=!1,y.code!=1)return;E.message.success("\u5220\u9664\u6210\u529F!"),f()}catch{o.loading=!1}}function z(){h.exportExcel(o.search.vm)}return(_,n)=>{const C=u("a-input"),g=u("a-form-item"),y=u("a-col"),v=u("a-button"),N=u("a-space"),j=u("a-row"),O=u("a-form"),b=u("a-popconfirm"),V=u("a-menu-item"),I=u("a-menu"),L=u("a-dropdown"),m=u("a-table-column"),w=u("a-divider");return i(),p(G,null,{default:t(()=>[e(H,{ref_key:"refTableCurd",ref:A,config:o,onChange:n[7]||(n[7]=({page:a,pageSize:s})=>{o.page=a==0?1:a,o.size=s,f()}),onShowSizeChange:n[8]||(n[8]=({current:a,size:s})=>{o.page=a==0?1:a,o.size=s,f()}),"is-pagination":!1},{search:t(()=>[l(r).search?(i(),p(O,{key:0,ref_key:"refSearchForm",ref:B,model:o.search.vm},{default:t(()=>[e(j,{gutter:[16,0]},{default:t(()=>[e(y,{xs:24,sm:12,md:8,lg:6,xl:6},{default:t(()=>[e(g,{class:"mb-0",name:"name",label:"\u83DC\u5355\u540D\u79F0"},{default:t(()=>[e(C,{value:o.search.vm.name,"onUpdate:value":n[0]||(n[0]=a=>o.search.vm.name=a),placeholder:"\u83DC\u5355\u540D\u79F0"},null,8,["value"])]),_:1})]),_:1}),e(y,{xs:24,sm:12,md:8,lg:6,xl:6,class:"text-right"},{default:t(()=>[e(N,{size:8},{default:t(()=>[e(v,{onClick:n[1]||(n[1]=a=>{var s;o.page=1,(s=B.value)==null||s.resetFields(),f()})},{default:t(()=>[d(" \u91CD\u7F6E ")]),_:1}),e(v,{type:"primary",onClick:n[2]||(n[2]=a=>{o.page=1,f()})},{default:t(()=>[d(" \u67E5\u8BE2 ")]),_:1})]),_:1})]),_:1})]),_:1})]),_:1},8,["model"])):c("",!0)]),"toolbar-left":t(()=>[l(r).search?(i(),p(v,{key:0,onClick:n[3]||(n[3]=a=>o.search.state=!o.search.state)},{default:t(()=>[o.search.state?(i(),k("div",J,[e(x,{name:"UpOutlined"}),d("\xA0\xA0\u6536\u8D77")])):(i(),k("div",Q,[e(x,{name:"DownOutlined"}),d("\xA0\xA0\u5C55\u5F00")]))]),_:1})):c("",!0),l(r).insert?(i(),p(v,{key:1,type:"primary",onClick:n[4]||(n[4]=()=>{var a;return(a=F.value)==null?void 0:a.open()})},{icon:t(()=>[e(x,{name:"PlusOutlined"})]),default:t(()=>[d(" \u65B0\u5EFA ")]),_:1})):c("",!0),l(r).delete?(i(),p(b,{key:2,title:"\u60A8\u786E\u5B9A\u8981\u5220\u9664?",onConfirm:n[5]||(n[5]=a=>T()),okText:"\u786E\u5B9A",cancelText:"\u53D6\u6D88"},{default:t(()=>[e(v,{type:"primary",danger:""},{icon:t(()=>[e(x,{name:"DeleteOutlined"})]),default:t(()=>[d(" \u6279\u91CF\u5220\u9664 ")]),_:1})]),_:1})):c("",!0)]),"toolbar-right":t(()=>[e(L,null,{overlay:t(()=>[e(I,null,{default:t(()=>[e(V,{key:"1",onClick:n[6]||(n[6]=a=>z())},{default:t(()=>[d("\u5BFC\u51FA Excel")]),_:1})]),_:1})]),default:t(()=>[e(v,null,{default:t(()=>[d(" \u66F4\u591A "),e(x,{name:"ellipsis-outlined"})]),_:1})]),_:1})]),"table-col":t(()=>[e(m,{title:"\u540D\u79F0","data-index":"name"}),e(m,{title:"\u56FE\u6807","data-index":"icon"},{default:t(({record:a})=>[e(x,{name:a.icon},null,8,["name"])]),_:1}),e(m,{title:"\u7F16\u53F7","data-index":"number"}),e(m,{title:"\u7EC4\u4EF6\u540D\u79F0","data-index":"componentName"}),e(m,{title:"\u7EC4\u4EF6\u5730\u5740","data-index":"url"}),e(m,{title:"\u8DEF\u7531\u5730\u5740","data-index":"router"}),e(m,{title:"\u66F4\u65B0\u65F6\u95F4","data-index":"lastModificationTime"},{default:t(({record:a})=>[d($(l(M)(a.lastModificationTime).format("YYYY-MM-DD")),1)]),_:1}),e(m,{title:"\u521B\u5EFA\u65F6\u95F4","data-index":"creationTime"},{default:t(({record:a})=>[d($(l(M)(a.creationTime).format("YYYY-MM-DD")),1)]),_:1}),l(r).update||l(r).delete||l(r).insert?(i(),p(m,{key:0,title:"\u64CD\u4F5C","data-index":"id"},{default:t(({record:a})=>[l(r).insert?(i(),k("a",{key:0,href:"javascript:void(0)",onClick:s=>{var S;return(S=F.value)==null?void 0:S.open(null,a.id)}},"\u65B0\u5EFA",8,W)):c("",!0),e(w,{type:"vertical"}),l(r).update?(i(),k("a",{key:1,href:"javascript:;",onClick:()=>{var s;return(s=F.value)==null?void 0:s.open(a.id,a.parentId)}},"\u7F16\u8F91",8,X)):c("",!0),e(w,{type:"vertical"}),l(r).delete?(i(),p(b,{key:2,title:"\u60A8\u786E\u5B9A\u8981\u5220\u9664?",onConfirm:s=>T(a.id),okText:"\u786E\u5B9A",cancelText:"\u53D6\u6D88"},{default:t(()=>[Z]),_:2},1032,["onConfirm"])):c("",!0)]),_:1})):c("",!0)]),_:1},8,["config"]),e(R,{ref_key:"refInfo",ref:F,onSuccess:()=>f()},null,8,["onSuccess"])]),_:1})}}});export{re as default};
