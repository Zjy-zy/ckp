{assign var="seotitle" value=$product->seotitle}

{assign var="seokeywords" value=$product->seokeywords}

{assign var="seodescription" value=$product->seodescription}

{include file="header.tpl"}
<link rel="stylesheet" href="{$siteurl}/templets/{$templets->directory}/css/product.css">
 <div class="product_header">
        <div class="container">
            <h2>SEO优化服务</h2>
            <p>提升品牌可信度，知名度，让你的网站更具有竞争力、营销力</p>
        </div>
   </div>
   <div class="product_text">
       <div class="container">
            <p>当前位置：<span>首页</span> > <span>产品介绍</span> </p>
            <div class="product_text_title">
                <h2 >“超快排”功能简介</h2>
                <div class="product_text_list">
                    <div class="row">
                        <span>超快排是全国独家采用谷歌内核浏览器开发的seo优化软件。软件可优化百度pc、百度手机、百度提权、神马uc、搜狗pc、搜狗手机、必应、360等众多主流搜索引擎。提供免费网站分析，新站速排，整站优化等服务。用户在线注册账号、智能操作、1对1专人服务、方便、省心、快捷！</span>
                    </div>
                </div>
            </div>
        </div>
   </div>
   <div class="product_tpList">
        <div class="container">
           <ul>
           {assign var="productlist" value=$productdata->TakeProductListByName(system,0,3)}
                                 {foreach from=$productlist item=productinfo}
                {if ($productinfo->pid)%2==0}                 
               <li class="col-lg-12 col-md-12 col-sm-12">
                <div  class="wow bounceInRight col-lg-5 col-12">
                        <img src="{$productinfo->thumb}" alt="">
                   </div>
                   <div class="product_tpList_left  wow bounceInLeft col-lg-7 col-12">
                        <h3>{$productinfo->name}</h3>
                        <p>{$productinfo->seokeywords}</p>
                        <span>{$productinfo->seodescription}</span>
                    </div>  
               </li>
               {else}
                <li class="col-lg-12 col-md-12 col-sm-12">
                   <div class="product_tpList_left  wow bounceInLeft col-lg-7 col-12">
                        <h3>{$productinfo->name}</h3>
                        <p>{$productinfo->seokeywords}</p>
                        <span>{$productinfo->seodescription}</span>
                    </div>
                   <div  class="wow bounceInRight col-lg-5 col-12">
                        <img src="{$productinfo->thumb}" alt="">
                   </div>
               </li>
               {/if}
                {/foreach}
           </ul>
        </div>
   </div>
   <div class="product_tList">
        <div class="container">
            <div class="product_tList_title">
                <h2 >优化内容</h2>
            </div>
            <div class="product_tList_list">
                <div class="row">
                    <ul>
                        <li class="col-lg-3 col-md-6 col-sm-12">
                            <ul>
                           
                                <li>
                                    <div>技术优化分析</div>
                                </li>
                                 {assign var="productlist" value=$productdata->TakeProductListByName(content_one,0,5)}
                                 {foreach from=$productlist item=productinfo}
                                <li>{$productinfo->name}</li>
                                {/foreach}
                            </ul>
                        </li>
                        <li class="col-lg-3 col-md-6 col-sm-12">
                            <ul>
                                <li>
                                    <div>网络结构优化分析</div>
                                </li>
                                {assign var="productlist" value=$productdata->TakeProductListByName(content_one,0,5)}
                                 {foreach from=$productlist item=productinfo}
                                <li>{$productinfo->name}</li>
                                {/foreach}
                            </ul>
                        </li>
                        <li class="col-lg-3 col-md-6 col-sm-12">
                            <ul>
                                <li>
                                    <div>关键词分析</div>
                                </li>
                               {assign var="productlist" value=$productdata->TakeProductListByName(content_one,0,5)}
                                 {foreach from=$productlist item=productinfo}
                                <li>{$productinfo->name}</li>
                                {/foreach}
                            </ul>
                        </li>
                        <li class="col-lg-3 col-md-6 col-sm-12">
                            <ul>
                                <li>
                                    <div>关键词优化</div>
                                </li>
                                {assign var="productlist" value=$productdata->TakeProductListByName(content_one,0,5)}
                                 {foreach from=$productlist item=productinfo}
                                <li>{$productinfo->name}</li>
                                {/foreach}
                            </ul>
                        </li>
                    </ul>
                </div> 
            </div>
        </div>
   </div>
   <div class="pic hidden-md hidden-sm hidden-xs">
        <div class="container">
            <div class="pic_title">
                <h2 >服务流程</h2>
            </div>
            <div class="pic_list">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="list_item col-lg-3  wow fadeInDown">
                            <img src="{$siteurl}/templets/{$templets->directory}/image/ic_1_kefu.png" alt="">
                            <p>客服沟通</p>
                        </div>
                        <div class="list_item col-lg-3  wow fadeInDown">
                            <img src="{$siteurl}/templets/{$templets->directory}/image/ic_1_kaihu.png" alt="">
                            <p>客服沟通</p>
                        </div>
                        <div class="list_item col-lg-3  wow fadeInDownBig">
                            <img src="{$siteurl}/templets/{$templets->directory}/image/ic_1_jishu.png" alt="">
                            <p>客服沟通</p>
                        </div>
                        <div class="list_item col-lg-3  wow fadeInDownBig">
                            <img src="{$siteurl}/templets/{$templets->directory}/image/ic_1_paiming.png" alt="">
                            <p>客服沟通</p>
                        </div> 
                        <div class="col-lg-12">
                            <img src="{$siteurl}/templets/{$templets->directory}/image/service.png" alt="">
                        </div>     
                    </div>
                    
                </div>
            </div>
        </div>
   </div>
{include file="footer.tpl"}