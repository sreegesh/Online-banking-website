/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package com.market.struts.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

/** 
 * MyEclipse Struts
 * Creation date: 07-08-2009
 * 
 * XDoclet definition:
 * @struts.action
 * @struts.action-forward name="detail" path="/detail.jsp"
 */
public class DetailAction extends Action {
	/*
	 * Generated Methods
	 */

	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		  HttpSession session = request.getSession();
		ArrayList<goods> goodslist = (ArrayList)session.getAttribute("goodslist");		  
		ActionForward forward = null;    
			  String id=request.getParameter("id");
			  int idd= Integer.parseInt(id);

			  session.setAttribute("goodsdetail", goodslist.get(idd));
			 
			  
			  forward = mapping.findForward("detail");
		
		return forward;
	}
		
		
	
}