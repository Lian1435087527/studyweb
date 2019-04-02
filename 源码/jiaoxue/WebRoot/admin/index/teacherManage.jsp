<%@ page language="java" pageEncoding="UTF-8"%>
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

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		
        <script language="javascript">
           function teacherDel(teaId)
           {
               if(confirm('您确定删除吗？'))
               {
                   window.location.href="<%=path %>/teaDel.action?teaId="+teaId;
               }
           }
       </script>
	</head>
	<body leftmargin="2" topmargin="2" background='<%=path %>/images/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="6" background="<%=path %>/images/tbg.gif">&nbsp;教师维护&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="10%">ID</td>
					<td width="15%">教师编号</td>
					<td width="20%">教师名</td>
					<td width="15%">年龄</td>
					<td width="20%">性别</td>
					<td width="20%">操作</td>
		        </tr>	
				<s:iterator value="#request.teaList" id="teacher">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#teacher.teaId"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#teacher.teaBianhao"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<s:property value="#teacher.teaRealname"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#teacher.teaAge"/>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <s:property value="#teacher.teaSex"/>
					</td>					
					<td bgcolor="#FFFFFF" align="center">
						<a href="#" onclick="teacherDel(<s:property value="#teacher.teaId"/>)" class="pn-loperator">删除</a>
					</td>
				</tr>
				</s:iterator>
			</table>
			
	</body>
</html>
