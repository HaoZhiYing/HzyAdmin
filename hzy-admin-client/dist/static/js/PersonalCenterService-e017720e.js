var i=Object.defineProperty;var o=(s,r,t)=>r in s?i(s,r,{enumerable:!0,configurable:!0,writable:!0,value:t}):s[r]=t;var a=(s,r,t)=>(o(s,typeof r!="symbol"?r+"":r,t),t);import{R as e}from"./index-07368c36.js";class n{static changePassword(r){return e.post(`${this.urlPrefix}/changePassword`,r)}static saveForm(r){return e.post(`${this.urlPrefix}/saveForm`,r)}}a(n,"urlPrefix","/api/admin/PersonalCenter");export{n as P};