package com.action;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TStuDAO;
import com.model.TStu;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 学生信息
 * @author Administrator
 *
 */
public class stuAction extends ActionSupport
{
	private int stuId;//编号
	private String stuXuehao;//学号
	private String stuRealname;//真实姓名
	private String stuSex;//性别
	private String stuAge;//年龄
	private String stuBanji;//所在班级
	private String loginName;//登陆名
	private String loginPw;//密码
	 
	private String message;
	private String path;
	private TStuDAO stuDAO;
	
	
	
	//学生注册
	public String stuReg()
	{
		TStu stu=new TStu();
		stu.setStuXuehao(stuXuehao);
		stu.setStuRealname(stuRealname);
		stu.setStuSex(stuSex);
		stu.setStuAge(stuAge);
		stu.setStuBanji(stuBanji);
		stu.setLoginName(loginName);
		stu.setLoginPw(loginPw);
		stu.setDel("no");
		stuDAO.save(stu);
		return "successAdd";
	}
	
	
	//学生信息列表
	public String stuMana()
	{
		List stuList=stuDAO.getHibernateTemplate().find("from TStu where del='no'");
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("stuList", stuList);
		return ActionSupport.SUCCESS;
	}
	
	public String stuSearch()
	{
		String sql="from TStu where del='no' and stuXuehao like '%"+stuXuehao.trim()+"%'";
		List stuList=stuDAO.getHibernateTemplate().find(sql);
		Map request=(Map)ServletActionContext.getContext().get("request");
		request.put("stuList", stuList);
		return ActionSupport.SUCCESS;
	}
	
	
	//学生信息删除
	public String stuDel()
	{
		TStu stu=stuDAO.findById(stuId);
		stu.setDel("yes");
		stuDAO.attachDirty(stu);
		this.setMessage("删除成功");
		this.setPath("stuManage.action");
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



	public String getStuAge()
	{
		return stuAge;
	}



	public void setStuAge(String stuAge)
	{
		this.stuAge = stuAge;
	}



	public String getStuBanji()
	{
		return stuBanji;
	}



	public void setStuBanji(String stuBanji)
	{
		this.stuBanji = stuBanji;
	}



	public TStuDAO getStuDAO()
	{
		return stuDAO;
	}



	public void setStuDAO(TStuDAO stuDAO)
	{
		this.stuDAO = stuDAO;
	}



	public int getStuId()
	{
		return stuId;
	}



	public void setStuId(int stuId)
	{
		this.stuId = stuId;
	}



	public String getStuRealname()
	{
		return stuRealname;
	}



	public void setStuRealname(String stuRealname)
	{
		this.stuRealname = stuRealname;
	}



	public String getStuSex()
	{
		return stuSex;
	}



	public void setStuSex(String stuSex)
	{
		this.stuSex = stuSex;
	}



	public String getStuXuehao()
	{
		return stuXuehao;
	}



	public void setStuXuehao(String stuXuehao)
	{
		this.stuXuehao = stuXuehao;
	}
	
}
