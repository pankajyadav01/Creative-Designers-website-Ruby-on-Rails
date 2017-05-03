json.extract! product, :id, :type, :title, :img_url, :down_url, :description, :price, :uploaded_by, :tutorial_url, :created_at, :updated_at
json.url product_url(product, format: :json)
