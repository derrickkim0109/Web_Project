package com.jsplec.command;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;

public interface command {

	
	public void execute(HttpServletRequest request, HttpServletResponse response, HttpSession session)throws ServletException, IOException; 
	
	
	
	
}

