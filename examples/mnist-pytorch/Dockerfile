FROM nvcr.io/nvidia/pytorch:21.03-py3

ARG u_id
ARG g_id
ARG username

## In this application there is no need to install additional packages
#RUN apt-get update && apt-get install -y python3-pip

#COPY requirements.txt .
#RUN python3 -m pip install --upgrade pip
#RUN pip3 install --no-cache -r requirements.txt

RUN groupadd --gid ${g_id} ${username}
RUN useradd --uid ${u_id} --gid ${g_id} --shell /bin/bash --create-home ${username}
USER ${username}
RUN chown -R ${u_id}:${g_id} /home/${username}
RUN chmod -R  755 /home/${username}

WORKDIR /home/${username}
