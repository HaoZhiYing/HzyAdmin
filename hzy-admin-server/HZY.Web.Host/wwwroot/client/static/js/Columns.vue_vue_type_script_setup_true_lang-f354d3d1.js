var I=Object.defineProperty;var O=(m,o,t)=>o in m?I(m,o,{enumerable:!0,configurable:!0,writable:!0,value:t}):m[o]=t;var w=(m,o,t)=>(O(m,typeof o!="symbol"?o+"":o,t),t);import{_ as F}from"./AppIcon.vue_vue_type_script_setup_true_lang-0270c94b.js";import{S as B,d as V,z as R,E as T,a7 as j,r as i,o as c,e as v,w as a,a as e,j as d,c as D,k as H,t as K,F as M,f as q,p as b}from"./index-4c73da82.js";import{_ as G}from"./TableCurd.vue_vue_type_script_setup_true_lang-604abf26.js";class y{static findList(o,t,C={}){return B.post(`${this.urlPrefix}/findList/${t}/${o}`,C)}static deleteList(o){return B.post(`${this.urlPrefix}/deleteList`,{data:o})}static synchronization(){return B.post(`${this.urlPrefix}/synchronization`)}static change(o){return B.post(`${this.urlPrefix}/change`,o)}}w(y,"urlPrefix","/api/admin/LowCodeTableInfo");const J={key:0},Q={key:1},W=q("a",{class:"text-danger"},"\u5220\u9664",-1),te=V({__name:"Columns",props:{rowData:null},setup(m){const o=m,t=R({search:{state:!1,vm:{Low_Code_TableId:null,columnName:null,describe:null}},loading:!1,page:1,size:100,total:100,columns:[],data:[]}),C=T(),k=T();j(()=>{o.rowData&&f()},o.rowData);async function f(){t.loading=!0,t.search.vm.Low_Code_TableId=o.rowData.id;const s=await y.findList(t.page,t.size,t.search.vm);t.loading=!1,s.code==1&&(t.page=s.data.page,t.size=s.data.size,t.total=s.data.total,t.columns=s.data.columns,t.data=s.data.dataSource)}async function A(s){var g,x;let n=[];if(s?n.push(s):n=(x=(g=C.value)==null?void 0:g.getSelectedRowKeys())!=null?x:[],n.length==0)return b.message.error("\u8BF7\u9009\u62E9\u8981\u5220\u9664\u7684\u884C!");t.loading=!0;const _=await y.deleteList(n);t.loading=!1,_.code==1&&(b.message.success("\u5220\u9664\u6210\u529F!"),f())}function $(){y.synchronization().then(s=>{b.message.success("\u540C\u6B65\u6210\u529F!"),f()})}function z(){y.change(t.data).then(s=>{b.message.success("\u6570\u636E\u53D8\u66F4\u6210\u529F!"),f()})}return(s,n)=>{const _=i("a-input"),g=i("a-form-item"),x=i("a-col"),p=i("a-button"),L=i("a-space"),N=i("a-row"),U=i("a-form"),h=i("a-popconfirm"),P=i("a-checkbox"),S=i("a-popover"),r=i("a-table-column"),E=i("a-tag");return c(),v(G,{ref_key:"refTableCurd",ref:C,config:t,onChange:n[8]||(n[8]=({page:u,pageSize:l})=>{t.page=u==0?1:u,t.size=l,f()}),onShowSizeChange:n[9]||(n[9]=({current:u,size:l})=>{t.page=u==0?1:u,t.size=l,f()})},{search:a(()=>[e(U,{ref_key:"refSearchForm",ref:k,model:t.search.vm},{default:a(()=>[e(N,{gutter:[16,0]},{default:a(()=>[e(x,{xs:24,sm:12,md:8,lg:6,xl:6},{default:a(()=>[e(g,{class:"mb-0",name:"columnName",label:"\u5217\u540D\u79F0"},{default:a(()=>[e(_,{value:t.search.vm.columnName,"onUpdate:value":n[0]||(n[0]=u=>t.search.vm.columnName=u),placeholder:"\u5217\u540D\u79F0"},null,8,["value"])]),_:1})]),_:1}),e(x,{xs:24,sm:12,md:8,lg:6,xl:6},{default:a(()=>[e(g,{class:"mb-0",name:"describe",label:"\u663E\u793A\u540D\u79F0"},{default:a(()=>[e(_,{value:t.search.vm.describe,"onUpdate:value":n[1]||(n[1]=u=>t.search.vm.describe=u),placeholder:"\u663E\u793A\u540D\u79F0"},null,8,["value"])]),_:1})]),_:1}),e(x,{xs:24,sm:12,md:8,lg:6,xl:6,class:"text-right"},{default:a(()=>[e(L,{size:8},{default:a(()=>[e(p,{onClick:n[2]||(n[2]=u=>{var l;t.page=1,(l=k.value)==null||l.resetFields(),f()})},{default:a(()=>[d(" \u91CD\u7F6E ")]),_:1}),e(p,{type:"primary",onClick:n[3]||(n[3]=u=>{t.page=1,f()})},{default:a(()=>[d(" \u67E5\u8BE2 ")]),_:1})]),_:1})]),_:1})]),_:1})]),_:1},8,["model"])]),"toolbar-left":a(()=>[e(p,{onClick:n[4]||(n[4]=u=>t.search.state=!t.search.state)},{default:a(()=>[t.search.state?(c(),D("div",J,[e(F,{name:"UpOutlined"}),d("\xA0\xA0\u6536\u8D77")])):(c(),D("div",Q,[e(F,{name:"DownOutlined"}),d("\xA0\xA0\u5C55\u5F00")]))]),_:1}),e(h,{title:"\u60A8\u786E\u5B9A\u8981\u66F4\u65B0\u8868\u5417?\u53EF\u80FD\u4F1A\u5BFC\u81F4\u6570\u636E\u4E22\u5931",onConfirm:n[5]||(n[5]=u=>$()),okText:"\u786E\u5B9A",cancelText:"\u53D6\u6D88"},{default:a(()=>[e(p,{type:"primary"},{icon:a(()=>[e(F,{name:"ReloadOutlined"})]),default:a(()=>[d(" \u540C\u6B65\u5B57\u6BB5 ")]),_:1})]),_:1}),e(h,{title:"\u60A8\u786E\u5B9A\u8981\u63D0\u4EA4\u66F4\u6539?",onConfirm:n[6]||(n[6]=u=>z()),okText:"\u786E\u5B9A",cancelText:"\u53D6\u6D88"},{default:a(()=>[e(p,{type:"primary"},{icon:a(()=>[e(F,{name:"PlusOutlined"})]),default:a(()=>[d(" \u63D0\u4EA4\u66F4\u6539 ")]),_:1})]),_:1}),e(h,{title:"\u60A8\u786E\u5B9A\u8981\u5220\u9664?",onConfirm:n[7]||(n[7]=u=>A()),okText:"\u786E\u5B9A",cancelText:"\u53D6\u6D88"},{default:a(()=>[e(p,{type:"primary",danger:""},{icon:a(()=>[e(F,{name:"DeleteOutlined"})]),default:a(()=>[d(" \u6279\u91CF\u5220\u9664 ")]),_:1})]),_:1})]),"toolbar-right":a(()=>[e(S,null,{content:a(()=>[(c(!0),D(M,null,H(t.columns.filter(u=>u.fieldName.substr(0,1)!="_"),u=>(c(),D("div",null,[e(P,{checked:u.show,"onUpdate:checked":l=>u.show=l},{default:a(()=>[d(K(u.title),1)]),_:2},1032,["checked","onUpdate:checked"])]))),256))]),default:a(()=>[e(p,{type:"text"},{icon:a(()=>[e(F,{name:"setting-outlined"})]),_:1})]),_:1})]),"table-col":a(()=>[e(r,{title:"\u5217\u540D\u79F0","data-index":"columnName"}),e(r,{title:"\u6570\u636E\u5E93\u7C7B\u578B","data-index":"databaseColumnType"}),e(r,{title:"C#\u5B57\u6BB5\u540D\u79F0","data-index":"csField"}),e(r,{title:"C#\u6570\u636E\u7C7B\u578B","data-index":"csType"}),e(r,{title:"\u662F\u5426\u4E3B\u952E","data-index":"isPrimary"},{default:a(({record:u})=>[u.isPrimary?(c(),v(E,{key:0,color:"success"},{default:a(()=>[d("\u662F")]),_:1})):(c(),v(E,{key:1,color:"default"},{default:a(()=>[d("\u5426")]),_:1}))]),_:1}),e(r,{title:"\u662F\u5426\u81EA\u589E","data-index":"isIdentity"},{default:a(({record:u})=>[u.isIdentity?(c(),v(E,{key:0,color:"success"},{default:a(()=>[d("\u662F")]),_:1})):(c(),v(E,{key:1,color:"default"},{default:a(()=>[d("\u5426")]),_:1}))]),_:1}),e(r,{title:"\u663E\u793A\u540D\u79F0","data-index":"displayName"},{default:a(({record:u})=>[e(_,{value:u.displayName,"onUpdate:value":l=>u.displayName=l},null,8,["value","onUpdate:value"])]),_:1}),e(r,{title:"\u5217\u63CF\u8FF0","data-index":"describe"},{default:a(({record:u})=>[e(_,{value:u.describe,"onUpdate:value":l=>u.describe=l},null,8,["value","onUpdate:value"])]),_:1}),e(r,{title:"\u66F4\u65B0\u65F6\u95F4","data-index":"lastModificationTime",width:"120px"}),e(r,{title:"\u521B\u5EFA\u65F6\u95F4","data-index":"creationTime",width:"120px"}),e(r,{title:"\u64CD\u4F5C","data-index":"id"},{default:a(({record:u})=>[e(h,{title:"\u60A8\u786E\u5B9A\u8981\u5220\u9664?",onConfirm:l=>A(u.id),okText:"\u786E\u5B9A",cancelText:"\u53D6\u6D88"},{default:a(()=>[W]),_:2},1032,["onConfirm"])]),_:1})]),_:1},8,["config"])}}});export{te as _};
