# Profile a block of code with StackProf

```ruby
# Profile a block of code with StackProf
def index
  StackProf.run(mode: :wall, out: 'tmp/articles-index.dump') do
    @articles = ArticleApiIndexService.new(params).get
    key_headers = [
      "articles_api",
      params[:tag],
      params[:page],
      params[:username],
      params[:signature],
      params[:state],
    ]
    set_surrogate_key_header key_headers.join("_")
  end
end
```
