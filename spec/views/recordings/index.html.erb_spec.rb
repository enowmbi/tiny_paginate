require 'rails_helper'

RSpec.describe "recordings/index", type: :view do
  before(:each) do
    assign(:recordings, [
      Recording.create!(),
      Recording.create!()
    ])
  end

  it "renders a list of recordings" do
    render
    cell_selector = 'div>p'
  end
end
