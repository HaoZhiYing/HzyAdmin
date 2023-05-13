import{d as U,r as j,b as P,f as r,o as C,l as F,w as t,a as o,i as n,u as S,C as E,D as M,g as $,T as B}from"./index-ceef6588.js";import{_ as D}from"./GenerateCron.vue_vue_type_script_setup_true_lang-3adc166c.js";import{T as g}from"./TimedTaskService-e991d325.js";const V=$("a",{target:"_blank",href:"https://www.bejson.com/othertools/cron/"},"在线生成规则",-1),G=U({__name:"Info",props:{onSuccess:{type:Function}},setup(b,{expose:c}){const x=b,e=j({vm:{id:"",form:{}},visible:!1,loading:!1}),w={name:[{required:!0,message:"请输入任务名称",trigger:"blur"}],groupName:[{required:!0,message:"请输入分组名称",trigger:"blur"}],cron:[{required:!0,message:"请输入定时规则",trigger:"blur"}],jobPoint:[{required:!0,message:"请输入作业点",trigger:"blur"}]},f=P();c({open:(u="")=>{var a;e.visible=!0,e.visible&&(e.vm.id=u),(a=f.value)==null||a.resetFields(),e.loading=!0,g.findForm(u).then(i=>{e.loading=!1,i.code==1&&(e.vm.form=i.data,e.vm.form.cron=e.vm.form.cron??"* * * * * ? *")})}});function y(){var u;(u=f.value)==null||u.validate().then(async()=>{e.loading=!0,(await g.saveForm(e.vm.id,e.vm.form)).code==1&&(B.message.success("操作成功!"),x.onSuccess(),e.visible=!1)})}return(u,a)=>{const i=r("a-button"),v=r("a-input"),m=r("a-form-item"),s=r("a-col"),d=r("a-select-option"),p=r("a-select"),_=r("a-textarea"),k=r("a-row"),T=r("a-form"),q=r("a-spin"),N=r("a-modal");return C(),F(N,{visible:e.visible,"onUpdate:visible":a[9]||(a[9]=l=>e.visible=l),title:e.vm.id?"编辑":"新建",centered:"",onOk:a[10]||(a[10]=l=>e.visible=!1),width:800},{footer:t(()=>[o(i,{type:"primary",loading:e.loading,onClick:a[0]||(a[0]=l=>y())},{default:t(()=>[n(" 提交")]),_:1},8,["loading"]),o(i,{onClick:a[1]||(a[1]=l=>e.visible=!1)},{default:t(()=>[n("关闭")]),_:1})]),default:t(()=>[o(q,{spinning:e.loading},{default:t(()=>[o(T,{ref_key:"refForm",ref:f,layout:"vertical",model:e.vm.form,rules:S(w)},{default:t(()=>[o(k,{gutter:[16,0]},{default:t(()=>[o(s,{xs:24,sm:12,md:12,lg:12,xl:12},{default:t(()=>[o(m,{label:"分组",ref:"groupName",name:"groupName"},{default:t(()=>[o(v,{value:e.vm.form.groupName,"onUpdate:value":a[2]||(a[2]=l=>e.vm.form.groupName=l),placeholder:"请输入"},null,8,["value"])]),_:1},512)]),_:1}),o(s,{xs:24,sm:12,md:12,lg:12,xl:12},{default:t(()=>[o(m,{label:"任务名称",ref:"name",name:"name"},{default:t(()=>[o(v,{value:e.vm.form.name,"onUpdate:value":a[3]||(a[3]=l=>e.vm.form.name=l),placeholder:"请输入"},null,8,["value"])]),_:1},512)]),_:1}),o(s,{xs:24,sm:12,md:12,lg:12,xl:12},{default:t(()=>[o(m,{label:"任务类型",ref:"type",name:"type"},{default:t(()=>[o(p,{value:e.vm.form.type,"onUpdate:value":a[4]||(a[4]=l=>e.vm.form.type=l)},{default:t(()=>[o(d,{value:1},{default:t(()=>[n("WebApi")]),_:1}),o(d,{value:2},{default:t(()=>[n("Local")]),_:1})]),_:1},8,["value"])]),_:1},512)]),_:1}),o(s,{xs:24,sm:12,md:12,lg:12,xl:12},{default:t(()=>[o(m,{ref:"cron",name:"cron"},{label:t(()=>[n(" 定时规则   "),V]),default:t(()=>[o(D,{value:e.vm.form.cron,"onUpdate:value":a[5]||(a[5]=l=>e.vm.form.cron=l)},null,8,["value"])]),_:1},512)]),_:1}),E(o(s,{xs:24,sm:12,md:12,lg:12,xl:12},{default:t(()=>[o(m,{label:"请求方式",ref:"requsetMode",name:"requsetMode"},{default:t(()=>[o(p,{value:e.vm.form.requsetMode,"onUpdate:value":a[6]||(a[6]=l=>e.vm.form.requsetMode=l)},{default:t(()=>[o(d,{value:0},{default:t(()=>[n("POST")]),_:1}),o(d,{value:1},{default:t(()=>[n("GET")]),_:1}),o(d,{value:2},{default:t(()=>[n("DELETE")]),_:1})]),_:1},8,["value"])]),_:1},512)]),_:1},512),[[M,e.vm.form.type==1]]),o(s,{xs:24,sm:24,md:24,lg:24,xl:24},{default:t(()=>[o(m,{label:"jobPoint",ref:"jobPoint",name:"jobPoint"},{default:t(()=>[o(_,{value:e.vm.form.jobPoint,"onUpdate:value":a[7]||(a[7]=l=>e.vm.form.jobPoint=l),placeholder:"请输入",rows:4},null,8,["value"])]),_:1},512)]),_:1}),o(s,{xs:24,sm:24,md:24,lg:24,xl:24},{default:t(()=>[o(m,{label:"描述"},{default:t(()=>[o(_,{value:e.vm.form.remark,"onUpdate:value":a[8]||(a[8]=l=>e.vm.form.remark=l),placeholder:"请输入",rows:4},null,8,["value"])]),_:1})]),_:1})]),_:1})]),_:1},8,["model","rules"])]),_:1},8,["spinning"])]),_:1},8,["visible","title"])}}});export{G as _};
