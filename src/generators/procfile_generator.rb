module Foobara
  module Generators
    module ResqueSchedulerConnectorGenerator
      module Generators
        class ProcfileGenerator < ResqueSchedulerConnectorGenerator
          LINE = "scheduler: bundle exec rake resque:scheduler".freeze

          def applicable?
            !procfile_contents.include?(LINE)
          end

          def template_path
            "Procfile"
          end

          def target_path
            template_path
          end

          def generate(_elements_to_generate)
            contents = procfile_contents

            if contents.empty?
              "#{LINE}\n"
            else
              "#{contents}\n#{LINE}\n"
            end
          end

          def procfile_contents
            if File.exist?(template_path)
              File.read(template_path)
            else
              ""
            end
          end
        end
      end
    end
  end
end
