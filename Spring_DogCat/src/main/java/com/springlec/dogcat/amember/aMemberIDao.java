package com.springlec.dogcat.amember;

import java.util.ArrayList;




public interface aMemberIDao {

	//Method 
	
	//회원검색  
	public ArrayList<aMemberDto> listQuery(String query, String content);
	//회원탈퇴 -> 업데이트 날짜 
	public void deleteMember(String mNo);
	//페이징 
	public int noticeViewRowCount();
}






