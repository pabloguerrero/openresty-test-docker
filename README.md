#openresty + Test::Nginx

Built off of [talentappstore/openresty](https://github.com/talentappstore/openresty-docker), this image adds the Test::Nginx test suite to test your openresty creations.

##Usage
By default, this image will run `prove t` (`/srv/t`), and create a JUnit test report in the /srv/output folder. All that is needed is to run

    docker run \
        -v /mytests:/srv/t \
        -v /mytestresults:/srv/output \
        talentappstore/openresty-test 
