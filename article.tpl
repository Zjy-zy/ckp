{assign var="seotitle" value=$article->seotitle}

{assign var="seokeywords" value=$article->seokeywords}

{assign var="seodescription" value=$article->seodescription}

{include file="header.tpl"}

<link rel="stylesheet" href="{$siteurl}/templets/{$templets->directory}/css/details.css">
 <div class="details_header">
        <div class="container">
            <h2>SEO新闻资源</h2>
            <p>搜索引擎快速排名-行业最新资讯文章云集</p>
        </div>
   </div>
   <div class="details_breadcrumb">
        <div class="container">
            <p>当前位置：<span>首页</span> > <span>行业资讯</span> </p>
        </div>
   </div>
   <div class="details_tpList">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-md-8 col-sm-12">
                    <div class="text_top">
                        <p>{$article->title}</p>
                        发布者: {$siteurl}      <span>发布时间：{$article->adddate}</span>          浏览量: {$article->viewcount}
                        <br>
                        <hr>
                    </div>
                    <div class="text_middle">
                        <p><img src="{$siteurl}/templets/{$templets->directory}/picture/trade/ic_1.png" alt=""><img src="{$siteurl}/templets/{$templets->directory}/picture/trade/ic_2.png" alt=""></p>
                        <div>{$seokeywords} </div>
                        <p><img src="{$siteurl}/templets/{$templets->directory}/picture/trade/ic_4.png" alt=""><img src="{$siteurl}/templets/{$templets->directory}/picture/trade/ic_3.png" alt=""></p>
                    </div>
                    <div class="text_goodsInfo">
                        <h5 >{$article->title}</h5>
                        <div class="text_img">
                            <img src="{$article->thumb}" alt="">
                        </div>
                        <div class="text_size">
                            {$article->content}
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-4 col-sm-12">
                    <div class="recommend">
                        <div class="recommend_title">
                            <div class="title_item">
                               <p>推荐文章</p>
                               <span></span>
                            </div>
                            {assign var="newslist" value=$articledata->TakeArticleListByName("trade",0,6)}
                                 {foreach from=$newslist item=newsinfo}
                           <div class="recommend_tpList">
                                <div class="col-lg-5 col-md-12 col-sm-12">
                                    <img src="{$newsinfo->thumb}" alt="">
                                </div>
                                <div class="col-lg-7 col-md-12 col-sm-12">
                                    <div class="recommend_size">
                                      <a href="{formaturl siteurl=$siteurl type="article" name=$newsinfo->filename}">{$newsinfo->title}</a>
                                        <p>浏览量:{$newsinfo->viewcount}</p>
                                    </div>
                                </div>
                           </div>
                              {/foreach}
                      </div>
                </div>
            </div>  
        </div>
   </div>

{include file="footer.tpl"}