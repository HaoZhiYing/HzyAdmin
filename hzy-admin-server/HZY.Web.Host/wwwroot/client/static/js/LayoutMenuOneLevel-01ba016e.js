import{d as J,Q as K,A as z,b as f,x as B,s as N,q as R,r as T,o,c as l,u,f as c,a as y,F as _,k as h,e as M,w as g,j as V,t as k,l as S,i as m,p as r}from"./index-ddc31fce.js";import{_ as v}from"./AppIcon.vue_vue_type_script_setup_true_lang-1e1e30d5.js";import{M as b,E as L}from"./MenuStore-8a925bd5.js";import{_ as j}from"./_plugin-vue_export-helper-c4cb8a60.js";const w={key:0,class:"hzy-left-nav"},A={class:"hzy-logo"},E=["onClick"],F={key:1,class:"hzy-one-nav"},P=["onClick"],$={class:"menu-item"},D={class:"ml-5"},q=J({__name:"LayoutMenuOneLevel",setup(O){K(e=>({"708b5294":u(i).state.leftModeWidth+"px"}));const i=b(),s=z(),C=f(()=>r.currentRoute.value.fullPath),p=f(()=>s.getTopMenuIdByCurrentRoute()),a=B({selectedKey:C.value});N(()=>r.currentRoute.value,e=>{t.initTopMenu()});const t={initTopMenu(){if(p.value)a.selectedKey=p.value.toString(),t.onMenuSelected(p.value.toString());else if(s.state.oneLevels.length>0){var e=s.state.oneLevels[0];a.selectedKey=t.getJumpUrl(e),t.onMenuSelected(a.selectedKey)}},onMenuSelected(e){const d=s.getRouterByFullPath(e);d&&r.hasRoute(d.name)&&a.selectedKey!=e?r.push(e):(a.selectedKey=e,s.setSubmenu(e))},getJumpUrl(e){return e.jumpUrl?e.jumpUrl:e.componentName?e.componentName:e.id}};return R(()=>{s.createOneLevelMenu(),t.initTopMenu()}),(e,d)=>{const x=T("a-tooltip");return o(),l(_,null,[u(i).state.menuMode==u(L).left?(o(),l("div",w,[c("div",A,[y(v,{name:"AntDesignOutlined",style:{"font-size":"30px",color:"#1890ff"}})]),c("ul",null,[(o(!0),l(_,null,h(u(s).state.oneLevels,n=>(o(),M(x,{placement:"right"},{title:g(()=>[V(k(n.name),1)]),default:g(()=>[(o(),l("li",{key:t.getJumpUrl(n),class:S({active:t.getJumpUrl(n)==a.selectedKey}),onClick:U=>t.onMenuSelected(t.getJumpUrl(n))},[y(v,{name:n.icon,size:22},null,8,["name"])],10,E))]),_:2},1024))),256))])])):m("",!0),u(i).state.menuMode==u(L).top?(o(),l("ul",F,[(o(!0),l(_,null,h(u(s).state.oneLevels,n=>(o(),l("li",{key:t.getJumpUrl(n),class:S({active:t.getJumpUrl(n)==a.selectedKey}),onClick:U=>t.onMenuSelected(t.getJumpUrl(n))},[c("div",$,[n.icon?(o(),M(v,{key:0,name:n.icon,size:16},null,8,["name"])):m("",!0),c("div",D,k(n.name),1)])],10,P))),128))])):m("",!0)],64)}}});const I=j(q,[["__scopeId","data-v-84ee772f"]]);export{I as default};
