module Foobara
  module Generators
    module ResqueSchedulerConnectorGenerator
      module Generators
        class RakefileGenerator < ResqueSchedulerConnectorGenerator
          def applicable?
            gemspec_contents !~ /^\s*require\s*['"]resque\/scheduler\/tasks['"]/
          end

          def template_path
            "Rakefile"
          end

          def target_path
            template_path
          end

          def generate(_elements_to_generate)
            "#{
              gemspec_contents.chomp
            }\n\nrequire \"resque/scheduler/tasks\"\ntask \"resque:scheduler\" => :environment\n"
          end

          def gemspec_contents
            File.read(template_path)
          end
        end
      end
    end
  end
end
