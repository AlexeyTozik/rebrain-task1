server {
    listen 80;
    server_name alexeytozik.github.io;
    root /var/www/mysite.domain.com;

    index index.html;

    location / {
        try_files $uri $uri/ =404;
    }
}
