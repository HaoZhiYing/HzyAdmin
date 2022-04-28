var F=Object.defineProperty,J=Object.defineProperties;var M=Object.getOwnPropertyDescriptors;var I=Object.getOwnPropertySymbols;var j=Object.prototype.hasOwnProperty,q=Object.prototype.propertyIsEnumerable;var S=(t,e,i)=>e in t?F(t,e,{enumerable:!0,configurable:!0,writable:!0,value:i}):t[e]=i,k=(t,e)=>{for(var i in e||(e={}))j.call(e,i)&&S(t,i,e[i]);if(I)for(var i of I(e))q.call(e,i)&&S(t,i,e[i]);return t},U=(t,e)=>J(t,M(e));import{p as v,_ as E,y as H,A as G,b as K,r as Q,a as L,i as W,o as X,z as Y,c as r,j as _,d as Z,L as ee,M as te,f as a,w as n,q as w,C as z,n as p,k as x,e as P,t as N}from"./index-29f07e0f.js";import ae from"./ColumnIndex-842f7fa3.js";const b="admin/Low_Code_Table";var h={findList(t,e,i={}){return v(`${b}/findList/${t}/${e}`,i,!1)},deleteList(t){return t&&t.length===0?tools.message("\u8BF7\u9009\u62E9\u8981\u5220\u9664\u7684\u6570\u636E!","\u8B66\u544A"):v(`${b}/deleteList`,t,!1)},synchronization(){return v(`${b}/synchronization`,null,!1)},change(t){return v(`${b}/change`,t,!1)}};const ne=H({name:"LowCode",components:{AppIcon:G,ColumnIndexVue:ae},setup(){const t=K(),e=Q({table:{search:{state:!1,vm:{name:null}},loading:!1,pageSizeOptions:[10,20,50,100,500,1e3],rows:10,page:1,total:0,data:[]}}),i=L(null),y=L(null),C=L(null),$=t.getPowerByMenuId(W.currentRoute.value.meta.menuId),d={onChange(l){const{currentPage:s,pageSize:m}=l;e.table.page=s==0?1:s,e.table.rows=m,d.findList()},onResetSearch(){e.table.page=1;let l=e.table.search.vm;for(let s in l)l[s]=null;d.findList()},findList(){e.table.loading=!0,h.findList(e.table.rows,e.table.page,e.table.search.vm).then(l=>{let s=l.data;e.table.loading=!1,e.table.page=s.page,e.table.rows=s.size,e.table.total=s.total,e.table.data=s.dataSource})},deleteList(l){let s=[];l?s.push(l):s=y.value.getCheckboxRecords().map(m=>m.id),h.deleteList(s).then(m=>{m.code==1&&(N.message("\u5220\u9664\u6210\u529F!","\u6210\u529F"),d.findList())})},openForm(l){i.value.openForm({visible:!0,key:l})},synchronization(){h.synchronization().then(l=>{N.message("\u540C\u6B65\u6210\u529F!","\u6210\u529F"),d.findList()})},change(){console.log(e.table.data),h.change(e.table.data).then(l=>{N.message("\u6570\u636E\u53D8\u66F4\u6210\u529F!","\u6210\u529F"),d.findList()})},loadColumnIndex(l){C.value.loadData(l)}};return X(()=>{d.findList()}),U(k(k({},Y(e)),d),{power:$,refForm:i,refTable:y,refColumnIndex:C})}}),oe=p("\u67E5\u8BE2"),le=p("\u91CD\u7F6E"),se=p(" \u68C0\u7D22 "),ie=p(" \u540C\u6B65\u8868 "),re=p(" \u63D0\u4EA4\u66F4\u6539 "),de=p(" \u6279\u91CF\u5220\u9664 "),ue=["onClick"],pe=P("a",{class:"text-danger"},"\u5220\u9664",-1);function me(t,e,i,y,C,$){const d=r("a-input"),l=r("a-col"),s=r("a-button"),m=r("a-row"),T=r("a-card"),f=r("AppIcon"),g=r("a-popconfirm"),V=r("a-space"),u=r("vxe-column"),O=r("a-divider"),R=r("vxe-table"),A=r("vxe-pager"),B=r("a-spin"),D=r("ColumnIndexVue");return _(),Z("div",null,[ee(a(T,{class:"mb-15"},{default:n(()=>[a(m,{gutter:[15,15]},{default:n(()=>[a(l,{xs:24,sm:12,md:8,lg:6,xl:4},{default:n(()=>[a(d,{value:t.table.search.vm.name,"onUpdate:value":e[0]||(e[0]=o=>t.table.search.vm.name=o),placeholder:"\u540D\u79F0"},null,8,["value"])]),_:1}),a(l,{xs:24,sm:12,md:8,lg:6,xl:4,style:{float:"right"}},{default:n(()=>[a(s,{type:"primary",class:"mr-15",onClick:t.findList},{default:n(()=>[oe]),_:1},8,["onClick"]),a(s,{class:"mr-15",onClick:t.onResetSearch},{default:n(()=>[le]),_:1},8,["onClick"])]),_:1})]),_:1})]),_:1},512),[[te,t.table.search.state]]),a(T,null,{default:n(()=>[a(m,{gutter:[15,15]},{default:n(()=>[a(l,{xs:24,sm:24,md:12,lg:12,xl:12},{default:n(()=>[a(V,{size:15},{default:n(()=>[t.power.search?(_(),w(s,{key:0,onClick:e[1]||(e[1]=o=>t.table.search.state=!t.table.search.state)},{icon:n(()=>[a(f,{name:t.table.search.state?"UpOutlined":"DownOutlined"},null,8,["name"])]),default:n(()=>[se]),_:1})):z("",!0),a(g,{title:"\u60A8\u786E\u5B9A\u8981\u66F4\u65B0\u8868\u5417?\u53EF\u80FD\u4F1A\u5BFC\u81F4\u6570\u636E\u4E22\u5931",onConfirm:e[2]||(e[2]=o=>t.synchronization()),okText:"\u786E\u5B9A",cancelText:"\u53D6\u6D88"},{default:n(()=>[a(s,{type:"primary"},{icon:n(()=>[a(f,{name:"ReloadOutlined"})]),default:n(()=>[ie]),_:1})]),_:1}),a(g,{title:"\u60A8\u786E\u5B9A\u8981\u63D0\u4EA4\u66F4\u6539?",onConfirm:e[3]||(e[3]=o=>t.change()),okText:"\u786E\u5B9A",cancelText:"\u53D6\u6D88"},{default:n(()=>[a(s,{type:"primary"},{icon:n(()=>[a(f,{name:"PlusOutlined"})]),default:n(()=>[re]),_:1})]),_:1}),t.power.delete?(_(),w(g,{key:1,title:"\u60A8\u786E\u5B9A\u8981\u5220\u9664\u5417?",onConfirm:e[4]||(e[4]=o=>t.deleteList()),okText:"\u786E\u5B9A",cancelText:"\u53D6\u6D88"},{default:n(()=>[a(s,{type:"danger"},{icon:n(()=>[a(f,{name:"DeleteOutlined"})]),default:n(()=>[de]),_:1})]),_:1})):z("",!0)]),_:1})]),_:1}),a(l,{xs:24,sm:24,md:12,lg:12,xl:12,class:"text-right"})]),_:1}),a(B,{spinning:t.table.loading},{default:n(()=>[a(R,{class:"mt-15",ref:"refTable",size:"medium",border:"",stripe:"",data:t.table.data,"row-config":{isCurrent:!0,isHover:!0},"column-config":{isCurrent:!0,resizable:!0},"checkbox-config":{highlight:!0},"edit-config":{trigger:"click",mode:"cell"}},{default:n(()=>[a(u,{type:"seq",width:"60"}),a(u,{type:"checkbox",width:"60"}),a(u,{field:"tableName",title:"\u8868\u540D\u79F0"}),a(u,{field:"displayName",title:"\u663E\u793A\u540D\u79F0","edit-render":{}},{default:n(({row:o})=>[p(x(o.displayName),1)]),edit:n(({row:o})=>[a(d,{value:o.displayName,"onUpdate:value":c=>o.displayName=c,placeholder:"\u663E\u793A\u540D\u79F0"},null,8,["value","onUpdate:value"])]),_:1}),a(u,{field:"entityName",title:"\u5B9E\u4F53\u540D\u79F0","edit-render":{}},{default:n(({row:o})=>[p(x(o.entityName),1)]),edit:n(({row:o})=>[a(d,{value:o.entityName,"onUpdate:value":c=>o.entityName=c,placeholder:"\u5B9E\u4F53\u540D\u79F0"},null,8,["value","onUpdate:value"])]),_:1}),a(u,{field:"remark",title:"\u5907\u6CE8","edit-render":{}},{default:n(({row:o})=>[p(x(o.remark),1)]),edit:n(({row:o})=>[a(d,{value:o.remark,"onUpdate:value":c=>o.remark=c,placeholder:"\u5907\u6CE8"},null,8,["value","onUpdate:value"])]),_:1}),a(u,{field:"lastModificationTime",title:"\u66F4\u65B0\u65F6\u95F4"}),a(u,{field:"creationTime",title:"\u521B\u5EFA\u65F6\u95F4"}),a(u,{field:"id",title:"\u64CD\u4F5C"},{default:n(({row:o})=>[P("a",{href:"javascript:void(0)",onClick:c=>t.loadColumnIndex(o)}," \u7F16\u8F91\u5217 ",8,ue),a(O,{type:"vertical"}),t.power.delete?(_(),w(g,{key:0,title:"\u60A8\u786E\u5B9A\u8981\u5220\u9664\u5417?",onConfirm:c=>t.deleteList(o.id),okText:"\u786E\u5B9A",cancelText:"\u53D6\u6D88"},{default:n(()=>[pe]),_:2},1032,["onConfirm"])):z("",!0)]),_:1})]),_:1},8,["data"]),a(A,{background:"","current-page":t.table.page,"onUpdate:current-page":e[5]||(e[5]=o=>t.table.page=o),"page-size":t.table.rows,"onUpdate:page-size":e[6]||(e[6]=o=>t.table.rows=o),total:t.table.total,"page-sizes":t.table.pageSizeOptions,layouts:["PrevJump","PrevPage","JumpNumber","NextPage","NextJump","Sizes","FullJump","Total"],onPageChange:t.onChange},null,8,["current-page","page-size","total","page-sizes","onPageChange"])]),_:1},8,["spinning"])]),_:1}),a(D,{ref:"refColumnIndex",class:"mt-15"},null,512)])}var ve=E(ne,[["render",me]]);export{ve as default};