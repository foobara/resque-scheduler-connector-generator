RSpec.describe Foobara::Generators::ResqueSchedulerConnectorGenerator::GenerateResqueSchedulerConnector do
  let(:inputs) do
    {}
  end
  let(:command) { described_class.new(inputs) }
  let(:outcome) { command.run }
  let(:result) { outcome.result }

  it "generates a resque_scheduler_connector" do
    expect(outcome).to be_success

    expect(result.keys).to contain_exactly("boot/resque_scheduler.rb", "Procfile", "Gemfile")
  end
end
