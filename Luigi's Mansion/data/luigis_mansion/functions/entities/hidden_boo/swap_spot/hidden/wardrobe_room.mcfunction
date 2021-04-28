summon minecraft:area_effect_cloud 679 21 -43 {Tags:["choice"]}
summon minecraft:area_effect_cloud 679 21 -50 {Tags:["choice"]}
summon minecraft:area_effect_cloud 679 21 -58 {Tags:["choice"]}
summon minecraft:area_effect_cloud 686 22 -48 {Tags:["choice"]}
summon minecraft:area_effect_cloud 686 21 -44 {Tags:["choice"]}
summon minecraft:area_effect_cloud 685 20 -42 {Tags:["choice"]}
summon minecraft:area_effect_cloud 680 20 -42 {Tags:["choice"]}
summon minecraft:area_effect_cloud 677 20 -56 {Tags:["choice"]}
summon minecraft:area_effect_cloud 678 22 -53 {Tags:["choice"]}
summon minecraft:area_effect_cloud 678 22 -54 {Tags:["choice"]}
summon minecraft:area_effect_cloud 678 22 -55 {Tags:["choice"]}
summon minecraft:area_effect_cloud 678 22 -56 {Tags:["choice"]}
summon minecraft:area_effect_cloud 686 22 -50 {Tags:["choice"]}
summon minecraft:area_effect_cloud 686 22 -52 {Tags:["choice"]}
summon minecraft:area_effect_cloud 686 22 -56 {Tags:["choice"]}
summon minecraft:area_effect_cloud 686 22 -58 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]