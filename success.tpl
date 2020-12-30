{assign var="seotitle" value=$product->seotitle}

{assign var="seokeywords" value=$product->seokeywords}

{assign var="seodescription" value=$product->seodescription}
{include file="header.tpl"}
<link rel="stylesheet" href="{$siteurl}/templets/{$templets->directory}/css/success.css">
  <div class="success_header">
        <div class="container">
            <h2>SEO优化服务</h2>
            <p>提升品牌可信度，知名度，让你的网站更具有竞争力、营销力</p>
        </div>
    </div>
   <div class="success_tpListr">
    <div class="container">
         <p>当前位置：<span>首页</span> > <span>成功案例</span> </p>
         <div class="success_tpList_title">
             <h2 >成功案例</h2>
         </div>
         <div class="success_tpListr_list">
            <div class="row">
                <ul>
                 {assign var="productlist" value=$productdata->TakeProductListByName(cases,0,15)}
                                 {foreach from=$productlist item=productinfo}
                    <li class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
                        <div class="pic">
                                <div class="img" style="background-image:url({$productinfo->thumb});height: 200px;">
                                    <div class="img-item">
                                        <div>
                                            <p> <a href="#">{$productinfo->seokeywords}</a> </p>
                                        </div>
                                    </div>
                                </div>
                                <p >{$productinfo->name}</p>                                   
                        </div>
                    </li>
                    {/foreach}
                </ul>
            </div>
         </div>
        </div>
    </div>

{include file="footer.tpl"}