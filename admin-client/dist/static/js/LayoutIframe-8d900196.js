import{d,b as f,T as _,q as l,m as v,e as h,n as g,f as k,o as n,l as y,w as I,c as s,B as b,C as w,D as x,u as B,F as L}from"./index-ceef6588.js";import{_ as C}from"./_plugin-vue_export-helper-c27b6911.js";const S=["src"],D=d({__name:"LayoutIframe",setup(T){const c=f(_.getAuthorization()),p=f(),m=l(),i=v(()=>m.state.tabs.filter(a=>a.meta.mode==2)),o=f(!1);h(()=>{c.value=_.getAuthorization()}),g(()=>i.value,(a,e)=>{a.length>e.length&&(o.value=!0)});function u(a,e,r){return e=e==null?void 0:e.replace("{menuid}",r.toString()),e=e==null?void 0:e.replace("{token}",c.value),e}return(a,e)=>{const r=k("a-spin");return n(),y(r,{spinning:o.value},{default:I(()=>[(n(!0),s(L,null,b(B(i),(t,U)=>(n(),s("div",{key:t.path},[w((n(),s("div",{key:t.path},[(n(),s("iframe",{ref_for:!0,ref_key:"iframe",ref:p,src:u(t.meta.moduleUrl,t.meta.moduleUrlPro,t.meta.menuId),frameBorder:"0",onLoad:e[0]||(e[0]=z=>o.value=!1),key:t.path},null,40,S))])),[[x,t.path==a.$route.path]])]))),128))]),_:1},8,["spinning"])}}});const $=C(D,[["__scopeId","data-v-69f6f7e2"]]);export{$ as default};
