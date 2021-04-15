summon minecraft:area_effect_cloud 695 113 -40 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 113 -33 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 113 -39 {Tags:["choice"]}
summon minecraft:area_effect_cloud 696 114 -24 {Tags:["choice"]}
summon minecraft:area_effect_cloud 696 114 -24 {Tags:["choice"]}
summon minecraft:area_effect_cloud 692 114 -24 {Tags:["choice"]}
summon minecraft:area_effect_cloud 695 111 -40 {Tags:["choice"]}
summon minecraft:area_effect_cloud 691 111 -37 {Tags:["choice"]}
summon minecraft:area_effect_cloud 690 111 -26 {Tags:["choice"]}
summon minecraft:area_effect_cloud 689 111 -25 {Tags:["choice"]}
summon minecraft:area_effect_cloud 695 111 -24 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]