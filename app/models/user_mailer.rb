class UserMailer < ActionMailer::Base
  def signup_notification(user)
    setup_email(user)
    @subject    += 'Please activate your new account'
  
    @body[:url]  = "#{BASE_URL}/activate/#{user.activation_code}"
  
  end
  
  def activation(user)
    setup_email(user)
    @subject    += 'Your account has been activated!'
    @body[:url]  = BASE_URL
  end

  def reset_notification(user)
    setup_email(user)
    @subject    += 'Link to reset your password'
    @body[:user]  = user
  end

  
  protected
    def setup_email(user)
      @recipients  = "#{user.email}"
      @from        = ADMINEMAIL
      @subject     = APPNAME
      @sent_on     = Time.now
      @body[:user] = user
    end
end
