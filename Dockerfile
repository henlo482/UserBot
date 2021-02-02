FROM madboy482/UserBot:latest

# Clonning repo 
RUN git clone https://github.com/madboy482/UserBot.git /root/userbot
# Working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]
