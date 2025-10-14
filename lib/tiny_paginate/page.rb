module TinyPaginate
  class Page
    attr_accessor :page_number, :collection

    def initialize(page_number:, collection:)
      @page_number = page_number
      @collection = collection
    end

    def recordings
      collection.offset(offset).limit(TinyPaginate.max_records_per_page)
    end

    def next_page
      page_number + 1 unless last_page?
    end

    def previous_page
      page_number - 1 unless first_page?
    end

    def first_page?
      page_number == 1
    end

    def last_page?
      page_number >= (collection.length.to_f / TinyPaginate.max_records_per_page).ceil
    end

    private

    def offset
      TinyPaginate.max_records_per_page * (page_number - 1)
    end
  end
end
