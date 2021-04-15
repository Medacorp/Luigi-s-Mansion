summon minecraft:area_effect_cloud 687 11 -68 {Tags:["choice"]}
summon minecraft:area_effect_cloud 681 11 -55 {Tags:["choice"]}
summon minecraft:area_effect_cloud 681 11 -63 {Tags:["choice"]}
summon minecraft:area_effect_cloud 681 11 -66 {Tags:["choice"]}
summon minecraft:area_effect_cloud 682 11 -67 {Tags:["choice"]}
summon minecraft:area_effect_cloud 683 11 -68 {Tags:["choice"]}
summon minecraft:area_effect_cloud 681 11 -67 {Tags:["choice"]}
summon minecraft:area_effect_cloud 682 11 -68 {Tags:["choice"]}
summon minecraft:area_effect_cloud 681 12 -67 {Tags:["choice"]}
summon minecraft:area_effect_cloud 682 12 -68 {Tags:["choice"]}
summon minecraft:area_effect_cloud 681 13 -68 {Tags:["choice"]}
summon minecraft:area_effect_cloud 680 12 -60 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]