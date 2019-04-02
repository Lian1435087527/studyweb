package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TTeaDAO;
import com.model.TTea;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 教师类管理
 * @author Administrator
 *
 */
public class teaAction extends ActionSupport
{
	private int teaId;//教师id
	private String teaBianhao;//教师编号
	private String teaRealname;//教师姓名
	private String teaSex;//教师性别
	private String teaAge;//教师年龄
	private String loginName;//登录名
	private String loginPw;//教师登陆密码
	
	private String message;
	private String path;
	private TTeaDAO teaDAO;
	
	//教师信息注册添加
	public String teaReg()
	
	{
		TTea tea=new TTea();
		tea.setTeaBianhao(teaBianhao);
		tea.setTeaRealname(teaRealname);
		tea.setTeaSex(teaSex);
		tea.setTeaAge(teaAge);
		tea.setLoginName(loginName);
		tea.setLoginPw(loginPw);
		tea.setDel("no");
		teaDAO.save(tea);
		return "successAdd";
	}
	//教师信息列表查询
	public String teaMana()
	{
		String sql="from TTea where del='no'";
		List teaList=teaDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("teaList", teaList);
		return ActionSupport.SUCCESS;
	}
	
	
	public String teaSearch()
	{
		String sql="from TTea where del='no' and teaRealname like '%"+teaRealname.trim()+"%'";
		List teaList=teaDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("teaList", teaList);
		return ActionSupport.SUCCESS;
	}
	//教师删除
	public String teaDel()
	{
		TTea tea=teaDAO.findById(teaId);
		tea.setDel("yes");
		teaDAO.attachDirty(tea);
		this.setMessage("操作成功");
		this.setPath("teacherManage.action");
		return "succeed";
	}
	
	
	
	public String getLoginName()
	{
		return loginName;
	}
	public void setLoginName(String loginName)
	{
		this.loginName = loginName;
	}
	public String getLoginPw()
	{
		return loginPw;
	}
	public void setLoginPw(String loginPw)
	{
		this.loginPw = loginPw;
	}
	public String getMessage()
	{
		return message;
	}
	public void setMessage(String message)
	{
		this.message = message;
	}
	public String getPath()
	{
		return path;
	}
	public void setPath(String path)
	{
		this.path = path;
	}
	public String getTeaAge()
	{
		return teaAge;
	}
	public void setTeaAge(String teaAge)
	{
		this.teaAge = teaAge;
	}
	public TTeaDAO getTeaDAO()
	{
		return teaDAO;
	}
	public void setTeaDAO(TTeaDAO teaDAO)
	{
		this.teaDAO = teaDAO;
	}
	public int getTeaId()
	{
		return teaId;
	}
	public void setTeaId(int teaId)
	{
		this.teaId = teaId;
	}
	public String getTeaRealname()
	{
		return teaRealname;
	}
	public void setTeaRealname(String teaRealname)
	{
		this.teaRealname = teaRealname;
	}
	public String getTeaSex()
	{
		return teaSex;
	}
	public void setTeaSex(String teaSex)
	{
		this.teaSex = teaSex;
	}

	public String getTeaBianhao()
	{
		return teaBianhao;
	}

	public void setTeaBianhao(String teaBianhao)
	{
		this.teaBianhao = teaBianhao;
	}
	
}
