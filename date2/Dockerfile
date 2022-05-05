FROM busybox
RUN echo "Date is $(date)"
ARG CACHEBUST=1
RUN date >date.txt && echo $SECONDS
