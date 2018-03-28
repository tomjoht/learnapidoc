---
title: "Table of Contents"
permalink: /tocstart_fulldetails.html
course: "Documenting REST APIs"
sidebar: docapis
progress: false
---
<div id="navig">
<ul id="docnavsidebar" class="docnav">
  {% assign sidebar = site.data[site.sidebar].folders %}
{% for folder in sidebar %}
{% unless folder.type == "frontmatter" %}
<li class="sectionHead"><a href="{{folder.jurl | remove: "/"}}">{{ folder.title }}</a></li>
    <ul>
        {% for folderitem in folder.folderitems %}
        {% if folderitem.title %}
        <li><a href="{{ folderitem.jurl | remove: "/" }}">{{folderitem.title}}</a></li>
        {% endif %}
        {% for subfolder in folderitem.subfolders %}

        <li class="sectionHead"><a href="{{subfolder.jurl | remove: "/"}}">{{ subfolder.title }}</a></li>
            <ul>
                {% for subfolderitem in subfolder.subfolderitems %}

                {% if subfolderitem.title %}
                <li class="level2items"><a href="{{ subfolderitem.jurl | remove: "/" }}">{{subfolderitem.title}}</a></li>
                {% endif %}

                {% for subsubfolder in subfolderitem.subsubfolders %}
                <li class="sectionHead"><a href="{{subsubfolder.jurl | remove: "/"}}">{{ subsubfolder.title }}</a></li>
                    <ul>
                        {% for subsubfolderitem in subsubfolder.subsubfolderitems %}
                        {% if subsubfolderitem.title %}
                        <li class="level3items"><a href="{{ subsubfolderitem.jurl | remove: "/" }}">{{subsubfolderitem.title}}</a></li>
                        {% endif %}
                        {% endfor %}
                    </ul>
                </li>
                {% endfor %}
                {% endfor %}
            </ul>

        {% endfor %}

        {% endfor %}
    </ul>
{% endunless %}
    {% endfor %}

</ul>

{: .note}
Please consider leaving a review of the course on Amazon.com. You can also send questions and feedback to tom@idratherbewriting.com.
