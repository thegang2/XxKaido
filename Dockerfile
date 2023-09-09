FROM leaderthoniq/leaderthon:slim-buster

#clonning repo 
RUN git clone https://github.com/thegang2/LeaderThon0.git /root/leaderthon
#working directory 
WORKDIR /root/leaderthon

# Install requirements
RUN curl -sL https://deb.nodesource.com/setup_16.x | bash -
RUN apt-get install -y nodejs
RUN npm i -g npm
RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/HuRe/bin:$PATH"

CMD ["python3","-m","HuRe"]
