RUN wget https://www.python.org/ftp/python/3.10.0/Python-3.10.0.tgz && \
        tar -xvf Python-3.10.0.tgz && \
        cd Python-3.10.0 && \
        ./configure --enable-optimizations && \
        make -j 2 && \
        make altinstall && \
        python3.10 --version
