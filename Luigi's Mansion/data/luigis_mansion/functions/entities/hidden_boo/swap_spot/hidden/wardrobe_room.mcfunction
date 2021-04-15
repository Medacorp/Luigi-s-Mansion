summon minecraft:area_effect_cloud 674 112 -5 {Tags:["choice"]}
summon minecraft:area_effect_cloud 674 112 -12 {Tags:["choice"]}
summon minecraft:area_effect_cloud 674 112 -20 {Tags:["choice"]}
summon minecraft:area_effect_cloud 681 113 -10 {Tags:["choice"]}
summon minecraft:area_effect_cloud 681 112 -6 {Tags:["choice"]}
summon minecraft:area_effect_cloud 680 111 -4 {Tags:["choice"]}
summon minecraft:area_effect_cloud 675 111 -4 {Tags:["choice"]}
summon minecraft:area_effect_cloud 672 111 -18 {Tags:["choice"]}
summon minecraft:area_effect_cloud 673 113 -15 {Tags:["choice"]}
summon minecraft:area_effect_cloud 673 113 -16 {Tags:["choice"]}
summon minecraft:area_effect_cloud 673 113 -17 {Tags:["choice"]}
summon minecraft:area_effect_cloud 673 113 -18 {Tags:["choice"]}
summon minecraft:area_effect_cloud 681 113 -12 {Tags:["choice"]}
summon minecraft:area_effect_cloud 681 113 -14 {Tags:["choice"]}
summon minecraft:area_effect_cloud 681 113 -18 {Tags:["choice"]}
summon minecraft:area_effect_cloud 681 113 -20 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]