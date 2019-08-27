json.extract! post, :id, :content, :image, :clone_id, :created_at, :updated_at
json.url post_url(post, format: :json)
