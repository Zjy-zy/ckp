{assign var="seotitle" value=$tag->seotitle}
{assign var="seokeywords" value=$tag->seokeywords}
{assign var="seodescription" value=$tag->seodescription}
{include file="header.tpl"}
<div class="crumb">
  <div class="container">
    <ol class="breadcrumb row">
      <li class="active">当前位置: </li>
      {foreach from=$crumb item=cat}
      <li><a href="{$cat->url}">{$cat->name}</a></li>
      {/foreach}
      <li class="active">{$category->name}</li>
    </ol>
  </div>
</div>
<div class="container main-content">
  <div class="post col-sm-8 row">
    <div class="post-head">
      <h2>{$tag->tagname}产品</h2>
    </div>
    <div class="post-content article-list">
    {foreach from=$pid item=pname}
    {if $pname!=""}
    {assign var="product" value=$productdata->GetProductByName($pname)}
      <div class="col-sm-4 col-md-3 col-xs-6 product-box"> <a href="{formaturl type='product' siteurl=$siteurl name=$pname}" target="_blank">
        <div class="image-box"> <img onload="DrawImage(this);" src="{$product->thumb}" title="{$product->name}" alt="{$product->name}"/> </div>
        </a>
        <p><a href="{formaturl type='product' siteurl=$siteurl name=$pname}" target="_blank">{$product->name}</a></p>
      </div>
      {/if}
      {/foreach}
      </div>
    <div class="post-head">
      <h2>{$tag->tagname}文章</h2>
    </div>
    <div class="post-content article-list"> 
      <ul>
        {foreach from=$aid item=aname}
        {if $aname!=""}
        {assign var="article" value=$articledata->GetArticleByName($aname)}
        <li> <span class="pull-right">{$article->adddate}</span> <a href="{formaturl type='article' siteurl=$siteurl name=$article->filename}" target="_blank">{$article->title}</a> </li>
        {/if}
        {/foreach}
      </ul>
</div>
  </div>
  <div class="col-sm-4 sidebar row">
    <div class="widget">
      <div class="content">
        <form method="post" action="{formaturl type="category" siteurl=$siteurl name="search"}">
          <div class="input-group">
            <input type="hidden" class="form-control" name="type" value="product">
            <input type="text" class="form-control" name="q" placeholder="输入你想找的东西...">
            <span class="input-group-btn">
            <button class="btn btn-default" type="submit"> 搜索 </button>
            </span> </div>
        </form>
      </div>
    </div>
    <div class="widget">
      <h4 class="title">产品分类</h4>
      <div class="content community"> {assign var="newscat" value=$categorydata->GetCategoryList(0,'product',0,'')}
        {foreach from=$newscat item=cattinfo}
        <p><a href="{formaturl type="category" siteurl=$siteurl name=$cattinfo->filename}" target="_blank">{$cattinfo->name}</a></p>
        {/foreach} </div>
    </div>
    <div class="widget">
      <h4 class="title">最新产品</h4>
      <div class="content"> {assign var="productlist" value=$productdata->TakeProductList(0,0,6)}
        {foreach from=$productlist item=productinfo}
        <div class="col-xs-6 col-sm-12 col-md-6 product-box"> <a href="{formaturl type="product" siteurl=$siteurl name=$productinfo->filename}" target="_blank">
          <div class="image-box"> <img onload="DrawImage(this);" src="{$productinfo->thumb}" title="{$productinfo->name}" alt="{$productinfo->name}"/> </div>
          </a>
          <p><a href="{formaturl type="product" siteurl=$siteurl name=$productinfo->filename}" target="_blank">{$productinfo->name}</a></p>
        </div>
        {/foreach} </div>
    </div>
    <div class="widget">
      <h4 class="title">标签库</h4>
      <div class="content tag-cloud"> {assign var="taglist" value=$tagdata->TakeTagList(0,10)}
        {foreach from=$taglist item=taginfo} <a href="{formaturl type="tag" siteurl=$siteurl name=$taginfo->tid}" title="{$taginfo->tagname}" target="_blank">{$taginfo->tagname}</a> {/foreach} </div>
    </div>
  </div>
</div>
{include file="footer.tpl"}