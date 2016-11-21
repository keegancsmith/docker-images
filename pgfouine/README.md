# pgFouine Docker

This repo builds a Docker container for running pgFouine. Instead of
installing PHP and downloading the tarball, instead you can run:

    docker run --rm -v /var/log/postgresql:/log keegancsmith/pgfouine-docker -file /log/postgresql.log > your-report.html

Where `/var/log/postgresql/postgresql.log` is the log to analyze

See http://pgfouine.projects.pgfoundry.org/tutorial.html for how to enable
PostgreSQL to log queries.
