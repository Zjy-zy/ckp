{assign var="seotitle" value=$titlekeywords}

{assign var="seokeywords" value=$metakeywords}

{assign var="seodescription" value=$metadescription}

{include file="header.tpl"}

<div id="header">
        <div class="content">
            <a href="#">
                <img src="{$siteurl}/templets/{$templets->directory}/image/0_img_banner1_bg.png" alt="">
            </a>
            <div class="location">快速排名就找超快排</div>
            <p>全新算法助力企业轻松获客</p>
            <span>
                <a href="#">立即了解</a>
            </span>
            <div class="img">
                 <img src="{$siteurl}/templets/{$templets->directory}/image/0_img_banner1_right.png" alt=""> 
            </div>
        </div> 
    </div>
    <div class="title">
        <div class="container">
            <div class="row">
                <h2 class="title-item">以用户获益为目标的关键词快速排名产品</h2>
                <p>超快排提供从网站分析、网站优化方案、网站关键词查找到智能应用的全流程服务与方案，全新算法帮助企业快速引流获客</p>
            </div>
        </div>
    </div>
    <div class="fabric">
        <div class="container">
            <div class="row">
                <ul>
				{assign var="productlist" value=$productdata->TakeProductListByName(rank,0)}
				{foreach from=$productlist item=productinfo}
                    <li class="col-lg-3 col-md-6">
                        <div>
                            <img src="{$productinfo->thumb}" alt=""><span>{$productinfo->name}</span>
                            <p>{$productinfo->seodescription}</p>
                        </div>
                       
                    </li>
					{/foreach}
                </ul>
            </div>
        </div>
    </div>
    <div class="title">
        <div class="container">
            <div class="row">
                <h2 class="title-item">此刻你是否正面临一些难题</h2>
                <p>超快排，网站SEO快速排名系统</p>
            </div>
        </div>
    </div>
    <div class="guild">
        <div class="container">
        {assign var="productlist" value=$productdata->TakeProductListByName(difficult,0,3)}
        {foreach from=$productlist item=productinfo}
        {if ($productinfo->pid)%2==0}
         <div class="row">
                   <ul>
                      
                       <li class="col-lg-6 col-md-12 wow bounceInRight">
                           <div class="guild-item">
                                <img src="{$siteurl}/templets/{$templets->directory}/image/2_ic_1.png" alt=""><span>{$productinfo->name}</span>
                                <p>{$productinfo->seokeywords}</p>
                                <i class="image-left"></i>
                                <div>
                                    <p>{$productinfo->seodescription}</p>
                                </div>
                                <i class="image-right"></i>
                            </div>
                       </li>
                        <li class="col-lg-6 col-md-12 wow bounceInLeft">
                           <img src="{$productinfo->thumb}" alt="">
                       </li>
                   </ul> 
            </div>
            
            {else}
               <div class="row">
                   <ul>
                       <li class="col-lg-6 col-md-12 wow bounceInLeft">
                           <img src="{$productinfo->thumb}" alt="">
                       </li>
                       <li class="col-lg-6 col-md-12 wow bounceInRight">
                           <div class="guild-item">
                                <img src="{$siteurl}/templets/{$templets->directory}/image/2_ic_1.png" alt=""><span>{$productinfo->name}</span>
                                <p>{$productinfo->seokeywords}</p>
                                <i class="image-left"></i>
                                <div>
                                    <p>{$productinfo->seodescription}</p>
                                </div>
                                <i class="image-right"></i>
                            </div>
                       </li>
                   </ul> 
            </div>
            {/if}
             {/foreach}
        </div>
    </div>
    <div class="banner_one col-lg-12 col-md-12 col-sm-12 col-xs-12"> 
        <p class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            定制全新优化方案<br>
            解决SEO优化排名问题
        </p>
        <span class="col-lg-12 col-md-12 col-sm-12 col-xs-12">customized new optimization solution to solve SEO optimization ranking problem</span>
    </div>
    <div class="title">
        <div class="container">
            <div class="row">
                <h2 class="title-item">自主研发智能优势</h2>
                <p>十年潜心研发SEO优化技术，专注各大搜索引擎优化效果</p>
            </div>
        </div>
    </div>
    <div class="superiority">
        <div class="container">
            <ul>
            {assign var="productlist" value=$productdata->TakeProductListByName(intelligence,0)}
				{foreach from=$productlist item=productinfo}
                <li class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
                    <div class="col-lg-12 col-md-12 col-sm-12">
                        <img src="{$productinfo->thumb}" alt="" class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    </div>
                    <h4>{$productinfo->name}</h4>
                    <p>{$productinfo->seodescription}</p>
                </li>
                {/foreach}
            </ul>
        </div>
    </div>
    <div class="title">
        <div class="container">
            <div class="row">
                <h2 class="title-item">选择超快排，让获客变得更简单</h2>
                <p>因为专注，所以专业</p>
            </div>
        </div>
    </div>
    <div class="plist">
        <div class="container">
            <div class="row">
                <ul>
                {assign var="productlist" value=$productdata->TakeProductListByName(simple,0,5)}
				{foreach from=$productlist item=productinfo}
                    <li>
                        <img src="{$productinfo->thumb}" alt="" >
                        <p class="ic_1">{$productinfo->name}</p>
                    </li>
                    {/foreach}
                    
                </ul>
            </div>
        </div>
    </div>
    <div class="scroll">
        <div class="container">
            <div class="row">
                <ul>
                    <li >
                        <p>完全真实有效优化，确保安全可靠，无后 <br>
                            顾之忧，稳定上首页，后期维护排名稳定 <br>
                            更持久</p>
                    </li>
                    <li >
                        <img src="{$siteurl}/templets/{$templets->directory}/image/5_img_1.png" alt="">
                    </li>
                </ul>
            </div>
        </div>  
    </div>
    <div class="title">
        <div class="container">
            <div class="row">
                <h2 class="title-item">超快排-让精准流量提升20倍的排名软件</h2>
                <p>打造搜索引擎排名优化行业的优秀运营商</p>
            </div>
        </div>
    </div>
    <div class="goodsinfo" id="productNumber">
        <div class="container">
            <div class="row">
                <ul>
                {assign var="productlist" value=$productdata->TakeProductListByName(ranking,0,4)}
				{foreach from=$productlist item=productinfo}
                    <li class="col-md-3">
                        <h2 id="productNumber_1" >{$productinfo->name}</h2>
                        <p>{$productinfo->seotitle}</p>
                        <div>{$productinfo->seodescription}</div>
                    </li>
                    {/foreach}
                </ul>
            </div>
        </div>
    </div>
    <div class="title">
        <div class="container">
            <div class="row">
                <h2 class="title-item">我们服务的客户行业</h2>
                <p>流量成本越来越高，我们给您低成本流量洼地</p>
            </div>
        </div>
    </div>
    <div class="tplist">
        <div class="container">
            <div class="row">
                <ul>
				{assign var="productlist" value=$productdata->TakeProductListByName(service,0)}
				{foreach from=$productlist item=productinfo}
                    <li class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
                       <div>
                            <a href="#">
                                <img src="{$productinfo->thumb}" alt=""  class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            </a>
                            <p>{$productinfo->seotitle}</p>         
                       </div>   
                    </li>
					{/foreach}
                   
                </ul>
            </div>
        </div>
    </div>
    <div class="title">
        <div class="container">
            <div class="row">
                <h2 class="title-item">优化排名，从现在开始</h2>
                <p>快速提升网站关键词排名，让更多客户找到你</p>
            </div>
        </div>
    </div>
    <div class="optimize">
        <div class="container">
            <div class="row">
                <ul>
				{assign var="productlist" value=$productdata->TakeProductListByName(optimization,0)}
				{foreach from=$productlist item=productinfo}
                    <li class="col-md-3">
                        <div class="optimize-img">
                            <img src="{$productinfo->thumb}" alt="">
                        </div>
                        <div class="optimize-font">
                           <p>
                            {$productinfo->seotitle}
                           </p> 
                        </div>
                    </li>
					{/foreach}

                </ul>
            </div>
        </div>
    </div>
    <div class="banner_two">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    1,593,124 家企业都在用超快排关键词排名系统<br>
                    快速提升网站关键词排名，你还在等什么？
                </div>
                <p class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                    <span>
                        <a href="#">马上注册</a>
                    </span>    
                </p>
            </div>
        </div>
    </div>



{include file="footer.tpl"}
