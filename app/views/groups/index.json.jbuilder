json.array!(@groups) do |group|
  json.extract! group, :id, :comments, :email, :attending
  json.url group_url(group, format: :json)
end
