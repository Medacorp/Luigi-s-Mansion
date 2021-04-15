summon minecraft:area_effect_cloud 707 112 -20 {Tags:["choice"]}
summon minecraft:area_effect_cloud 711 114 -24 {Tags:["choice"]}
summon minecraft:area_effect_cloud 713 114 -24 {Tags:["choice"]}
summon minecraft:area_effect_cloud 709 111 -36 {Tags:["choice"]}
summon minecraft:area_effect_cloud 715 111 -30 {Tags:["choice"]}
summon minecraft:area_effect_cloud 715 111 -28 {Tags:["choice"]}
summon minecraft:area_effect_cloud 715 111 -27 {Tags:["choice"]}
summon minecraft:area_effect_cloud 707 111 -24 {Tags:["choice"]}
summon minecraft:area_effect_cloud 711 112 -24 {Tags:["choice"]}
summon minecraft:area_effect_cloud 713 112 -24 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]