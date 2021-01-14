FROM continuumio/miniconda3

RUN cd /opt && \
    wget --no-check-certificate --content-disposition -q -O - \
        https://github.com/DennisSchmitz/Jovian/archive/v1.2.0.tar.gz | tar xz
WORKDIR /opt/Jovian-1.2.0
SHELL [ "/bin/bash", "-c"]
RUN conda env create -f ./bin/envs/Jovian_helper_environment.yaml && \
    conda init bash && \
    source /root/.bashrc && \
    conda activate Jovian_helper

CMD /bin/bash jovian 
