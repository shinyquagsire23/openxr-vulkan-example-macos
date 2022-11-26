#!/bin/zsh
CWD=$(pwd)
cd ../monado/build && make && \
cd $CWD && \
cd build && make && cd $CWD && \
mkdir -p shaders && cp src/shaders/* shaders/ && cd $CWD && \
glslc --target-env=vulkan1.2 shaders/Basic.vert -std=450core -O -o shaders/Basic.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt0.vert -std=450core -O -o shaders/Pt0.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt1.vert -std=450core -O -o shaders/Pt1.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt2.vert -std=450core -O -o shaders/Pt2.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt3.vert -std=450core -O -o shaders/Pt3.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt4.vert -std=450core -O -o shaders/Pt4.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt5.vert -std=450core -O -o shaders/Pt5.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt6.vert -std=450core -O -o shaders/Pt6.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt7.vert -std=450core -O -o shaders/Pt7.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt8.vert -std=450core -O -o shaders/Pt8.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt9.vert -std=450core -O -o shaders/Pt9.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt10.vert -std=450core -O -o shaders/Pt10.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt11.vert -std=450core -O -o shaders/Pt11.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt12.vert -std=450core -O -o shaders/Pt12.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt13.vert -std=450core -O -o shaders/Pt13.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt14.vert -std=450core -O -o shaders/Pt14.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt15.vert -std=450core -O -o shaders/Pt15.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt16.vert -std=450core -O -o shaders/Pt16.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt17.vert -std=450core -O -o shaders/Pt17.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt18.vert -std=450core -O -o shaders/Pt18.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt19.vert -std=450core -O -o shaders/Pt19.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt20.vert -std=450core -O -o shaders/Pt20.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt21.vert -std=450core -O -o shaders/Pt21.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt22.vert -std=450core -O -o shaders/Pt22.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt23.vert -std=450core -O -o shaders/Pt23.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt24.vert -std=450core -O -o shaders/Pt24.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt25.vert -std=450core -O -o shaders/Pt25.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt26.vert -std=450core -O -o shaders/Pt26.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt27.vert -std=450core -O -o shaders/Pt27.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt28.vert -std=450core -O -o shaders/Pt28.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt29.vert -std=450core -O -o shaders/Pt29.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt30.vert -std=450core -O -o shaders/Pt30.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt31.vert -std=450core -O -o shaders/Pt31.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt32.vert -std=450core -O -o shaders/Pt32.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt33.vert -std=450core -O -o shaders/Pt33.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt34.vert -std=450core -O -o shaders/Pt34.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt35.vert -std=450core -O -o shaders/Pt35.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt36.vert -std=450core -O -o shaders/Pt36.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt37.vert -std=450core -O -o shaders/Pt37.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt38.vert -std=450core -O -o shaders/Pt38.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt39.vert -std=450core -O -o shaders/Pt39.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt40.vert -std=450core -O -o shaders/Pt40.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt41.vert -std=450core -O -o shaders/Pt41.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt42.vert -std=450core -O -o shaders/Pt42.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt43.vert -std=450core -O -o shaders/Pt43.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt44.vert -std=450core -O -o shaders/Pt44.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt45.vert -std=450core -O -o shaders/Pt45.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt46.vert -std=450core -O -o shaders/Pt46.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt47.vert -std=450core -O -o shaders/Pt47.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt48.vert -std=450core -O -o shaders/Pt48.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt49.vert -std=450core -O -o shaders/Pt49.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt50.vert -std=450core -O -o shaders/Pt50.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt51.vert -std=450core -O -o shaders/Pt51.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt52.vert -std=450core -O -o shaders/Pt52.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt53.vert -std=450core -O -o shaders/Pt53.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt54.vert -std=450core -O -o shaders/Pt54.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt55.vert -std=450core -O -o shaders/Pt55.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt56.vert -std=450core -O -o shaders/Pt56.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt57.vert -std=450core -O -o shaders/Pt57.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt58.vert -std=450core -O -o shaders/Pt58.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt59.vert -std=450core -O -o shaders/Pt59.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt60.vert -std=450core -O -o shaders/Pt60.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt61.vert -std=450core -O -o shaders/Pt61.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt62.vert -std=450core -O -o shaders/Pt62.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Pt63.vert -std=450core -O -o shaders/Pt63.vert.spv && \
glslc --target-env=vulkan1.2 shaders/Cube.frag -std=450core -O -o shaders/Cube.frag.spv && \
glslc --target-env=vulkan1.2 shaders/Grid.frag -std=450core -O -o shaders/Grid.frag.spv && \
#XR_RUNTIME_JSON=/Users/maxamillion/workspace/monado/build/openxr_monado-dev.json OXR_DEBUG_GUI=0 MVK_CONFIG_RESUME_LOST_DEVICE=1 ./build/openxr-example
XR_RUNTIME_JSON=/Users/maxamillion/workspace/monado/build/openxr_monado-dev.json OXR_DEBUG_GUI=0 MVK_CONFIG_RESUME_LOST_DEVICE=1 OXR_DEBUG_ENTRYPOINTS=0 lldb -o run ./build/openxr-example