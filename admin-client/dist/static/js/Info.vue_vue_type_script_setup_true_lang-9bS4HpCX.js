import{d as N,r as U,b as P,f as n,o as F,l as C,w as t,a as o,j as r,I as S,J as E,g as M,T as $}from"./index-cV5RpzD5.js";import{_ as B}from"./GenerateCron.vue_vue_type_script_setup_true_lang-Q7uXpCtv.js";import{T as g}from"./TimedTaskService-cU1EcDFL.js";const V=M("a",{target:"_blank",href:"https://www.bejson.com/othertools/cron/"},"在线生成规则",-1),O=N({__name:"Info",props:{onSuccess:{type:Function}},setup(c,{expose:b}){const x=c,e=U({vm:{id:"",form:{}},visible:!1,loading:!1}),w={name:[{required:!0,message:"请输入任务名称",trigger:"blur"}],groupName:[{required:!0,message:"请输入分组名称",trigger:"blur"}],cron:[{required:!0,message:"请输入定时规则",trigger:"blur"}],jobPoint:[{required:!0,message:"请输入作业点",trigger:"blur"}]},f=P();b({open:(u="")=>{var a;e.visible=!0,e.visible&&(e.vm.id=u),(a=f.value)==null||a.resetFields(),e.loading=!0,g.findForm(u).then(d=>{e.loading=!1,d.code==200&&(e.vm.form=d.data,e.vm.form.cron=e.vm.form.cron??"* * * * * ? *")})}});function y(){var u;(u=f.value)==null||u.validate().then(async()=>{e.loading=!0,(await g.saveForm(e.vm.id,e.vm.form)).code==200&&($.message.success("操作成功!"),x.onSuccess(),e.visible=!1)})}return(u,a)=>{const d=n("a-button"),v=n("a-input"),m=n("a-form-item"),s=n("a-col"),i=n("a-select-option"),p=n("a-select"),_=n("a-textarea"),k=n("a-row"),T=n("a-form"),j=n("a-spin"),q=n("a-modal");return F(),C(q,{open:e.visible,"onUpdate:open":a[9]||(a[9]=l=>e.visible=l),title:e.vm.id?"编辑":"新建",centered:"",onOk:a[10]||(a[10]=l=>e.visible=!1),width:800},{footer:t(()=>[o(d,{type:"primary",loading:e.loading,onClick:a[0]||(a[0]=l=>y())},{default:t(()=>[r(" 提交")]),_:1},8,["loading"]),o(d,{onClick:a[1]||(a[1]=l=>e.visible=!1)},{default:t(()=>[r("关闭")]),_:1})]),default:t(()=>[o(j,{spinning:e.loading},{default:t(()=>[o(T,{ref_key:"refForm",ref:f,layout:"vertical",model:e.vm.form,rules:w},{default:t(()=>[o(k,{gutter:[16,0]},{default:t(()=>[o(s,{xs:24,sm:12,md:12,lg:12,xl:12},{default:t(()=>[o(m,{label:"分组",ref:"groupName",name:"groupName"},{default:t(()=>[o(v,{value:e.vm.form.groupName,"onUpdate:value":a[2]||(a[2]=l=>e.vm.form.groupName=l),placeholder:"请输入"},null,8,["value"])]),_:1},512)]),_:1}),o(s,{xs:24,sm:12,md:12,lg:12,xl:12},{default:t(()=>[o(m,{label:"任务名称",ref:"name",name:"name"},{default:t(()=>[o(v,{value:e.vm.form.name,"onUpdate:value":a[3]||(a[3]=l=>e.vm.form.name=l),placeholder:"请输入"},null,8,["value"])]),_:1},512)]),_:1}),o(s,{xs:24,sm:12,md:12,lg:12,xl:12},{default:t(()=>[o(m,{label:"任务类型",ref:"type",name:"type"},{default:t(()=>[o(p,{value:e.vm.form.type,"onUpdate:value":a[4]||(a[4]=l=>e.vm.form.type=l)},{default:t(()=>[o(i,{value:1},{default:t(()=>[r("WebApi")]),_:1}),o(i,{value:2},{default:t(()=>[r("Local")]),_:1})]),_:1},8,["value"])]),_:1},512)]),_:1}),o(s,{xs:24,sm:12,md:12,lg:12,xl:12},{default:t(()=>[o(m,{ref:"cron",name:"cron"},{label:t(()=>[r(" 定时规则   "),V]),default:t(()=>[o(B,{value:e.vm.form.cron,"onUpdate:value":a[5]||(a[5]=l=>e.vm.form.cron=l)},null,8,["value"])]),_:1},512)]),_:1}),S(o(s,{xs:24,sm:12,md:12,lg:12,xl:12},{default:t(()=>[o(m,{label:"请求方式",ref:"requsetMode",name:"requsetMode"},{default:t(()=>[o(p,{value:e.vm.form.requsetMode,"onUpdate:value":a[6]||(a[6]=l=>e.vm.form.requsetMode=l)},{default:t(()=>[o(i,{value:0},{default:t(()=>[r("POST")]),_:1}),o(i,{value:1},{default:t(()=>[r("GET")]),_:1}),o(i,{value:2},{default:t(()=>[r("DELETE")]),_:1})]),_:1},8,["value"])]),_:1},512)]),_:1},512),[[E,e.vm.form.type==1]]),o(s,{xs:24,sm:24,md:24,lg:24,xl:24},{default:t(()=>[o(m,{label:"jobPoint",ref:"jobPoint",name:"jobPoint"},{default:t(()=>[o(_,{value:e.vm.form.jobPoint,"onUpdate:value":a[7]||(a[7]=l=>e.vm.form.jobPoint=l),placeholder:"请输入",rows:4},null,8,["value"])]),_:1},512)]),_:1}),o(s,{xs:24,sm:24,md:24,lg:24,xl:24},{default:t(()=>[o(m,{label:"描述"},{default:t(()=>[o(_,{value:e.vm.form.remark,"onUpdate:value":a[8]||(a[8]=l=>e.vm.form.remark=l),placeholder:"请输入",rows:4},null,8,["value"])]),_:1})]),_:1})]),_:1})]),_:1},8,["model"])]),_:1},8,["spinning"])]),_:1},8,["open","title"])}}});export{O as _};