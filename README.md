# yazilimdev.com

Static website for `yazilimdev.com` (company-style showcase site for software, automation, and digital product services).

## Project Structure

- `index.html` - Homepage
- `styles.css` - Shared styles
- `script.js` - Small UI interactions
- `*.html` - SEO service landing pages
- `robots.txt`, `sitemap.xml`, `site.webmanifest` - SEO/static metadata files

## Local Preview

Because this is a static site, you can preview it with any static file server.

Example:

```bash
python3 -m http.server 8080
```

Then open `http://localhost:8080`.

## Deploy (Docker + Nginx)

This project is intended to run as a static site behind your existing reverse proxy (NPM + Cloudflare).

Minimal `docker-compose.yml` example on server:

```yaml
services:
  yazilimdev-site:
    image: nginx:alpine
    container_name: yazilimdev-site
    restart: unless-stopped
    ports:
      - "8080:80"
    volumes:
      - /opt/yazilimdev-site:/usr/share/nginx/html:ro
```
