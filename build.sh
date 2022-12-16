#!/bin/bash
CWD=$(pwd)
cd ../monado/build && make openxr_monado && \
cd $CWD && \
cd build && make && cd $CWD && \
#XR_RUNTIME_JSON=/Users/maxamillion/workspace/monado/build/openxr_monado-dev.json OXR_DEBUG_GUI=0 MVK_CONFIG_RESUME_LOST_DEVICE=1 ./build/openxr-example
VR_OVERRIDE=/home/maxamillion/workspace/OpenOVR/build OXR_DEBUG_GUI=0 MVK_CONFIG_RESUME_LOST_DEVICE=1 OXR_DEBUG_ENTRYPOINTS=0 XRT_COMPOSITOR_COMPUTE=1 MVK_CONFIG_FULL_IMAGE_VIEW_SWIZZLE=1 ./build/openxr-example

