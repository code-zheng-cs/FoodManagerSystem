<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 85264
  Date: 2020/12/30
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>统计图表展示</title>
    <script src="https://cdn.staticfile.org/echarts/4.3.0/echarts.min.js"></script>
    <link href="http://localhost:8080/web/css/shopping.css" rel='stylesheet' type='text/css' />
    <link href="http://localhost:8080/web/css/shoplist.css" rel='stylesheet' type='text/css' />
    <link rel="start icon" href="images/resize_png_new.png"  >
</head>
<body>
<!-- 为ECharts准备一个具备大小（宽高）的Dom -->
<div class="top1">
    <div class="top-left">
        <p> <a href="http://localhost:8080/web/goodslist.jsp" target="_blank">购物打折啦</a></p>
    </div>
    <div class="top-middle">
        <marquee id="move">
            欢迎来到食管会,食管会随时随地带你购物！
        </marquee>
    </div>
    <div class="top-right">
        <ul>
            <li> <a href="#">最近浏览</a></li>
            |
            <li> <a href="#">关于我们</a></li>
            |

            <c:if test="${empty sessionScope.loginAdminName&&empty sessionScope.loginUserName}">
                <li> <a href="http://localhost:8080/web/login_user.jsp" target="_self">登录</a></li>
                |
                <li> <a href="http://localhost:8080/web/register.jsp" target="_self">注册</a></li>
            </c:if>
            <c:if test="${not empty sessionScope.loginAdminName}">
                欢迎
                <span>${sessionScope.loginAdminName}</span>
                <a href="/web/ExitServlet?action=Admin" style="text-decoration: none;color: #799cff;"><span>注销</span></a>
            </c:if>

            <c:if test="${not empty sessionScope.loginUserName}">
                欢迎
                <span>${sessionScope.loginUserName}</span>
                <a href="/web/ExitServlet?action=User" style="text-decoration: none;color: #799cff;"><span>注销</span></a>
            </c:if>

        </ul>
    </div>
</div>

<div id="main" style="width: 600px;height:500px;float: left;margin-left: 50px"></div>
<div id="main1" style="width: 600px;height:500px;float: left"></div>

<%@include file="/common/commonTail.jsp"%>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main1'));

    myChart.setOption({
        title: {
            text: '销量占比图'
        },
        series : [
            {
                name: '访问来源',
                type: 'pie',    // 设置图表类型为饼图
                radius: '55%',  // 饼图的半径，外半径为可视区尺寸（容器高宽中较小一项）的 55% 长度。
                data:[
                    <c:forEach items="${requestScope.foods}" var="food">
                    {value:${food.sales}, name:'${food.name}'},

                    </c:forEach>

                    // 数据数组，name 为数据项名称，value 为数据项值
                ],
                itemStyle: {
                    emphasis: {
                        shadowBlur: 10,
                        shadowOffsetX: 0,
                        shadowColor: 'rgba(0, 0, 0, 0.5)'
                    },
                    normal: {
                        label: {
                            show: true,
                            formatter: '{b} : {c} ({d}%)'
                        },
                        labelLine: {show: true}
                    }
                }
            }

        ]
    })
</script>
<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例
    var myChart = echarts.init(document.getElementById('main'));
    var axisLabel1 = {
        // 方法1：倾斜显示
        interval: 0, //强制全部显示，1表示隔一个；2隔两个
        rotate: "45", //文字倾斜的角度

    };
    var axisLabel2 = {
        // 方法2：换行显示
        interval: 0, //强制全部显示，1表示隔一个；2隔两个
        formatter: function(params) {
            var newParamsName = ""; // 最终拼接成的字符串
            var paramsNameNumber = params.length; // 实际标签的个数
            var provideNumber = 3; // 每行能显示的字的个数
            var rowNumber = Math.ceil(paramsNameNumber / provideNumber); // 换行的话，需要显示几行，向上取整
            /**
             * 判断标签的个数是否大于规定的个数， 如果大于，则进行换行处理 如果不大于，即等于或小于，就返回原标签
             */
            // 条件等同于rowNumber>1
            if (paramsNameNumber > provideNumber) {
                /** 循环每一行,p表示行 */
                for (var p = 0; p < rowNumber; p++) {
                    var tempStr = ""; // 表示每一次截取的字符串
                    var start = p * provideNumber; // 开始截取的位置
                    var end = start + provideNumber; // 结束截取的位置
                    // 此处特殊处理最后一行的索引值
                    if (p == rowNumber - 1) {
                        // 最后一次不换行
                        tempStr = params.substring(start, paramsNameNumber);
                    } else {
                        // 每一次拼接字符串并换行
                        tempStr = params.substring(start, end) + "\n";
                    }
                    newParamsName += tempStr; // 最终拼成的字符串
                }

            } else {
                // 将旧标签的值赋给新标签
                newParamsName = params;
            }
            //将最终的字符串返回
            return newParamsName;
        },
    };
    // 指定图表的配置项和数据
    var option = {
        title: {
            text: '库存统计表'
        },
        tooltip: {},
        legend: {
            data:['库存']
        },
        xAxis: {
            data: [ <c:forEach items="${requestScope.foods}" var="food">
                      "${food.name}",
                    </c:forEach>
                  ],
            axisPointer: {
                type: 'shadow'
            },
            axisLabel: axisLabel2,
        },
        yAxis: {},
        series: [{
            type: 'bar',
            data: [ <c:forEach items="${requestScope.foods}" var="food">
                "${food.stock}",
                </c:forEach>
            ],
            itemStyle: {
                normal: {
                    label: {
                        show: true,		//开启显示
                        position: 'top',	//在上方显示
                        textStyle: {	    //数值样式
                            color: 'black',
                            fontSize: 16
                        }
                    }
                }
            }
        }]

    };

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>
</body>
</html>
