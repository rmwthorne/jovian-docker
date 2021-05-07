FROM continuumio/miniconda3:4.9.2
RUN apt-get update && apt-get install -y curl make

RUN mkdir opt/jovian && \
    cd opt/ && \
    wget --no-check-certificate --content-disposition -q -O - \
        https://github.com/DennisSchmitz/Jovian/archive/v1.2.06.tar.gz | \
        tar xz -C jovian --strip-components 1
WORKDIR /opt/jovian

RUN conda env create -f bin/envs/Jovian_master_environment.yaml -n Jovian_master -v 
RUN source /root/.bashrc
RUN /bin/bash -c conda env list

# See https://pythonspeed.com/articles/activate-conda-dockerfile/
SHELL ["conda", "run", "-n", "Jovian_master", "/bin/bash", "-c"]
RUN echo "Checking environment modules installed..."
RUN snakemake -h

CMD /bin/bash jovian 
