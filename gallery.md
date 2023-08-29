---
layout: default  # Use an existing layout or create a custom layout
title: Image Gallery
---
<h1 class="text-center">Image Gallery</h1>


<div class="container">
    {% for album in site.data.albums.albums %}
    {% if album.images %}
        <h2> {{ album.name }} </h2>
        <div class="row album-images">
            {% for image in album.images %}
                <div class="col-md-4 col-sm-6 mb-4">
                    <div class="card">
                        <img  src="{{ image.imageUrl }}" class="card-img-top" alt="{{ image.name }}">
                        <div class="card-body">
                            <h5 class="card-title">{{ image.name }}</h5>
                        </div>
                    </div>
                </div>
            {% endfor %}
        </div>
    {% endif %}
<hr class="hr hr-blurry" />
    {% endfor %}
</div>
