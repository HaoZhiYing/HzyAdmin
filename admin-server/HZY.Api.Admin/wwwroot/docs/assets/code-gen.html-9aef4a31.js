import{_ as e,o as a,c as n,a as s}from"./app-4f4af2d5.js";const t="/docs/hzy-admin/code-gen-1.jpg",c="/docs/hzy-admin/code-gen-2.jpg",i="/docs/hzy-admin/code-gen-3.jpg",o={},d=s(`<h1 id="代码生成" tabindex="-1"><a class="header-anchor" href="#代码生成" aria-hidden="true">#</a> 代码生成</h1><div class="custom-container warning"><p class="custom-container-title">提示</p><p>项目中还封装了很多类似 DefaultBaseEntityGuidKey 的基类 ，可以根据自己的业务需求选择继承</p><p>生成的实体默认继承了 DefaultBaseEntityGuidKey 所以数据库表必须包含一下字段：</p><div class="language-csharp line-numbers-mode" data-ext="cs"><pre class="language-csharp"><code>Id      <span class="token comment">// Id</span>
LastModifierUserId   <span class="token comment">// 最后更新人</span>
LastModificationTime  <span class="token comment">// 最后更新时间</span>
CreatorUserId    <span class="token comment">// 创建人</span>
CreationTime    <span class="token comment">// 创建时间</span>
</code></pre><div class="line-numbers" aria-hidden="true"><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div></div></div></div><h2 id="设置表" tabindex="-1"><a class="header-anchor" href="#设置表" aria-hidden="true">#</a> 设置表</h2><blockquote><p>首先在数据库中新建表后需要点击 <em><strong>同步表按钮</strong></em> 即可同步表信息到列表。</p></blockquote><p><img src="`+t+'" alt="设置表"></p><h2 id="设置字段" tabindex="-1"><a class="header-anchor" href="#设置字段" aria-hidden="true">#</a> 设置字段</h2><blockquote><p>点击编辑列，进入字段设置，与表同理，点击 <em><strong>同步字段</strong></em> 会将没有的字段追加进去。</p></blockquote><p><img src="'+c+'" alt="设置字段"></p><h2 id="下载代码-或者导入项目中" tabindex="-1"><a class="header-anchor" href="#下载代码-或者导入项目中" aria-hidden="true">#</a> 下载代码，或者导入项目中</h2><blockquote><p>目录路径可自行配置</p></blockquote><p><img src="'+i+'" alt="设置字段"></p>',11),r=[d];function l(p,m){return a(),n("div",null,r)}const u=e(o,[["render",l],["__file","code-gen.html.vue"]]);export{u as default};