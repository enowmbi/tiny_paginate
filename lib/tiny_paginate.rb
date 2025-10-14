require "tiny_paginate/version"
require "tiny_paginate/railtie"
require "tiny_paginate/controller"
require "tiny_paginate/page"

module TinyPaginate
  mattr_accessor :max_records_per_page, default: 30
end
