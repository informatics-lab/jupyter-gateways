FROM continuumio/miniconda3

RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -
RUN apt-get update
RUN apt-get install -y nodejs
RUN npm install bower -g

RUN useradd --create-home --shell /bin/bash jupyter
RUN mkdir /opt/notebooks && chown jupyter:jupyter /opt/notebooks
RUN chown -R jupyter:jupyter /opt/conda

USER jupyter

RUN conda install -y jupyter pandas

RUN conda install -y -c conda-forge jupyter_cms

RUN pip install jupyter_dashboards_bundlers
RUN jupyter dashboards_bundlers quick-setup --sys-prefix

RUN conda install -y -c conda-forge ipywidgets
RUN jupyter nbextension enable --py --sys-prefix widgetsnbextension

RUN pip install jupyter_declarativewidgets
RUN jupyter declarativewidgets quick-setup --sys-prefix

RUN conda install -y matplotlib

RUN pip install jupyter_kernel_gateway

RUN conda install -y -c scitools iris 
EXPOSE 8888

CMD jupyter kernelgateway --KernelGatewayApp.ip=0.0.0.0 
