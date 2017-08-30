class WarrantyMail < MailForm::Base
  attribute :first_name, validate: true
  attribute :last_name, validate: true
  attribute :street_address, validate: true
  attribute :street_address_2, validate: false
  attribute :city, validate: true
  attribute :state, validate: true
  attribute :postal_code, validate: true
  attribute :country, validate: true
  attribute :phone, validate: true
  attribute :email, validate: true
  attribute :model, validate: true
  attribute :other, validate: false
  attribute :serial, validate: true
  attribute :date_purchased, validate: true
  attribute :dealership, validate: false
  
  def headers
    {
      subject: "User Warranty",
      to: "luiz@ecosmarte.com",
      from: %("#{first_name} #{last_name}" <"#{email}">)
    }
  end
  
end
