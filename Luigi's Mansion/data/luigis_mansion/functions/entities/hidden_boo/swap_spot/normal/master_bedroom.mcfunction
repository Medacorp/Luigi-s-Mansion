summon minecraft:area_effect_cloud 695 113 55 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 113 48 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 113 44 {Tags:["choice"]}
summon minecraft:area_effect_cloud 696 114 39 {Tags:["choice"]}
summon minecraft:area_effect_cloud 696 114 39 {Tags:["choice"]}
summon minecraft:area_effect_cloud 692 114 39 {Tags:["choice"]}
summon minecraft:area_effect_cloud 695 111 55 {Tags:["choice"]}
summon minecraft:area_effect_cloud 691 111 52 {Tags:["choice"]}
summon minecraft:area_effect_cloud 690 111 41 {Tags:["choice"]}
summon minecraft:area_effect_cloud 689 111 40 {Tags:["choice"]}
summon minecraft:area_effect_cloud 695 111 39 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]