{assign var="seotitle" value=$product->seotitle}

{assign var="seokeywords" value=$product->seokeywords}

{assign var="seodescription" value=$product->seodescription}
{include file="header.tpl"}
<link rel="stylesheet" href="{$siteurl}/templets/{$templets->directory}/css/software.css">
<div class="software_header">
        <div class="container">
            <h2>更好的明天，从这里起航</h2>
        </div>
    </div>
    <div class="software_content">
        <div class="container">
             <p>当前位置：<span>首页</span> > <span>软件下载</span> </p>
             <div class="software_content_list">
                <div class="software_tpList col-lg-6 col-md-12 col-sm-12">
                    <h2 class="col-lg-12 col-md-12 col-sm-12">超快排流量提升助手下载</h2>
                    <p class="col-lg-12 col-md-12 col-sm-12">仅windows系统下载</p>
                    <div class="software_download ">
                    {assign var="productlist" value=$productdata->TakeProductListByName(download,0,3)}
                                 {foreach from=$productlist item=productinfo}
                        <div class="col-lg-4 col-md-12 col-sm-12">
                            <img src="{$productinfo->thumb}" alt="" class="hidden-sm hidden-xs">
                            <div>
                                <a href="#">{$productinfo->name}</a>
                            </div>
                            <p> <a href="#">{$productinfo->seokeywords}</a></p>
                        </div>
                        {/foreach}
                    </div>
                </div>
                <div class="img col-lg-6 col-md-12 col-sm-12">
                    <img src="{$siteurl}/templets/{$templets->directory}/picture/software/4.png" alt="" class="col-lg-12 col-md-12 col-sm-12">
                </div>
            </div>
        </div>
    </div>
{include file="footer.tpl"}