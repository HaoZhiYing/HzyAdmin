import{d as m,p as f,q as d,r as n,o as C,c as k,b as s,w as r,W as p}from"./index-c165b22f.js";import{_ as B}from"./_plugin-vue_export-helper-c4cb8a60.js";const w=m({__name:"FindBack",props:{title:null,label:null,visible:{type:Boolean}},emits:["onClear","update:visible"],setup(u,{emit:a}){const o=u,e=f({visible:!1});d(()=>o.visible,l=>{e.visible=l}),d(()=>e.visible,l=>{a("update:visible",l)});const v=()=>{a("onClear"),e.visible=!e.visible};return(l,t)=>{const _=n("a-drawer"),b=n("el-button"),c=n("el-input");return C(),k("div",null,[s(_,{title:o.title,placement:"right",visible:e.visible,width:1300,onClose:t[0]||(t[0]=i=>e.visible=!1)},{default:r(()=>[p(l.$slots,"default",{},void 0,!0)]),_:3},8,["title","visible"]),p(l.$slots,"input",{},()=>[s(c,{modelValue:o.label,"onUpdate:modelValue":t[1]||(t[1]=i=>o.label=i),readonly:"",placeholder:"\u8BF7\u9009\u62E9",onClick:t[2]||(t[2]=i=>e.visible=!e.visible)},{append:r(()=>[s(b,{icon:"DeleteOutlined",onClick:v})]),_:1},8,["modelValue"])],!0)])}}});const V=B(w,[["__scopeId","data-v-5ded13e4"]]);export{V as default};