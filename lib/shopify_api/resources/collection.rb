# frozen_string_literal: true

module ShopifyAPI
  class Collection < Base
    include Events
    include Metafields

    def products(options = {})
      Product.find(:all, from: "/admin/collections/#{id}/products.json", params: options)
    end
  end
end