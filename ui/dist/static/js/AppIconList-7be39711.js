var A=Object.defineProperty,F=Object.defineProperties;var $=Object.getOwnPropertyDescriptors;var _=Object.getOwnPropertySymbols;var N=Object.prototype.hasOwnProperty,b=Object.prototype.propertyIsEnumerable;var h=(n,s,e)=>s in n?A(n,s,{enumerable:!0,configurable:!0,writable:!0,value:e}):n[s]=e,k=(n,s)=>{for(var e in s||(s={}))N.call(s,e)&&h(n,e,s[e]);if(_)for(var e of _(s))b.call(s,e)&&h(n,e,s[e]);return n},f=(n,s)=>F(n,$(s));import{A as z,_ as B,g as L,b as T}from"./index-ce93cf89.js";import{d as V,k as E,l as S,t as j,b as q,o as a,m as i,q as l,s as C,u as c,e as r,F as p,y as u,x as g,n as w,p as y,g as D}from"./vendor-6202f44b.js";const M=V({name:"AppIconListCom",props:{name:String,height:Number},components:{AppIcon:z},setup(n,s){const e=E({active:1,names:[],antdCount:0,ionicons5Count:0}),d=D(),v=t=>{s.emit("update:name",t)},m=t=>{e.active=t,t===1&&(e.names=L(d),e.antdCount=e.names.length),t===2&&(e.names=T(d),e.ionicons5Count=e.names.length)};return S(()=>{m(e.active)}),f(k({},j(e)),{onClickIcon:v,onClickTab:m})}}),R={class:"app-icon-list"},G={style:{display:"flex","align-items":"center","justify-content":"center"}},H={class:"app-icon-show"},J={class:"ml-10"},K=u(" Antd "),O=u(" Ionicons5 "),P=["onClick"],Q={class:"ml-10"},U={key:1,class:"icon-list pt-15"},W=["onClick"],X={class:"ml-10"};function Y(n,s,e,d,v,m){const t=q("AppIcon");return a(),i("div",R,[l("div",G,[l("div",H,[C(t,{name:n.$props.name,size:40,color:"#fff"},null,8,["name"])]),l("h4",J,c(n.$props.name),1)]),l("ul",null,[l("li",{class:r({active:n.active===1}),onClick:s[0]||(s[0]=o=>n.onClickTab(1))},[K,n.antdCount>0?(a(),i(p,{key:0},[u(" \uFF08\u6570\u91CF:"+c(n.antdCount)+"\u4E2A\uFF09 ",1)],64)):g("",!0)],2),l("li",{class:r({active:n.active===2}),onClick:s[1]||(s[1]=o=>n.onClickTab(2))},[O,n.ionicons5Count>0?(a(),i(p,{key:0},[u(" \uFF08\u6570\u91CF:"+c(n.ionicons5Count)+"\u4E2A\uFF09 ",1)],64)):g("",!0)],2)]),n.$props.height>0?(a(),i("div",{key:0,class:"icon-list pt-15",style:w({height:n.$props.height+"px"})},[(a(!0),i(p,null,y(n.names,o=>(a(),i("div",{class:r(["icon-list-item",{active:n.name==o}]),onClick:I=>n.onClickIcon(o)},[C(t,{name:o,size:20},null,8,["name"]),l("div",Q,c(o),1)],10,P))),256))],4)):(a(),i("div",U,[(a(!0),i(p,null,y(n.names,o=>(a(),i("div",{class:r(["icon-list-item",{active:n.name==o}]),onClick:I=>n.onClickIcon(o)},[C(t,{name:o,size:20},null,8,["name"]),l("div",X,c(o),1)],10,W))),256))]))])}var en=B(M,[["render",Y],["__scopeId","data-v-50605575"]]);export{en as default};