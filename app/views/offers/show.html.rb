<div class="flex-item">
<div class="mt-5 mx-5 card-trip">
  <img src="https://raw.githubusercontent.com/lewagon/fullstack-images/master/uikit/greece.jpg" />
  <div class="card-trip-infos">
    <div>
      <h1><%= @offer.title %></h1>
      <strong><%= @offer.description %></strong>
    </div>
    <h3><%= @offer.price %> €</h3>
    <img src="https://kitt.lewagon.com/placeholder/users/krokrob" class="card-trip-user avatar-bordered" />
  </div>
  <div class="card-trip-infos d-flex justify-content-start">
    <%# <%= image_tag offer.movie.poster_url, alt: "movie poster", width: 200 </li>%>
    <h5>Duration: <%= @offer.duration %> | </h5>
    <h5> Location: <%= @offer.location %></h5>
    <%# <%= link_to 'Delete', offer_path(offer), method: :delete, data: { confirm: 'Are you sure?' }</li> %>
</div>
</div>
<div class="mt-5 mx-5 footer">
<%= link_to 'Back', offers_path, class: "btn btn-accent" %>
<%= link_to 'New booking for this offer', new_offer_booking_path(@offer), class: "btn btn-accent" %>
</div>
  <strong>Name:</strong>
   <div>
      <button type="button" class="btn btn-flat" data-bs-toggle="modal" data-bs-target="#new_booking_modal">
        |Book your Offer|
      </button>
      <%= link_to "book it!", booking_path(@offer), method: :booking, class: "btn btn-book", data: { confirm: "Are you sure you want to book this offer?" } %>
  </div>
</div>
