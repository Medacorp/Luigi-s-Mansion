summon minecraft:area_effect_cloud 687 112 -1 {Tags:["choice"]}
summon minecraft:area_effect_cloud 694 112 -1 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 113 2 {Tags:["choice"]}
summon minecraft:area_effect_cloud 686 112 7 {Tags:["choice"]}
summon minecraft:area_effect_cloud 687 112 16 {Tags:["choice"]}
summon minecraft:area_effect_cloud 694 112 16 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 113 13 {Tags:["choice"]}
summon minecraft:area_effect_cloud 686 112 1 {Tags:["choice"]}
summon minecraft:area_effect_cloud 689 111 3 {Tags:["choice"]}
summon minecraft:area_effect_cloud 691 111 3 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 111 8 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 113 6 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 113 9 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 111 1 {Tags:["choice"]}
summon minecraft:area_effect_cloud 691 111 16 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 112 16 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]