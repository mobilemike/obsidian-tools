require 'obsidian/tools/commands/cleanup'

RSpec.describe Obsidian::Tools::Commands::Cleanup do
  it "executes `cleanup` command successfully" do
    output = StringIO.new
    options = {}
    command = Obsidian::Tools::Commands::Cleanup.new(options)

    command.execute(output: output)

    expect(output.string).to eq("OK\n")
  end
end
