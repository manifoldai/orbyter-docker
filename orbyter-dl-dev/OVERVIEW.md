# orbyter-dl-dev

Docker image for GPU-assisted ML development in Python which contains essential tools like Jupyter, pandas, NumPy, and scikit-learn.

This image is built atop `orbyter-base-sys-dl` which installs CUDA drivers. As such, architecture is limited. For
developing without GPU support, consider using the `orbyter-ml-dev` image.
