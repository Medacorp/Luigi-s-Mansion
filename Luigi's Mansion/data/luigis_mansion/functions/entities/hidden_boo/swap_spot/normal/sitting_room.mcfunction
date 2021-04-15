summon minecraft:area_effect_cloud 712 111 -7 {Tags:["choice"]}
summon minecraft:area_effect_cloud 709 111 -12 {Tags:["choice"]}
summon minecraft:area_effect_cloud 713 111 -12 {Tags:["choice"]}
summon minecraft:area_effect_cloud 717 111 -4 {Tags:["choice"]}
summon minecraft:area_effect_cloud 707 111 -20 {Tags:["choice"]}
summon minecraft:area_effect_cloud 717 113 -6 {Tags:["choice"]}
summon minecraft:area_effect_cloud 707 113 -9 {Tags:["choice"]}
summon minecraft:area_effect_cloud 717 114 -9 {Tags:["choice"]}
summon minecraft:area_effect_cloud 717 113 -13 {Tags:["choice"]}
summon minecraft:area_effect_cloud 717 113 -17 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]