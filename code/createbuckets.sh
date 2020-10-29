#!/bin/sh

/usr/bin/mc config host add myminio http://minio:9000 ${MINIO_ACCESS_KEY} ${MINIO_SECRET_KEY};
/usr/bin/mc admin user add myminio ${COWRIE_UPLOAD_ACCESS} ${COWRIE_UPLOAD_SECRET};
/usr/bin/mc admin policy set myminio readwrite user=${COWRIE_UPLOAD_ACCESS};
