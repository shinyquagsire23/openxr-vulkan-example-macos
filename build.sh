#!/bin/zsh
CWD=$(pwd)
cd ../monado/build && make && \
cd $CWD && \
cd build && make && cd $CWD && \
mkdir -p shaders && cp src/shaders/* shaders/ && cd $CWD && \
glslc --target-env=vulkan1.2 shaders/Basic.vert -std=450core -O -o shaders/Basic.vert.spv && \
glslc --target-env=vulkan1.2 shaders/HandL.vert -std=450core -O -o shaders/HandL.vert.spv && \
glslc --target-env=vulkan1.2 shaders/HandR.vert -std=450core -O -o shaders/HandR.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Cube.frag -std=450core -O -o shaders/Cube.frag.spv && \
glslc --target-env=vulkan1.2 shaders/Grid.frag -std=450core -O -o shaders/Grid.frag.spv && \
#XR_RUNTIME_JSON=/Users/maxamillion/workspace/monado/build/openxr_monado-dev.json OXR_DEBUG_GUI=0 MVK_CONFIG_RESUME_LOST_DEVICE=1 ./build/openxr-example
XR_RUNTIME_JSON=/Users/maxamillion/workspace/monado/build/openxr_monado-dev.json OXR_DEBUG_GUI=0 MVK_CONFIG_RESUME_LOST_DEVICE=1 OXR_DEBUG_ENTRYPOINTS=0 lldb -o run ./build/openxr-example