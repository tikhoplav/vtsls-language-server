FROM node:20-alpine
ARG VER=0.2.3
RUN npm install -g @vtsls/language-server@${VER}
CMD ["vtsls", "--stdio"]
