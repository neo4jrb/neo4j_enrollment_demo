json.array!(@courses) do |course|
  json.extract! course, :id, :subject, :level, :introduced
  json.url course_url(course, format: :json)
end
