import{_ as k}from"./AppIcon.vue_vue_type_script_setup_true_lang-Fnoq4ehk.js";import{d as D,v as E,A as I,n as U,T as A,r as L,m as d,q as N,f as K,o as t,l as u,w as _,u as p,c as i,G as v,M as f,B as M,g as S,t as $}from"./index-cV5RpzD5.js";import{_ as g}from"./LayoutMenuSub.vue_vue_type_script_setup_true_lang-JMwSUxFV.js";import{M as O,E as V}from"./MenuStore-t5p85TGa.js";const x=D({__name:"LayoutMenu",setup(b){const w=E(),C=O(),y=I(),T=U(()=>A.genTreeData(y.state.userInfo.menus,null)),a=L({defaultSelectedKeys:[d.currentRoute.value.meta.menuId??""],selectedKeys:[d.currentRoute.value.meta.menuId??""],openKeys:B()});N(()=>d.currentRoute.value,o=>{a.selectedKeys=[o.meta.menuId??""]});function B(){let n=d.currentRoute.value.meta.levelCode;if(!n)return[];var r=[];if(n.indexOf(".")>-1)for(var c=n.split("."),s=0;s<c.length-1;s++){var m=c[s];r.push(parseInt(m))}return r}function R(o){const n=y.state.userInfo.menus.find(r=>r.id==o.key);d.push({path:(n==null?void 0:n.jumpUrl)??(n==null?void 0:n.router)??"/404"})}return(o,n)=>{const r=K("a-menu-item"),c=K("a-menu");return t(),u(c,{mode:"inline",theme:p(w).state.menuTheme.isDark?"dark":"light",onSelect:R,selectedKeys:a.selectedKeys,"onUpdate:selectedKeys":n[0]||(n[0]=s=>a.selectedKeys=s),openKeys:a.openKeys,"onUpdate:openKeys":n[1]||(n[1]=s=>a.openKeys=s)},{default:_(()=>{var s,m;return[p(C).state.menuMode!=p(V).default?(t(!0),i(f,{key:0},v((s=p(y).state.subMenus)==null?void 0:s.filter(e=>e.show),e=>{var l;return t(),i(f,null,[!e.children||((l=e.children)==null?void 0:l.filter(h=>h.show).length)==0&&e.type==2?(t(),u(r,{key:e.id,title:o.$t(`menu.${e.id}`)},{default:_(()=>[e.icon?(t(),u(k,{key:0,name:e.icon},null,8,["name"])):M("",!0),S("span",null,$(o.$t(`menu.${e.id}`)),1)]),_:2},1032,["title"])):(t(),u(g,{key:1,"menu-info":e},null,8,["menu-info"]))],64)}),256)):(t(!0),i(f,{key:1},v((m=T.value)==null?void 0:m.filter(e=>e.show),e=>{var l;return t(),i(f,null,[!e.children||((l=e.children)==null?void 0:l.filter(h=>h.show).length)==0&&e.type==2?(t(),u(r,{key:e.id,title:o.$t(`menu.${e.id}`)},{default:_(()=>[e.icon?(t(),u(k,{key:0,name:e.icon},null,8,["name"])):M("",!0),S("span",null,$(o.$t(`menu.${e.id}`)),1)]),_:2},1032,["title"])):(t(),u(g,{key:1,"menu-info":e},null,8,["menu-info"]))],64)}),256))]}),_:1},8,["theme","selectedKeys","openKeys"])}}});export{x as _};