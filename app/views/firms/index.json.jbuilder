json.array!(@firms) do |firm|
  json.extract! firm, :id, :firm_short_name, :firm_legal_name, :email, :website
  json.url firm_url(firm, format: :json)
end
