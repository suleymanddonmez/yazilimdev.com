FROM nginx:1.27-alpine

# Clean default nginx web root and copy static site files
RUN rm -rf /usr/share/nginx/html/*

COPY index.html /usr/share/nginx/html/
COPY styles.css /usr/share/nginx/html/
COPY script.js /usr/share/nginx/html/
COPY robots.txt /usr/share/nginx/html/
COPY sitemap.xml /usr/share/nginx/html/
COPY site.webmanifest /usr/share/nginx/html/
COPY favicon.svg /usr/share/nginx/html/
COPY og-image.svg /usr/share/nginx/html/
COPY ozel-yazilim-gelistirme.html /usr/share/nginx/html/
COPY is-sureci-otomasyonu.html /usr/share/nginx/html/
COPY mvp-gelistirme.html /usr/share/nginx/html/
COPY web-platform-gelistirme.html /usr/share/nginx/html/
