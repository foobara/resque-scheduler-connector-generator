require "English"

module Foobara
  module Generators
    module ResqueConnectorGenerator
      class ResqueConnectorConfig < Foobara::Model
        attributes do
          name :string, :required
        end
      end
    end
  end
end
