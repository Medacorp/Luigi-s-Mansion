summon minecraft:area_effect_cloud 681 102 36 {Tags:["choice"]}
summon minecraft:area_effect_cloud 677 102 36 {Tags:["choice"]}
summon minecraft:area_effect_cloud 675 104 14 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 104 18 {Tags:["choice"]}
summon minecraft:area_effect_cloud 673 103 21 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 104 30 {Tags:["choice"]}
summon minecraft:area_effect_cloud 681 104 36 {Tags:["choice"]}
summon minecraft:area_effect_cloud 675 104 36 {Tags:["choice"]}
summon minecraft:area_effect_cloud 673 104 31 {Tags:["choice"]}
summon minecraft:area_effect_cloud 683 102 15 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 102 14 {Tags:["choice"]}
summon minecraft:area_effect_cloud 682 102 15 {Tags:["choice"]}
summon minecraft:area_effect_cloud 683 102 16 {Tags:["choice"]}
summon minecraft:area_effect_cloud 679 102 26 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]