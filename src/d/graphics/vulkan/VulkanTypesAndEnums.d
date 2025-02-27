module graphics.vulkan.VulkanTypesAndEnums;

import std.typecons : Typedef;

import api.vulkan.Vulkan;

// types and enums for a more typesafe vulkan handling

/+ ditch this
// own template which has to have the same size
// we do our own template because the standard Typedefed has not the equal size (propably, haven't tested it)
+/



alias TypesafeVkImage = Typedef!(VkImage, VkImage.init, "image");
alias TypesafeVkBuffer = Typedef!(VkBuffer, VkBuffer.init, "buffer");
alias TypesafeVkSemaphore = Typedef!(VkSemaphore, VkSemaphore.init, "semaphore");
alias TypesafeVkFence = Typedef!(VkFence, VkFence.init, "fence");
alias TypesafeVkCommandBuffer = Typedef!(VkCommandBuffer, VkCommandBuffer.init, "commandbuffer");
alias TypesafeVkQueue = Typedef!(VkQueue, VkQueue.init, "queue");
alias TypesafeVkCommandPool = Typedef!(VkCommandPool, VkCommandPool.init, "commandPool");
alias TypesafeVkImageView = Typedef!(VkImageView, VkImageView.init, "imageview");
alias TypesafeVkFramebuffer = Typedef!(VkFramebuffer, VkFramebuffer.init, "framebuffer");
alias TypesafeVkRenderPass = Typedef!(VkRenderPass, VkRenderPass.init, "renderpass");
alias TypesafeVkPipeline = Typedef!(VkPipeline, VkPipeline.init, "pipeline");
alias TypesafeVkPipelineLayout = Typedef!(VkPipelineLayout, VkPipelineLayout.init, "pipelineLayout");
alias TypesafeVkDeviceMemory = Typedef!(VkDeviceMemory, VkDeviceMemory.init, "deviceMemory");
alias TypesafeVkSampler = Typedef!(VkSampler, VkSampler.init, "sampler");
alias TypesafeVkDescriptorSetLayout = Typedef!(VkDescriptorSetLayout, VkDescriptorSetLayout.init, "descriptorSetLayout");
alias TypesafeVkDescriptorPool = Typedef!(VkDescriptorPool, VkDescriptorPool.init, "descriptorPool");
alias TypesafeVkDescriptorSet = Typedef!(VkDescriptorSet, VkDescriptorSet.init, "descriptorSet");

// make sure that the sizes are equal because we don't want to rebuild arrays
static assert( TypesafeVkImage.sizeof == VkImage.sizeof);
static assert( TypesafeVkBuffer.sizeof == TypesafeVkBuffer.sizeof);
static assert( TypesafeVkSemaphore.sizeof == TypesafeVkSemaphore.sizeof);
static assert( TypesafeVkFence.sizeof == TypesafeVkFence.sizeof);
static assert( TypesafeVkCommandBuffer.sizeof == VkCommandBuffer.sizeof);
static assert( TypesafeVkQueue.sizeof == VkQueue.sizeof);
static assert( TypesafeVkCommandPool.sizeof == VkCommandPool.sizeof);
static assert( TypesafeVkPipelineLayout.sizeof == VkPipelineLayout.sizeof);
static assert( TypesafeVkSampler.sizeof == VkSampler.sizeof);
static assert( TypesafeVkDescriptorSetLayout.sizeof == VkDescriptorSetLayout.sizeof);
static assert( TypesafeVkDescriptorPool.sizeof == VkDescriptorPool.sizeof);
static assert( TypesafeVkDescriptorSet.sizeof == VkDescriptorSet.sizeof);

// doesnt compile
//static assert( TypesafeVkImageView.sizeof = VkImageView.sizeof);
//static assert( TypesafeVkFramebuffer.sizeof = VkFramebuffer.sizeof);
//static assert( TypesafeVkRenderPass.sizeof = VkRenderPass.sizeof);
//static assert( TypesafeVkPipeline.sizeof = VkPipeline.sizeof);
// TODO< pipeline layout

static assert( TypesafeVkDeviceMemory.sizeof == VkDeviceMemory.sizeof);


