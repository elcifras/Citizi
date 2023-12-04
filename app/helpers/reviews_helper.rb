module ReviewsHelper
  def render_stars(rating)
    content_tag :div, class: 'star-rating', data: { rating: rating } do
      (1..5).map do |i|
        content_tag(:i, '', class: "fas fa-star star #{'active' if i <= rating}", data: { value: i })
      end.join.html_safe
    end
  end
end
