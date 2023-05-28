---
title: Newsletter
permalink: newsletter.html
course: "Documenting REST APIs"
sidebar: docapis
type: plain
progress: false
no_newsletter: true
last-modified: 2023-05-28
show_newsletter: never
---

{% if page.show_newsletter != "never" %}
{% include mailjet_embedded.html %}
{% endif %}


<style>
body.pas-body {
    display: none !important;
}
</style>
<script>
  $(document).ready(function() {
    $('#iFrameResizer1').css('display', 'none');
  });
</script>
