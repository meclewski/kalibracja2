json.extract! equipment, :id, :calibration_number, :inventory_number, :serial_number, :calibration_date, :verification_result, :user_id, :admin_id, :brand_id, :place_id, :created_at, :updated_at
json.url equipment_url(equipment, format: :json)
