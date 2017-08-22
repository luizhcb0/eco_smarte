class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,      :validate => true
  attribute :website,      :validate => false
  attribute :subject,      :validate => true
  attribute :content,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  

  # Declare the e-mail headers. It accepts anything the mail method
  # in ActionMailer accepts.
  def headers
    {
      :subject => "Contact to Ecosmarte",
      :to => "luiz@ecosmarte.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
