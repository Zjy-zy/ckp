{assign var="seotitle" value=$product->seotitle}

{assign var="seokeywords" value=$product->seokeywords}

{assign var="seodescription" value=$product->seodescription}
{include file="header.tpl"}
 <link rel="stylesheet" href="{$siteurl}/templets/{$templets->directory}/css/about.css"> 
 <div class="about_header">
        <div class="container">
            <h2>关于我们</h2>
        </div>
    </div>
    <div class="about_content">
        <div class="container">
             <p class="distinguish">当前位置：<span>首页</span> > <span>关于我们</span> </p>
             <div class="about_content_title">
                 <h2 >关于我们</h2>
             </div>
             <div class="about_content_list">
                <div class="row">
                    <img src="{$siteurl}/templets/{$templets->directory}/picture/about/0.png" alt="" class="col-lg-12 col-md-12 col-sm-12 col-xs-12" >
                    <div class="about_content_text">
                        <div class="col-lg-4 col-md-12 col-sm-12">
                            <p>〝超快排"——快速排名就找超快排<br>
                                www.seo691.com</p>
                        </div>
                        <div class="col-lg-8 col-md-12 col-sm-12">
                            <div class="size">
                                <p>超快排，是一款非竞价网络推广平台，已帮助近100万家企业解决了推广难题。    拥有一批资深互联网开发团队，我们有12年经验的系统架构师和软件开发工程师，10年经验的seo优化专家和大数据分析师，还有8年致力于用户行为研究的用户心理学导师以及专业的客服服务团队。</p>
                                <p>超快排，是专注研究网站关键词优化、研究用户行为体验、研究网站关键词排名提升的产品。长期和国内众多SEO研究人员研究网站排名算法，确保用户网站关键词排名优化效果更佳，并长期有效、稳定、安全！</p>
                            </div>
                        </div>
                    </div>
                </div>
             </div>
        </div>
    </div>
    <div class="about_tpList">
        <div class="container">
            <div class="about_tpList_title">
                <h2 >发展历程</h2>
                <p>每一步，成就新高度</p>
            </div>
            <div class="about_tpList_list  wow bounceInLeft">
                <div class="col-lg-5 hidden-md hidden-sm hidden-xs">
                 {assign var="productlist" value=$productdata->TakeProductListByName(development_left,0,3)}
                                 {foreach from=$productlist item=productinfo}
                    <div class="about_tpList_left">
                        <img src="{$productinfo->thumb}" alt="">
                        <div class="about_tpList_text">
                            <h3>{$productinfo->name}</h3>
                            <p>{$productinfo->seokeywords}</p>
                        </div>
                    </div>
                    {/foreach}
                </div>
                <div class="col-lg-2 col-md-2 col-sm-2 col-xs-2 wow slideInDown">
                    <img src="{$siteurl}/templets/{$templets->directory}/picture/about/发展历程.png" alt="">
                </div>
                <div class="col-lg-5 col-md-10 col-sm-10 col-xs-10">
                {assign var="productlist" value=$productdata->TakeProductListByName(development_right,0,6)}
                    {foreach from=$productlist item=productinfo}
                    <div class="about_tpList_right">
                        <div class="about_tpList_texts">
                            <h3>{$productinfo->name}</h3>
                            <p >{$productinfo->seokeywords}</p>
                        </div>
                        <img src="{$productinfo->thumb}" alt="">
                    </div>
                     {/foreach}
                    
                </div>
            </div>
        </div>
    </div>
{include file="footer.tpl"}