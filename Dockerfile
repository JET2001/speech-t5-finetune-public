FROM ubuntu:22.04
ARG REQUIREMENTS_FILE=requirements.txt

WORKDIR /home
COPY . .

RUN apt-get update \
&& apt-get install -y curl unzip

RUN apt-get install -y --no-install-recommends gcc g++ make python3.10 python3.10-dev python3.10-pip python3.10-venv python3.10-wheel espeak-ng libsndfile1-dev git && rm -rf /var/lib/apt/lists/*

# RUN apt install vim -y && rm -rf /var/lib/apt/lists/*

# RUN curl https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip -o awscliv2.zip \
# && unzip awscliv2.zip \
# && rm -rf aws awscliv2.zip

RUN pip3 install --upgrade pip 

RUN pip3 --no-cache-dir install --upgrade awscli

RUN pip3 install --default-timeout=100 -r ${REQUIREMENTS_FILE}

EXPOSE 8888

ENTRYPOINT [ "/bin/bash" ] 

