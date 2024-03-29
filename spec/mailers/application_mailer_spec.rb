require 'rails_helper'

describe ApplicationMailer do
  it 'sets the correct subject' do
    subject = 'Test email subject'
    mail = described_class.email('test@example.com',
                                 subject, 'Test email body')

    expect(mail.subject).to eq(subject)
  end

  it 'includes content in the body of the email' do
    body = 'Test email body'
    mail = described_class.email('test@example.com',
                                 'Test email subject', body)

    expect(mail.body).to eq(body)
  end

  it 'sends from no-reply@headway_rails_template.com' do
    mail = described_class.email('test@example.com',
                                 'Test email subject', 'Test email body')

    expect(mail.from).to include('no-reply@headway_rails_template.com')
  end
end
