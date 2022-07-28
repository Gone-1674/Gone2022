<%--
  Created by IntelliJ IDEA.
  User: 86152
  Date: 2021/11/27
  Time: 15:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<%
    session=request.getSession();
    String username=(String) session.getAttribute("user");
%>
<html>
<head>
    <meta charset="utf-8">
    <title>template</title>
    <script src="js/jquery-3.6.0.js"></script>
    <link rel="stylesheet" type="text/css" href="css/template.css" />
    <style type="text/css">
        .rea{
            position: absolute;
            margin-left: 880px;
            margin-top: 65px;
            width: 490px;
            height: 200px;
            background-color:lightpink;
        }
    </style>
    <script type="text/javascript">
        $(function () {
            <%
                 if (username!=null){                      //正常登录进入
             %>
             $("#w").html("欢迎你,"+'<%=username%>')
             window.sessionStorage.setItem("user",'<%=username%>')
            <%
                 }else {                      //注册后进入
             %>
              $("#w").html("欢迎你,"+window.sessionStorage.getItem("user"))
            <%
                 }
            %>
        })
    </script>
</head>
<body style="zoom: 1;">
<!-- top  B -->
<div class="div1">
    <div class="kk" style="display: none;">
        <div><a href="JavaScript:void(0)" class="o">北京</a></div>
        <div><a href="JavaScript:void(0)"class="o" >上海</a></div>
        <div><a href="JavaScript:void(0)"class="o">天津</a></div>
        <div><a href="JavaScript:void(0)">重庆</a></div>
        <div><a href="JavaScript:void(0)">河北</a></div>
        <div><a href="JavaScript:void(0)">山西</a></div>
        <div><a href="JavaScript:void(0)">河南</a></div>
        <div><a href="JavaScript:void(0)">辽宁</a></div>
        <div><a href="JavaScript:void(0)">吉林</a></div>
        <div><a href="JavaScript:void(0)">黑龙江</a></div>
        <div><a href="JavaScript:void(0)">内蒙古</a></div>
        <div><a href="JavaScript:void(0)">江苏</a></div>
        <div><a href="JavaScript:void(0)">山东</a></div>
        <div><a href="JavaScript:void(0)">安徽</a></div>
        <div><a href="JavaScript:void(0)">浙江</a></div>
        <div><a href="JavaScript:void(0)">福建</a></div>
        <div><a href="JavaScript:void(0)">湖北</a></div>
        <div><a href="JavaScript:void(0)">湖南</a></div>
        <div><a href="JavaScript:void(0)">广东</a></div>
        <div><a href="JavaScript:void(0)">广西</a></div>
        <div><a href="JavaScript:void(0)">江西</a></div>
        <div><a href="JavaScript:void(0)">四川</a></div>
        <div><a href="JavaScript:void(0)">海南</a></div>
        <div><a href="JavaScript:void(0)">贵州</a></div>
        <div><a href="JavaScript:void(0)">云南</a></div>
        <div><a href="JavaScript:void(0)">西藏</a></div>
        <div><a href="JavaScript:void(0)">陕西</a></div>
        <div><a href="JavaScript:void(0)">甘肃</a></div>
        <div><a href="JavaScript:void(0)">青海</a></div>
        <div><a href="JavaScript:void(0)">宁夏</a></div>
        <div><a href="JavaScript:void(0)">新疆</a></div>
        <div><a href="JavaScript:void(0)">港澳</a></div>
        <div><a href="JavaScript:void(0)">台湾</a></div>
        <div><a href="JavaScript:void(0)">钓鱼岛</a></div>
        <div><a href="JavaScript:void(0)">海外</a></div>
    </div>
    <div class="center z1">
        <div>
            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor"
                 class="bi bi-geo-alt" viewBox="0 0 16 16">
                <path
                        d="M12.166 8.94c-.524 1.062-1.234 2.12-1.96 3.07A31.493 31.493 0 0 1 8 14.58a31.481 31.481 0 0 1-2.206-2.57c-.726-.95-1.436-2.008-1.96-3.07C3.304 7.867 3 6.862 3 6a5 5 0 0 1 10 0c0 .862-.305 1.867-.834 2.94zM8 16s6-5.686 6-10A6 6 0 0 0 2 6c0 4.314 6 10 6 10z" />
                <path d="M8 8a2 2 0 1 1 0-4 2 2 0 0 1 0 4zm0 1a3 3 0 1 0 0-6 3 3 0 0 0 0 6z" />
            </svg>
            <span><a href="" id="a1">定位</a></span>
        </div>
        <ul>
            <li><a href="/myweb/login.html" id="w" >你好，请登录</a></li>
            <li><a href="/myweb/login.html">免费注册</a></li>
            <li><a href="">我的订单</a></li>
            <li><a href="">商品分类</a></li>
            <li><a href="">网站导航</a></li>
            <li><a href="">联系客服</a></li>
            <li><a href="">客户服务</a></li>
        </ul>
    </div>
</div>
<!-- top E -->

<!-- logo B -->
<div class="div2">
    <div class="rea" style="display: none"></div>         <!--存放搜索框-->

    <div class="center z2">
        <img src="images/logo2.PNG" />
        <div class="z2 k">
            <input type="text" id="t"/>
            <input type="button" value="搜索" id="b" />
        </div>
        <div class="z2 a">
            <div id="p">
                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-cart" viewBox="0 0 16 16">
                    <path d="M0 1.5A.5.5 0 0 1 .5 1H2a.5.5 0 0 1 .485.379L2.89 3H14.5a.5.5 0 0 1 .491.592l-1.5 8A.5.5 0 0 1 13 12H4a.5.5 0 0 1-.491-.408L2.01 3.607 1.61 2H.5a.5.5 0 0 1-.5-.5zM3.102 4l1.313 7h8.17l1.313-7H3.102zM5 12a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm7 0a2 2 0 1 0 0 4 2 2 0 0 0 0-4zm-7 1a1 1 0 1 1 0 2 1 1 0 0 1 0-2zm7 0a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                </svg>
                <a href=""style="color: #e1251b;;">我的购物车</a>
            </div>
        </div>
        <ul>
            <li><a href="/myweb/computer.html"style="color: #e1251b;">高端电脑</a></li>
            <li><a href="/myweb/clothes.html">衣服</a></li>
            <li><a href="/myweb/fruit.html">水果</a></li>
            <li><a href="/myweb/refrigerator.html">冰箱</a></li>
            <li><a href="/myweb/detergent.html">洗衣液</a></li>
            <li><a href="/myweb/mobile.html">手机壳</a></li>
        </ul>

        <div class=" d">
            <div>
                <a href="" style="color: #e1251b;font-weight: 700;font-size: 15px;">秒杀</a>
                <a href="" style="color: #e1251b;font-weight: 700;font-size: 15px;">优惠卷</a>
                <a href="">品牌闪购</a>
                <a href="">稿定家电</a>
                <a href="">稿定超市</a>
                <a href="">拍卖</a>
                <a href="">生鲜</a>
                <a href="">稿定国际</a>
                <a href="">PLUS会员</a>
            </div>
        </div>

    </div>
</div>
<!-- logo E -->

<div class="div3">
    <div class="center x">
        <div id="d1">
            <div >专栏</div>
            <div ><a href="/myweb/main.html" class="aa">家用电器</a></div>
            <div ><a href="/myweb/computer.html" class="aa">电脑办公</a></div>
            <div ><a href="/myweb/fruit.html" class="aa">生鲜水果</a></div>
            <div ><a href="/myweb/clothes.html" class="aa">衣服系列</a></div>
            <div ><a href="/myweb/books.html" class="aa">图书</a></div>
            <div ><a href="/myweb/beauty.html" class="aa">美妆</a></div>
        </div>
        <div id="d2" style="float: left;">
            <img src="images/奶粉.png" id="img" />
        </div>
        <div id="d3" >
            <div style="border-bottom: 1px solid darkgray;width: 190px; height: 102px;" align="center">
                <img src="images/logo.PNG" />
                <span style="display: block;margin-top: 10px;">Hi~欢迎光临</span>
            </div>
            <div style="border-bottom: 1px solid darkgray;width: 190px; height: 130px;">
                <p style="font-size:15px;color: #333333;"><b>商城快报</b></p>
                <p><a href="">开智小锌酵母锌口服液评测：好吸收，浓浓椰香</a></p>
                <p><a href="">万家乐零冷水燃气热水器，给你优质的使用体验</a></p>
                <p><a href="">大华256G固态硬盘，传输快速容量大，让你存储无烦恼</a></p>
                <p><a href="">LG OLED A1遇上RGB灯光，电竞信仰瞬间充满</a></p>
            </div>
            <div>
                <a href="">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-phone" viewBox="0 0 16 16">
                        <path d="M11 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h6zM5 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2H5z"/>
                        <path d="M8 14a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"/>
                    </svg>
                </a>

                <a href="">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-controller" viewBox="0 0 16 16">
                        <path d="M11.5 6.027a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0zm-1.5 1.5a.5.5 0 1 0 0-1 .5.5 0 0 0 0 1zm2.5-.5a.5.5 0 1 1-1 0 .5.5 0 0 1 1 0zm-1.5 1.5a.5.5 0 1 0 0-1 .5.5 0 0 0 0 1zm-6.5-3h1v1h1v1h-1v1h-1v-1h-1v-1h1v-1z"/>
                        <path d="M3.051 3.26a.5.5 0 0 1 .354-.613l1.932-.518a.5.5 0 0 1 .62.39c.655-.079 1.35-.117 2.043-.117.72 0 1.443.041 2.12.126a.5.5 0 0 1 .622-.399l1.932.518a.5.5 0 0 1 .306.729c.14.09.266.19.373.297.408.408.78 1.05 1.095 1.772.32.733.599 1.591.805 2.466.206.875.34 1.78.364 2.606.024.816-.059 1.602-.328 2.21a1.42 1.42 0 0 1-1.445.83c-.636-.067-1.115-.394-1.513-.773-.245-.232-.496-.526-.739-.808-.126-.148-.25-.292-.368-.423-.728-.804-1.597-1.527-3.224-1.527-1.627 0-2.496.723-3.224 1.527-.119.131-.242.275-.368.423-.243.282-.494.575-.739.808-.398.38-.877.706-1.513.773a1.42 1.42 0 0 1-1.445-.83c-.27-.608-.352-1.395-.329-2.21.024-.826.16-1.73.365-2.606.206-.875.486-1.733.805-2.466.315-.722.687-1.364 1.094-1.772a2.34 2.34 0 0 1 .433-.335.504.504 0 0 1-.028-.079zm2.036.412c-.877.185-1.469.443-1.733.708-.276.276-.587.783-.885 1.465a13.748 13.748 0 0 0-.748 2.295 12.351 12.351 0 0 0-.339 2.406c-.022.755.062 1.368.243 1.776a.42.42 0 0 0 .426.24c.327-.034.61-.199.929-.502.212-.202.4-.423.615-.674.133-.156.276-.323.44-.504C4.861 9.969 5.978 9.027 8 9.027s3.139.942 3.965 1.855c.164.181.307.348.44.504.214.251.403.472.615.674.318.303.601.468.929.503a.42.42 0 0 0 .426-.241c.18-.408.265-1.02.243-1.776a12.354 12.354 0 0 0-.339-2.406 13.753 13.753 0 0 0-.748-2.295c-.298-.682-.61-1.19-.885-1.465-.264-.265-.856-.523-1.733-.708-.85-.179-1.877-.27-2.913-.27-1.036 0-2.063.091-2.913.27z"/>
                    </svg>
                </a>

                <a href="">
                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-file-earmark-text" viewBox="0 0 16 16">
                        <path d="M5.5 7a.5.5 0 0 0 0 1h5a.5.5 0 0 0 0-1h-5zM5 9.5a.5.5 0 0 1 .5-.5h5a.5.5 0 0 1 0 1h-5a.5.5 0 0 1-.5-.5zm0 2a.5.5 0 0 1 .5-.5h2a.5.5 0 0 1 0 1h-2a.5.5 0 0 1-.5-.5z"/>
                        <path d="M9.5 0H4a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h8a2 2 0 0 0 2-2V4.5L9.5 0zm0 1v2A1.5 1.5 0 0 0 11 4.5h2V14a1 1 0 0 1-1 1H4a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1h5.5z"/>
                    </svg>
                </a>

                <span style="float: left;">话费</span>
                <span style="float: left;">游戏</span>
                <span style="float: left;">词条</span>

                <div style="width: 190px;height: 176px;float: left;">

                    <form action="" style="margin-top: 15px;margin-left: 3px;border-top: 1px solid  darkgray;" method="post">
                        <table >
                            <tr>
                                <td><a href="" id="traffic">流量充值&nbsp;</a></td>
                                <td><a href="" id="charge">&nbsp;话费充值</a></td>
                            </tr>
                            <tr >
                                <td>号码</td>
                                <td><input type="text" id="text1" placeholder="手机号" name="tel"/></td>
                            </tr>
                            <tr>
                                <td id="td1">流量</td>
                                <td>
                                    <select id="select2" name="area">
                                        <option selected >全国</option>
                                        <option >省内</option>
                                    </select>
                                    <select id="select" name="flow">
                                        <option selected value="50M">50M</option>
                                        <option value="100M">100M</option>
                                        <option value="200M">200M</option>
                                        <option value="300M">300M</option>
                                        <option value="500M">500M</option>
                                    </select>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2"><span style="color: #e01222;margin-left: 0px;">￥7.5-￥10.0</span></td>
                            </tr>
                            <tr>
                                <td>
                                    <input type="submit" value="快速充值" id="btn" />
                                </td>
                                <td>
                                    <a href="" style="color:#5476db;font-size: 15px;" id="app">App&nbsp;Store充值</a>
                                </td>
                            </tr>
                        </table>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="center y">
        <div>
            <a href="">
                <img src="images/客厅.PNG" />
                <p>亲友 北欧布艺沙发组合客厅整装家具大小户型纳米科技布乳胶简约可拆洗实木框架沙发 六件套【配4个布凳】 旗舰海绵座包【颜色备注】</p>
                <span>￥4368.00</span>
            </a>
        </div>
        <div>
            <a href="">
                <img src="images/手机.PNG" />
                <p>vivo iQOO 7 12GB+256GB 黑境 骁龙888 120W超快闪充 KPL官方赛事电竞手机 双模5G全网通vivoiqoo7</p>
                <span>￥3223.00</span>
            </a>
        </div>
        <div>
            <a href="">
                <img src="images/宠物狗.PNG" />
                <p>【送货上门】Litter-Robot 全自动猫砂盆智能猫厕所wifi远程控制特大号电动防外溅 全封闭 LR3C-1000-米色</p>
                <span>￥3398.00</span>
            </a>
        </div>
        <div>
            <a href="">
                <img src="images/鞋子.PNG"/>
                <p>云舒3.0丨361男鞋运动鞋NFO科技2021年秋冬季新款软弹休闲鞋 NEW 羽毛白/金橘色-6725 42</p>
                <span>￥149.00</span>
            </a>
        </div>
        <div>
            <a href="">
                <img src="images/训练器.PNG"/>
                <p>贝德拉（BeDL）跑步机 家用静音折叠走步机健身器材510 （支持HUAWEI HiLink） HUAWEI HiLink生态产品/至尊版多功能</p>
                <span>￥1549.00</span>
            </a>
        </div>
    </div>


    <div class="center z">
        <ul id="ul">
            <li class="i"><a href=""><img src="images/沐浴露.png" /></a></li>
            <li class="i"><a href=""><img src="images/微波炉.png" /></a></li>
            <li class="i"><a href=""><img src="images/洗衣液.png" /></a></li>
            <li class="i"><a href=""><img src="images/电视.png" /></a></li>
            <li class="i"><a href=""><img src="images/纸巾.png" /></a></li>
            <li class="i"><a href=""><img src="images/衣服.png" /></a></li>
            <li class="i"><a href=""><img src="images/沐浴露.png" /></a></li>
            <li class="i"><a href=""><img src="images/微波炉.png" /></a></li>
            <li class="i"><a href=""><img src="images/洗衣液.png" /></a></li>
        </ul>
    </div>
</div>
<div class="div4" align="center">
    <div >
        <ul>
            <li><img src="images/多.PNG" /><span>品类齐全，轻松购物</span></li>
            <li><img src="images/快.PNG" /><span>多仓直发，极速配送</span></li>
            <li><img src="images/好.PNG" /><span>正品行货，精致服务</span></li>
            <li><img src="images/省.PNG" /><span>天天低价，畅选无忧</span></li>
        </ul>
    </div>
</div>
</body>
</html>


<script type="text/javascript">
    $(function(){
        var img0="images/奶粉.png";
        var img1="images/水果.PNG";
        var img2="images/洗护.PNG";
        var img3="images/蔬菜.PNG";
        var img4="images/茶.PNG"
        var imgobj=[img0,img1,img2,img3,img4];
        var i=0;
        var obj;

        function change(){
            obj=setInterval(function(){
                if(i<5){
                    $("#img").attr("src",imgobj[i])
                    i++;
                }else{
                    i=0;
                }
            },1500)
        }

        var position=0;
        var time;
        function autoplay(){
            time=setInterval(function(){
                position-=20;
                $("#ul").css("margin-left",position);
                if(position<=-2140){
                    position=0;
                }
            },150)
        }
        autoplay();
        change();

        $(".i").hover(function(){
            clearInterval(time)
            $(this).siblings().fadeTo(100,0.5)     //非当前元素
        },function(){
            $(".i").fadeTo(100,1)
            autoplay()
        })
    })

    $("#a1").mouseover(function(){              //省份切换
        $(".kk").css("display","block")
        $(".kk a").click(function(){
            $("#a1").html($(this).html())
            window.sessionStorage.setItem("province",$(this).html())
            $(".kk").css("display","none")
        })
    })

    $(".kk").mouseleave(function(){
        $(".kk").css("display","none")
    })


    var  array=['家用电器','电脑办公','生鲜水果','衣服系列','图书','美妆']
    $("#t").keyup(function () {        //键盘敲击
        s="";
        let data=$(this).val();
        if (data.trim().length==0){
            $(".rea").css("display","none");
        }else {                //输入不为空
           for (i=0;i<array.length;i++){
               obj=array[i];
               if (obj.indexOf(data)!=-1){
                   $(".rea").css("display","block");
                   s+=array[i]+"<br/>";
               }
           }
            if (s.indexOf('家用电器')!=-1){
                $(".rea").html("<a href='/myweb/main.html' style='font-size: 20px;color: #333333'>"+s+"</a>");
            }else if(s.indexOf('电脑办公')!=-1){
                $(".rea").html("<a href='/myweb/computer.html' style='font-size: 20px;color: #333333'>"+s+"</a>");
            }else if(s.indexOf('生鲜水果')!=-1){
                $(".rea").html("<a href='/myweb/fruit.html' style='font-size: 20px;color: #333333'>"+s+"</a>");
            }else if(s.indexOf('衣服系列')!=-1){
                $(".rea").html("<a href='/myweb/clothes.html' style='font-size: 20px;color: #333333'>"+s+"</a>");
            }else if(s.indexOf('图书')!=-1){
                $(".rea").html("<a href='/myweb/books.html' style='font-size: 20px;color: #333333'>"+s+"</a>");
            }else if(s.indexOf('美妆')!=-1){
                $(".rea").html("<a href='/myweb/beauty.html' style='font-size: 20px;color: #333333'>"+s+"</a>");
            }
        }
    })

    $("#charge").hover(function () {
       $("form").attr('action','/myweb/transaction/charge')
       $(this).css("color","rgb(241, 2, 21)")
       $('#traffic').css("color","")
       $("#td1").html("话费")
       $("tr td select").empty()
       $("tr td select:first-child").append("<option value='移动'>移动</option>")
       $("tr td select:first-child").append("<option value='联通'>联通</option>")
       $("tr td select:first-child").append("<option value='电信'>电信</option>")
       $("tr td select:last-child").append("<option value='10元'>10元</option>")
       $("tr td select:last-child").append("<option value='20元'>20元</option>")
       $("tr td select:last-child").append("<option value='30元'>30元</option>")
       $("tr td select:last-child").append("<option value='50元'>50元</option>")
       $("tr td select:last-child").append("<option value='100元'>100元</option>")
       $("#app").css("display","none");
       $("tr td span").html("￥98.0-￥100.0")
    })

    $("#traffic").hover(function () {
        $("form").attr('action','/myweb/transaction/flow')
        $(this).css("color","rgb(241, 2, 21)")
        $("#charge").css("color","")
        $("#td1").html("流量")
        $("tr td select").empty()
        $("tr td select:first-child").append("<option>全国</option>")
        $("tr td select:first-child").append("<option>省内</option>")
        $("tr td select:last-child").append("<option>50M</option>")
        $("tr td select:last-child").append("<option>100M</option>")
        $("tr td select:last-child").append("<option>200M</option>")
        $("tr td select:last-child").append("<option>300M</option>")
        $("tr td select:last-child").append("<option>500M</option>")
        $("#app").css("display","block");
        $("tr td span").html("￥7.5-￥10.0")
    })

    $("#btn").on('click',function () {
       let tel=$("#text1").val();
       let scope=$("#select").val();
       if ($("#td1").val()=='话费'){
           let cof=confirm("手机："+tel+"   充值"+$("#td1").html()+"："+scope);
           if (cof==true){
               alert("充值成功")
               return true;
           } else {
               return false;
           }
       }else {
           let cof=confirm("手机："+tel+"   充值"+$("#td1").html()+"："+scope);
           if (cof==true){
               alert("充值成功")
               return true;
           } else {
               return false;
           }
       }
    })



</script>