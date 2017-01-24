require 'reevoomark'

$reevoomark_embedable_reviews = ReevooMark.create_client(
  Rails.root.join("tmp/reevoo_cache"),
  "http://mark.reevoo.com/reevoomark/embeddable_reviews.html"
)

$reevoomark_embeddable_customer_experience_reviews = ReevooMark.create_client(
  Rails.root.join("tmp/reevoo_cache"),
  "http://mark.reevoo.com/reevoomark/embeddable_customer_experience_reviews.html"
)

$reevoomark_embeddable_conversations = ReevooMark.create_client(
  Rails.root.join("tmp/reevoo_cache"),
  "http://mark.reevoo.com/reevoomark/embeddable_conversations.html"
)
