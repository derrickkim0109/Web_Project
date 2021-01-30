package login;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.jsplec.command.command;
import com.mysql.cj.Session;

import DAO.loginDAO;
import DTO.loginDTO;

public class LoginActionCommand implements command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		// TODO Auto-generated method stub

	
		String mId = request.getParameter("mId");
		
	}
}