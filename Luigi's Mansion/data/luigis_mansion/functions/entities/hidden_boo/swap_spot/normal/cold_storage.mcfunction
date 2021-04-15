summon minecraft:area_effect_cloud 702 93 -12 {Tags:["choice"]}
summon minecraft:area_effect_cloud 703 93 -13 {Tags:["choice"]}
summon minecraft:area_effect_cloud 713 93 0 {Tags:["choice"]}
summon minecraft:area_effect_cloud 715 93 -1 {Tags:["choice"]}
summon minecraft:area_effect_cloud 712 95 1 {Tags:["choice"]}
summon minecraft:area_effect_cloud 700 95 -6 {Tags:["choice"]}
summon minecraft:area_effect_cloud 703 93 -2 {Tags:["choice"]}
summon minecraft:area_effect_cloud 715 93 -10 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]