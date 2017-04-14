---
layout: null
---

{% for myimage in site.static_files  %}{% if myimage.path contains "images" %}
find _docs -type f -exec grep -r -l '{{myimage.name}}' {} \;{% endif %}{% endfor %}
