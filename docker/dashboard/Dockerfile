FROM node

RUN apt-get update

RUN npm install --unsafe -g jupyter-dashboards-server

RUN useradd --create-home --shell /bin/bash gateway 

EXPOSE 3000

CMD ["jupyter-dashboards-server", "--IP=0.0.0.0"]
