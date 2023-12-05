### orbyter-base-sys-dl

Base docker image for deep learning development in python, which contains CUDA
libraries. DL images are build on top of this, and this should not be used directly for
development. This base image, like `orbyter-base-sys`, contains basic tools like vim,
emacs, curl, and python. Because it contains the CUDA libraries, it is compatible with
many deep learning frameworks like PyTorch, but the platform architecture is limited.