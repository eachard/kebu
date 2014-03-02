json.array!(@shippings) do |shipping|
  json.extract! shipping, :id, :fullname, :phone_number, :address, :zipcode, :compagnie, :extra_informations, :city
  json.url shipping_url(shipping, format: :json)
end
