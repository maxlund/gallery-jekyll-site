---
layout: default
title: Image Gallery
---
<h1 class="text-center">Image Gallery</h1>
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
                            {% if album.references %}
                            <div class="row">
                                {% for image in album.references %}
                                <div class="col-md-4">
                                <a href="https://media.githubusercontent.com/media/maxlund/sd-showcase/main/{{ image.imagePath }}" data-type="image" data-gallery="{{album.name}}-gallery"  class="my-lightbox-toggle container-md">
                                    <img  src="https://media.githubusercontent.com/media/maxlund/sd-showcase/main/{{ image.imagePath }}" class="img-fluid img-thumbnail"/>
                                </a>
                                </div>
                            {% endfor %}
                            </div>
                            {% endif %}
                            <div class="row">
                            {% for image in album.images %}
                                <div class="col-md-4">
                                <a href="https://media.githubusercontent.com/media/maxlund/sd-showcase/main/{{ image.imagePath }}" data-type="image" data-gallery="{{album.name}}-gallery"  class="my-lightbox-toggle container-md">
                                    <img  src="https://media.githubusercontent.com/media/maxlund/sd-showcase/main/{{ image.imagePath }}" class="img-fluid img-thumbnail"/>
                                </a>
                                </div>
                            {% endfor %}
                        </div>
                    {% endif %}
                </div>
        {% endfor %}
</div>
