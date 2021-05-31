summon minecraft:marker ~ ~ ~ {Rotation:[0.0f,90.0f],CustomName:'{"translate":"luigis_mansion:entity.fake_door"}',Tags:["fake_door","south","normal"]}
setblock ~ ~ ~ minecraft:dark_oak_door[facing=south,half=lower,open=false,hinge=left]
setblock ~ ~1 ~ minecraft:dark_oak_door[facing=south,half=upper,open=false,hinge=left]
setblock ~ ~2 ~ minecraft:spruce_log[axis=y]
setblock ~1 ~1 ~ minecraft:spruce_log[axis=y]
setblock ~-1 ~1 ~ minecraft:spruce_log[axis=y]