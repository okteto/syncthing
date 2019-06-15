FROM syncthing/syncthing:1.1.4

COPY run.sh .

ENTRYPOINT ./run.sh


