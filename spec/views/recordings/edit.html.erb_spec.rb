require 'rails_helper'

RSpec.describe "recordings/edit", type: :view do
  let(:recording) {
    Recording.create!()
  }

  before(:each) do
    assign(:recording, recording)
  end

  it "renders the edit recording form" do
    render

    assert_select "form[action=?][method=?]", recording_path(recording), "post" do
    end
  end
end
