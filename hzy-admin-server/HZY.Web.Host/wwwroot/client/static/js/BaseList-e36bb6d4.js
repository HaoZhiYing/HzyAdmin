import{a as h}from"./index-35480588.js";import{_ as w}from"./PageContainer.vue_vue_type_script_setup_true_lang-554ea529.js";import{d as m,x as N,E as B,r as c,ad as v,o as a,e as i,w as t,B as C,j as D,f as l,a as L,c as P,t as o,i as S,u as s,n as V}from"./index-2f630cca.js";import"./AppIcon.vue_vue_type_script_setup_true_lang-5b59e4b3.js";const I={id:"print"},A={key:0},E=m({name:"BaseListCom"}),G=m({...E,setup(J){const n=N({columns:[{title:"Name",dataIndex:"name"},{title:"Age",dataIndex:"age"},{title:"Address",dataIndex:"address"}],data:[{key:"1",name:"John Brown",age:32,address:"New York No. 1 Lake Park"},{key:"2",name:"Jim Green",age:42,address:"London No. 1 Lake Park"},{key:"3",name:"Joe Black",age:32,address:"Sidney No. 1 Lake Park"},{key:"4",name:"Disabled User",age:99,address:"Sidney No. 1 Lake Park"}]}),u={onChange:(e,d)=>{console.log(`selectedRowKeys: ${e}`,"selectedRows: ",d)},getCheckboxProps:e=>({disabled:e.name==="Disabled User",name:e.name})},r=B(null),{x:_,y:p,style:k}=h(r,{initialValue:{x:500,y:200}});return(e,d)=>{const f=c("a-button"),y=c("a-table"),x=v("print");return a(),i(w,null,{default:t(()=>[C((a(),i(f,{type:"primary",class:"mb-16"},{default:t(()=>[D("\u6253\u5370")]),_:1})),[[x,"#print"]]),l("div",I,[L(y,{"row-selection":u,columns:n.columns,"data-source":n.data},{bodyCell:t(({column:g,text:b})=>[g.dataIndex==="name"?(a(),P("a",A,o(b),1)):S("",!0)]),_:1},8,["columns","data-source"])]),l("div",{ref_key:"el",ref:r,style:V([s(k),{position:"fixed","background-color":"red",width:"100px",height:"100px",color:"#fff",cursor:"pointer"}])},"\u5FEB\u62D6\u52A8\u6211... x:"+o(s(_))+"y:"+o(s(p)),5)]),_:1})}}});export{G as default};