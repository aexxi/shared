nginx:
  pkg:
    - installed
  service.running:
    - watch:
      - pkg: nginx
      - file: /usr/share/nginx/html/index.html

/usr/share/nginx/html/index.html:
 file.managed:
  - source: salt://nginx/index.html
