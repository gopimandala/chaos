FROM nginx:latest
ARG VERSION
ENV VERSION=$VERSION
COPY mystartup.sh .
CMD ["/mystartup.sh"]