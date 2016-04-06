FROM talentappstore/openresty

RUN apt-get install -y libexpat1-dev && \
    cpan install Test::Nginx \
        YAML::Tiny \
        XML::Parser \
        XML::SemanticDiff \
        Test::XML \
        TAP::Harness::Archive \
        TAP::Formatter:JUnit && \
        mkdir output && \
        mkdir t

ENV PATH $PATH:/usr/local/openresty/nginx/sbin

CMD ["prove", "t"]

