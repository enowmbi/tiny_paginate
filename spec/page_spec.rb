# frozen_string_literal: true

require "spec_helper"

RSpec.describe TinyPaginate::Page do
  it "is expected to return the correct page attributes" do
    records = 110.times { FactoryBot.build_list(:recording, 110) }
    debugger
    page = TinyPaginate::Page.new(page_number: 1, collection: records)

    expect(page.page_number).to eq 1
    expect(page.collection).to eq records
  end

  # it "is expected to return correct number of records" do
  #   expect(TinyPaginate::Page.new(1, Recording.all)).to eq(Recording.first(30))
  #   expect(TinyPaginate::Page.new(4, Recording.all)).to eq(Recording.last(20))
  # end

  # it "is expected to return first_page when page_number equal 1" do
  #   expect(Page.new(1, Recording.all).first?).to be_true
  #   expect(Page.new(2, Recording.all).first?).to be_false
  # end

  # it "is expected to return next_page" do
  #   expect(Paginate::Page.new(1, Recording.all).next_page_number).to eq(2)
  # end
end
