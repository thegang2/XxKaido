FROM thegang2/LeaderThon0:slim-buster

#clonning repo 
RUN git clone https://github.com/thegang2/LeaderThon0.git /root/LeaderThon0
#working directory 
WORKDIR /root/LeaderThon0

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/main/bin:$PATH"

CMD ["python3","-m","main"]
