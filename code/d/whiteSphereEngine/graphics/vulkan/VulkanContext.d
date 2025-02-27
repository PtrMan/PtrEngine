module whiteSphereEngine.graphics.vulkan.VulkanContext;

import std.stdint;

import api.vulkan.Vulkan;
import memory.NonGcHandle : NonGcHandle;
import whiteSphereEngine.graphics.vulkan.VulkanDevice;
import whiteSphereEngine.graphics.vulkan.helpers.QueueManager;

import whiteSphereEngine.graphics.vulkan.VulkanSwapChain;
import whiteSphereEngine.graphics.vulkan.VulkanSurface;
import helpers.VariableValidator;
import graphics.vulkan.VulkanMemoryAllocator;

// all vulkan handles, which are set up from the setup code
// and some helper methods
class VulkanContext {
	QueueManager queueManager = new QueueManager();
	VulkanSurface surface;
	
	VulkanDevice chosenDevice;
	
	VariableValidator!VkInstance instance;
	
	// TODO< actually we just need a commandpool for each queue type >
	// TODO< each command pool needs an mutex too >
	VariableValidator!VkCommandPool[string] commandPoolsByQueueName;
	
	VariableValidator!VkFormat depthFormatMediumPrecision;
	VariableValidator!VkFormat depthFormatHighPrecision;
	
	VulkanSwapChain swapChain;
	
	
	protected VulkanMemoryAllocator[uint32_t] allocatorsByMemoryTypeIndex;
	
	final VulkanMemoryAllocator retriveOrCreateMemoryAllocatorByTypeIndex(uint32_t typeIndex, VulkanMemoryAllocator.AllocatorConfiguration allocatorConfiguration) {
		if( !(typeIndex in allocatorsByMemoryTypeIndex) ) {
			VulkanMemoryAllocator createdMemoryAllocator = new VulkanMemoryAllocator(this, allocatorConfiguration);
			allocatorsByMemoryTypeIndex[typeIndex] = createdMemoryAllocator;
			return createdMemoryAllocator;
		}
		else {
			return retriveByTypeIndex(typeIndex);
		}
	}
	
	final VulkanMemoryAllocator retriveByTypeIndex(uint32_t typeIndex) {
		assert( typeIndex in allocatorsByMemoryTypeIndex );
		return allocatorsByMemoryTypeIndex[typeIndex];
	}
}
