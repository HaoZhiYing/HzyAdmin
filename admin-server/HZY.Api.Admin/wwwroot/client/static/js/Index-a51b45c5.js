import{_ as p}from"./AppIcon.vue_vue_type_script_setup_true_lang-081834dc.js";import{_ as F}from"./Info.vue_vue_type_script_setup_true_lang-7bf652d9.js";import{d as T,r as O,b as x,e as V,f as i,o as k,l as I,w as a,a as e,i as m,c as z,u as M,g as C,T as y}from"./index-ceef6588.js";import{_ as j}from"./PageContainer.vue_vue_type_script_setup_true_lang-f7d2786e.js";import{_ as A}from"./TableCurd.vue_vue_type_script_setup_true_lang-3a6845a0.js";import{L as g}from"./CodeLoadToProject.vue_vue_type_script_setup_true_lang-9a5faf24.js";import{C as E}from"./CodeGenerationService-95b9b56a.js";import"./Columns.vue_vue_type_script_setup_true_lang-aac958e7.js";import"./CodeGeneration.vue_vue_type_script_setup_true_lang-852b8bf0.js";const G=C("span",{class:"text-danger"},"请在数据库中建表。在此界面点击扫描新表，然后在此界面配置表信息后点击提交变更保存数据即可!",-1),K={key:0},R={key:1},q=["onClick"],H=C("a",{class:"text-danger"},"删除",-1),J=T({name:"LowCode"}),oe=T({...J,setup(P){const t=O({search:{state:!1,vm:{tableName:void 0,entityName:void 0,displayName:void 0},sort:[]},loading:!1,page:1,size:10,total:100,columns:[],data:[]}),N=x(),b=x(),h=x();V(()=>{r()});async function r(){t.loading=!0;const s=await g.findList(t.page,t.size,t.search.vm,t.search.sort);t.loading=!1,s.code==1&&(t.page=s.data.page,t.size=s.data.size,t.total=s.data.total,t.columns=s.data.columns,t.data=s.data.dataSource)}async function w(s){var f;let o=[];if(s?o.push(s):o=((f=N.value)==null?void 0:f.getSelectedRowKeys())??[],o.length==0)return y.message.error("请选择要删除的行!");t.loading=!0;const d=await g.deleteList(o);t.loading=!1,d.code==1&&(y.message.success("删除成功!"),r())}function S(){g.synchronization().then(s=>{y.message.success("同步成功!"),r()})}function $(){g.change(t.data).then(s=>{y.message.success("数据变更成功!"),r()})}return(s,o)=>{const d=i("a-input"),f=i("a-form-item"),_=i("a-col"),u=i("a-button"),U=i("a-space"),L=i("a-row"),B=i("a-form"),v=i("a-popconfirm"),c=i("a-table-column"),D=i("a-divider");return k(),I(j,null,{describe:a(()=>[G]),default:a(()=>[e(A,{ref_key:"refTableCurd",ref:N,config:t,onChange:o[10]||(o[10]=n=>{t.page=n.pagination.current??1,t.size=n.pagination.pageSize??t.size,t.search.sort=n.sorter instanceof Array?[...n.sorter]:[n.sorter],r()}),onShowSizeChange:o[11]||(o[11]=({current:n,size:l})=>{t.page=n==0?1:n,t.size=l,r()})},{search:a(()=>[e(B,{ref_key:"refSearchForm",ref:h,model:t.search.vm},{default:a(()=>[e(L,{gutter:[16,0]},{default:a(()=>[e(_,{xs:24,sm:12,md:8,lg:6,xl:6},{default:a(()=>[e(f,{class:"mb-0",name:"tableName",label:"表名称"},{default:a(()=>[e(d,{value:t.search.vm.tableName,"onUpdate:value":o[0]||(o[0]=n=>t.search.vm.tableName=n),placeholder:"表名称"},null,8,["value"])]),_:1})]),_:1}),e(_,{xs:24,sm:12,md:8,lg:6,xl:6},{default:a(()=>[e(f,{class:"mb-0",name:"entityName",label:"实体名称"},{default:a(()=>[e(d,{value:t.search.vm.entityName,"onUpdate:value":o[1]||(o[1]=n=>t.search.vm.entityName=n),placeholder:"实体名称"},null,8,["value"])]),_:1})]),_:1}),e(_,{xs:24,sm:12,md:8,lg:6,xl:6},{default:a(()=>[e(f,{class:"mb-0",name:"displayName",label:"显示名称"},{default:a(()=>[e(d,{value:t.search.vm.displayName,"onUpdate:value":o[2]||(o[2]=n=>t.search.vm.displayName=n),placeholder:"显示名称"},null,8,["value"])]),_:1})]),_:1}),e(_,{xs:24,sm:12,md:8,lg:6,xl:6,class:"text-right"},{default:a(()=>[e(U,{size:8},{default:a(()=>[e(u,{onClick:o[3]||(o[3]=n=>{var l;t.page=1,(l=h.value)==null||l.resetFields(),r()})},{default:a(()=>[m(" 重置 ")]),_:1}),e(u,{type:"primary",onClick:o[4]||(o[4]=n=>{t.page=1,r()})},{default:a(()=>[m(" 查询 ")]),_:1})]),_:1})]),_:1})]),_:1})]),_:1},8,["model"])]),"toolbar-left":a(()=>[e(u,{onClick:o[5]||(o[5]=n=>t.search.state=!t.search.state)},{default:a(()=>[t.search.state?(k(),z("div",K,[e(p,{name:"UpOutlined"}),m("  收起")])):(k(),z("div",R,[e(p,{name:"DownOutlined"}),m("  展开")]))]),_:1}),e(v,{title:"您确定要更新表吗?可能会导致数据丢失",onConfirm:o[6]||(o[6]=n=>S()),okText:"确定",cancelText:"取消"},{default:a(()=>[e(u,{type:"primary"},{icon:a(()=>[e(p,{name:"scan-outlined"})]),default:a(()=>[m(" 扫描新表 ")]),_:1})]),_:1}),e(v,{title:"您确定要提交更改?",onConfirm:o[7]||(o[7]=n=>$()),okText:"确定",cancelText:"取消"},{default:a(()=>[e(u,{type:"primary"},{icon:a(()=>[e(p,{name:"check-outlined"})]),default:a(()=>[m(" 提交变更 ")]),_:1})]),_:1}),e(u,{type:"primary",onClick:o[8]||(o[8]=()=>M(E).createDataDictionary())},{icon:a(()=>[e(p,{name:"cloud-download-outlined"})]),default:a(()=>[m(" 下载数据库表设计 ")]),_:1}),e(v,{title:"您确定要删除?",onConfirm:o[9]||(o[9]=n=>w()),okText:"确定",cancelText:"取消"},{default:a(()=>[e(u,{type:"primary",danger:""},{icon:a(()=>[e(p,{name:"DeleteOutlined"})]),default:a(()=>[m(" 批量删除 ")]),_:1})]),_:1})]),"toolbar-right":a(()=>[]),"table-col":a(()=>[e(c,{title:"表名称","data-index":"tableName"}),e(c,{title:"显示名称","data-index":"displayName"},{default:a(({record:n})=>[e(d,{value:n.displayName,"onUpdate:value":l=>n.displayName=l},null,8,["value","onUpdate:value"])]),_:1}),e(c,{title:"实体名称","data-index":"entityName"},{default:a(({record:n})=>[e(d,{value:n.entityName,"onUpdate:value":l=>n.entityName=l},null,8,["value","onUpdate:value"])]),_:1}),e(c,{title:"备注","data-index":"remark"},{default:a(({record:n})=>[e(d,{value:n.remark,"onUpdate:value":l=>n.remark=l},null,8,["value","onUpdate:value"])]),_:1}),e(c,{title:"更新时间","data-index":"lastModificationTime",width:"120px"}),e(c,{title:"创建时间","data-index":"creationTime",width:"120px"}),e(c,{title:"操作","data-index":"id"},{default:a(({record:n})=>[C("a",{href:"javascript:;",onClick:()=>{var l;return(l=b.value)==null?void 0:l.open(n)}},"配置",8,q),e(D,{type:"vertical"}),e(v,{title:"您确定要删除?",onConfirm:l=>w(n.id),okText:"确定",cancelText:"取消"},{default:a(()=>[H]),_:2},1032,["onConfirm"])]),_:1})]),_:1},8,["config"]),e(F,{ref_key:"refInfo",ref:b,onSuccess:()=>r()},null,8,["onSuccess"])]),_:1})}}});export{oe as default};
