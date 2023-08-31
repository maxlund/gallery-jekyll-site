---
layout: default
title: Video Gallery
---
<h1 class="text-center">Video Gallery</h1>
<div class="container">
    <div class="row">
{% for video in site.data.videos.videos %}
    <div class="col-md-4">
            <a href="{{ video.url }}" data-gallery="{{album.name}}-gallery"  class="my-lightbox-toggle container-md">
                <img  src="{{ video.thumbnail }}" class="img-fluid img-thumbnail"/>
            </a>
    </div>
{% endfor %}
  </div>
</div>