require 'reevoomark'

$reevoomark_client = ReevooMark.create_client(
  Rails.root.join("tmp/reevoo_cache"),
  "http://mark.reevoo.com/reevoomark/embeddable_reviews.html"
)
