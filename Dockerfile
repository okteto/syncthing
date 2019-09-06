FROM syncthing/syncthing:1.2.2

COPY run.sh .

ENTRYPOINT ./run.sh


