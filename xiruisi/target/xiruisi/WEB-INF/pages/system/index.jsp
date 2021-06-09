<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.min.js"></script>
<script>
    $(function () {
        var username = '${Username}';
        if(username === ''){
            $("#showUsername").html("请<a href=\"${pageContext.request.contextPath}/system/login\">登录</a>\n" +
                "                            <span><a href=\"${pageContext.request.contextPath}/system/register\">免费注册</a></span>")
        }else{
            $("#showUsername").html(""+username+" <a href='${pageContext.request.contextPath}/login/logout'>退出登录</a>");
        }
    });
</script>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
    <title>喜瑞斯，67373upup!</title>
    <link rel="icon" href="${pageContext.request.contextPath}/static/img/assets/img/favicon.ico">

    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/webbase.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/pages-JD-index.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/widget-jquery.autocomplete.css" />
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/widget-cartPanelView.css" />
</head>

<body>
<!-- 头部栏位 -->
<!--页面顶部-->
<div id="nav-bottom">
    <!--顶部-->
    <div class="nav-top">
        <div class="top">
            <div class="py-container">
                <div class="shortcut">
                    <ul class="fl">
                        <li class="f-item">喜瑞斯欢迎您！</li>
                        <li class="f-item" id="showUsername">

                        </li>
                    </ul>
                    <ul class="fr">
                        <li class="f-item"><a href="${pageContext.request.contextPath}/system/toHome?username=${Username}&currentPage=1" target="_blank">我的订单</a></li>
                        <li class="f-item space"></li>
                        <li class="f-item"><a href="${pageContext.request.contextPath}/system/toHome?username=${Username}&currentPage=1" target="_blank">我的喜瑞斯</a></li>
<%--                        <li class="f-item space"></li>--%>
<%--                        <li class="f-item">喜瑞斯会员</li>--%>
<%--                        <li class="f-item space"></li>--%>
<%--                        <li class="f-item">企业采购</li>--%>
<%--                        <li class="f-item space"></li>--%>
<%--                        <li class="f-item">关注喜瑞斯</li>--%>
<%--                        <li class="f-item space"></li>--%>
<%--                        <li class="f-item">网站导航</li>--%>
                    </ul>
                </div>
            </div>
        </div>
        <!--头部-->
        <div class="header">
            <div class="py-container">
                <div class="yui3-g Logo">
                    <div class="yui3-u Left logoArea">
                        <a class="logo-bd" title="喜瑞斯" href="${pageContext.request.contextPath}/" target="_blank"></a>
                    </div>
                    <div class="yui3-u Center searchArea">
                        <div class="search">
                            <form action="" class="sui-form form-inline">
                                <!--searchAutoComplete-->
                                <div class="input-append">
                                    <input type="text" id="autocomplete" type="text" class="input-error input-xxlarge" />
                                    <button class="sui-btn btn-xlarge btn-danger" type="button" id="search">搜索</button>
                                </div>
                                <script>
                                    $(function () {
                                        $("#search").click(function () {
                                            location.href = '${pageContext.request.contextPath}/goods/searchGoods?goods_name='+$("#autocomplete").val()+'&currentPage=1'
                                        })
                                    })
                                </script>
                            </form>
                        </div>
                        <div class="hotwords">
<%--                            <ul>--%>
<%--                                <li class="f-item">喜瑞斯首发</li>--%>
<%--                                <li class="f-item">亿元优惠</li>--%>
<%--                                <li class="f-item">9.9元团购</li>--%>
<%--                                <li class="f-item">每满99减30</li>--%>
<%--                                <li class="f-item">亿元优惠</li>--%>
<%--                                <li class="f-item">9.9元团购</li>--%>
<%--                                <li class="f-item">办公用品</li>--%>
<%--                            </ul>--%>
                        </div>
                    </div>
                    <div class="yui3-u Right shopArea">
                        <div class="fr shopcar">
                            <div class="show-shopcar" id="shopcar">
                                <span class="car"></span>
                                <a class="sui-btn btn-default btn-xlarge" href="${pageContext.request.contextPath}/goods/toCart?username=${Username}" target="_blank">
                                    <span>我的购物车</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="yui3-g NavList">
                    <div class="yui3-u Left all-sort">
                        <h4>全部商品分类</h4>
                    </div>
                    <div class="yui3-u Center navArea">
                        <ul class="nav">
                            <li class="f-item"><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">服装城</a></li>
                            <li class="f-item"><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">美妆馆</a></li>
                            <li class="f-item"><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">喜瑞斯超市</a></li>
                            <li class="f-item"><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">全球购</a></li>
                            <li class="f-item"><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">闪购</a></li>
                            <li class="f-item"><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">团购</a></li>
                            <li class="f-item"><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">秒杀</a></li>
                        </ul>
                    </div>
                    <div class="yui3-u Right"></div>
                </div>
            </div>
        </div>
    </div>
</div>


<!--列表-->
<div class="sort">
    <div class="py-container">
        <div class="yui3-g SortList ">
            <div class="yui3-u Left all-sort-list">
                <div class="all-sort-list2">
                    <c:forEach items="${catList}" var="cat">
                        <div class="item">
                            <h3><a href="${pageContext.request.contextPath}/goods/goodsList?cat_id=${cat.cat_id}&currentPage=1">${cat.cat_name}</a></h3>
                        </div>
                    </c:forEach>
                </div>
            </div>
            <div class="yui3-u Center banerArea">
                <!--banner轮播-->
                <div id="myCarousel" data-ride="carousel" data-interval="4000" class="sui-carousel slide">
                    <ol class="carousel-indicators">
                        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                        <li data-target="#myCarousel" data-slide-to="1"></li>
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </ol>
                    <div class="carousel-inner">
                        <div class="item active">
                            <a href="#">
                                <img src="https://s1.ax1x.com/2020/05/25/t9RxHO.jpg" />
                            </a>
                        </div>
                        <c:forEach items="${image}" var="item">
                        <div class="item">
                            <a href="#">
                                <img src=${item.c_img} />
                            </a>
                        </div>
                        </c:forEach>
                    </div><a href="#myCarousel" data-slide="prev" class="carousel-control left">‹</a><a href="#myCarousel" data-slide="next" class="carousel-control right">›</a>
                </div>
            </div>
            <div class="yui3-u Right">
                <div class="news">
                    <h4><em class="fl">喜瑞斯快报</em><span class="fr tip">更多 ></span></h4>
                    <div class="clearix"></div>
                    <ul class="news-list unstyled">
                        <li>
                            <span class="bold">[特惠]</span>备战开学季 全民半价购数码
                        </li>
                        <li>
                            <span class="bold">[公告]</span>备战开学季 全民半价购数码
                        </li>
                        <li>
                            <span class="bold">[特惠]</span>备战开学季 全民半价购数码
                        </li>
                        <li>
                            <span class="bold">[公告]</span>备战开学季 全民半价购数码
                        </li>
                        <li>
                            <span class="bold">[特惠]</span>备战开学季 全民半价购数码
                        </li>
                    </ul>
                </div>
                <ul class="yui3-g Lifeservice">
                    <li class="yui3-u-1-4 life-item tab-item">
                        <i class="list-item list-item-1"></i>
                        <span class="service-intro"><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">话费</a></span>
                    </li>
                    <li class="yui3-u-1-4 life-item tab-item">
                        <i class="list-item list-item-2"></i>
                        <span class="service-intro"><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">机票</a></span>
                    </li>
                    <li class="yui3-u-1-4 life-item tab-item">
                        <i class="list-item list-item-3"></i>
                        <span class="service-intro"><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">电影票</a></span>
                    </li>
                    <li class="yui3-u-1-4 life-item tab-item">
                        <i class="list-item list-item-4"></i>
                        <span class="service-intro"><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">游戏</a></span>
                    </li>
                    <li class="yui3-u-1-4 life-item notab-item">
                        <i class="list-item list-item-5"></i>
                        <span class="service-intro"><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">彩票</a></span>
                    </li>
                    <li class="yui3-u-1-4 life-item notab-item">
                        <i class="list-item list-item-6"></i>
                        <span class="service-intro"><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">加油站</a></span>
                    </li>
                    <li class="yui3-u-1-4 life-item notab-item">
                        <i class="list-item list-item-7"></i>
                        <span class="service-intro"><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">酒店</a></span>
                    </li>
                    <li class="yui3-u-1-4 life-item notab-item">
                        <i class="list-item list-item-8"></i>
                        <span class="service-intro"><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">火车票</a></span>
                    </li>
                    <li class="yui3-u-1-4 life-item  notab-item">
                        <i class="list-item list-item-9"></i>
                        <span class="service-intro"><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">众筹</a></span>
                    </li>
                    <li class="yui3-u-1-4 life-item notab-item">
                        <i class="list-item list-item-10"></i>
                        <span class="service-intro"><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">理财</a></span>
                    </li>
                    <li class="yui3-u-1-4 life-item notab-item">
                        <i class="list-item list-item-11"></i>
                        <span class="service-intro"><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">礼品卡</a></span>
                    </li>
                    <li class="yui3-u-1-4 life-item notab-item">
                        <i class="list-item list-item-12"></i>
                        <span class="service-intro"><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">白条</a></span>
                    </li>
                </ul>
                <div class="life-item-content">
                    <div class="life-detail">
                        <i class="close">关闭</i>
                        <p>话费充值</p>
                        <form action="" class="sui-form form-horizontal">
                            号码：<input type="text" id="inputphoneNumber" placeholder="输入你的号码" />
                        </form>
                        <button class="sui-btn btn-danger">快速充值</button>
                    </div>
                    <div class="life-detail">
                        <i class="close">关闭</i> 机票
                    </div>
                    <div class="life-detail">
                        <i class="close">关闭</i> 电影票
                    </div>
                    <div class="life-detail">
                        <i class="close">关闭</i> 游戏
                    </div>
                </div>
                <div class="ads">
                    <img src="${pageContext.request.contextPath}/static/img/ad1.png" />
                </div>
            </div>
        </div>
    </div>
</div>
<!--推荐-->
<div class="show">
    <div class="py-container">
        <ul class="yui3-g Recommend">
            <li class="yui3-u-1-6  clock">
                <div class="time">
                    <img src="${pageContext.request.contextPath}/static/img/clock.png" />
                    <h3>今日推荐</h3>
                </div>
            </li>
            <li class="yui3-u-5-24">
                <a href="#" target="_blank"><img src="${pageContext.request.contextPath}/static/img/today01.png" alt="" /></a>
            </li>
            <li class="yui3-u-5-24">
                <img src="${pageContext.request.contextPath}/static/img/today02.png" alt=""/>
            </li>
            <li class="yui3-u-5-24">
                <img src="${pageContext.request.contextPath}/static/img/today03.png" alt=""/>
            </li>
            <li class="yui3-u-5-24">
                <img src="${pageContext.request.contextPath}/static/img/today04.png" alt=""/>
            </li>
        </ul>
    </div>
</div>
<style>
    .test{
        width:130px;overflow:hidden;text-overflow:ellipsis;white-space:nowrap;
    }
</style>
<!--喜欢-->
<div class="like">
    <div class="py-container">
        <div class="title">
            <h3 class="fl">为你推荐</h3>
        </div>
        <div class="bd">
            <ul class="clearfix yui3-g Favourate picLB" id="picLBxxl">
                <%--开始遍历--%>
                <c:forEach items="${likes}" var="goods">
                    <li class="yui3-u-1-6">
                        <dl class="picDl huozhe">
                            <dd>
                                <a href="${pageContext.request.contextPath}/goods/goodsDetail?goods_id=${goods.goods_id}" class="pic"><img src=${goods.image1}></a>
                                <div class="like-text">
                                    <p><div class="test">${goods.goods_name}</div></p>
                                    <h3>¥${goods.goods_price}</h3>
                                </div>
                            </dd>
                        </dl>
                    </li>
                </c:forEach>
                <%--结束遍历--%>
            </ul>
        </div>
    </div>
</div>

<!-- 底部栏位 -->
<!--页面底部-->
<div class="clearfix footer">
    <div class="py-container">
        <div class="footlink">
            <div class="Mod-service">
                <ul class="Mod-Service-list">
                    <li class="grid-service-item intro  intro1">

                        <i class="serivce-item fl"></i>
                        <div class="service-text">
                            <h4>喜瑞斯</h4>
                            <p>正品保障，提供发票</p>
                        </div>

                    </li>
                    <li class="grid-service-item  intro intro2">

                        <i class="serivce-item fl"></i>
                        <div class="service-text">
                            <h4>多！</h4>
                            <p>品类齐全，轻松购物</p>
                        </div>

                    </li>
                    <li class="grid-service-item intro  intro3">

                        <i class="serivce-item fl"></i>
                        <div class="service-text">
                            <h4>快！</h4>
                            <p>多仓直发，极速配送</p>
                        </div>

                    </li>
                    <li class="grid-service-item  intro intro4">

                        <i class="serivce-item fl"></i>
                        <div class="service-text">
                            <h4>好！</h4>
                            <p>正品行货，极致服务</p>
                        </div>

                    </li>
                    <li class="grid-service-item intro intro5">

                        <i class="serivce-item fl"></i>
                        <div class="service-text">
                            <h4>省！</h4>
                            <p>天天低价，畅选无忧</p>
                        </div>

                    </li>
                </ul>
            </div>
            <div class="clearfix Mod-list">
                <div class="yui3-g">
                    <div class="yui3-u-1-6">
                        <h4>购物指南</h4>
                        <ul class="unstyled">
                            <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">购物流程</a></li>
                            <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">会员介绍</a></li>
                            <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">生活旅行/团购</a></li>
                            <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">常见问题</a></li>
                            <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">购物指南</a></li>
                        </ul>

                    </div>
                    <div class="yui3-u-1-6">
                        <h4>配送方式</h4>
                        <ul class="unstyled">
                            <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">上门自提</a></li>
                            <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">211限时达</a></li>
                            <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">配送服务查询</a></li>
                            <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">配送费收取标准</a></li>
                            <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">海外配送</a></li>
                        </ul>
                    </div>
                    <div class="yui3-u-1-6">
                        <h4>支付方式</h4>
                        <ul class="unstyled">
                            <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">货到付款</a></li>
                            <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">在线支付</a></li>
                            <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">分期付款</a></li>
                            <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">邮局汇款</a></li>
                            <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">公司转账</a></li>
                        </ul>
                    </div>
                    <div class="yui3-u-1-6">
                        <h4>售后服务</h4>
                        <ul class="unstyled">
                            <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">售后政策</a></li>
                            <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">价格保护</a></li>
                            <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">退款说明</a></li>
                            <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">返修/退换货</a></li>
                            <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">取消订单</a></li>
                        </ul>
                    </div>
                    <div class="yui3-u-1-6">
                        <h4>特色服务</h4>
                        <ul class="unstyled">
                            <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">夺宝岛</a></li>
                            <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">DIY装机</a></li>
                            <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">延保服务</a></li>
                            <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">喜瑞斯E卡</a></li>
                            <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">喜瑞斯通信</a></li>
                        </ul>
                    </div>
                    <div class="yui3-u-1-6">
                        <h4>帮助中心</h4>
                        <img  width="50%" src="${pageContext.request.contextPath}/static/img/wx_cz.jpg">
                    </div>
                </div>
            </div>
            <div class="Mod-copyright">
                <ul class="helpLink">
                    <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">关于我们</a><span class="space"></span></li>
                    <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">联系我们</a><span class="space"></span></li>
                    <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">关于我们</a><span class="space"></span></li>
                    <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">商家入驻</a><span class="space"></span></li>
                    <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">营销中心</a><span class="space"></span></li>
                    <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">友情链接</a><span class="space"></span></li>
                    <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">关于我们</a><span class="space"></span></li>
                    <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">营销中心</a><span class="space"></span></li>
                    <li><a href="${pageContext.request.contextPath}/system/toDeveloping" target="_blank">友情链接</a><span class="space"></span></li>
                    <li><a href="http://hkxy.edu.cn/">关于我们</a></li>
                </ul>
                <div class="address">地址：湖北省武汉市江夏区文化大道299号汉口学院 邮编：430212 电话：027-59410037 传真：027-59410203</div>
                <div class="beian">鄂ICP备12011456号-3 鄂公网安备42011502001236号
            </div>
        </div>
    </div>
</div>
<!--页面底部END-->
<!-- 楼层位置 -->

<script type="text/javascript">
    $(function(){
        $("#service").hover(function(){
            $(".service").show();
        },function(){
            $(".service").hide();
        });
        $("#shopcar").hover(function(){
            $("#shopcarlist").show();
        },function(){
            $("#shopcarlist").hide();
        });

    })
</script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/model/cartModel.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/czFunction.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/jquery.easing/jquery.easing.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/plugins/sui/sui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/pages/index.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/widget/cartPanelView.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/widget/jquery.autocomplete.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/widget/nav.js"></script>
</body>


</html>