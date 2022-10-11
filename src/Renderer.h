#pragma once

#include <vulkan/vulkan.h>

class Buffer;
class Headset;

class Renderer final
{
public:
  Renderer(const Headset* headset);

  void destroy();

  bool render(size_t eyeIndex, size_t swapchainImageIndex) const;

  bool isValid() const;

private:
  bool valid = true;

  const Headset* headset = nullptr;
  VkDescriptorSetLayout descriptorSetLayout = nullptr;
  VkDescriptorPool descriptorPool = nullptr;
  VkDescriptorSet descriptorSet = nullptr;
  VkPipelineLayout pipelineLayout = nullptr;
  VkPipeline pipeline = nullptr;
  VkCommandPool commandPool = nullptr;
  VkCommandBuffer commandBuffer = nullptr;
  VkFence fence = nullptr;

  Buffer *uniformBuffer = nullptr, *vertexBuffer = nullptr;
};