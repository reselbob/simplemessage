FROM docker.io/library/node
COPY index.js .
COPY message.txt .
COPY package.json .
RUN npm install --only-production
EXPOSE 3001
CMD ["node", "index.js"]
