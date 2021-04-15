summon minecraft:area_effect_cloud 666 103 32 {Tags:["choice"]}
summon minecraft:area_effect_cloud 670 104 32 {Tags:["choice"]}
summon minecraft:area_effect_cloud 670 103 30 {Tags:["choice"]}
summon minecraft:area_effect_cloud 666 114 35 {Tags:["choice"]}
summon minecraft:area_effect_cloud 666 114 33 {Tags:["choice"]}
summon minecraft:area_effect_cloud 668 101 34 {Tags:["choice"]}
summon minecraft:area_effect_cloud 666 101 30 {Tags:["choice"]}
summon minecraft:area_effect_cloud 666 101 27 {Tags:["choice"]}
summon minecraft:area_effect_cloud 666 104 27 {Tags:["choice"]}
summon minecraft:area_effect_cloud 665 102 30 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]