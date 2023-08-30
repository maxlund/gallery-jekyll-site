---
layout: default  # Use an existing layout or create a custom layout
title: Image Gallery
---
<h1 class="text-center">Image Gallery</h1>
<style>
  /* Add your custom styles here */
  .nav-tabs {
    background-color: #f8f9fa; /* Change to your desired background color */
    border: none; /* Remove the default border */
    border-radius: 10px; /* Add rounded corners */
  }

  .nav-tabs .nav-link {
    color: #333; /* Change text color */
    background-color: transparent; /* Make the background transparent */
    border: none; /* Remove border */
    border-radius: 10px 10px 0 0; /* Adjust rounded corners for the top */
    margin: 0;
    padding: 10px 20px; /* Adjust padding for better spacing */
    transition: background-color 0.3s ease, color 0.3s ease; /* Add smooth transitions */
  }

  .nav-tabs .nav-link.active {
    color: #fff; /* Change text color for active tab */
    background-color: #007bff; /* Change background color for active tab */
  }
</style>

<div class="container">
<nav>
  <div class="nav nav-tabs" id="nav-tab" role="tablist">
      {% for album in site.data.albums.albums %}
        {% if forloop.first  %}
            <button class="nav-link active" id="nav-{{album.name}}-tab" data-bs-toggle="tab" data-bs-target="#nav-{{album.name}}" type="button" role="tab" aria-controls="nav-{{album.name}}" aria-selected="true">{{album.name}}</button>
        {% else %}
            <button class="nav-link" id="nav-{{album.name}}-tab" data-bs-toggle="tab" data-bs-target="#nav-{{album.name}}" type="button" role="tab" aria-controls="nav-{{album.name}}" aria-selected="false">{{album.name}}</button>
        {% endif %}
      {% endfor %}
  </div>
</nav>
<div class="tab-content" id="nav-tabContent">
        {% for album in site.data.albums.albums %}
            {% if forloop.first  %}
                <div class="tab-pane  fade show active" id="nav-{{album.name}}" role="tabpanel" aria-labelledby="nav-{{album.name}}-tab">
            {% else %}
                <div class="tab-pane fade" id="nav-{{album.name}}" role="tabpanel" aria-labelledby="nav-{{album.name}}-tab">
            {% endif %}
                    {% if album.images %}
                        <h2> {{ album.name }} </h2>
                        <div class="row">
                            {% for image in album.images %}
                            <div class="col-md-4">
                            <a href="{{ image.imagePath }}" data-type="image" data-gallery="{{album.name}}-gallery"  class="my-lightbox-toggle container-md">
                                <img  src="{{ image.imagePath }}" class="img-fluid img-thumbnail"/>
                            </a>
                            </div>
                            {% endfor %}
                        </div>
                    {% endif %}
                </div>
        {% endfor %}
</div>
