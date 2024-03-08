module Foobara
  module Generators
    module ResqueSchedulerConnectorGenerator
      module Generators
        class ResqueSchedulerConnectorGenerator < Foobara::FilesGenerator
          class << self
            def manifest_to_generator_classes(manifest)
              case manifest
              when ResqueSchedulerConnectorConfig
                [
                  Generators::GemfileGenerator
                ]
              else
                # :nocov:
                raise "Not sure how build a generator for a #{manifest}"
                # :nocov:
              end
            end
          end

          alias resque_scheduler_connector_config relevant_manifest

          def templates_dir
            # :nocov:
            "#{__dir__}/../../templates"
            # :nocov:
          end

          # TODO: promote this up to base project
          def ==(other)
            # :nocov:
            self.class == other.class && resque_scheduler_connector_config == other.resque_scheduler_connector_config
            # :nocov:
          end

          def hash
            resque_scheduler_connector_config.hash
          end
        end
      end
    end
  end
end
