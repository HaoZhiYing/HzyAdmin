import{b as j,r as B,a as y,i as I,o as V,j as d,k as c,c as $,g as e,w as t,f as r,q as u,A as h,E as _,d as L,n as i,t as N}from"./index-0d89598d.js";import M from"./List-d45bf14a.js";import{I as P,s as x}from"./Info-77472044.js";import U from"./RoleFunction-a0dc297e.js";import z from"./RoleDataAuthority-6f9d888e.js";import"./organizationService-84bce6c5.js";const K=i("\u67E5\u8BE2"),q=i("\u91CD\u7F6E"),G=i("\u5173\u95ED"),H=i(" \u9AD8\u7EA7\u68C0\u7D22 "),J=i(" \u65B0\u5EFA "),Q=i(" \u6279\u91CF\u5220\u9664 "),X=i("\u5BFC\u51FA Excel"),Y=i(" \u66F4\u591A\u64CD\u4F5C "),Z=i("\u81EA\u5B9A\u4E49\u6743\u9650"),ee=i("\u67E5\u770B\u6240\u6709\u6570\u636E"),te=i("\u4EC5\u67E5\u770B\u672C\u7EC4\u7EC7"),oe=i("\u4EC5\u67E5\u770B\u672C\u7EC4\u7EC7\u548C\u4E0B\u5C5E\u7EC4\u7EC7"),ne=i("\u4EC5\u67E5\u770B\u672C\u4EBA"),se=i("\u9501\u5B9A"),ae=i("\u4E0D\u9501\u5B9A"),le=["onClick"],ie=L("a",{class:"text-danger"},"\u5220\u9664",-1),re=["onClick"],ce=["onClick"],de={name:"system_role"},ye=Object.assign(de,{setup(ue){const D=j(),n=B({search:{state:!1,fieldCount:2,vm:{name:null}},loading:!1,rows:10,page:1,total:0,data:[],columns:[]}),w=y(null),b=y(null),T=y(null),R=y(null),k=D.getPowerByMenuId(I.currentRoute.value.meta.menuId),a={onChange(l){const{currentPage:o,pageSize:m}=l;n.page=o==0?1:o,n.rows=m,a.findList()},onResetSearch(){n.page=1;let l=n.search.vm;for(let o in l)l[o]=null;a.findList()},findList(){n.loading=!0,x.findList(n.rows,n.page,n.search.vm).then(l=>{let o=l.data;n.loading=!1,n.page=o.page,n.rows=o.size,n.total=o.total,n.data=o.dataSource})},deleteList(l){let o=[];l?o.push(l):o=b.value.table.getCheckboxRecords().map(m=>m.id),x.deleteList(o).then(m=>{m.code==1&&(N.message("\u5220\u9664\u6210\u529F!","\u6210\u529F"),a.findList())})},openForm(l){w.value.openForm({visible:!0,key:l})},exportExcel(){x.exportExcel(n.search.vm)},openRoleFunctionWindow(l){T.value.openWindow({visible:!0,key:l})},openRoleDataAuthorityWindow(l){R.value.openWindow({visible:!0,key:l})}};return V(()=>{a.findList()}),(l,o)=>{const m=d("a-input"),F=d("a-col"),p=d("a-button"),S=d("a-row"),O=d("a-popconfirm"),A=d("a-menu-item"),E=d("a-menu"),W=d("a-dropdown"),f=d("vxe-column"),v=d("a-tag"),g=d("a-divider");return c(),$("div",null,[e(M,{ref_key:"refList",ref:b,tableData:r(n),onOnChange:a.onChange},{search:t(()=>[e(S,{gutter:[15,15]},{default:t(()=>[e(F,{xs:24,sm:12,md:8,lg:6,xl:4},{default:t(()=>[e(m,{value:r(n).search.vm.name,"onUpdate:value":o[0]||(o[0]=s=>r(n).search.vm.name=s),placeholder:"\u540D\u79F0"},null,8,["value"])]),_:1}),e(F,{xs:24,sm:12,md:8,lg:6,xl:4,style:{float:"right"}},{default:t(()=>[e(p,{type:"primary",class:"mr-15",onClick:a.findList},{default:t(()=>[K]),_:1},8,["onClick"]),e(p,{class:"mr-15",onClick:a.onResetSearch},{default:t(()=>[q]),_:1},8,["onClick"]),e(p,{type:"danger",class:"mr-15",onClick:o[1]||(o[1]=s=>r(n).search.state=!1)},{default:t(()=>[G]),_:1})]),_:1})]),_:1})]),toolbar:t(()=>[e(m,{value:r(n).search.vm.name,"onUpdate:value":o[2]||(o[2]=s=>r(n).search.vm.name=s),placeholder:"\u540D\u79F0",onKeyup:a.findList},null,8,["value","onKeyup"]),r(k).search?(c(),u(p,{key:0,onClick:o[3]||(o[3]=s=>r(n).search.state=!r(n).search.state)},{icon:t(()=>[e(h,{name:r(n).search.state?"UpOutlined":"DownOutlined"},null,8,["name"])]),default:t(()=>[H]),_:1})):_("",!0),r(k).insert?(c(),u(p,{key:1,type:"primary",onClick:o[4]||(o[4]=s=>a.openForm())},{icon:t(()=>[e(h,{name:"PlusOutlined"})]),default:t(()=>[J]),_:1})):_("",!0),r(k).delete?(c(),u(O,{key:2,title:"\u60A8\u786E\u5B9A\u8981\u5220\u9664\u5417?",onConfirm:o[5]||(o[5]=s=>a.deleteList()),okText:"\u786E\u5B9A",cancelText:"\u53D6\u6D88"},{default:t(()=>[e(p,{type:"danger"},{icon:t(()=>[e(h,{name:"DeleteOutlined"})]),default:t(()=>[Q]),_:1})]),_:1})):_("",!0),e(W,null,{overlay:t(()=>[e(E,null,{default:t(()=>[e(A,{key:"1",onClick:a.exportExcel},{default:t(()=>[X]),_:1},8,["onClick"])]),_:1})]),default:t(()=>[e(p,null,{default:t(()=>[Y,e(h,{name:"DownOutlined"})]),_:1})]),_:1})]),"table-col-default":t(()=>[e(f,{field:"number",title:"\u7F16\u53F7",width:"100"}),e(f,{field:"name",title:"\u89D2\u8272\u540D\u79F0"}),e(f,{field:"permissionType",title:"\u6570\u636E\u6743\u9650"},{default:t(({row:s})=>[s.permissionType==1?(c(),u(v,{key:0,color:"success"},{default:t(()=>[Z]),_:1})):_("",!0),s.permissionType==2?(c(),u(v,{key:1,color:"success"},{default:t(()=>[ee]),_:1})):_("",!0),s.permissionType==3?(c(),u(v,{key:2,color:"success"},{default:t(()=>[te]),_:1})):_("",!0),s.permissionType==4?(c(),u(v,{key:3,color:"success"},{default:t(()=>[oe]),_:1})):_("",!0),s.permissionType==5?(c(),u(v,{key:4,color:"success"},{default:t(()=>[ne]),_:1})):_("",!0)]),_:1}),e(f,{field:"deleteLock",title:"\u5220\u9664\u9501\u5B9A"},{default:t(({row:s})=>[s.deleteLock?(c(),u(v,{key:0,color:"success"},{default:t(()=>[se]),_:1})):(c(),u(v,{key:1,color:"warning"},{default:t(()=>[ae]),_:1}))]),_:1}),e(f,{field:"remark",title:"\u5907\u6CE8"}),e(f,{field:"lastModificationTime",title:"\u66F4\u65B0\u65F6\u95F4"}),e(f,{field:"creationTime",title:"\u521B\u5EFA\u65F6\u95F4"}),e(f,{field:"id",title:"\u64CD\u4F5C",width:"300"},{default:t(({row:s})=>[r(k).update?(c(),$("a",{key:0,href:"javascript:void(0)",onClick:C=>a.openForm(s.id)},"\u7F16\u8F91",8,le)):_("",!0),e(g,{type:"vertical"}),r(k).delete?(c(),u(O,{key:1,title:"\u60A8\u786E\u5B9A\u8981\u5220\u9664\u5417?",onConfirm:C=>a.deleteList(s.id),okText:"\u786E\u5B9A",cancelText:"\u53D6\u6D88"},{default:t(()=>[ie]),_:2},1032,["onConfirm"])):_("",!0),e(g,{type:"vertical"}),L("a",{href:"javascript:void(0)",onClick:C=>a.openRoleFunctionWindow(s.id)},"\u529F\u80FD\u6743\u9650",8,re),e(g,{type:"vertical"}),L("a",{href:"javascript:void(0)",onClick:C=>a.openRoleDataAuthorityWindow(s.id)},"\u6570\u636E\u6743\u9650",8,ce)]),_:1})]),_:1},8,["tableData","onOnChange"]),e(P,{ref_key:"refForm",ref:w,onOnSuccess:o[6]||(o[6]=()=>a.findList())},null,512),e(U,{ref_key:"refRoleFunction",ref:T},null,512),e(z,{ref_key:"refRoleDataAuthority",ref:R,onOnSuccess:o[7]||(o[7]=()=>a.findList())},null,512)])}}});export{ye as default};
