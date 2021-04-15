summon minecraft:area_effect_cloud 697 120 -18 {Tags:["choice"]}
summon minecraft:area_effect_cloud 690 120 -19 {Tags:["choice"]}
summon minecraft:area_effect_cloud 689 120 -21 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 120 -24 {Tags:["choice"]}
summon minecraft:area_effect_cloud 688 120 -23 {Tags:["choice"]}
summon minecraft:area_effect_cloud 687 120 -26 {Tags:["choice"]}
summon minecraft:area_effect_cloud 687 120 -29 {Tags:["choice"]}
summon minecraft:area_effect_cloud 688 120 -31 {Tags:["choice"]}
summon minecraft:area_effect_cloud 689 120 -33 {Tags:["choice"]}
summon minecraft:area_effect_cloud 696 120 -36 {Tags:["choice"]}
summon minecraft:area_effect_cloud 686 121 -26 {Tags:["choice"]}
summon minecraft:area_effect_cloud 686 121 -33 {Tags:["choice"]}
summon minecraft:area_effect_cloud 690 121 -36 {Tags:["choice"]}
summon minecraft:area_effect_cloud 694 120 -36 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]