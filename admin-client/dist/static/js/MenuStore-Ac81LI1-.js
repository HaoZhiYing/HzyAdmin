import{N as u,L as m,r as p,P as i,q as n,e as c}from"./index-C9oHGpmd.js";var M=(o=>(o.default="1",o.top="2",o.left="3",o))(M||{});const f=u("MenuStore",()=>{const o=m();var a=o.state.isMobile?!0:l.getCollapsed();let e=p({width:i.menu.maxWidth,minWidth:i.menu.minWidth,maxWidth:i.menu.maxWidth,mobileWidth:0,leftModeWidth:i.menu.leftModeWidth,isCollapse:a,menuMode:window.innerWidth<o.state.demarcation?"1":l.getMenuMode()});n(()=>e.menuMode,t=>l.setMenuMode(t)),n(()=>e.isCollapse,t=>s(t)),n(()=>o.state.isMobile,t=>{l.setMenuMode(window.innerWidth<o.state.demarcation?"1":l.getMenuMode()),t&&(e.isCollapse=!0),s(e.isCollapse)}),c(()=>{d(a),s(e.isCollapse)});function s(t){if(o.state.isMobile){e.width=0;return}t?e.width=e.minWidth:e.width=e.maxWidth}function d(t){e.isCollapse=t,l.setCollapsed(t)}function r(t){e.menuMode=t}return{state:e,onChangeCollapse:d,setMenuMode:r}});class l{static getCollapsed(){return localStorage.getItem(i.appPrefix+"_collapsed")=="1"}static setCollapsed(a){localStorage.setItem(i.appPrefix+"_collapsed",a?"1":"0")}static setMenuMode(a){localStorage.setItem(i.appPrefix+"_one_level_menu_mode",a.toString())}static getMenuMode(){let a=localStorage.getItem(i.appPrefix+"_one_level_menu_mode");return a||"1"}}export{M as E,f as M};