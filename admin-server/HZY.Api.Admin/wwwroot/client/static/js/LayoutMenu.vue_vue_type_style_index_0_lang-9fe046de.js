import{_ as K}from"./AppIcon.vue_vue_type_script_setup_true_lang-c9c34753.js";import{d as T,A as D,m as E,T as I,r as L,i as c,n as U,f as h,o as t,l as a,w as _,u as v,c as f,D as k,G as m,z as M,g,t as S}from"./index-2f681d41.js";import{_ as w}from"./LayoutMenuSub.vue_vue_type_script_setup_true_lang-af7bf8a2.js";import{M as A,E as N}from"./MenuStore-027f75f1.js";const z=T({__name:"LayoutMenu",setup(O){const C=A(),y=D(),x=E(()=>I.genTreeData(y.state.userInfo.menus,null)),u=L({defaultSelectedKeys:[c.currentRoute.value.meta.menuId??""],selectedKeys:[c.currentRoute.value.meta.menuId??""],openKeys:B()});U(()=>c.currentRoute.value,r=>{u.selectedKeys=[r.meta.menuId??""]});function B(){let n=c.currentRoute.value.meta.levelCode;if(!n)return[];var s=[];if(n.indexOf(".")>-1)for(var d=n.split("."),o=0;o<d.length-1;o++){var p=d[o];s.push(parseInt(p))}return s}function R(r){const n=y.state.userInfo.menus.find(s=>s.id==r.key);c.push({path:(n==null?void 0:n.jumpUrl)??(n==null?void 0:n.router)??"/404"})}return(r,n)=>{const s=h("a-menu-item"),d=h("a-menu");return t(),a(d,{mode:"inline",onSelect:R,selectedKeys:u.selectedKeys,"onUpdate:selectedKeys":n[0]||(n[0]=o=>u.selectedKeys=o),openKeys:u.openKeys,"onUpdate:openKeys":n[1]||(n[1]=o=>u.openKeys=o)},{default:_(()=>{var o,p;return[v(C).state.menuMode!=v(N).default?(t(!0),f(m,{key:0},k((o=v(y).state.subMenus)==null?void 0:o.filter(e=>e.show),e=>{var l;return t(),f(m,null,[!e.children||((l=e.children)==null?void 0:l.filter(i=>i.show).length)==0&&e.type==2?(t(),a(s,{key:e.id,title:e.name},{default:_(()=>[e.icon?(t(),a(K,{key:0,name:e.icon},null,8,["name"])):M("",!0),g("span",null,S(e.name),1)]),_:2},1032,["title"])):(t(),a(w,{key:1,"menu-info":e},null,8,["menu-info"]))],64)}),256)):(t(!0),f(m,{key:1},k((p=x.value)==null?void 0:p.filter(e=>e.show),e=>{var l;return t(),f(m,null,[!e.children||((l=e.children)==null?void 0:l.filter(i=>i.show).length)==0&&e.type==2?(t(),a(s,{key:e.id,title:e.name},{default:_(()=>[e.icon?(t(),a(K,{key:0,name:e.icon},null,8,["name"])):M("",!0),g("span",null,S(e.name),1)]),_:2},1032,["title"])):(t(),a(w,{key:1,"menu-info":e},null,8,["menu-info"]))],64)}),256))]}),_:1},8,["selectedKeys","openKeys"])}}});export{z as _};
