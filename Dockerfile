FROM debian:10-slim

RUN apt-get update && apt-get install -y curl

RUN curl --silent --location https://deb.nodesource.com/setup_12.x | bash -
RUN apt-get install -y \
  nodejs
RUN echo "Node: " && node -v
RUN echo "NPM: " && npm -v

#RUN apt-get update && apt-get upgrade -y && \
#    apt-get install -y nodejs \
#    npm   

COPY ./ ./

RUN npm install

EXPOSE 3000

CMD ["npm", "start"]





