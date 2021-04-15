summon minecraft:area_effect_cloud ~ ~ ~ {Rotation:[0.0f,90.0f],CustomName:'{"translate":"luigis_mansion:entity.door"}',Tags:["fake_door","north","normal"],Duration:2147483647}
setblock ~ ~ ~ minecraft:dark_oak_door[facing=north,half=lower,open=false,hinge=right]
setblock ~ ~1 ~ minecraft:dark_oak_door[facing=north,half=upper,open=false,hinge=right]
setblock ~ ~2 ~ minecraft:spruce_log[axis=y]
setblock ~1 ~1 ~ minecraft:spruce_log[axis=y]
setblock ~-1 ~1 ~ minecraft:spruce_log[axis=y]