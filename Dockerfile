FROM minio/minio:RELEASE.2020-10-28T08-16-50Z
COPY entrypoint.sh /opt
ENTRYPOINT ["/opt/entrypoint.sh"]
