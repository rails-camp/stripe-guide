json.array!(@posts) do |post|
  json.extract! post, :id, :title, :content, :pro_post
  json.url post_url(post, format: :json)
end
