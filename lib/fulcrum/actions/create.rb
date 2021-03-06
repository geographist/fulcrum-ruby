module Fulcrum
  module Actions
    module Create
      extend ActiveSupport::Concern

      def create_action
        collection
      end

      def create(object)
        call(:post, create_action, attributes_for_object(object))[resource_name]
      end
    end
  end
end
