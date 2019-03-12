RSpec.describe GemPaths do
  it "has a version number" do
    expect(GemPaths::VERSION).not_to be nil
  end

  # it "can return an array" do
  #   expect(GemPaths::List.gem_name_path_map).to be_an_instance_of(Array)
  #   expect(GemPaths::List.gem_name_path_map.length).to be > 1
  # end

  it "can return GNU make formatted list" do
    expect(GemPaths::List.to_make).to all(match /\s:=\s/)
    expect(GemPaths::List.to_make.length).to be > 1
  end

end
