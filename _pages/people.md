---
layout: archive
title: "People"
permalink: /people/
author_profile: false
---

{% include base_path %}

<style>
.people-grid { display: flex; flex-wrap: wrap; gap: 1.75em; margin: 1.5em 0 2.5em; }
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
</style>

<div class="people-grid">
{% for p in site.data.people.current %}
  <div class="person">
    {% if p.image %}
      <img class="person-photo" src="{{ p.image | prepend: '/images/' | prepend: base_path }}" alt="{{ p.name }}">
    {% else %}
      {% assign parts = p.name | split: ' ' %}
      <div class="person-initials">{{ parts[0] | slice: 0 }}{{ parts | last | slice: 0 }}</div>
    {% endif %}
    <div class="person-body">
      <div class="person-name">{{ p.name }}</div>
      <div class="person-role">{{ p.role }}</div>
      {% if p.blurb and p.blurb != "" %}<div class="person-blurb">{{ p.blurb }}</div>{% endif %}
      <div class="person-links">
        {% if p.website %}<a href="{{ p.website }}">Profile</a>{% endif %}
        {% if p.email %}<a href="mailto:{{ p.email }}">Email</a>{% endif %}
        {% if p.scholar %}<a href="{{ p.scholar }}">Scholar</a>{% endif %}
        {% if p.github %}<a href="{{ p.github }}">GitHub</a>{% endif %}
        {% if p.orcid %}<a href="{{ p.orcid }}">ORCID</a>{% endif %}
        {% if p.linkedin %}<a href="{{ p.linkedin }}">LinkedIn</a>{% endif %}
      </div>
    </div>
  </div>
{% endfor %}
</div>

{% if site.data.people.alumni and site.data.people.alumni.size > 0 %}
## Alumni

{% for p in site.data.people.alumni %}
* **{{ p.name }}** — {{ p.role }}{% if p.next %}; now {{ p.next }}{% endif %}
{% endfor %}
{% endif %}

---

## Collaborators

The lab works closely with a number of groups at MGH, the Broad Institute, and beyond, including [Alisa Manning](https://www.manning-lab.info/), [Arun Durvasula](https://keck.usc.edu/faculty-search/arun-durvasula/), [Han Chen](https://sbmi.uth.edu/faculty-and-staff/han-chen.htm), [Joanne Cole](https://scholar.harvard.edu/joannebcole), [Tamar Sofer](https://www.hsph.harvard.edu/profile/tamar-sofer/), and [Miriam Udler](https://www.massgeneral.org/doctors/22163/miriam-udler), as well as the CHARGE Gene-Lifestyle Interactions Working Group and the TOPMed Environmental and Social Determinants of Health Working Group.

## Joining

We are currently recruiting a postdoctoral fellow and a computational associate. See [Join Us](/join/) for details.
