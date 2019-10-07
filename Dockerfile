FROM syncthing/syncthing:1.3.0

COPY run.sh .

ENTRYPOINT ./run.sh


