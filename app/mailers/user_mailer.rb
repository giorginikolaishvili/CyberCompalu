class UserMailer < ActionMailer::Base
  def send_user_info
    user_mails = User.where(id: 1).pluck(:email)
    user_mails.each do |e_mail|
      ActionMailer::Base.mail(from: 'gigi.nikolaishvili.upwork@gmail.com',to: e_mail,
                              subject: 'Invitation_to_vacancy', body: 'some text').deliver_now
    end
  end
end
