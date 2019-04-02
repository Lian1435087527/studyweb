<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
     <script type="text/javascript">
            function fabuzuoye()
	        {
	            <s:if test="#session.userType==null">
	                  alert("请先登录");
	                  return false;
	            </s:if>
	            <s:if test="#session.userType==1">
	                 var url="<%=path %>/zuoyeMana.action";
	                 window.location.href=url;
	            </s:if>
	            <s:if test="#session.userType==2">
	                  alert("你是学生用户不能发布作业");
	                  return false;
	            </s:if>
	        }
	        
	        function fabujiaoan()
	        {
	            <s:if test="#session.userType==null">
	                  alert("请先登录");
	                  return false;
	            </s:if>
	            <s:if test="#session.userType==1">
	                 var url="<%=path %>/docMana.action";
	                 window.location.href=url;
	            </s:if>
	            <s:if test="#session.userType==2">
	                  alert("你是学生用户不能发布教案");
	                  return false;
	            </s:if>
	        }
	        
	        function xiazaizuoye()
	        {
	            <s:if test="#session.userType==null">
	                  alert("请先登录");
	                  return false;
	            </s:if>
	            <s:if test="#session.userType==1">
	                 var url="<%=path %>/zuoyeAll.action";
	                 window.location.href=url;
	            </s:if>
	            <s:if test="#session.userType==2">
	                 var url="<%=path %>/zuoyeAll.action";
	                 window.location.href=url;
	            </s:if>
	        }
	        
	        function xiazaijiaoan()
	        {
	            <s:if test="#session.userType==null">
	                  alert("请先登录");
	                  return false;
	            </s:if>
	            <s:if test="#session.userType==1">
	                 var url="<%=path %>/docAll.action";
	                 window.location.href=url;
	            </s:if>
	            <s:if test="#session.userType==2">
	                 var url="<%=path %>/docAll.action";
	                 window.location.href=url;
	            </s:if>
	        }
	        
	        function liuyanAll()
	        {
	            <s:if test="#session.userType==null">
	                  alert("请先登录");
	            </s:if>
	            
	            <s:else>
	                 var url="<%=path %>/liuyanAll.action";
				     window.open(url,"_blank");
	            </s:else>
	        }
     </script>
  </head>
  
  <body>
        <center><img src="<%=path %>/img/banner.jpg" width="966"></center>
		<div class="topmenu cbody1">
			<ul>
				<li class="thisclass">
					<A href="<%=path %>/qiantai/default.jsp">网站首页</A>
				</li>
				<li class="thisclass">
					<A href="#" onclick="fabuzuoye()">发布作业</A>
				</li>
				<li class="thisclass">
					<A href="#" onclick="fabujiaoan()">发布教案</A>
				</li>
				<li class="thisclass">
					<A href="#" onclick="xiazaizuoye()">下载作业</A>
				</li>
				<li class="thisclass">
					<A href="#" onclick="xiazaijiaoan()">下载教案</A>
				</li>
				<li class="thisclass">
					<A href="#" onclick="liuyanAll()">师生交流</A>
				</li>
				<li class="thisclass">
					<a target="_blank" href="<%=path %>/login.jsp">管理登录</a>
				</li>
			</ul>
		</div>
		<%--
		<form id="searchForm" action="<%=path %>/.action" method="post">
			<div class="topsearch">
				<div id="page_search_right">
					<script>
						<!--var day="";
						var month="";
						var ampm="";
						var ampmhour="";
						var myweekday="";
						var year="";
						mydate=new Date();
						myweekday=mydate.getDay();
						mymonth=mydate.getMonth()+1;
						myday= mydate.getDate();
						year= mydate.getFullYear();
						if(myweekday == 0)
						weekday=" 星期日 ";
						else if(myweekday == 1)
						weekday=" 星期一 ";
						else if(myweekday == 2)
						weekday=" 星期二 ";
						else if(myweekday == 3)
						weekday=" 星期三 ";
						else if(myweekday == 4)
						weekday=" 星期四 ";
						else if(myweekday == 5)
						weekday=" 星期五 ";
						else if(myweekday == 6)
						weekday=" 星期六 ";
						//document.write(year+"年"+mymonth+"月"+myday+"日 "+weekday);
						//document.write(weekday);
						//-->
					</script>
				</div>
				<div style="clear: both"></div>
			</div>
		</form>
		 --%>
  </body>
</html>
