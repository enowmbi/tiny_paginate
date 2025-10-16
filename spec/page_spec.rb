# frozen_string_literal: true

require "spec_helper"

RSpec.describe TinyPaginate::Page do
  it "is expected to return the correct page attributes" do
    records = FactoryBot.build_list(:recording, 110)
    page = TinyPaginate::Page.new(page_number: 1, collection: records)

    expect(page.page_number).to eq 1
    expect(page.collection).to eq records
  end

  it "is expected to return correct number of records" do
    Recording.destroy_all
    FactoryBot.create_list(:recording, 110)

    records = Recording.all
    first_page = TinyPaginate::Page.new(page_number: 1, collection: records)
    last_page = TinyPaginate::Page.new(page_number: 4, collection: records)

    expect(first_page.records).to eq(records.first(30))
    expect(last_page.records).to eq(records.last(20))

    Recording.destroy_all
  end

  it "is expected to be the first page" do
    Recording.destroy_all
    FactoryBot.create_list(:recording, 110)

    records = Recording.all
    first_page = TinyPaginate::Page.new(page_number: 1, collection: records)
    last_page = TinyPaginate::Page.new(page_number: 4, collection: records)

    expect(first_page.first_page?).to be true
    expect(last_page.first_page?).to be false

    Recording.destroy_all
  end

  it "is expected to be the last page" do
    Recording.destroy_all
    FactoryBot.create_list(:recording, 110)

    records = Recording.all
    first_page = TinyPaginate::Page.new(page_number: 1, collection: records)
    last_page = TinyPaginate::Page.new(page_number: 4, collection: records)

    expect(first_page.last_page?).to be false
    expect(last_page.last_page?).to be true

    Recording.destroy_all
  end

  it "is expected to have a previous_page" do
    Recording.destroy_all
    FactoryBot.create_list(:recording, 110)

    records = Recording.all
    first_page = TinyPaginate::Page.new(page_number: 1, collection: records)
    last_page = TinyPaginate::Page.new(page_number: 4, collection: records)

    expect(first_page.previous_page).to eql nil
    expect(last_page.previous_page).to eql 3

    Recording.destroy_all
  end

  it "is expected to have a next_page" do
    Recording.destroy_all
    FactoryBot.create_list(:recording, 110)

    records = Recording.all
    first_page = TinyPaginate::Page.new(page_number: 1, collection: records)
    last_page = TinyPaginate::Page.new(page_number: 4, collection: records)

    expect(first_page.next_page).to eql(2)
    expect(last_page.next_page).to eql nil

    Recording.destroy_all
  end
end
