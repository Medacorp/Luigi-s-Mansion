summon minecraft:area_effect_cloud 702 93 27 {Tags:["choice"]}
summon minecraft:area_effect_cloud 703 93 28 {Tags:["choice"]}
summon minecraft:area_effect_cloud 713 93 15 {Tags:["choice"]}
summon minecraft:area_effect_cloud 715 93 16 {Tags:["choice"]}
summon minecraft:area_effect_cloud 712 95 14 {Tags:["choice"]}
summon minecraft:area_effect_cloud 700 95 21 {Tags:["choice"]}
summon minecraft:area_effect_cloud 703 93 17 {Tags:["choice"]}
summon minecraft:area_effect_cloud 715 93 25 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]