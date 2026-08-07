---
layout: archive
title: "People"
permalink: /people/
author_profile: false
---

{% include base_path %}

<style>
.people-grid { display: flex; flex-wrap: wrap; gap: 1.75em; margin: 1.25em 0 2.25em; }
.person { display: flex; gap: 1em; flex: 1 1 22em; min-width: 20em; align-items: flex-start; }
.person-photo { width: 96px; height: 96px; border-radius: 50%; object-fit: cover; flex-shrink: 0; }
.person-initials { width: 96px; height: 96px; border-radius: 50%; flex-shrink: 0;
  background: #e8eaed; color: #6b7480; display: flex; align-items: center; justify-content: center;
  font-size: 1.6em; font-weight: 600; letter-spacing: 0.03em; }
.person-body { flex: 1; }
.person-name { font-weight: 700; font-size: 1.05em; line-height: 1.3; }
.person-role { color: #6b7480; font-size: 0.85em; text-transform: uppercase; letter-spacing: 0.04em; margin-bottom: 0.4em; }
.person-blurb { font-size: 0.9em; line-height: 1.45; margin-bottom: 0.4em; }
.person-links { font-size: 0.82em; }
.person-links a { margin-right: 0.7em; }
@media (max-width: 600px) { .person { flex: 1 1 100%; min-width: 0; } }

.alumni-list { display: flex; flex-wrap: wrap; gap: 1em 1.75em; margin: 1.25em 0 2em; }
.alum { display: flex; gap: 0.75em; flex: 1 1 20em; min-width: 18em; align-items: center; }
.alum-photo { width: 52px; height: 52px; border-radius: 50%; object-fit: cover; flex-shrink: 0; }
.alum-initials { width: 52px; height: 52px; border-radius: 50%; flex-shrink: 0;
  background: #e8eaed; color: #6b7480; display: flex; align-items: center; justify-content: center;
  font-size: 0.95em; font-weight: 600; letter-spacing: 0.03em; }
.alum-name { font-weight: 700; line-height: 1.3; }
.alum-meta { color: #6b7480; font-size: 0.88em; line-height: 1.35; }
@media (max-width: 600px) { .alum { flex: 1 1 100%; min-width: 0; } }
</style>

## Principal Investigator

<div class="people-grid">
{% for p in site.data.people.pi %}
  {% include person-card.html person=p website_label="Bio & CV" %}
{% endfor %}
</div>

## Lab members

<div class="people-grid">
{% for p in site.data.people.members %}
  {% include person-card.html person=p %}
{% endfor %}
</div>

{% if site.data.people.alumni and site.data.people.alumni.size > 0 %}
## Alumni

<div class="alumni-list">
{% for p in site.data.people.alumni %}
  <div class="alum">
    {% if p.image %}
      <img class="alum-photo" src="{{ p.image | prepend: '/images/' | prepend: base_path }}" alt="{{ p.name }}">
    {% else %}
      {% assign parts = p.name | split: ',' | first | split: ' ' %}
      <div class="alum-initials">{{ parts | first | slice: 0 }}{{ parts | last | slice: 0 }}</div>
    {% endif %}
    <div>
      <div class="alum-name">{{ p.name }}</div>
      <div class="alum-meta">{{ p.role }}{% if p.next %} · now {{ p.next | markdownify | remove: '<p>' | remove: '</p>' }}{% endif %}</div>
    </div>
  </div>
{% endfor %}
</div>
{% endif %}

---

## Collaborators

The lab works closely with a number of groups at MGH, the Broad Institute, and beyond, including [Alisa Manning](https://www.manning-lab.info/), [Arun Durvasula](https://durvasula-lab.usc.edu/), [Dan Chasman](https://prevmed.bwh.harvard.edu/daniel-i-chasman-phd/), [Miriam Udler](https://www.udlerlab.org/), and many members of the CHARGE Gene-Lifestyle Interactions Working Group and the TOPMed Environmental and Social Determinants of Health Working Group.
