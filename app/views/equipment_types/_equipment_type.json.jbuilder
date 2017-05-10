json.extract! equipment_type, :id, :type_of_equipment, :producer_id, :created_at, :updated_at, :e_price, :ver_price, :expiration_date, :laboratory_id, :verification_id
json.url equipment_type_url(equipment_type, format: :json)
