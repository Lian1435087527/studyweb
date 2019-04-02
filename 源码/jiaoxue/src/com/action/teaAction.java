package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TTeaDAO;
import com.model.TTea;
import com.opensymphony.xwork2.ActionSupport;

/**
 * ��ʦ�����
 * @author Administrator
 *
 */
public class teaAction extends ActionSupport
{
	private int teaId;//��ʦid
	private String teaBianhao;//��ʦ���
	private String teaRealname;//��ʦ����
	private String teaSex;//��ʦ�Ա�
	private String teaAge;//��ʦ����
	private String loginName;//��¼��
	private String loginPw;//��ʦ��½����
	
	private String message;
	private String path;
	private TTeaDAO teaDAO;
	
	//��ʦ��Ϣע�����
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
	//��ʦ��Ϣ�б��ѯ
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
	//��ʦɾ��
	public String teaDel()
	{
		TTea tea=teaDAO.findById(teaId);
		tea.setDel("yes");
		teaDAO.attachDirty(tea);
		this.setMessage("�����ɹ�");
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
