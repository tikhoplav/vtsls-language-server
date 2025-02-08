FROM node:20-alpine
ARG VER=0.2.8
ARG VOLAR_VER=2.2.0
RUN npm install -g \
    @vtsls/language-server@${VER} \
    @vue/language-server@${VOLAR_VER}

CMD ["vtsls", "--stdio"]
