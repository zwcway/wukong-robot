FROM wzpan/wukong-robot:latest
MAINTAINER zwcway
ENV LANG C.UTF-8
WORKDIR /root/wukong-robot
COPY ConfigMonitor.py /root/wukong-robot/robot/
COPY run.sh /
RUN git pull -f && pip3 install -r /root/wukong-robot/requirements.txt && cd /root/.wukong/contrib && git pull -f && pip3 install -r /root/.wukong/contrib/requirements.txt && chmod a+x /run.sh
EXPOSE 5000
CMD [ "/run.sh" ]
