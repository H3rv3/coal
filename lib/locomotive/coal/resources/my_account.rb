module Locomotive::Coal
  module Resources

    class MyAccount < Struct.new(:uri, :token)

      include Locomotive::Coal::Request

      def get
        Resource.new(super('my_account'))
      end

      def create(attributes = {})
        data = post('my_account', account: attributes)
        Resource.new(data)
      end

      def update(attributes = {})
        data = put('my_account', account: attributes)
        Resource.new(data)
      end

    end

  end
end
