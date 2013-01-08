
require 'test/unit'
require 'lib/sendwithus'

API_PROTO = 'http'
API_HOST = 'localhost'
API_PORT = '8000'
API_KEY = '68c9f6ccd3aa206362640c7fa9be236d4e0dd837'

class TestRubygemSendwithus < Test::Unit::TestCase

    def setup
    end

    def test_send
        options = {
            :api_host => API_HOST, 
            :api_port => API_PORT, 
            :api_proto => API_PROTO,
            :debug => true
        }

        api = SendWithUs::API.new(API_KEY, options)

        data = {'name' => 'Ruby test'}
        api.send('test_send', 'matt@sendwithus.com', data)

        return true
    end
end

