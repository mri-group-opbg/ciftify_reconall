FROM python:3.8-buster

RUN pip3 install ciftify

RUN mkdir /opt/msm && \
    curl -sSL https://github.com/ecr05/MSM_HOCR_macOSX/releases/download/1.0/msm_ubuntu > /opt/msm/msm && \
    chmod 777 /opt/msm/msm

ENV PATH=/opt/msm:$PATH

# RUN apt-get update && apt-get install -y connectome-workbench=1.2.3

ENV PATH=/usr/local/workbench/bin_rh_linux64:$PATH

RUN apt-get update && apt-get install -y \
	libgl1-mesa-glx libxmu6 libopenblas-base libopenblas-dev \
	&& rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY launch.sh /app/launch.sh

CMD ['ciftify_recon_all']
