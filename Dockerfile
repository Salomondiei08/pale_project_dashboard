# Dockerfile
FROM node:18-alpine

# Create destination directory
RUN mkdir -p /usr/src/pale_project_dasboard
WORKDIR /usr/src/pale_project_dasboard


# copy the app, note .dockerignore
COPY . /usr/src/pale_project_dasboard/
RUN npm install turbo --global
RUN npm install
RUN cd apps/Dashboard && npm install && npm run build


EXPOSE 1338 

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=1338

CMD ["/bin/sh", "-c", "cd apps/Dashboard && npm run start"]