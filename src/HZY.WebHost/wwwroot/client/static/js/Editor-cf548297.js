import p from"./WangEditor-f420c8fa.js";import{_}from"./index-7aa787f9.js";import{d as f,r as u,b as e,o as g,m as h,s as o,h as n,q as l}from"./vendor-621951b9.js";const x=f({name:"EditorCom",components:{WangEditor:p},setup(){const t=u("");return t.value="\u6D4B\u8BD56666\uFF01\uFF01\uFF01",{text:t}}}),v=l("a",{target:"_blank",href:"https://doc.wangeditor.com/"},"\u67E5\u770B\u793A\u4F8B",-1),E=["innerHTML"];function w(t,a,C,b,N,W){const d=e("a-alert"),m=e("WangEditor"),r=e("a-col"),i=e("a-card"),c=e("a-row");return g(),h("div",null,[o(d,{message:"\u5BCC\u6587\u672C\u7F16\u8F91\u5668 WangEditor",type:"success"},{description:n(()=>[v]),_:1}),o(c,{gutter:[15,15],class:"mt-15"},{default:n(()=>[o(r,{xs:24,sm:12,md:12,lg:12,xl:12},{default:n(()=>[o(m,{el:"editor",html:t.text,"onUpdate:html":a[0]||(a[0]=s=>t.text=s),domainName:"https://localhost:5601",previewDomainName:"https://localhost:5601",height:560,onInitConfig:a[1]||(a[1]=s=>s.config.zIndex=0)},null,8,["html"])]),_:1}),o(r,{xs:24,sm:12,md:12,lg:12,xl:12},{default:n(()=>[o(i,{hoverable:"",bordered:!1},{default:n(()=>[l("div",{innerHTML:t.text},null,8,E)]),_:1})]),_:1})]),_:1})])}var H=_(x,[["render",w]]);export{H as default};