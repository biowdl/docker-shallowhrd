FROM docker.io/continuumio/miniconda3:25.3.1-1


COPY env.yml /usr/share/shallowHRD_env/env.yml


RUN cd /usr/share/shallowHRD_env && \
    conda env create --file env.yml && \
    conda clean --all && \
    cd .. && \
    git clone https://github.com/aeeckhou/shallowHRD.git    
    

ENV PATH=/opt/conda/envs/shallowHRD/bin:$PATH
