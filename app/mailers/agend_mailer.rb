class AgendMailer < ApplicationMailer
  def destroy_mail(agenda)
    @agenda = agenda
    mail to: agenda.team.members.map(&:email).join(","), subject: "アジェンダ削除通知メール"
  end
  
end
