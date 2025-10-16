module TinyPaginate
  class ControllerExtension
    private
    def set_page_and_extract_portion_from(collection)
      @page = TinyPaginate::Page.new(page_number: page_number_param, collection: collection)
    end

    def page_number_param
      params[:page_number].to_i  >= 0 ? params[:page_number]  :  1
    end
  end
end
