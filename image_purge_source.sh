---
layout: none
---

{% assign image_files = site.static_files | where: "image", true %}
{% for myimage in image_files %}

grep {{myimage.name}} -R . && echo "File already exists." || rm ../images/{{myimage.name}}

{% endfor %}
