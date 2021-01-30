package com.springlec.dogcat.amember;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.springlec.dogcat.HomeController;

@Controller
public class aMemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	//sql
	@Autowired
	private SqlSession sqlSession;
	
	
	//admin 메인 
	@RequestMapping("adminMain")
	public String adminMain (HttpServletRequest request, Model model) {
		
		return "admin/adminMember/admin" ;
	}
	
	//admin 회원 정보 
	@RequestMapping("amember")
	public String amember (HttpServletRequest request, Model model) {
		aMemberIDao dao = sqlSession.getMapper(aMemberIDao.class);
		
		
		// 유저정보 페이징
		int RowCount = dao.noticeViewRowCount();
		int totalPage=(RowCount/10);
		if(RowCount%10!=0) {
			totalPage++;
		}

		int beginNum=0;
		int endNum=9;
		
		model.addAttribute("beginNum",beginNum);
		model.addAttribute("endNum",endNum);
		model.addAttribute("totalPage",totalPage);
		model.addAttribute("mList",dao.listQuery(request.getParameter("query"), request.getParameter("content")));
		
		return "admin/adminMember/amember" ;
	}
	//회원탈퇴 
	@RequestMapping("amember_del")
	public String amember_del (HttpServletRequest request, Model model) {
		aMemberIDao dao = sqlSession.getMapper(aMemberIDao.class);
		
		dao.deleteMember(request.getParameter("mNo"));
		
		return "amember" ;
	}
	
}
