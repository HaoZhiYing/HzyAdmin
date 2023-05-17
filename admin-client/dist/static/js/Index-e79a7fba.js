import{d as L,r as O,R as V,b as w,e as j,T as h,f as i,o as s,l as p,w as o,a as n,u as l,j as _,z as u,c as k,g as F}from"./index-2f681d41.js";import{_ as C}from"./AppIcon.vue_vue_type_script_setup_true_lang-c9c34753.js";import{S as N,_ as U}from"./Info.vue_vue_type_script_setup_true_lang-e9d0b9b5.js";import{_ as A}from"./PageContainer.vue_vue_type_script_setup_true_lang-3d3dfadb.js";import{_ as M}from"./TableCurd.vue_vue_type_script_setup_true_lang-7162f1fc.js";const E={key:0},P={key:1},q=["onClick"],G=["onClick"],H=F("a",{class:"text-danger"},"删除",-1),ee=L({name:"system_function",__name:"Index",setup(J){const e=O({search:{state:!1,vm:{name:void 0},sort:[]},loading:!1,page:1,size:10,total:100,columns:[],data:[],expandedRowKeys:[]}),r=V(),S=w(),v=w(),$=w();j(()=>{f()});async function f(){try{e.loading=!0;const c=await N.findList(e.search.vm);if(e.loading=!1,c.code!=1)return;e.data=h.genTreeData(c.data,null),e.expandedRowKeys=c.data.map(t=>t.id)}catch{e.loading=!1}}async function R(c){var x;let t=[];if(c?t.push(c):t=((x=S.value)==null?void 0:x.getSelectedRowKeys())??[],t.length==0)return h.message.error("请选择要删除的行!");try{e.loading=!0;const g=await N.deleteList(t);if(e.loading=!1,g.code!=1)return;h.message.success("删除成功!"),f()}catch{e.loading=!1}}return(c,t)=>{const x=i("a-input"),g=i("a-form-item"),b=i("a-col"),y=i("a-button"),B=i("a-space"),D=i("a-row"),I=i("a-form"),z=i("a-popconfirm"),m=i("a-table-column"),K=i("a-divider");return s(),p(A,null,{default:o(()=>[n(M,{ref_key:"refTableCurd",ref:S,config:e,onChange:t[6]||(t[6]=a=>{e.page=a.pagination.current??1,e.size=a.pagination.pageSize??e.size,e.search.sort=a.sorter instanceof Array?[...a.sorter]:[a.sorter],f()}),onShowSizeChange:t[7]||(t[7]=({current:a,size:d})=>{e.page=a==0?1:a,e.size=d,f()}),"is-pagination":!1,expandedRowKeys:e.expandedRowKeys,"onUpdate:expandedRowKeys":t[8]||(t[8]=a=>e.expandedRowKeys=a)},{search:o(()=>[l(r).search?(s(),p(I,{key:0,ref_key:"refSearchForm",ref:$,model:e.search.vm},{default:o(()=>[n(D,{gutter:[16,0]},{default:o(()=>[n(b,{xs:24,sm:12,md:8,lg:6,xl:6},{default:o(()=>[n(g,{class:"mb-0",name:"name",label:"名称"},{default:o(()=>[n(x,{value:e.search.vm.name,"onUpdate:value":t[0]||(t[0]=a=>e.search.vm.name=a),placeholder:"名称"},null,8,["value"])]),_:1})]),_:1}),n(b,{xs:24,sm:12,md:8,lg:6,xl:6,class:"text-right"},{default:o(()=>[n(B,{size:8},{default:o(()=>[n(y,{onClick:t[1]||(t[1]=a=>{var d;e.page=1,(d=$.value)==null||d.resetFields(),f()})},{default:o(()=>[_(" 重置 ")]),_:1}),n(y,{type:"primary",onClick:t[2]||(t[2]=a=>{e.page=1,f()})},{default:o(()=>[_(" 查询 ")]),_:1})]),_:1})]),_:1})]),_:1})]),_:1},8,["model"])):u("",!0)]),"toolbar-left":o(()=>[l(r).search?(s(),p(y,{key:0,onClick:t[3]||(t[3]=a=>e.search.state=!e.search.state)},{default:o(()=>[e.search.state?(s(),k("div",E,[n(C,{name:"UpOutlined"}),_("  收起")])):(s(),k("div",P,[n(C,{name:"DownOutlined"}),_("  展开")]))]),_:1})):u("",!0),l(r).insert?(s(),p(y,{key:1,type:"primary",onClick:t[4]||(t[4]=()=>{var a;return(a=v.value)==null?void 0:a.open()})},{icon:o(()=>[n(C,{name:"PlusOutlined"})]),default:o(()=>[_(" 新建 ")]),_:1})):u("",!0),l(r).delete?(s(),p(z,{key:2,title:"您确定要删除?",onConfirm:t[5]||(t[5]=a=>R()),okText:"确定",cancelText:"取消"},{default:o(()=>[n(y,{type:"primary",danger:""},{icon:o(()=>[n(C,{name:"DeleteOutlined"})]),default:o(()=>[_(" 批量删除 ")]),_:1})]),_:1})):u("",!0)]),"toolbar-right":o(()=>[]),"table-col":o(()=>[n(m,{title:"分组名称/键","data-index":"name"}),n(m,{title:"值","data-index":"value"}),n(m,{title:"所属分组","data-index":"parentName"}),n(m,{title:"序号","data-index":"sort"}),n(m,{title:"唯一编码","data-index":"code"}),n(m,{title:"更新时间","data-index":"lastModificationTime"}),n(m,{title:"创建时间","data-index":"creationTime"}),l(r).update||l(r).delete||l(r).insert?(s(),p(m,{key:0,title:"操作","data-index":"id"},{default:o(({record:a})=>[l(r).insert?(s(),k("a",{key:0,href:"javascript:void(0)",onClick:d=>{var T;return(T=v.value)==null?void 0:T.open(null,a.id)}},"新建",8,q)):u("",!0),n(K,{type:"vertical"}),l(r).update?(s(),k("a",{key:1,href:"javascript:;",onClick:()=>{var d;return(d=v.value)==null?void 0:d.open(a.id,a.parentId)}},"编辑",8,G)):u("",!0),n(K,{type:"vertical"}),l(r).delete?(s(),p(z,{key:2,title:"您确定要删除?",onConfirm:d=>R(a.id),okText:"确定",cancelText:"取消"},{default:o(()=>[H]),_:2},1032,["onConfirm"])):u("",!0)]),_:1})):u("",!0)]),_:1},8,["config","expandedRowKeys"]),n(U,{ref_key:"refInfo",ref:v,onSuccess:()=>f()},null,8,["onSuccess"])]),_:1})}}});export{ee as default};
