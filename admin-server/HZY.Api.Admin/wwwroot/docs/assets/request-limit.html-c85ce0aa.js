import{_ as n,o as s,c as a,a as t}from"./app-4f4af2d5.js";const p={},e=t(`<h1 id="接口限流" tabindex="-1"><a class="header-anchor" href="#接口限流" aria-hidden="true">#</a> 接口限流</h1><div class="custom-container tip"><p class="custom-container-title">接口限流</p><p>[RequestLimitFilter(...)]</p><p>LimitCount : 传入限流次数</p><p>Duration : 传入限流时间，单位秒</p><p>Message : 传入限流提示信息</p></div><blockquote><p>示例：</p></blockquote><div class="language-csharp line-numbers-mode" data-ext="cs"><pre class="language-csharp"><code><span class="token doc-comment comment">/// <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>summary</span><span class="token punctuation">&gt;</span></span></span>
<span class="token doc-comment comment">/// 获取列表</span>
<span class="token doc-comment comment">/// <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>summary</span><span class="token punctuation">&gt;</span></span></span>
<span class="token doc-comment comment">/// <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>param</span> <span class="token attr-name">name</span><span class="token attr-value"><span class="token punctuation attr-equals">=</span><span class="token punctuation">&quot;</span>pagingSearchInput<span class="token punctuation">&quot;</span></span><span class="token punctuation">&gt;</span></span><span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>param</span><span class="token punctuation">&gt;</span></span></span>
<span class="token doc-comment comment">/// <span class="token tag"><span class="token tag"><span class="token punctuation">&lt;</span>returns</span><span class="token punctuation">&gt;</span></span><span class="token tag"><span class="token tag"><span class="token punctuation">&lt;/</span>returns</span><span class="token punctuation">&gt;</span></span></span>
<span class="token punctuation">[</span><span class="token function">RequestLimitFilter</span><span class="token punctuation">(</span>LimitCount <span class="token operator">=</span> <span class="token number">3</span><span class="token punctuation">)</span><span class="token punctuation">]</span>
<span class="token punctuation">[</span><span class="token attribute"><span class="token class-name">HttpPost</span></span><span class="token punctuation">]</span>
<span class="token keyword">public</span> <span class="token keyword">async</span> <span class="token return-type class-name">Task<span class="token punctuation">&lt;</span>PagingView<span class="token punctuation">&gt;</span></span> <span class="token function">FindListAsync</span><span class="token punctuation">(</span><span class="token punctuation">[</span><span class="token attribute"><span class="token class-name">FromBody</span></span><span class="token punctuation">]</span> <span class="token class-name">PagingSearchInput<span class="token punctuation">&lt;</span>Member<span class="token punctuation">&gt;</span></span> pagingSearchInput<span class="token punctuation">)</span>
<span class="token punctuation">{</span>
    <span class="token keyword">return</span> <span class="token keyword">await</span> _defaultService<span class="token punctuation">.</span><span class="token function">FindListAsync</span><span class="token punctuation">(</span>pagingSearchInput<span class="token punctuation">)</span><span class="token punctuation">;</span>
<span class="token punctuation">}</span>
</code></pre><div class="line-numbers" aria-hidden="true"><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div><div class="line-number"></div></div></div>`,4),c=[e];function o(l,i){return s(),a("div",null,c)}const k=n(p,[["render",o],["__file","request-limit.html.vue"]]);export{k as default};