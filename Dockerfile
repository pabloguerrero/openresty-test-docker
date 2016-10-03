FROM talentappstore/openresty:1.11.2.1

RUN apt-get install -y vim libexpat1-dev && \
    cpan -T -i Test::Nginx \
        YAML::Tiny \
        XML::Parser \
        XML::SemanticDiff \
        Test::XML \
        TAP::Harness::Archive \
        IPC::Run \
        TAP::Formatter:JUnit && \
        mkdir output && \
        mkdir t

ENV PATH $PATH:/usr/local/openresty/nginx/sbin

CMD ["prove", "t"]

