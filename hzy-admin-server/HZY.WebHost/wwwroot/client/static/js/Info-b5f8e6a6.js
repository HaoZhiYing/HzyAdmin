var H=Object.defineProperty;var M=Object.getOwnPropertySymbols;var P=Object.prototype.hasOwnProperty,Y=Object.prototype.propertyIsEnumerable;var O=(s,r,f)=>r in s?H(s,r,{enumerable:!0,configurable:!0,writable:!0,value:f}):s[r]=f,T=(s,r)=>{for(var f in r||(r={}))P.call(r,f)&&O(s,f,r[f]);if(M)for(var f of M(r))Y.call(r,f)&&O(s,f,r[f]);return s};import{aT as N,p as L,t as U,r as G,a as J,H as W,c as m,S as X,m as y,q as x,w as t,h as n,g as a,K as Z,z as k,A as $,n as i,f as ee,e as I}from"./index-7205fff8.js";import te from"./AppIconList-bb39d69f.js";const F="admin/SysMenu";var K={getMenus(){return N(`${F}/getMenus`)},findList(s,r,f={}){return L(`${F}/findList/${s}/${r}`,f,!1)},deleteList(s){return console.log(s),s&&s.length===0?U.message("\u8BF7\u9009\u62E9\u8981\u5220\u9664\u7684\u6570\u636E!","\u8B66\u544A"):L(`${F}/deleteList`,s,!1)},findForm(s){return N(`${F}/findForm${s?"/"+s:""}`)},saveForm(s){return s.id?L(`${F}/update`,s):L(`${F}/create`,s)},getMenusFunctionTree(){return N(`${F}/getMenusFunctionTree`)},getAll(s={}){return L(`${F}/getAll`,s,!1)}};const ne=i("\u63D0\u4EA4"),le=i("\u5173\u95ED"),oe=i("\u76EE\u5F55"),ae=i("\u83DC\u5355"),ue=i(" \u83DC\u5355\u8DEF\u7531 \xA0\xA0 "),ie=i("\u8DF3\u8F6C\u5916\u90E8\u5730\u5740\u4F7F\u7528\u6B64\u8868\u8FBE\u5F0F\uFF1A/external/jump/:path(.*) \u3002\u5E76\u4E14\u8981\u5728\u8DF3\u8F6C\u5730\u5740\u586B\u4E0A\u5916\u90E8\u7F51\u5740"),se=i(" \u8DF3\u8F6C\u5730\u5740 \xA0\xA0 "),me=i("\u8DF3\u8F6C\u5730\u5740\uFF08\u4E0D\u586B\u9ED8\u8BA4\u4F7F\u7528 \u83DC\u5355\u8DEF\u7531\u5730\u5740\uFF09\u652F\u6301 http\u3001https"),de=I("a",{href:"https://next.antdv.com/components/icon-cn",target:"black"}," \u56FE\u6807\uFF08\u8BF7\u4F7F\u7528AntdV 3.0 \u5B98\u65B9icon\uFF09 ",-1),re=i(" \u663E\u793A\u72B6\u6001\xA0"),fe=I("span",{class:"text-danger"},"\u9690\u85CF\u540E\u6B64\u83DC\u5355\u5C31\u53D8\u6210\u4E86\u8DEF\u7531",-1),ve=i("\xA0 "),_e=i(" \u9690\u85CF\u540E\u83DC\u5355\u4E0D\u4F1A\u663E\u793A\u5728\u5DE6\u4FA7\u663E\u793A\uFF0C\u4F46\u662F\u8DEF\u7531\u4F1A\u81EA\u52A8\u6DFB\u52A0\u5230\u7A0B\u5E8F\u4E2D "),ce=i("\u663E\u793A"),pe=i("\u9690\u85CF"),ge=i(" \u83DC\u5355\u72B6\u6001 \xA0\xA0 "),be=i("\u505C\u7528\u540E\u83DC\u5355\u4E0D\u4F1A\u663E\u793A\u5728\u5DE6\u4FA7\u663E\u793A\uFF0C\u5E76\u4E14\u8DEF\u7531\u4E5F\u4E0D\u4F1A\u81EA\u52A8\u6DFB\u52A0\u5230\u7A0B\u5E8F\u4E2D"),ye=i("\u6B63\u5E38"),xe=i("\u505C\u7528"),Fe=i("\u662F"),he=i("\u5426"),ke=i("\u662F"),Ue=i("\u5426"),Ce=i("\u79FB\u9664"),Le={class:"text-center p-15"},$e=i("\u6DFB\u52A0\u4E00\u884C"),we=i("\u4F7F\u7528\u9ED8\u8BA4\u529F\u80FD\u96C6"),Ne=i("\u4F7F\u7528\u663E\u793A\u529F\u80FD"),Ie={emits:["onSuccess"],setup(s,{expose:r,emit:f}){const e=G({vm:{id:"",form:{},allFunctions:[],menuFunctionList:[]},visible:!1,saveLoading:!1,parentId:null,checkAll:!1,indeterminate:!1,activeKey:J("1"),iconFormcVisible:!1}),p={findForm(){e.saveLoading=!0,K.findForm(e.vm.id).then(u=>{e.saveLoading=!1,u.code==1&&(e.vm=u.data)})},saveForm(){if(e.vm.form.type==2&&e.vm.menuFunctionList.length==0)return U.message("\u8BF7\u8BBE\u7F6E\u529F\u80FD\u6A21\u5757!","\u8B66\u544A");if(e.vm.form.type==2&&e.vm.menuFunctionList.length>0){var u=e.vm.menuFunctionList;for(let l=0;l<u.length;l++){const d=u[l];if(!d.number)return U.message(`\u529F\u80FD\u6A21\u5757\u8BBE\u7F6E\u7B2C${l+1}\u884C \u8BF7\u586B\u5199\u5E8F\u53F7!`,"\u8B66\u544A");if(!d.functionCode)return U.message(`\u529F\u80FD\u6A21\u5757\u8BBE\u7F6E\u7B2C${l+1}\u884C \u8BF7\u586B\u5199\u529F\u80FD\u7F16\u7801!`,"\u8B66\u544A");if(!d.functionName)return U.message(`\u529F\u80FD\u6A21\u5757\u8BBE\u7F6E\u7B2C${l+1}\u884C \u8BF7\u586B\u5199\u529F\u80FD\u540D\u79F0!`,"\u8B66\u544A")}}e.saveLoading=!0,e.vm.form.parentId=e.parentId?e.parentId:null,K.saveForm(e.vm).then(l=>{e.saveLoading=!1,l.code==1&&(U.message("\u64CD\u4F5C\u6210\u529F!","\u6210\u529F"),f("onSuccess",l.data),e.visible=!1)})},openForm({visible:u,key:l,parentId:d}){e.visible=u,u&&(e.vm.id=l,e.parentId=d,p.findForm())},onCheckAllChange(u){u.target.checked?e.vm.functionIds=e.vm.allFunctions.map(l=>l.id):e.vm.functionIds=[]},functionToMenuFunction(u){return{number:u.number,menuId:e.vm.id?e.vm.id:0,functionCode:u.byName,functionName:u.name,remark:u.remark}},defaultRows(){e.vm.menuFunctionList=[],e.vm.allFunctions.forEach(u=>{p.addRow(p.functionToMenuFunction(u))})},defaultDisplayRows(){e.vm.menuFunctionList=[];var u=e.vm.allFunctions.filter(l=>l.byName=="Display");u.length>0&&e.vm.menuFunctionList.push(p.functionToMenuFunction(u[0]))},removeRow(u){var l=e.vm.menuFunctionList;e.vm.menuFunctionList=[];for(let d=0;d<l.length;d++){const c=l[d];d!=u&&e.vm.menuFunctionList.push(c)}},addRow(u){u?e.vm.menuFunctionList.push(u):(e.vm.menuFunctionList.push({number:0,menuId:e.vm.id?e.vm.id:0,functionCode:"",functionName:"",remark:""}),console.log(e.vm.menuFunctionList))}};return W(()=>e.vm.functionIds,u=>{e.indeterminate=!!u.length&&u.length<e.vm.allFunctions.length,e.checkAll=u.length===e.vm.allFunctions.length}),r(T({},p)),(u,l)=>{const d=m("a-button"),c=m("a-radio"),C=m("a-radio-group"),_=m("a-form-item"),v=m("a-col"),g=m("a-input"),w=m("a-tooltip"),D=m("a-input-search"),V=m("a-modal"),A=m("a-row"),R=m("a-form"),S=m("a-tab-pane"),h=m("a-table-column"),j=m("a-input-number"),B=m("a-popconfirm"),Q=m("a-table"),z=m("a-tabs"),q=m("a-spin"),E=X("drag");return y(),x(V,{visible:a(e).visible,"onUpdate:visible":l[21]||(l[21]=o=>a(e).visible=o),title:a(e).vm.id?"\u7F16\u8F91":"\u65B0\u5EFA",centered:"",onOk:l[22]||(l[22]=o=>a(e).visible=!1),width:"1000px",bodyStyle:{overflowY:"auto",height:"calc(100vh - 150px)"}},{footer:t(()=>[n(d,{type:"primary",onClick:l[0]||(l[0]=o=>p.saveForm()),loading:a(e).saveLoading},{default:t(()=>[ne]),_:1},8,["loading"]),n(d,{type:"danger",ghost:"",onClick:l[1]||(l[1]=o=>a(e).visible=!1),class:"ml-15"},{default:t(()=>[le]),_:1})]),default:t(()=>[Z((y(),x(q,{spinning:a(e).saveLoading},{default:t(()=>[n(z,{activeKey:a(e).activeKey,"onUpdate:activeKey":l[20]||(l[20]=o=>a(e).activeKey=o)},{default:t(()=>[n(S,{key:"1",tab:"\u57FA\u7840\u6570\u636E\u8BBE\u7F6E"},{default:t(()=>[n(R,{layout:"vertical",model:a(e).vm.form},{default:t(()=>[n(A,{gutter:[15,15]},{default:t(()=>[n(v,{xs:24,sm:12,md:12,lg:12,xl:12},{default:t(()=>[n(_,{label:"\u9009\u9879\u7C7B\u578B"},{default:t(()=>[n(C,{value:a(e).vm.form.type,"onUpdate:value":l[2]||(l[2]=o=>a(e).vm.form.type=o)},{default:t(()=>[n(c,{value:1},{default:t(()=>[oe]),_:1}),n(c,{value:2},{default:t(()=>[ae]),_:1})]),_:1},8,["value"])]),_:1})]),_:1}),n(v,{xs:24,sm:12,md:12,lg:12,xl:12},{default:t(()=>[n(_,{label:"\u83DC\u5355Id"},{default:t(()=>[n(g,{value:a(e).vm.form.id,"onUpdate:value":l[3]||(l[3]=o=>a(e).vm.form.id=o),placeholder:"\u8BF7\u8F93\u5165",readonly:""},null,8,["value"])]),_:1})]),_:1}),n(v,{xs:24,sm:12,md:12,lg:12,xl:12},{default:t(()=>[n(_,{label:"\u7F16\u53F7"},{default:t(()=>[n(g,{value:a(e).vm.form.number,"onUpdate:value":l[4]||(l[4]=o=>a(e).vm.form.number=o),placeholder:"\u8BF7\u8F93\u5165"},null,8,["value"])]),_:1})]),_:1}),n(v,{xs:24,sm:12,md:12,lg:12,xl:12},{default:t(()=>[n(_,{label:"\u83DC\u5355\u540D\u79F0"},{default:t(()=>[n(g,{value:a(e).vm.form.name,"onUpdate:value":l[5]||(l[5]=o=>a(e).vm.form.name=o),placeholder:"\u8BF7\u8F93\u5165"},null,8,["value"])]),_:1})]),_:1}),a(e).vm.form.type==2?(y(),x(v,{key:0,xs:24,sm:12,md:12,lg:12,xl:12},{default:t(()=>[n(_,{label:"\u7EC4\u4EF6\u540D\u79F0"},{default:t(()=>[n(g,{value:a(e).vm.form.componentName,"onUpdate:value":l[6]||(l[6]=o=>a(e).vm.form.componentName=o),placeholder:"\u8BF7\u8F93\u5165"},null,8,["value"])]),_:1})]),_:1})):k("",!0),a(e).vm.form.type==2?(y(),x(v,{key:1,xs:24,sm:12,md:12,lg:12,xl:12},{default:t(()=>[n(_,{label:"\u83DC\u5355\u9875\u9762\u7269\u7406\u5730\u5740"},{default:t(()=>[n(g,{value:a(e).vm.form.url,"onUpdate:value":l[7]||(l[7]=o=>a(e).vm.form.url=o),placeholder:"\u8BF7\u8F93\u5165"},null,8,["value"])]),_:1})]),_:1})):k("",!0),a(e).vm.form.type==2?(y(),x(v,{key:2,xs:24,sm:12,md:12,lg:12,xl:12},{default:t(()=>[n(_,null,{label:t(()=>[ue,n(w,null,{title:t(()=>[ie]),default:t(()=>[n($,{name:"QuestionCircleOutlined",class:"text-danger"})]),_:1})]),default:t(()=>[n(g,{value:a(e).vm.form.router,"onUpdate:value":l[8]||(l[8]=o=>a(e).vm.form.router=o),placeholder:"\u8BF7\u8F93\u5165"},null,8,["value"])]),_:1})]),_:1})):k("",!0),a(e).vm.form.type==2?(y(),x(v,{key:3,xs:24,sm:12,md:12,lg:12,xl:12},{default:t(()=>[n(_,null,{label:t(()=>[se,n(w,null,{title:t(()=>[me]),default:t(()=>[n($,{name:"QuestionCircleOutlined",class:"text-danger"})]),_:1})]),default:t(()=>[n(g,{value:a(e).vm.form.jumpUrl,"onUpdate:value":l[9]||(l[9]=o=>a(e).vm.form.jumpUrl=o),placeholder:"\u8BF7\u8F93\u5165"},null,8,["value"])]),_:1})]),_:1})):k("",!0),n(v,{xs:24,sm:12,md:12,lg:12,xl:12},{default:t(()=>[n(_,null,{label:t(()=>[de]),default:t(()=>[n(D,{value:a(e).vm.form.icon,"onUpdate:value":l[10]||(l[10]=o=>a(e).vm.form.icon=o),placeholder:"\u8BF7\u8F93\u5165",onSearch:l[11]||(l[11]=o=>a(e).iconFormcVisible=!a(e).iconFormcVisible)},{enterButton:t(()=>[n($,{name:a(e).vm.form.icon},null,8,["name"])]),_:1},8,["value"]),n(V,{visible:a(e).iconFormcVisible,"onUpdate:visible":l[14]||(l[14]=o=>a(e).iconFormcVisible=o),title:"\u56FE\u6807\u5E93",width:"100%","wrap-class-name":"full-modal",footer:!1},{default:t(()=>[n(te,{name:a(e).vm.form.icon,"onUpdate:name":l[12]||(l[12]=o=>a(e).vm.form.icon=o),onOnChangeName:l[13]||(l[13]=()=>a(e).iconFormcVisible=!a(e).iconFormcVisible)},null,8,["name"])]),_:1},8,["visible"])]),_:1})]),_:1}),a(e).vm.form.type==2?(y(),x(v,{key:4,xs:24},{default:t(()=>[n(A,{style:{width:"100%"}},{default:t(()=>[n(v,{xs:24,sm:12,md:12,lg:12,xl:12},{default:t(()=>[n(_,null,{label:t(()=>[re,fe,ve,n(w,null,{title:t(()=>[_e]),default:t(()=>[n($,{name:"QuestionCircleOutlined",class:"text-danger"})]),_:1})]),default:t(()=>[n(C,{value:a(e).vm.form.show,"onUpdate:value":l[15]||(l[15]=o=>a(e).vm.form.show=o)},{default:t(()=>[n(c,{value:!0},{default:t(()=>[ce]),_:1}),n(c,{value:!1},{default:t(()=>[pe]),_:1})]),_:1},8,["value"])]),_:1})]),_:1}),n(v,{xs:24,sm:12,md:12,lg:12,xl:12},{default:t(()=>[n(_,null,{label:t(()=>[ge,n(w,null,{title:t(()=>[be]),default:t(()=>[n($,{name:"QuestionCircleOutlined",class:"text-danger"})]),_:1})]),default:t(()=>[n(C,{value:a(e).vm.form.state,"onUpdate:value":l[16]||(l[16]=o=>a(e).vm.form.state=o)},{default:t(()=>[n(c,{value:!0},{default:t(()=>[ye]),_:1}),n(c,{value:!1},{default:t(()=>[xe]),_:1})]),_:1},8,["value"])]),_:1})]),_:1}),n(v,{xs:24,sm:12,md:12,lg:12,xl:12},{default:t(()=>[n(_,{label:"\u662F\u5426\u7F13\u5B58\u7EC4\u4EF6"},{default:t(()=>[n(C,{value:a(e).vm.form.keepAlive,"onUpdate:value":l[17]||(l[17]=o=>a(e).vm.form.keepAlive=o)},{default:t(()=>[n(c,{value:!0},{default:t(()=>[Fe]),_:1}),n(c,{value:!1},{default:t(()=>[he]),_:1})]),_:1},8,["value"])]),_:1})]),_:1}),n(v,{xs:24,sm:12,md:12,lg:12,xl:12},{default:t(()=>[n(_,{label:"\u9009\u9879\u5361\u80FD\u5426\u5173\u95ED"},{default:t(()=>[n(C,{value:a(e).vm.form.close,"onUpdate:value":l[18]||(l[18]=o=>a(e).vm.form.close=o)},{default:t(()=>[n(c,{value:!0},{default:t(()=>[ke]),_:1}),n(c,{value:!1},{default:t(()=>[Ue]),_:1})]),_:1},8,["value"])]),_:1})]),_:1})]),_:1})]),_:1})):k("",!0)]),_:1})]),_:1},8,["model"])]),_:1}),a(e).vm.form.type==2?(y(),x(S,{key:"2",tab:"\u529F\u80FD\u6A21\u5757\u8BBE\u7F6E","force-render":""},{default:t(()=>[n(Q,{"data-source":a(e).vm.menuFunctionList,size:"small",pagination:!1},{default:t(()=>[n(h,{key:"index",title:"\u7D22\u5F15"},{default:t(({index:o})=>[i(ee(o+1),1)]),_:1}),n(h,{key:"number",title:"\u5E8F\u53F7","data-index":"number"},{default:t(({record:o})=>[n(j,{value:o.number,"onUpdate:value":b=>o.number=b,min:1,max:500},null,8,["value","onUpdate:value"])]),_:1}),n(h,{key:"functionCode",title:"\u529F\u80FD\u7F16\u7801","data-index":"functionCode"},{default:t(({record:o})=>[n(g,{value:o.functionCode,"onUpdate:value":b=>o.functionCode=b,placeholder:"\u529F\u80FD\u7F16\u7801"},null,8,["value","onUpdate:value"])]),_:1}),n(h,{key:"functionName",title:"\u529F\u80FD\u540D\u79F0","data-index":"functionName"},{default:t(({record:o})=>[n(g,{value:o.functionName,"onUpdate:value":b=>o.functionName=b,placeholder:"\u529F\u80FD\u7F16\u7801"},null,8,["value","onUpdate:value"])]),_:1}),n(h,{key:"remark",title:"\u5907\u6CE8","data-index":"remark"},{default:t(({record:o})=>[n(g,{value:o.remark,"onUpdate:value":b=>o.remark=b,placeholder:"\u529F\u80FD\u7F16\u7801"},null,8,["value","onUpdate:value"])]),_:1}),n(h,{key:"action",title:"\u64CD\u4F5C"},{default:t(({index:o})=>[n(B,{title:"\u786E\u5B9A\u8981\u79FB\u9664\u5417\uFF1F","ok-text":"\u662F","cancel-text":"\u5426",onConfirm:b=>p.removeRow(o)},{default:t(()=>[n(d,{type:"link",danger:""},{default:t(()=>[Ce]),_:1})]),_:2},1032,["onConfirm"])]),_:1})]),_:1},8,["data-source"]),I("div",Le,[n(d,{type:"primary",onClick:l[19]||(l[19]=o=>p.addRow())},{default:t(()=>[$e]),_:1}),n(d,{class:"ml-15",onClick:p.defaultRows},{default:t(()=>[we]),_:1},8,["onClick"]),n(d,{class:"ml-15",onClick:p.defaultDisplayRows},{default:t(()=>[Ne]),_:1},8,["onClick"])])]),_:1})):k("",!0)]),_:1},8,["activeKey"])]),_:1},8,["spinning"])),[[E]])]),_:1},8,["visible","title","bodyStyle"])}}};var Me=Object.freeze(Object.defineProperty({__proto__:null,default:Ie},Symbol.toStringTag,{value:"Module"}));export{Me as I,Ie as _,K as s};