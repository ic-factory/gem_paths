RSpec.describe GemPaths do
  it "has a version number" do
    expect(GemPaths::VERSION).not_to be nil
  end

  it "can return GNU make formatted list" do
    #Poor mans verification for now ...
    expect(GemPaths::List.to_make).to all(match /\s:=\s/)
    expect(GemPaths::List.to_make.length).to be > 1
  end

  it "can return YAML formatted list" do
    #Poor mans verification for now ...
    expect(GemPaths::List.to_yaml).to start_with("---\ngem:\n  path:\n    ")
  end

  it "can return JSON formatted list" do
    #Poor mans verification for now ...
    expect(GemPaths::List.to_json).to start_with("[\n  [\n    \"")
  end

end
