def redirect_to_squarespace
  post = Post.find_by_slug(params[:id])
  url = build_squarespace_post_url(post)
  # rubocop:disable Style/AndOr
  redirect_to url and return
  # rubocop:enable
end
