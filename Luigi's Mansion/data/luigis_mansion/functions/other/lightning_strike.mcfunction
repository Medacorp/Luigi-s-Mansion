kill @e[x=722.5,y=130,z=7.5,distance=..0.7,type=minecraft:item,limit=1,nbt={Item:{id:"minecraft:carved_pumpkin"}}]
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["lightning"],Duration:1}
spreadplayers ~ ~ 1 300 false @e[tag=lightning,type=minecraft:area_effect_cloud,limit=1]
execute at @e[tag=lightning,type=minecraft:area_effect_cloud,limit=1] run summon minecraft:lightning_bolt ~ ~ ~
