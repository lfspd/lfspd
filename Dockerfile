FROM scratch

# Either a release version or a pre-release tag generated from version and git hash
ARG VERSION
# The build platform from which base libraries are taken (fuse, ssl, etc)
#ARG PLATFORM

LABEL maintainer="valeriy.onuchin@yandex.ru"
LABEL version="$VERSION"
LABEL platform="Linux For SPD"

# Can be set to auto-discover the squid proxy
ENV LFSPD_CLIENT_PROFILE=
# Needs to be set to the site squid
ENV LFSPD_HTTP_PROXY=
# Default: 4G cache. We need more
ENV LFSPD_QUOTA_LIMIT 5000
# Use the VERSION argument 
ENV VERSION $VERSION

ADD lfsd.10.tar.gz /

ENTRYPOINT [ "/root" ]

#HEALTHCHECK --interval=5m --start-period=1m --timeout=1m \
#  CMD [ "/usr/bin/check_cvmfs.sh", "liveness" ]
