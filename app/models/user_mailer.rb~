class UserMailer < ActionMailer::Base
 def forgot_password(user)
    setup_email(user.email)
    @subject    += 'You have requested to change your password'
    @body[:user] = user
    @body[:url]  = "#{$SITE}/users/#{user.id}/reset_password?reset_code=#{user.password_reset_code}" 
  end
  
  protected
  def setup_email(recipient_email)
    @recipients  = recipient_email
    @from        = "testsmart@hiresmart.in"
    @subject     = "#{Site.institution_name} - "
    @sent_on     = Time.now
    @admin       = User.find_by_login('admin')
  end  

end
