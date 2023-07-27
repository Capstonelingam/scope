export CMAKE_BUILD_PARALLEL_LEVEL=36 && export MAX_JOBS=36 && export TCNN_CUDA_ARCHITECTURES="50;52;60;61;70;75;80;86" \
        && git clone --recursive https://github.com/nvlabs/tiny-cuda-nn \
        && cd tiny-cuda-nn \
        && git checkout v1.6 \
        && cd bindings/torch \
        && python setup.py install \
        && cd ../../.. \
        && rm -rf tiny-cuda-nn
