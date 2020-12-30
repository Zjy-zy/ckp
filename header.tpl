<!DOCTYPE html>
<html lang="en">
<head>
    <title>{if $seotitle != $sitename}{$seotitle}{/if}</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    {if $seokeywords != "-" && $seokeywords != ""}
    <meta name="keywords" content="{$seokeywords}" />
    {/if}
    {if $seodescription != "-" && $seodescription != ""}
    <meta name="description" content="{$seodescription}" />
    {/if}
    <link rel="stylesheet" href="{$siteurl}/templets/{$templets->directory}/css/bootstrap.css">
    <link rel="stylesheet" href="{$siteurl}/templets/{$templets->directory}/css/animate.css">
    <link rel="stylesheet" href="{$siteurl}/templets/{$templets->directory}/css/index.css">   
    <script src="{$siteurl}/templets/{$templets->directory}/js/jquey.js"></script>
    <script src="{$siteurl}/templets/{$templets->directory}/js/wow.js"></script>
    <script src="{$siteurl}/templets/{$templets->directory}/js/index.js"></script>
	
  {literal}
  <script type="text/javascript">
        var wow = new WOW({
            boxClass: 'wow',
            animateClass: 'animated',
            offset: 0,
            mobile: false,
            live: true
        });
        wow.init();
    </script>
    {/literal}
   
</head>
<body>

    <!-- 头 -->
    <div  class="istop">
        <div class="container">
            <div class="row">
               <ul>
                   <li class="image col-lg-2 col-md-4 col-sm-4 col-xs-4">
                       <img src="{$siteurl}/templets/{$templets->directory}/image/0_logo.png" alt="">
                   </li>
                   <li class="col-lg-8  col-md-8">
                       <ul class="istop_title">
                       {assign var="topnavlist" value=$navdata->TakeNavigateList("顶部导航",0,100)}
                        {foreach from=$topnavlist item=navinfo}
                           <li><a href="{$navinfo->url}">{$navinfo->name}</a></li>
                              {/foreach}
                       </ul>   
                   </li>
                   <li class="login col-lg-2  col-md-4 col-sm-4 col-xs-4"> 
                        <div class="breadcrumb_right">
                            <span class="login_item"><a>登陆 / 注册</a> </span>
                            <div class="menu">
                                <div>
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </div>
                            </div>
                        </div> 
                    </li>   
               </ul>
            </div>
        </div> 
    </div>
    <ul class="istop_breadcrumb">
    {assign var="topnavlist" value=$navdata->TakeNavigateList("顶部导航",0,100)}
                        {foreach from=$topnavlist item=navinfo}
        <li class="col-lg-12 col-md-12 col-sm-12 col-xs-12"><a href="index.html">{$navinfo->name}</a></li>
        {/foreach}         
   </ul>

