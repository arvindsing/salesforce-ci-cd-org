/**
 * An apex page controller that exposes the site forgot password functionality
 */
public with sharing class ForgotPasswordController {
    public String username {get; set;}   
       
    public ForgotPasswordController() {}
	
  	public PageReference forgotPassword() {
  		boolean success = Site.forgotPassword(username);
  		PageReference pr2 = Page.ForgotPasswordConfirm;
  		pr2.setRedirect(true);
  		
  		if (success) {  			
  			return pr2;
  		}
  		return null;
  	}
}
