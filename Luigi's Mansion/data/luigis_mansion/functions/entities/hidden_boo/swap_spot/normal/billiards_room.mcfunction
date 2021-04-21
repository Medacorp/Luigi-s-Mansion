summon minecraft:area_effect_cloud 683 11 88 {Tags:["choice"]}
summon minecraft:area_effect_cloud 679 11 88 {Tags:["choice"]}
summon minecraft:area_effect_cloud 677 13 66 {Tags:["choice"]}
summon minecraft:area_effect_cloud 686 13 70 {Tags:["choice"]}
summon minecraft:area_effect_cloud 675 12 73 {Tags:["choice"]}
summon minecraft:area_effect_cloud 686 13 82 {Tags:["choice"]}
summon minecraft:area_effect_cloud 683 13 88 {Tags:["choice"]}
summon minecraft:area_effect_cloud 677 13 88 {Tags:["choice"]}
summon minecraft:area_effect_cloud 675 13 83 {Tags:["choice"]}
summon minecraft:area_effect_cloud 685 11 67 {Tags:["choice"]}
summon minecraft:area_effect_cloud 686 11 66 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 11 67 {Tags:["choice"]}
summon minecraft:area_effect_cloud 685 11 68 {Tags:["choice"]}
summon minecraft:area_effect_cloud 681 11 78 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]