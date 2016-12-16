FROM continuumio/miniconda3

RUN useradd --create-home --shell /bin/bash jupyter
RUN mkdir /opt/notebooks && chown jupyter:jupyter /opt/notebooks
RUN chown -R jupyter:jupyter /opt/conda

USER jupyter

RUN pip install jupyter_kernel_gateway

EXPOSE 8888

CMD jupyter kernelgateway --KernelGatewayApp.ip=0.0.0.0 --KernelGatewayApp.port=8888 --KernelGatewayApp.api=kernel_gateway.notebook_http --KernelGatewayApp.seed_uri=/opt/notebooks/helloworld.ipynb
