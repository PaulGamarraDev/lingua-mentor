
<h2>Comentarios</h2>
<% @comments.each do |comment| %>
  <div>
    <strong><%= comment.rating %></strong>
    <p><%= comment.comment %></p>
  </div>
