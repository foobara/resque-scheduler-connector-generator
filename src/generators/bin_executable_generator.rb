module Foobara
  module Generators
    module ResqueConnectorGenerator
      module Generators
        class BinExecutableGenerator < ResqueConnectorGenerator
          def template_path
            ["bin", "cli.erb"]
          end

          def target_path
            ["bin", name]
          end
        end
      end
    end
  end
end
