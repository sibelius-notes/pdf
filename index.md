---
layout: default
title: Home
nav_order: 0
---
## Welcome
Welcome to the PDF collections of [n.sibp.ro](https://n.sibp.ro)

Check the table of contents to get started. This website currently contains all pdfs but no [markdowns](../mdf)...

Typically, the term folder that a pdf belongs doesn't necessarily reflects the term when course was taught, but it indicates the term when I typeset, as well as incomplete notes.

**Disclaimer**: Most of these notes are written in their entirety by me, Sibelius Peng, while attending lectures at the University of Waterloo. I have no intentions of violating any UW policies and will gladly honour takedown notices produced by an authorized UW representative. They are by no means authoritative so use at your own peril.

{% assign count = 0 %}
{% for file in site.static_files %}
    {% if file.extname == '.pdf' %}
        {% assign count = count | plus: 1 %}
    {% endif %}
{% endfor %}

## Statistics
- Number of pdfs: {{ count }}
- Word count: {% include word.html %}
- Page count: {% include page.html %}

Last updated: {% include ts.html %}
