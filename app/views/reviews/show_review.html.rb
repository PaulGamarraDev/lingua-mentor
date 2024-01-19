<h1><%= @recipient.name %></h1>

<h2>Reviews</h2>
<% @reviews.each do |review| %>
  <div>
    <p><strong><%= review.user.username %>:</strong></p>
    <p>Rating: <%= review.rating %></p>
    <p><%= review.comment %></p>
  </div>
<% end %>
