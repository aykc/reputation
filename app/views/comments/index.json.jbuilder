json.array!(@comments) do |comment|
  json.extract! comment, :id, :body, :user_id, :review_id
  json.url comment_url(comment, format: :json)
end
