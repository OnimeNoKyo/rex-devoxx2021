FROM node:16.13.0

RUN git clone https://github.com/hakimel/reveal.js.git
WORKDIR /reveal.js
RUN npm install
RUN rm index.html
RUN mkdir app
RUN ln -s app/index.html index.html

VOLUME [ "/reveal.js/app" ]

EXPOSE 8000
