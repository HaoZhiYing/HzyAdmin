import{p as F,U,r as E,a as L,j as u,W as N,k as h,q as m,w as c,g,L as S,f as _,d as R,e as x,E as C,c as I,H as V,F as D,n as b,S as z,t as y}from"./index-0d89598d.js";const p="admin/SysRoleMenuFunction",M={findList(d,f,n={}){return F(`${p}/findList/${d}/${f}`,n,!1)},saveForm(d){return d.id?F(`${p}/update`,d):F(`${p}/create`,d)},getRoleMenuFunctionByRoleId(d){return U(`${p}/getRoleMenuFunctionByRoleId/${d}`)}},H=R("span",{class:"mr-15"},"\u89D2\u8272\u529F\u80FD\u8BBE\u7F6E",-1),W=b("\u4FDD\u5B58/\u63D0\u4EA4"),j={class:"mr-15"},q=b(" \u5168\u9009 "),Y={setup(d,{expose:f}){const n=E({roleId:"",data:[],loading:!1,visible:!1}),v=L(null),r={getRoleMenuFunctionTree(){n.loading=!0,M.getRoleMenuFunctionByRoleId(n.roleId).then(a=>{n.loading=!1;let e=a.data;n.data=e,z(()=>{for(var l=0;l<n.data.length;l++){var s=n.data[l];if(s.menuFunctions.length>0){var i=s.levelCode.substr(0,s.levelCode.lastIndexOf("."));v.value.setTreeExpand(n.data.filter(k=>k.levelCode==i),!0)}}})})},save(){for(var a=n.data.filter(i=>i.menuFunctions.length>0),e=[],l=0;l<a.length;l++){var s=a[l];e.push({roleId:n.roleId,menuId:s.id,menuFunctionIdList:s.checkedMenuFunctionIds})}M.saveForm(e).then(i=>{if(i.code!=1)return y.message("\u4FDD\u5B58\u5931\u8D25!","\u9519\u8BEF");r.getRoleMenuFunctionTree(),y.message("\u4FDD\u5B58\u6210\u529F!","\u6210\u529F")})},onChangeCheckbox({values:a,row:e}){e.indeterminate=!!a.length&&a.length<e.menuFunctions.length,e.checkAll=a.length===e.menuFunctions.length},openWindow({visible:a,key:e}){n.visible=a,n.roleId=e,r.getRoleMenuFunctionTree()},setAllTreeExpand(){v.value.setAllTreeExpand(!0)},onCheckAllChange(a,e){a.target.checked?(e.checkedMenuFunctionIds=e.menuFunctions.map(l=>l.id),e.indeterminate=e.checkedMenuFunctionIds.length>0&&e.checkedMenuFunctionIds.length<e.menuFunctions.length,e.checkAll=e.checkedMenuFunctionIds.length===e.menuFunctions.length):(e.checkedMenuFunctionIds=[],e.indeterminate=!1)}};return f({...r}),(a,e)=>{const l=u("a-button"),s=u("a-checkbox"),i=u("vxe-column"),k=u("a-checkbox-group"),T=u("vxe-table"),A=u("a-spin"),B=u("a-modal"),$=N("drag");return h(),m(B,{visible:_(n).visible,"onUpdate:visible":e[0]||(e[0]=t=>_(n).visible=t),centered:"",width:"1200px",bodyStyle:{overflowY:"auto",height:"calc(100vh - 100px)"},footer:null},{title:c(()=>[H,g(l,{type:"primary",onClick:r.save},{default:c(()=>[W]),_:1},8,["onClick"])]),default:c(()=>[S((h(),m(A,{spinning:_(n).loading},{default:c(()=>[g(T,{ref_key:"refTable",ref:v,resizable:"",data:_(n).data,"row-config":{isHover:!0},"tree-config":{transform:!0,rowField:"id",parentField:"parentId"},size:"small"},{default:c(()=>[g(i,{field:"name",title:"\u83DC\u5355\u540D\u79F0","tree-node":"",width:"250"},{default:c(({row:t})=>[R("span",j,x(t.name),1),t.menuFunctions.length>0?(h(),m(s,{key:0,checked:t.checkAll,"onUpdate:checked":o=>t.checkAll=o,indeterminate:t.indeterminate,onChange:o=>r.onCheckAllChange(o,t)},{default:c(()=>[q]),_:2},1032,["checked","onUpdate:checked","indeterminate","onChange"])):C("",!0)]),_:1}),g(i,{field:"id",title:"\u6743\u9650"},{default:c(({row:t})=>[t.menuFunctions.length>0?(h(),m(k,{key:0,style:{display:"block"},value:t.checkedMenuFunctionIds,"onUpdate:value":o=>t.checkedMenuFunctionIds=o,onChange:o=>r.onChangeCheckbox({values:o,row:t})},{default:c(()=>[(h(!0),I(D,null,V(t.menuFunctions,o=>(h(),I("span",{key:o.id,class:"mr-15"},[g(s,{value:o.id},{default:c(()=>[b(x(o.label),1)]),_:2},1032,["value"])]))),128))]),_:2},1032,["value","onUpdate:value","onChange"])):C("",!0)]),_:1})]),_:1},8,["data"])]),_:1},8,["spinning"])),[[$]])]),_:1},8,["visible","bodyStyle"])}}};export{Y as default};