require "spec_helper"
require '/home/ubuntu/workspace/p7/Dieta/lib/dieta'
require '/home/ubuntu/workspace/p7/Dieta/lib/LList'
describe Dieta do
  it "has a version number" do
    expect(Dieta::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
