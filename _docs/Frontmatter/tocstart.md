---
title: "Table of Contents"
permalink: /tocstart.html
course: "Documenting REST APIs"
weight: 2.0
sidebar: docapis
section: frontmatter
---

<ul id="docnavsidebar" class="docnav">
{% for folder in site.data.docapis.folders %}
<li class="level1"><a href="{{folder.jurl | remove: "/"}}">{{ folder.title }}</a></li>
   <ul>
       {% for folderitem in folder.folderitems %}
       {% if folderitem.title %}
       <li class="level1items"><a href="{{ folderitem.jurl | remove: "/" }}">{{folderitem.title}}</a></li>
       {% endif %}
       {% for subfolder in folderitem.subfolders %}

       <li class="level2"><a href="{{subfolder.jurl | remove: "/"}}">{{ subfolder.title }}</a></li>
           <ul>
               {% for subfolderitem in subfolder.subfolderitems %}

               {% if subfolderitem.title %}
               <li class="level2items"><a href="{{ subfolderitem.jurl | remove: "/" }}">{{subfolderitem.title}}</a></li>
               {% endif %}

               {% for subsubfolder in subfolderitem.subsubfolders %}
               <li class="level3"><a href="{{subsubfolder.jurl | remove: "/"}}">{{ subsubfolder.title }}</a></li>
                   <ul>
                       {% for subsubfolderitem in subsubfolder.subsubfolderitems %}
                       {% if subsubfolderitem.title %}
                       <li class="level3items"><a href="{{subsubfolderitem.jurl | remove: "/" }}">{{subsubfolderitem.title}}</a></li>
                       {% endif %}
                       {% endfor %}
                   </ul>

               {% endfor %}
               {% endfor %}
           </ul>


       {% endfor %}

       {% endfor %}
   </ul>

   {% endfor %}

</ul>
