FROM quay.io/suhailtechinfo/suhail-v2

RUN git clone https://github.com/LoneProg/Queen_Anita-V4 /root/queen-anita-v4

# Set the working directory in the container
WORKDIR /root/queen-anita-v4

# Install the dependencies
RUN npm install || yarn install

# Expose port 3000 for the app
EXPOSE 8000


CMD [ "node", "start" ]
# CMD ["pm2-docker", "start", "index.js", "--name", "queen-anita"]