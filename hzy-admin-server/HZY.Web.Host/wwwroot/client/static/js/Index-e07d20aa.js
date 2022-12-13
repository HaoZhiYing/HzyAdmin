import{_ as r}from"./AppIcon.vue_vue_type_script_setup_true_lang-0270c94b.js";import{_ as N}from"./Info.vue_vue_type_script_setup_true_lang-68acc64d.js";import{d as b,z as V,E as x,s as j,r as l,o as m,e as h,w as t,a as u,j as o,c as C,k as H,F as K,f as B,p as w}from"./index-4c73da82.js";import{_ as M}from"./PageContainer.vue_vue_type_script_setup_true_lang-0b11d899.js";import{_ as R}from"./TableCurd.vue_vue_type_script_setup_true_lang-604abf26.js";const q=B("span",null,"\u6BB5\u843D\u793A\u610F\uFF1A\u8682\u8681\u91D1\u670D\u52A1\u8BBE\u8BA1\u5E73\u53F0 ant.design\uFF0C\u7528\u6700\u5C0F\u7684\u5DE5\u4F5C\u91CF\uFF0C\u65E0\u7F1D\u63A5\u5165\u8682\u8681\u91D1\u670D\u751F\u6001\uFF0C \u63D0\u4F9B\u8DE8\u8D8A\u8BBE\u8BA1\u4E0E\u5F00\u53D1\u7684\u4F53\u9A8C\u89E3\u51B3\u65B9\u6848\u3002",-1),G={key:0},J={key:1},Q=["onClick"],W=B("a",{class:"text-danger"},"\u5220\u9664",-1),X=b({name:"ListIndexCom"}),ae=b({...X,setup(Y){const I=[{title:"\u5E8F\u53F7",dataIndex:"key",width:80,fixed:"left"},{title:"\u59D3\u540D",dataIndex:"name",ellipsis:!0,width:130},{title:"\u5E74\u9F84",dataIndex:"age",ellipsis:!0,width:180},{title:"\u5730\u5740",dataIndex:"address",ellipsis:!0,width:180},{title:"\u52171",dataIndex:"column1",ellipsis:!0,width:180},{title:"\u52172",dataIndex:"column2",ellipsis:!0,width:180},{title:"\u52173",dataIndex:"column3",ellipsis:!0,width:180},{title:"\u52174",dataIndex:"column4",ellipsis:!0,width:180},{title:"\u64CD\u4F5C",dataIndex:"id",width:120,fixed:"right"}],a=V({search:{state:!1,vm:{value:""}},loading:!1,page:1,size:10,total:100,columns:[],data:[]}),E=x(),D=x(),k=x();j(()=>{c()});function c(){a.loading=!0,a.columns=I,setTimeout(()=>{const s=[];for(let e=0;e<100;e++)s.push({key:e+1,name:`Hzy ${e+1}`,age:18+e,address:`addr. ${e+1}`,column1:`London Park no. ${e}`,column2:`London Park no. ${e}`,column3:`London Park no. ${e}`,column4:`London Park no. ${e}`,id:e});a.data=s,a.loading=!1},300)}function p(){w.notice.success("\u5BFC\u51FAExcel\u6210\u529F!")}function g(s){var i;let e=[];s?e.push(s):e=(i=E.value)==null?void 0:i.getSelectedRowKeys(),console.log(e),w.message.success("\u5220\u9664\u6210\u529F!")}function y(s){D.value.open({key:s})}return(s,e)=>{const i=l("a-input"),F=l("a-form-item"),_=l("a-col"),d=l("a-button"),T=l("a-space"),L=l("a-row"),P=l("a-form"),A=l("a-popconfirm"),v=l("a-menu-item"),S=l("a-menu"),z=l("a-dropdown"),O=l("a-tooltip"),$=l("a-table-column"),U=l("a-divider");return m(),h(M,null,{describe:t(()=>[q]),default:t(()=>[u(R,{config:a,ref_key:"refTableCurd",ref:E},{search:t(()=>[u(P,{ref_key:"refSearchForm",ref:k,model:a.search.vm},{default:t(()=>[u(L,{gutter:[16,0]},{default:t(()=>[u(_,{xs:24,sm:12,md:8,lg:6,xl:6},{default:t(()=>[u(F,{class:"mb-0",name:"value",label:"\u771F\u5B9E\u59D3\u540D"},{default:t(()=>[u(i,{value:a.search.vm.value,"onUpdate:value":e[0]||(e[0]=n=>a.search.vm.value=n),placeholder:"\u771F\u5B9E\u540D\u79F0"},null,8,["value"])]),_:1})]),_:1}),u(_,{xs:24,sm:12,md:8,lg:6,xl:6},{default:t(()=>[u(F,{class:"mb-0",name:"value",label:"\u771F\u5B9E\u59D3\u540D"},{default:t(()=>[u(i,{value:a.search.vm.value,"onUpdate:value":e[1]||(e[1]=n=>a.search.vm.value=n),placeholder:"\u771F\u5B9E\u540D\u79F0"},null,8,["value"])]),_:1})]),_:1}),u(_,{xs:24,sm:12,md:8,lg:6,xl:6},{default:t(()=>[u(F,{class:"mb-0",name:"value",label:"\u771F\u5B9E\u59D3\u540D"},{default:t(()=>[u(i,{value:a.search.vm.value,"onUpdate:value":e[2]||(e[2]=n=>a.search.vm.value=n),placeholder:"\u771F\u5B9E\u540D\u79F0"},null,8,["value"])]),_:1})]),_:1}),u(_,{xs:24,sm:12,md:8,lg:6,xl:6,class:"text-right"},{default:t(()=>[u(T,{size:8},{default:t(()=>[u(d,{onClick:e[3]||(e[3]=n=>{var f;a.page=1,(f=k.value)==null||f.resetFields(),c()})},{default:t(()=>[o(" \u91CD\u7F6E ")]),_:1}),u(d,{type:"primary",onClick:e[4]||(e[4]=n=>{a.page=1,c()})},{default:t(()=>[o(" \u67E5\u8BE2 ")]),_:1})]),_:1})]),_:1})]),_:1})]),_:1},8,["model"])]),"toolbar-left":t(()=>[u(d,{onClick:e[5]||(e[5]=n=>a.search.state=!a.search.state)},{default:t(()=>[a.search.state?(m(),C("div",G,[u(r,{name:"UpOutlined"}),o("\xA0\xA0\u6536\u8D77")])):(m(),C("div",J,[u(r,{name:"DownOutlined"}),o("\xA0\xA0\u5C55\u5F00")]))]),_:1}),u(d,{type:"primary",onClick:e[6]||(e[6]=n=>y(""))},{icon:t(()=>[u(r,{name:"PlusOutlined"})]),default:t(()=>[o(" \u65B0\u5EFA ")]),_:1}),u(A,{title:"\u60A8\u786E\u5B9A\u8981\u5220\u9664?",onConfirm:e[7]||(e[7]=n=>g()),okText:"\u786E\u5B9A",cancelText:"\u53D6\u6D88"},{default:t(()=>[u(d,{type:"primary",danger:""},{icon:t(()=>[u(r,{name:"DeleteOutlined"})]),default:t(()=>[o(" \u6279\u91CF\u5220\u9664 ")]),_:1})]),_:1})]),"toolbar-right":t(()=>[u(z,null,{overlay:t(()=>[u(S,null,{default:t(()=>[u(v,{key:"1",onClick:e[8]||(e[8]=n=>p())},{default:t(()=>[o("\u5BFC\u51FA Excel")]),_:1}),u(v,{key:"2",onClick:e[9]||(e[9]=n=>p())},{default:t(()=>[o("\u4E0B\u8F7D \u5BFC\u5165\u6A21\u677F")]),_:1}),u(v,{key:"3",onClick:e[10]||(e[10]=n=>p())},{default:t(()=>[o("\u5BFC\u5165 Excel")]),_:1})]),_:1})]),default:t(()=>[u(d,null,{default:t(()=>[o(" \u66F4\u591A "),u(r,{name:"ellipsis-outlined"})]),_:1})]),_:1}),u(O,{title:"\u5217\u8BBE\u7F6E"},{default:t(()=>[u(d,{type:"text"},{icon:t(()=>[u(r,{name:"setting-outlined"})]),_:1})]),_:1})]),"table-col":t(()=>[(m(!0),C(K,null,H(a.columns.filter(n=>n.dataIndex!=="id"),n=>(m(),h($,{key:n.dataIndex,title:n.title,"data-index":n.dataIndex},null,8,["title","data-index"]))),128)),u($,{title:"\u64CD\u4F5C","data-index":"id"},{default:t(({record:n})=>[B("a",{href:"javascript:;",onClick:f=>y(n.id)},"\u7F16\u8F91",8,Q),u(U,{type:"vertical"}),u(A,{title:"\u60A8\u786E\u5B9A\u8981\u5220\u9664?",onConfirm:f=>g(n.id),okText:"\u786E\u5B9A",cancelText:"\u53D6\u6D88"},{default:t(()=>[W]),_:2},1032,["onConfirm"])]),_:1})]),_:1},8,["config"]),u(N,{ref_key:"refInfo",ref:D,onSuccess:()=>c()},null,8,["onSuccess"])]),_:1})}}});export{ae as default};
