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
 * @struts.action validate="true"
 */
public class DeleteAction extends Action {
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
		String id=request.getParameter("id");
		
		ActionForward forward = null; 
		ArrayList<goods> goods = (ArrayList)session.getAttribute("goodslist");
		ArrayList<goods> shopcar = (ArrayList)session.getAttribute("shopcar");
		goods p=null;
		for (int i=0;i<goods.size();i++){
	    	 p= (goods)goods.get(i);
	    	   if ((p.getDataid()).equals(id)){
	    	       break;
	    	      }
	    	   }
		int amount=p.getBuyamount();
		if (amount>0)
		{
			amount--;
            p.setBuyamount(amount);
		}
		else{
		forward = mapping.findForward("delerror");
		return forward;	}	
		
		for (int j=0;j<shopcar.size();j++)
			     {
			       goods shopgoods= (goods)shopcar.get(j);
			    	  if ((shopgoods.getDataid()).equals(id))
			    	       {   
			    	        if (amount==0)
			    	           shopcar.remove(j);
			    	        	
			    	        else
			    	          shopcar.set(j, p);
			    	             break;
			    	         }
			    	            
			      }
		            
		        
		          
		          
		 
         
     
		
		 session.setAttribute("shopcar",shopcar);
		 forward = mapping.findForward("car");
		return forward;
   }
}