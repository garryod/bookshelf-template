ARG PYTHON_VERSION=3.10

FROM python:${PYTHON_VERSION} as develop

ENV WORKDIR=/environment
WORKDIR ${WORKDIR}

COPY . ${WORKDIR}

RUN pip install --upgrade .

FROM python:${PYTHON_VERSION} as interactive

ENV WORKDIR=/environment
WORKDIR ${WORKDIR}

COPY . ${WORKDIR}

RUN pip install --upgrade .[interactive]

EXPOSE 8888

CMD ["jupyter-lab", "--ip=0.0.0.0", "--allow-root"]
