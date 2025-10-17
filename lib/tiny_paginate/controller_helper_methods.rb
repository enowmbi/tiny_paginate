module TinyPaginate
  module ControllerHelperMethods
    private
    def set_page_and_extract_portion_from(collection:)
      @page = TinyPaginate::Page.new(page_number: page_number_param, collection: collection)
      @page.records
    end

    def page_number_param
      params[:page].to_i  > 0 ? params[:page].to_i  :  1
    end
  end
end
