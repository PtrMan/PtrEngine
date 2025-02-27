the format is
e entrydata d donedate  priority

Graphics - Vulkan
---




- e 22.08.2016 d - LOW :  variable scissor for resolution change (fullscreen/window)



- e 22.08.2016 d - LOW :  instantiated rendering


- e 22.08.2016 d - LOW :  deffered rendering
- e 22.08.2016 d - LOW :  HDR (mipmap down in renderpass for fast calculation of total illumination)



- e 22.08.2016 d - LOW : in memory allocator / allocator usage
                         check device limits for memory limit of memory by memory type and possibly resize the first allocation size to this size

- e 22.08.2016 d - LOW : queue allocation:
                         in the initialisation of the vulkan : check/watch out for max # of queues

- e 22.08.2016 d - LOW : fullscreen rendering

- e 05.09.2016 d - MEDIUM : generalize internal vulkan handling so that it applies to other API's too (i look at you OpenGL 4.x with AZDO and some nvidia tricks/extensions)
                            * generalized way to fill/manage commandbuffers


AI / physics (just together because we have the todo points together for now)
---

- e 22.08.2016 d - : refactor basic AI from the AI fuzzy logic test to some reusable AI
- e 22.08.2016 d - : refactor raycasting code from AI fuzzy logic test into physics engine

- e 24.08.2016 d - : behavior tree : add more basic nodes, for for example switching and checking a condition
                     http://www.gamasutra.com/blogs/ChrisSimpson/20140717/221339/Behavior_trees_for_AI_How_they_work.php

                     implement more decorators
                     http://aigamedev.com/open/article/decorator/

- e 05.09.2016 d - : improve the performane of the behavior tree by managing  stack and remebering the active node
- e 05.09.2016 d - : let wait behaviorTree leafs report the time of waiting to the behaviortree execution, so we can skip ahead when we simulate the world over a long peroid of time

GUI
---

- e 22.08.2016 d - : get basic GUI going with vulkan, refactor 
- e 22.08.2016 d - : get the glyph texture renderer going

refactoring
---

- e 22.08.2016 d - : refactor code so its based in a directory called "whiteSphereEngine"
- e 22.08.2016 d - : include nuclear physics simulation code

core
---

- e 18.10.2016 d - : (unified) spatial subdivision scheme based on conics (torus, sphere) for rendering and physics and (later) networking.
                     This is inspired by the zoning system used in star citizen
                     www.youtube.com/watch?v=j0r6aOasFEQ

                     the torus can be disected into multiple subzones (sliced over the larger circle)

- e 22.08.2016 d - : include task schedueling code from old engine code (if its there)
- e 22.08.2016 d - LOW : using task schedueling code for multithreading

- e 05.09.2016 d - : implement event store to log events

atronomical
---

- e 22.08.2016 d - : translate c++ code for astronomical simulation to D and integrate
- e 22.08.2016 d - : pull in other C++ code from spacesimcore and translate to D
- e 22.08.2016 d - : use Motion.d in this codebase to calculate celestial position and velocity
                     (half done, position is calculated with it already, but not velocity)

planets
----

- e 05.09.2016 d - : planet material system
                     * ice/rocky/iron/silicon/etc rich planets
                     all modelled realistically  
                     Mass-Radius Relationships for solid exoplanets:
                     http://arxiv.org/abs/0707.2895

                     * heat from sun(s)
                     * heat melts/freeezes surface
                     * material system has influence to magnetic field (see magnetic system)
-e 05.09.2016 d - : weather system based on cellular automata
                    main properties
                    * heat
                    * pressure
                    * wind velocity
                    (have already a prototype of the CA rule/framework in toIntegrate folder)



interaction
---

- e 23.08.2016 d - : begin basic crafting system for weapons and thruster engine
                     one "effect modifier" is the implosion modifier, which is useful for building nuclear weapons

                     components: generic material (can be made out of any metal at any mixture rate)
                                                  (can be made with any microstructure damages, for example sand has extremly high microstructure damages)
                                                  (is made out of basic 3d shapes, boxes, quaders, cylinders, cylinders with hole, etc)
                                 neutron deflector
                                 explosives
                                 <special: implosion (for nuclear weapons)>
                                 <special: barrelconstraint (for classical guns and that like)
                                 <special: ignitor (for rocket engine)

- e 24.08.2016 d - : basic resource producer/consumer/routing system

- e 24.08.2016 d - : (related to crafting system) integrate into the physical interaction system heat transfer, and state of matter


- e 27.08.2016 d - : implement fluid dynamics https://www.khanacademy.org/science/physics/fluids/fluid-dynamics/v/fluids-part-7

- e 28.08.2016 d - : implement monte carlo integrator to calculate parameters of section of fluid
                     http://csg.sph.umich.edu/abecasis/class/2006/615.22.pdf

                     we will use this to calculate the parameters of the cut plane of a fluid that the fluid has roughtly the target volume

- e 05.09.2016 d - : antenna/relay system based on the signal/even system for sending/receiving light and other types of radiation

- e 30.09.2016 d - : implement http://web.mit.edu/16.unified/www/FALL/thermodynamics/notes/node111.html
                     for flame temperature calculation


signal
----

- e 30.08.2016 d - : implement signal/event system for sending/receiving light and other types of radiation


CODE TODO
---

// TODO< make sure that a unorm format is selected for the swapchain image! >

DONE
---

graphics
----

- e 22.08.2016 d 22.08.2016? : implement GraphicsVulkanAbstractGraphicsEngineAdapter and refactor Graphics vulkan for it
- e 22.08.2016 d before 13.10.2016 LOW :  depth buffer

- e 22.08.2016 d 17.10.2016 LOW : implement textures
- e 22.08.2016 d 17.10.2016 LOW :  use vkCmdBlitImage for copy for the right conversion



ai
---

- e 22.08.2016 d 23.08.2016 : pull in behaviour tree and refactor to new codebase







