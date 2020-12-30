{assign var="seotitle" value=$product->seotitle}

{assign var="seokeywords" value=$product->seokeywords}

{assign var="seodescription" value=$product->seodescription}
{include file="header.tpl"}
<link rel="stylesheet" href="{$siteurl}/templets/{$templets->directory}/css/charge.css">
 <div class="charge_header">
        <div class="container">
            <h2>SEO优化服务</h2>
        </div>
    </div>
    <div class="charge_content">
        <div class="container">
             <p>当前位置：<span>首页</span> > <span>收费标准</span> </p>
             <div class="charge_content_title">
                 <h2 >收费标准</h2>
             </div>
             <div class="charge_content_list">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="text">
                            <div class="text_top">
                                <p><img src="{$siteurl}/templets/{$templets->directory}/picture/charge/0.png" alt=""> <span>优化说明</span> <img src="picture/charge/0.png" alt=""></p>
                            </div>
                            <div class="text_middle">
                                <div>
                                    <p>一个关键词优化1次，消耗是1积分，1毛钱至少可优化5个关键词，平均每月每词花费3元钱，不及其他平台优化1天的价格。<br>
                                        超快排花最少的钱，做最牛的优化。</p>
                                </div>     
                            </div>
                            <div class="text_down">
                                <div>
                                    <a href="#">立即注册</a>
                                </div>
                            </div>
                        </div>
                       
                    </div>
                    <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">
                    {assign var="productlist" value=$productdata->TakeProductListByName(charges,0,4)}
                                 {foreach from=$productlist item=productinfo}
                       <div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
                           <div class="row">
                           
                                <div class="discount" style="background-image: url({$siteurl}/templets/{$templets->directory}/picture/charge/1.png);">
                                    <div class="size">
                                        <p  style="background: url({$productinfo->thumb}) no-repeat;">{$productinfo->name}</p>
                                    </div>
                                </div>
                                <div class="frequency">
                                    <div class="frequency_item">
                                            <p>获得</p>
                                            <h3>{$productinfo->seotitle}</h3>
                                            <p>次优化</p>
                                    </div>   
                                </div>
                                <div class="take">
                                    <div class="take_item">
                                        单价 <i>{$productinfo->seokeywords}</i> 分钱<br>
                                        (1积分=优化1次)
                                    </div>
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