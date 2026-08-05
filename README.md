# Westerman Lab website

Source for the [Westerman Lab](https://westerman-lab.github.io) site at Massachusetts General Hospital.

Built with [Jekyll](https://jekyllrb.com/) using the
[AcademicPages](https://github.com/academicpages/academicpages.github.io) theme
(a fork of [Minimal Mistakes](https://github.com/mmistakes/minimal-mistakes)),
and served by GitHub Pages.

## Editing

Most content lives in Markdown files under `_pages/`:

| Page | File |
| --- | --- |
| Home | `_pages/home.md` |
| Research | `_pages/research.md` |
| People | `_pages/people.md` (content in `_data/people.yml`) |
| Publications | `_pages/publications.md` |
| Software | `_pages/software.md` |
| Join Us | `_pages/join.md` |
| Kenny Westerman | `_pages/pi.md` |

Other things worth knowing:

- **Adding a lab member:** edit `_data/people.yml`. A photo is optional; without
  one, the People page shows an initials placeholder. Drop photos in `images/`.
- **Navigation bar:** `_data/navigation.yml`.
- **Site title, description, PI contact links:** `_config.yml`.
- **CV:** add the new PDF to `files/` and update the links in `_pages/pi.md` and
  `_pages/cv.md`.

Pushing to `main` triggers a GitHub Pages rebuild; the live site updates within
a minute or two.

## Local preview

```bash
./serve.sh
```

Then open <http://localhost:4000>.

The script needs Ruby 3.1 (`brew install ruby@3.1`). Not a newer Ruby: the
`github-pages` gem pins Jekyll 3.x and Liquid 4.0.3, which calls
`String#tainted?` — removed in Ruby 3.2. GitHub Pages builds server-side with
its own dependency set, so this only affects local previews.

Note that `_config.dev.yml` overrides `url` to `http://localhost:4000`. Running
a plain `bundle exec jekyll build` while the server is up will overwrite `_site`
with production absolute URLs and the local preview will lose its CSS; touch any
source file to make the server regenerate.
