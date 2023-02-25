#docker build --tag flohsm --progress=plain .
#docker run -v $(pwd):/run flohsm statemachine.txt
FROM python:3.12-rc-bullseye

RUN pip install ply
RUN pip install mako

WORKDIR /code
COPY Source/Generator/ ./
COPY Docker/entrypoint.sh entrypoint.sh
RUN chmod u+x entrypoint.sh

WORKDIR /run
ENTRYPOINT ["/code/entrypoint.sh"]
CMD ["-h"]