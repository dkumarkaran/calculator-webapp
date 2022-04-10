# <a href = "https://dkumarkaran.github.io/calculator-webapp/"><B>LIVE DEMO</B></A>

# Calculator Webapp
This is a simple calculator created in pure HTML/CSS/Javascript.

<img src="/readme_images/main.png" width="400">

## Features
1. Supports keyboard inputs ("c"=clear, "backspace"=back, etc)
2. Animates when a user hovers or presses a button
3. Handles exceptions gracefully
4. Supports large numbers
5. Dark mode

<img src="/readme_images/dark_error.png" width="300">

## Steps

1. Create a t2.micro instance
2. Run the following command:  sudo apt update && sudo apt install docker.io
3. Run the command: sudo nano dockerfile and write <br>
      FROM nginx<br>
      RUN apt update<br>
      RUN apt install git -y<br>
      RUN rm -rf /usr/share/nginx/html<br>
      RUN git clone https://github.com/sauravinside/calculator-webapp.git /usr/share/nginx/html
4. After this run: sudo docker build . -t calculator
                 : sudo docker run -itd -p 80:80 calculator
5. Now check the publiicIPV4:80

!https://user-images.githubusercontent.com/63541034/162613856-5635ce86-98e3-4e2f-9c63-da51154f8769.png

!https://user-images.githubusercontent.com/63541034/162613805-02e54160-77d3-4d13-bae9-8c104542bfd0.png

!https://user-images.githubusercontent.com/63541034/162613941-41a8151a-5800-43ec-a26e-be52d04fd556.png

Content inside docker file:
!https://user-images.githubusercontent.com/63541034/162613811-ede4a56b-27fb-4135-8f05-22714a6d4450.png
