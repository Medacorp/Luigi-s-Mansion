summon minecraft:area_effect_cloud 689 113 -21 {Tags:["choice"]}
summon minecraft:area_effect_cloud 693 113 -21 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 113 -13 {Tags:["choice"]}
summon minecraft:area_effect_cloud 691 113 -4 {Tags:["choice"]}
summon minecraft:area_effect_cloud 694 113 -4 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 111 -5 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 111 -21 {Tags:["choice"]}
summon minecraft:area_effect_cloud 688 111 -8 {Tags:["choice"]}
summon minecraft:area_effect_cloud 690 111 -9 {Tags:["choice"]}
summon minecraft:area_effect_cloud 691 111 -17 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 115 -14 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]