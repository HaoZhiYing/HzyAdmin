var S=Object.defineProperty;var U=(r,a,s)=>a in r?S(r,a,{enumerable:!0,configurable:!0,writable:!0,value:s}):r[a]=s;var v=(r,a,s)=>(U(r,typeof a!="symbol"?a+"":a,s),s);import{H as m,T as I,d as $,r as w,f as d,o as k,l as _,w as i,a as u,i as f,x as b,c as x,B as L,t as P,F as z}from"./index-ceef6588.js";class F{static findList(a,s,n={},p=[]){return m.post(`${this.urlPrefix}/findList`,{page:a,size:s,search:n,searchSort:p})}static saveForm(a){return m.post(`${this.urlPrefix}/create`,a)}static async getRoleMenuFunctionByRoleId(a){const s=await m.get(`${this.urlPrefix}/getRoleMenuFunctionByRoleId/${a}`),n=[];return s.data.forEach(p=>{n.push(p.id)}),{data:s.data,tree:I.genTreeData(s.data),keys:n}}}v(F,"urlPrefix","/api/v1/admin/SysRoleMenuFunction");const N=$({__name:"FunctionAuthority",props:{onSuccess:{type:Function}},setup(r,{expose:a}){const s=r,n=w({visible:!1,loading:!1,roleId:"",treeData:[],rowkeys:[]});a({open:(o="")=>{n.visible=!0,n.roleId=o,n.loading=!0,F.getRoleMenuFunctionByRoleId(o).then(e=>{n.loading=!1,n.treeData=e.tree,n.rowkeys=e.keys,console.log(n.rowkeys)})}});async function p(){const o=[];function e(g){g.forEach(c=>{c.children&&c.children.length>0&&e(c.children),c.checkedMenuFunctionIds&&c.checkedMenuFunctionIds.length>0&&o.push({roleId:n.roleId,menuId:c.id,menuFunctionIdList:c.checkedMenuFunctionIds})})}e(n.treeData),(await F.saveForm(o)).code==1&&(I.message.success("操作成功!"),s.onSuccess(),n.visible=!1)}function C(o,e){o.target.checked?(e.checkedMenuFunctionIds=e.menuFunctions.map(h=>h.id),e.indeterminate=e.checkedMenuFunctionIds.length>0&&e.checkedMenuFunctionIds.length<e.menuFunctions.length,e.checkAll=e.checkedMenuFunctionIds.length===e.menuFunctions.length):(e.checkedMenuFunctionIds=[],e.indeterminate=!1)}function A(o,e){e.indeterminate=!!o.length&&o.length<e.menuFunctions.length,e.checkAll=o.length===e.menuFunctions.length}return(o,e)=>{const h=d("a-button"),g=d("ASpace"),c=d("ATableColumn"),y=d("a-checkbox"),M=d("ADivider"),D=d("a-checkbox-group"),R=d("ATable"),T=d("a-spin"),B=d("a-drawer");return k(),_(B,{visible:n.visible,"onUpdate:visible":e[3]||(e[3]=t=>n.visible=t),title:"角色功能设置",centered:"",onOk:e[4]||(e[4]=t=>n.visible=!1),width:1200,footer:null},{extra:i(()=>[u(g,null,{default:i(()=>[u(h,{type:"primary",onClick:e[0]||(e[0]=t=>p())},{default:i(()=>[f("保存/提交")]),_:1}),u(h,{onClick:e[1]||(e[1]=()=>n.visible=!n.visible)},{default:i(()=>[f("关闭")]),_:1})]),_:1})]),default:i(()=>[u(T,{spinning:n.loading},{default:i(()=>[u(R,{"data-source":n.treeData,size:"small",expandedRowKeys:n.rowkeys,"onUpdate:expandedRowKeys":e[2]||(e[2]=t=>n.rowkeys=t),pagination:!1,"row-key":"id"},{default:i(()=>[u(c,{title:"菜单","data-index":"name",width:"250px"}),u(c,{title:"功能","data-index":"id"},{default:i(({record:t})=>[t.menuFunctions.length>0?(k(),_(g,{key:0,size:8},{default:i(()=>[t.menuFunctions.length>0?(k(),_(y,{key:0,checked:t.checkAll,"onUpdate:checked":l=>t.checkAll=l,indeterminate:t.indeterminate,onChange:l=>C(l,t)},{default:i(()=>[f(" 全选/取消 ")]),_:2},1032,["checked","onUpdate:checked","indeterminate","onChange"])):b("",!0),u(M,{type:"vertical"}),u(D,{style:{display:"block"},value:t.checkedMenuFunctionIds,"onUpdate:value":l=>t.checkedMenuFunctionIds=l,onChange:l=>A(l,t)},{default:i(()=>[(k(!0),x(z,null,L(t.menuFunctions,l=>(k(),x("span",{key:l.id,class:"mr-16"},[u(y,{value:l.id},{default:i(()=>[f(P(l.label),1)]),_:2},1032,["value"])]))),128))]),_:2},1032,["value","onUpdate:value","onChange"])]),_:2},1024)):b("",!0)]),_:1})]),_:1},8,["data-source","expandedRowKeys"])]),_:1},8,["spinning"])]),_:1},8,["visible"])}}});export{N as _};
