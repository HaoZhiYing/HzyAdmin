import{_ as y,J as C,a as d,c as s,m as J,d as N,h as e,w as n,e as g,U as P,K as S,L as $,g as a,I as r}from"./index-7205fff8.js";const B={style:{overflow:"hidden",height:"calc(100vh - 250px)",display:"initial"}},D={props:{tableData:Object},emits:"onChange",setup(_,{expose:m,emit:b}){const f=_,t=C(()=>f.tableData),p=d(null),h=d([10,20,50,100,500,1e3]),v=o=>{b("onChange",o)};return m({table:p}),(o,l)=>{const u=s("a-card"),x=s("a-space"),c=s("vxe-column"),w=s("vxe-table"),z=s("vxe-pager"),k=s("a-spin");return J(),N("div",null,[e(u,{bodyStyle:{paddingBottom:0}},{default:n(()=>[g("div",null,[e(P,{name:"fade-transform",mode:"out-in"},{default:n(()=>[S(e(u,{class:"mb-15 mt-15 search-card"},{default:n(()=>[r(o.$slots,"search",{},void 0,!0)]),_:3},512),[[$,a(t).search.state]])]),_:3}),e(x,{size:15},{default:n(()=>[r(o.$slots,"toolbar",{},void 0,!0)]),_:3})]),e(k,{spinning:a(t).loading},{default:n(()=>[g("div",B,[r(o.$slots,"table",{},()=>[e(w,{class:"mt-15",ref_key:"table",ref:p,"auto-resize":"",height:"auto",border:"",stripe:"",data:a(t).data,"row-config":{isCurrent:!0,isHover:!0},"column-config":{isCurrent:!0,resizable:!0},"checkbox-config":{highlight:!0}},{default:n(()=>[r(o.$slots,"table-col",{},()=>[e(c,{type:"seq",width:"50"}),e(c,{type:"checkbox",width:"50"}),r(o.$slots,"table-col-default",{},void 0,!0)],!0)]),_:3},8,["data"])],!0)]),e(z,{background:"","current-page":a(t).page,"onUpdate:current-page":l[0]||(l[0]=i=>a(t).page=i),"page-size":a(t).rows,"onUpdate:page-size":l[1]||(l[1]=i=>a(t).rows=i),total:a(t).total,"page-sizes":h.value,layouts:["PrevJump","PrevPage","JumpNumber","NextPage","NextJump","Sizes","FullJump","Total"],onPageChange:v},null,8,["current-page","page-size","total","page-sizes"])]),_:3},8,["spinning"])]),_:3})])}}};var U=y(D,[["__scopeId","data-v-4817722e"]]);export{U as default};