package com.action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.dao.TDocDAO;
import com.dao.TGonggaoDAO;
import com.dao.TPicNewsDAO;
import com.opensymphony.xwork2.ActionSupport;
/*
 * ��ҳ��Ϣ��ʾ��ѯ
 */
public class indexAction extends ActionSupport
{
	private TPicNewsDAO picNewsDAO;
	private TDocDAO docDAO;
	
	
	public String index()
	{
		Map request=(Map)ServletActionContext.getContext().get("request");
		
		//ͼƬ������Ϣ�б��ѯ
		List picNewsList=picNewsDAO.findAll();
		if(picNewsList.size()>4)
		{
			picNewsList=picNewsList.subList(0, 4);
		}
		request.put("picNewsList", picNewsList);
		
		//������ҵ��Ϣ��ѯ
		String sql="from TDoc where del='no' and type='jiaocheng'";
		List docList=docDAO.getHibernateTemplate().find(sql);
		request.put("docList", docList);
		
		
		
		
		sql="from TDoc where del='no' and type='zuoye'";
		List zuoyeList=docDAO.getHibernateTemplate().find(sql);
		request.put("zuoyeList", zuoyeList);
		return ActionSupport.SUCCESS;
	}


	public TPicNewsDAO getPicNewsDAO()
	{
		return picNewsDAO;
	}

	public void setPicNewsDAO(TPicNewsDAO picNewsDAO)
	{
		this.picNewsDAO = picNewsDAO;
	}


	public TDocDAO getDocDAO()
	{
		return docDAO;
	}


	public void setDocDAO(TDocDAO docDAO)
	{
		this.docDAO = docDAO;
	}
	
}
