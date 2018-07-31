require 'stemmify/porter'

module Stemmify
  module StringExt
    def stem_porter
      Porter.stem(self)
    end

    # make the stem_porter the default stem method, just in case we
    # feel like having multiple stemmers available later.
    alias stem stem_porter
  end
end

# add the stem method to all Strings
class String
  include Stemmify::StringExt
end
