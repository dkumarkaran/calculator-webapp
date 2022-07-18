FROM nginx
RUN apt update -y && apt install git -y
RUN git clone https://github.com/dkumarkaran/calculator-webapp.git /usr/share/nginx/html
