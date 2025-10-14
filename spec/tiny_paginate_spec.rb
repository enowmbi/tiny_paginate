# frozen_string_literal: true

# require "rails_helper"

RSpec.describe TinyPaginate do
  context "version number" do
    it "is expected to have correct version number" do
      expect(TinyPaginate::VERSION).to eq("0.1.0")
    end

    it "is expected not to have wrong version number" do
      expect(TinyPaginate::VERSION).not_to eq("x.y.z")
    end
  end
end
