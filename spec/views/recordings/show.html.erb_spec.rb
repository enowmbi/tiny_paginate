require 'rails_helper'

RSpec.describe "recordings/show", type: :view do
  before(:each) do
    assign(:recording, Recording.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
