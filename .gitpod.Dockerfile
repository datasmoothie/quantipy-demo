FROM gitpod/workspace-full

RUN pyenv install 3.7.4 \
    && pyenv global 3.7.4 \
    && python -m pip install ipykernel \
    && python -m pip install jupyter \
    && python -m pip install quantipy3 datasmoothie
