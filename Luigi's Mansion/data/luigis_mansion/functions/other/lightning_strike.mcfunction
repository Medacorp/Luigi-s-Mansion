summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["lightning"],Duration:1}
spreadplayers ~ ~ 1 200 false @e[tag=lightning,type=minecraft:area_effect_cloud,limit=1]
execute at @e[tag=lightning,type=minecraft:area_effect_cloud,limit=1] run summon minecraft:lightning_bolt ~ ~ ~
