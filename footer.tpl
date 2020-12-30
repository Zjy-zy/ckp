   <!-- 尾 -->
    <div class="footer">
        <div class="container">
            <div class="row">
                <div class="footer_top">
                    <span><img src="{$siteurl}/templets/{$templets->directory}/image/8_ic_1.png" alt="">友情链接:</span>
                    <ul>
					{assign var="topnavlist" value=$navdata->TakeNavigateList("友情链接",0,100)}
                        {foreach from=$topnavlist item=navinfo}
                        <li>{$navinfo->name}</li>
                        <li>{$navinfo->name}</li>
                        <li>{$navinfo->name}</li>
                        <li>{$navinfo->name}</li>
                        <li>{$navinfo->name}</li>
						{/foreach}
                    </ul>
					 
                </div>
                <div class="footer_medium">
                    <span><img src="{$siteurl}/templets/{$templets->directory}/image/0_logo.png" alt=""></span>
                    <ul>
					{assign var="topnavlist" value=$navdata->TakeNavigateList("顶部导航",0,100)}
                        {foreach from=$topnavlist item=navinfo}
                        <li><a href="{$navinfo->url}">{$navinfo->name}</a> </li>
						{/foreach}
                    </ul>
                    <div>
                        <img src="{$siteurl}/templets/{$templets->directory}/image/8_二维码占位符.png" alt="">
                        <p>微信公众号</p>
                    </div>
                </div>
                <div class="footer_down">
                    <p>
                        <img src="{$siteurl}/templets/{$templets->directory}/image/8_ic_2.png" alt="">桂公网安备 xx000000号 <span>广西简创网络技术有限公司 桂ICP备xx000号</span>
                    </p>
                </div>
            </div>
        </div>
    </div>
    <!-- 侧边栏 -->  
    <div class="sidebar">
        <div class="row">
            <div class="sidebar_top">
                <img src="{$siteurl}/templets/{$templets->directory}/picture/sidebar/ic_f_kefu.png" alt="">
                <p>在<br>
                    线<br>
                    客<br>
                    服</p>
            </div>
            <div class="sidebar_footer">
                <img src="{$siteurl}/templets/{$templets->directory}/picture/sidebar/ic_f_backtop.png" alt="">
            </div>
        </div>
    </div>
    <div class="msg">
        <div class="row">
            <div class="msg_left">
                <div class="left_tpList">
                    <div>
                        <img src="{$siteurl}/templets/{$templets->directory}/picture/sidebar/ic_f_qq.png" alt="">
                        立即交谈
                    </div>
                    
                </div>
                <div class="left_tpList">
                    <div>
                        <img src="{$siteurl}/templets/{$templets->directory}/picture/sidebar/ic_f_phone.png" alt="">
                        18269456266
                    </div>
                    
                </div>
            </div>
            <div class="msg_right">
                <img src="{$siteurl}/templets/{$templets->directory}/picture/sidebar/二维码占位符.png" alt="">
                <p><img src="{$siteurl}/templets/{$templets->directory}/picture/sidebar/ic_f_wechart.png" alt="">加微信</p>
            </div>
        </div>
    </div>
</body>
</html>

