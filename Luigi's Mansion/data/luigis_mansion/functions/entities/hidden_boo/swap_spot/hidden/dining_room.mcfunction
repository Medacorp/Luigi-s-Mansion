summon minecraft:area_effect_cloud 687 102 12 {Tags:["choice"]}
summon minecraft:area_effect_cloud 687 102 -6 {Tags:["choice"]}
summon minecraft:area_effect_cloud 687 102 -10 {Tags:["choice"]}
summon minecraft:area_effect_cloud 687 102 16 {Tags:["choice"]}
summon minecraft:area_effect_cloud 690 102 -3 {Tags:["choice"]}
summon minecraft:area_effect_cloud 690 102 3 {Tags:["choice"]}
summon minecraft:area_effect_cloud 690 102 9 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 105 -6 {Tags:["choice"]}
summon minecraft:area_effect_cloud 687 105 3 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 105 3 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 105 12 {Tags:["choice"]}
summon minecraft:area_effect_cloud 693 102 13 {Tags:["choice"]}
summon minecraft:area_effect_cloud 692 103 11 {Tags:["choice"]}
summon minecraft:area_effect_cloud 692 103 9 {Tags:["choice"]}
summon minecraft:area_effect_cloud 691 103 5 {Tags:["choice"]}
summon minecraft:area_effect_cloud 692 103 1 {Tags:["choice"]}
summon minecraft:area_effect_cloud 692 103 -2 {Tags:["choice"]}
summon minecraft:area_effect_cloud 694 102 -3 {Tags:["choice"]}
summon minecraft:area_effect_cloud 692 103 -5 {Tags:["choice"]}
summon minecraft:area_effect_cloud 692 103 0 {Tags:["choice"]}
summon minecraft:area_effect_cloud 692 103 6 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]