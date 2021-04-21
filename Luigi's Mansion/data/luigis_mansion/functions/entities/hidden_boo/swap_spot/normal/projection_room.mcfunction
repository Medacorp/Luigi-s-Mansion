summon minecraft:area_effect_cloud 685 12 38 {Tags:["choice"]}
summon minecraft:area_effect_cloud 676 11 43 {Tags:["choice"]}
summon minecraft:area_effect_cloud 676 11 33 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 11 32 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]