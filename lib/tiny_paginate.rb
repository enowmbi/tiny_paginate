require "tiny_paginate/version"
require "tiny_paginate/railtie"
require "tiny_paginate/page"
require "tiny_paginate/controller_extension"

module TinyPaginate
  mattr_accessor :max_records_per_page, default: 30
end
