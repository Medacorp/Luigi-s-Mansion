MirrorX means the reflection is moved on the X axis (mirror aligned with Z axis), and Mirror Z on Z axis (aligned with X axis); at most 1 of these scores should ever be used.

LightX, LightY and LightZ should all be set at the same time, or not at all; they are the origin of the light in 1/100th block values (eg 1250 = 12.5); this is treated as the light origin point and shadows will be cast around it. 
No shadow will be cast if the path from the position to the entity is obstructed by a block.
Shadow size is determined by the entity.