import{y as m,T as x,z as c,s as d,B as p,q as M,C as s,x as u}from"./index-4c73da82.js";const g=m("LayoutStore",()=>{const n=x();let e=c({isMobile:!1,demarcation:768});d(()=>{t()});const t=()=>{e.isMobile=window.innerWidth<e.demarcation,window.onresize=()=>(()=>{e.isMobile=window.innerWidth<e.demarcation})()};function i(r,l){n.delCacheView(l,()=>{p(()=>{M.push("/redirect"+r)})})}return{state:e,refresh:i}});var T=(n=>(n.default="1",n.top="2",n.left="3",n))(T||{});const I=[{activeBgColor:"#2f54eb",backgroundColor:void 0,activeTextColor:"#fff",textColor:"rgba(0, 0, 0, 0.85)"},{activeBgColor:"#2f54eb",backgroundColor:"#001529",activeTextColor:"#fff",textColor:"#fff"},{activeBgColor:"#2f54eb",backgroundColor:"#545c64",activeTextColor:"#fff",textColor:"#fff"},{activeBgColor:"#2f54eb",backgroundColor:"#191a23",activeTextColor:"#fff",textColor:"#fff"}],v=m("MenuStore",()=>{const n=g();var e=n.state.isMobile?!0:a.getCollapsed();let t=c({width:s.menu.maxWidth,minWidth:s.menu.minWidth,maxWidth:s.menu.maxWidth,mobileWidth:0,leftModeWidth:s.menu.leftModeWidth,menuCustomThemesIndex:3,isCollapse:e,menuMode:window.innerWidth<n.state.demarcation?"1":a.getMenuMode()});u(()=>t.menuMode,o=>a.setMenuMode(o)),u(()=>t.isCollapse,o=>i(o)),u(()=>n.state.isMobile,o=>{a.setMenuMode(window.innerWidth<n.state.demarcation?"1":a.getMenuMode()),o&&(t.isCollapse=!0),i(t.isCollapse)}),d(()=>{l(e),i(t.isCollapse)});function i(o){if(n.state.isMobile){t.width=0;return}o?t.width=t.minWidth:t.width=t.maxWidth}function r(o){t.menuCustomThemesIndex=o}d(()=>{t.menuCustomThemesIndex=a.getMenuCustomThemesIndex()}),u(()=>t.menuCustomThemesIndex,o=>{C(o),r(o)});function l(o){t.isCollapse=o,a.setCollapsed(o)}function f(o){t.menuMode=o}function C(o){a.setMenuCustomThemesIndex(o)}function h(){return t.menuCustomThemesIndex==0?"light":"dark"}return{state:t,menuCustomThemes:I,onChangeMenuCustomThemesIndex:r,onChangeCollapse:l,setMenuMode:f,themeType:h}});class a{static setMenuCustomThemesIndex(e){localStorage.setItem(`${s.appPrefix}_menu_custom_themes_index`,e.toString())}static getMenuCustomThemesIndex(){var e=localStorage.getItem(`${s.appPrefix}_menu_custom_themes_index`);return e==null||e==null||e==""?0:parseInt(e)}static getCollapsed(){return localStorage.getItem(s.appPrefix+"_collapsed")=="1"}static setCollapsed(e){localStorage.setItem(s.appPrefix+"_collapsed",e?"1":"0")}static setMenuMode(e){localStorage.setItem(s.appPrefix+"_one_level_menu_mode",e.toString())}static getMenuMode(){let e=localStorage.getItem(s.appPrefix+"_one_level_menu_mode");return e||"1"}}export{T as E,g as L,v as M};
