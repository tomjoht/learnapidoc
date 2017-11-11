---
title: "Sections"
permalink: /tocstart.html
course: "Documenting REST APIs"
sidebar: docapis
search: false
---
<div class="tocstart">
{% assign sidebar = site.data[site.sidebar].folders %}

<div id="navig">
  <ul id="docnavsidebar" class="docnav">
    {% for folder in sidebar %}
        <li class="sectionHead"><a href="{{folder.jurl | remove: "/"}}">{{ folder.title }}</a></li>
          {% for folderitem in folder.folderitems %}
              {% for subfolder in folderitem.subfolders %}
                <li class="sectionHead"><a href="{{subfolder.jurl | remove: "/"}}">{{ subfolder.title }}</a></li>
                    {% for subfolderitem in subfolder.subfolderitems %}

                      {% for subsubfolder in subfolderitem.subsubfolders %}
                        <li class="sectionHead"><a href="{{subsubfolder.jurl | remove: "/"}}">{{ subsubfolder.title }}</a></li>

                  {% endfor %}
                  {% endfor %}



          {% endfor %}

          {% endfor %}

      {% endfor %}
</div>
