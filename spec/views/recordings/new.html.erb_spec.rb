require 'rails_helper'

RSpec.describe "recordings/new", type: :view do
  before(:each) do
    assign(:recording, Recording.new())
  end

  it "renders new recording form" do
    render

    assert_select "form[action=?][method=?]", recordings_path, "post" do
    end
  end
end
