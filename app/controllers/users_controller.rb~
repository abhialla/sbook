class UsersController < ApplicationController

  # render new.rhtml
  def new
    @user = User.new
  end
 
  def create
    logout_keeping_session!
    @user = User.new(params[:user])
    success = @user && @user.save
    if success && @user.errors.empty?
            # Protects against session fixation attacks, causes request forgery
      # protection if visitor resubmits an earlier form using back
      # button. Uncomment if you understand the tradeoffs.
      # reset session
      self.current_user = @user # !! now logged in
      redirect_back_or_default('/')
      flash[:notice] = "Thanks for signing up!  We're sending you an email with your activation code."
    else
      flash[:error]  = "We couldn't set up that account, sorry.  Please try again, or contact an admin (link is above)."
      render :action => 'new'
    end
  end
def forgot_password
  	if request.post?
      @user = User.find_by_email(params[:user][:email])
      
      if @user
        @user.forgot_password
        UserMailer.deliver_forgot_password(@user) rescue nil
        @user.save
        flash[:notice] = "A password reset link has been sent to your email address" 
        redirect_back_or_default(login_path)
      else
        admin = User.find_by_login('admin')
        flash[:error] = "Could not find an active user with that email address. If you need help please contact us at #{admin.email}."
      end    
  	end
	end
    
	def reset_password
    if request.get?
      @user = User.find_by_password_reset_code(params[:reset_code])
      
      if @user.blank?
        render :file => "#{RAILS_ROOT}/public/404.html", :layout => false, :status => 404
        return
      end
    else # Post request
      @user = User.find_by_id(params[:id])
      @user.attributes = params[:user]
      @user.reset_password
       
      if @user.save
        @user.activate! if @user.new?        
        self.current_user = @user
        flash[:notice] = "Your password is reset successfully."
        redirect_to login_path
      else
        flash[:notice] = "Password reset failed."
      end
    end
  end

  def reset_password
    #update_attributes(:password_reset_code => nil)
    self.password_reset_code = nil
    @reset_password = true
  end
end
