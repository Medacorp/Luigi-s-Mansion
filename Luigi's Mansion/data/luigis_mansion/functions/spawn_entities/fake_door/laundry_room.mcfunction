summon minecraft:area_effect_cloud ~ ~ ~ {Rotation:[0.0f,90.0f],CustomName:'{"translate":"luigis_mansion:entity.door"}',Tags:["fake_door","laundry_room"],Duration:2147483647}
execute if score #mirrored Selected matches 0 run setblock ~ ~ ~ minecraft:warped_door[facing=west,half=lower,open=false,hinge=right]
execute if score #mirrored Selected matches 0 run setblock ~ ~1 ~ minecraft:warped_door[facing=west,half=upper,open=false,hinge=right]
execute if score #mirrored Selected matches 1 run setblock ~ ~ ~ minecraft:warped_door[facing=west,half=lower,open=false,hinge=left]
execute if score #mirrored Selected matches 1 run setblock ~ ~1 ~ minecraft:warped_door[facing=west,half=upper,open=false,hinge=left]
setblock ~ ~1 ~-1 minecraft:light_blue_terracotta
setblock ~ ~1 ~1 minecraft:light_blue_terracotta