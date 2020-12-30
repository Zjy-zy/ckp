
{include file="header.tpl"}
<link rel="stylesheet" href="{$siteurl}/templets/{$templets->directory}/css/trade.css">
<div class="trade_header">
        <div class="container">
            <h2>SEO新闻资源</h2>
            <p>搜索引擎快速排名-行业最新资讯文章云集</p>
        </div>
   </div>
   <div class="trade_breadcrumb">
        <div class="container">
            <p>当前位置：<span>首页</span> > <span>行业资讯</span> </p>
        </div>
   </div>
   <div class="trade_tpList">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
                    <div class="trade_tpList_top">
                        <span><img src="{$siteurl}/templets/{$templets->directory}/picture/trade/ic_6.png" alt=""></span>
                        <a href="#">行业资讯</a>
                        <div>
                            <p>新闻资讯</p>
                            <p>热门资讯</p>
                            <p>排名资讯</p>
                        </div>
                    </div>
                    <div class="trade_tpList_middle">
                        <span><img src="{$siteurl}/templets/{$templets->directory}/picture/trade/ic_5.png" alt=""></span>
                        <a href="#">SEO快速排名</a>
                    </div> 
                    <div class="trade_tpList_middle">
                        <span><img src="{$siteurl}/templets/{$templets->directory}/picture/trade/ic_5.png" alt=""></span>
                        <a href="#">超快排软件</a>
                    </div> 
                </div>
                <div class="col-lg-9 col-md-12 col-sm-12" >
                    <div class="trade_pList">
                        <ul>
                        {assign var="newslist" value=$articledata->TakeArticleListByName("trade",0,6)}
                                 {foreach from=$newslist item=newsinfo}
                            <li >
                                <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                                    <img src="{$newsinfo->thumb}" alt="">
                                </div>
                                <div class="col-lg-8 col-md-8 col-sm-12">
                                    <h4><a href="{formaturl siteurl=$siteurl type="article" name=$newsinfo->filename}">{$newsinfo->title}</a></h4>
                                    <p>{$newsinfo->seodescription}</p>
                                    <div>
                                        <span>浏览量:{$newsinfo->viewcount}</span>
                                    </div>   
                                </div>
                            </li>
                             {/foreach}
                            
                        </ul>
                    </div>
                </div>
            </div>
        </div>
   </div>
{include file="footer.tpl"}