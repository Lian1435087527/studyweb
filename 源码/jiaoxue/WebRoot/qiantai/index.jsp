<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%
	String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
		
		<link href="<%=path %>/css/layout.css" type="text/css" rel="stylesheet" />
		
		<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
	    <script type="text/javascript">
	         function down1(fujianPath,fujianYuashiMing)
           {
               var url="<%=path %>/updown/updown.jsp?fujianPath="+fujianPath+"&fujianYuashiMing="+fujianYuashiMing;
		       url=encodeURI(url); 
               url=encodeURI(url); 
               window.open(url,"_self");
           }
	    </script>
	</head>

	<body>
		<jsp:include flush="true" page="/qiantai/inc/incTop.jsp"></jsp:include>
		<div class="page_row">
			<div class="page_main_msg left">
			    <div class="left_row">
					<div class="list pic_news">
						<div class="list_bar">
							网站新闻
						</div>
						<div id="tw" class="list_content">
							<div style="width:100%;overflow:hidden;white-space:nowrap;">
								<table width="100%" align="left" cellpadding="0" cellspacing="0" border="0">
									<tr>
									    <s:iterator value="#request.picNewsList" id="picNews">
										<td>
											<table width="100%" cellpadding="0" cellspacing="0" border="0">
												<tr>
													<td sytle="height:28px;">
														<dl style="width:100%;height:130px;padding-right:10px;">
															<dd style="margin-left:0;">
																<a href="<%=path %>/picNewsDetailQian.action?picNewsId=<s:property value="#picNews.picNewsId"/>"><img width="140" height="110" src="<%=path %>/<s:property value="#picNews.fujian"/>"/></a>
															</dd>
															<dt>
																<s:property value="#picNews.picNewsTitle"/>
															</dt>
														</dl>
													</td>
												</tr>
											</table>
										</td>
										</s:iterator>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="left_row">
					<div class="list pic_news">
						<div class="list_bar">
							最新作业
						</div>
						<div id="tw" class="list_content">
							<div style="width:100%;overflow:hidden;white-space:nowrap;">
								<table width="99%" border="0" cellpadding="2" cellspacing="1" bgcolor="#FFFFFF" align="center" style="margin-top:8px">
						              <tr align="center" bgcolor="#FAFAF1" height="22">
						                  <td>名称</td>
						                  <td>附件</td>
						                  <td>下载</td>
						              </tr>
									  <s:iterator value="#request.zuoyeList" id="zuoye">
									  <tr align='center' bgcolor="#FFFFFF" height="22">
										  <td><s:property value="#zuoye.mingcheng"/></td>
										  <td><s:property value="#zuoye.fujianYuanshiming"/></td>
										  <td><a href="#" onclick="down1('<s:property value="#zuoye.fujian"/>','<s:property value="#zuoye.fujianYuanshiming"/>')" style="font-size: 10px;color: red">down</a></td>
									  </tr>
									  </s:iterator>
		        			    </table>
							</div>
						</div>
					</div>
				</div>
				<div class="left_row">
					<div class="list pic_news">
						<div class="list_bar">
							最新教程
						</div>
						<div id="tw" class="list_content">
							<div style="width:100%;overflow:hidden;white-space:nowrap;">
								<table width="99%" border="0" cellpadding="2" cellspacing="1" bgcolor="#FFFFFF" align="center" style="margin-top:8px">
						              <tr align="center" bgcolor="#FAFAF1" height="22">
						                  <td>名称</td>
						                  <td>附件</td>
						                  <td>下载</td>
						              </tr>
									  <s:iterator value="#request.docList" id="doc">
									  <tr align='center' bgcolor="#FFFFFF" height="22">
										  <td><s:property value="#doc.mingcheng"/></td>
										  <td><s:property value="#doc.fujianYuanshiming"/></td>
										  <td><a href="#" onclick="down1('<s:property value="#doc.fujian"/>','<s:property value="#doc.fujianYuanshiming"/>')" style="font-size: 10px;color: red">down</a></td>
									  </tr>
									  </s:iterator>
		        			    </table>
							</div>
						</div>
					</div>
				</div>
			</div>
			
			<!-- 右边的用户登录。留言。投票 -->
			<div class="page_other_msg right">
				<div class="left_row">
					<div class="list">
						<div class="list_bar">用户登录</div>
						<div class="list_content">
							<div id="div">
								<jsp:include flush="true" page="/qiantai/userlogin/userlogin.jsp"></jsp:include>
							</div>
						</div>
					</div>
				</div>
				<div class="left_row">
				    <div class="list">
				        <div class="list_bar">网站公告</div>
				        <div class="list_content">
				            <div id="div"> 
								<s:action name="gonggaoQian5" executeResult="true" flush="true"></s:action>
					        </div>
					    </div>
				    </div>
				</div>
				<div class="left_row">
				    <div class="list">
				        <div class="list_bar">网站日历表</div>
				        <div class="list_content">
				            <jsp:include flush="true" page="/qiantai/rili/rili.jsp"></jsp:include>
					    </div>
				    </div>
			    </div>
			</div>
			<!-- 右边的用户登录。留言。投票 -->
		</div>
		
		<div class="foot">
		   <jsp:include flush="true" page="/qiantai/inc/incFoot.jsp"></jsp:include>
	    </div>
	</body>
</html>
