require 'test_helper'

class SensSmsTest < Minitest::Test
  def test_success_send_sms
    SensSms::Client.configure(access_key: ENV['access_key'],
                              secret_key: ENV['secret_key'],
                              service_id: ENV['service_id'])
    sens_sms = SensSms::Client.new
    assert(sens_sms.deliver(type: :sms,
                            from_number: ENV['from_number'],
                            to_numbers: ENV['to_number'],
                            message: '키스의 고유 조건은 입술끼리 만나야 하고 특별한 기술은 필요치 않다.'))
  end
end
