---
layout: default
---
<header>
  <h1>instagram</h1>
  <a>link</a>
</header>

<hr>

<section id="photos">
  {% for file in site.static_files %}
    {% if file.path contains "gallery" and file.path contains "concept" %}
      {% if file.extname == '.jpg' %}
        {% assign filenameparts = file.path | split: "/" %}
        {% assign filename = filenameparts | last | replace: file.extname,"" %}
  			<img src="{{ file.path }}" alt="">
      {% endif %}
    {% endif %}
  {% endfor %}
</section>
