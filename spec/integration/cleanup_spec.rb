RSpec.describe "`obsidian-tools cleanup` command", type: :cli do
  it "executes `obsidian-tools help cleanup` command successfully" do
    output = `obsidian-tools help cleanup`
    expected_output = <<-OUT
Usage:
  obsidian-tools cleanup

Options:
  -h, [--help], [--no-help]  # Display usage information

Command description...
    OUT

    expect(output).to eq(expected_output)
  end
end
