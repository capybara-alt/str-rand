FROM perl:5.34
COPY . /usr/src/str-rand
WORKDIR /usr/src/str-rand
RUN cpanm Raisin
RUN cpanm String::Random
CMD [ "plackup", "bin/raisin.pl" ]
EXPOSE 5002