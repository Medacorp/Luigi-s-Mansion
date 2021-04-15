summon minecraft:area_effect_cloud 681 102 -21 {Tags:["choice"]}
summon minecraft:area_effect_cloud 677 102 -21 {Tags:["choice"]}
summon minecraft:area_effect_cloud 675 104 1 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 104 -3 {Tags:["choice"]}
summon minecraft:area_effect_cloud 673 103 -6 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 104 -15 {Tags:["choice"]}
summon minecraft:area_effect_cloud 681 104 -21 {Tags:["choice"]}
summon minecraft:area_effect_cloud 675 104 -21 {Tags:["choice"]}
summon minecraft:area_effect_cloud 673 104 -16 {Tags:["choice"]}
summon minecraft:area_effect_cloud 683 102 0 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 102 1 {Tags:["choice"]}
summon minecraft:area_effect_cloud 682 102 0 {Tags:["choice"]}
summon minecraft:area_effect_cloud 683 102 -1 {Tags:["choice"]}
summon minecraft:area_effect_cloud 679 102 -11 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]