RSpec.describe Foobara::Generators::ResqueSchedulerConnectorGenerator::GenerateResqueSchedulerConnector do
  let(:inputs) do
    {}
  end
  let(:command) { described_class.new(inputs) }
  let(:outcome) { command.run }
  let(:result) { outcome.result }

  around do |example|
    project_fixture_dir = "#{__dir__}/../../fixtures/test-project"

    Dir.chdir project_fixture_dir do
      example.run
    end
  end

  it "generates a resque_scheduler_connector" do
    expect(outcome).to be_success

    expect(result.keys).to contain_exactly(
      "boot/cron.rb",
      "Procfile",
      "Gemfile",
      "test-org-test-domain.gemspec"
    )
  end
end
