json.array!(@services) do |service|
  json.extract! service, :id
  json.title @clients.find(service.client_id).first_name
  json.description @employees.find(service.employee_id).first_name
  json.start service.service_date
  json.end service.service_date + 30000
  json.url service_url(service, format: :html)
end
