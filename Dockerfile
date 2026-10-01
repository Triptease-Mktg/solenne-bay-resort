# Minimal static host for the brochure site (Railway).
FROM nginx:alpine
ENV PORT=8080
RUN rm -f /etc/nginx/conf.d/default.conf
COPY nginx.conf.template /etc/nginx/templates/default.conf.template
COPY index.html styles.css favicon.svg /usr/share/nginx/html/
COPY images /usr/share/nginx/html/images
EXPOSE 8080
