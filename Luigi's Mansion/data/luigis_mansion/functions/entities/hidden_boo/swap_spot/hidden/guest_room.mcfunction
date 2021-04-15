summon minecraft:area_effect_cloud 713 111 52 {Tags:["choice"]}
summon minecraft:area_effect_cloud 709 111 39 {Tags:["choice"]}
summon minecraft:area_effect_cloud 717 113 42 {Tags:["choice"]}
summon minecraft:area_effect_cloud 707 114 46 {Tags:["choice"]}
summon minecraft:area_effect_cloud 717 114 46 {Tags:["choice"]}
summon minecraft:area_effect_cloud 707 114 51 {Tags:["choice"]}
summon minecraft:area_effect_cloud 717 114 54 {Tags:["choice"]}
summon minecraft:area_effect_cloud 707 111 39 {Tags:["choice"]}
summon minecraft:area_effect_cloud 715 111 55 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]