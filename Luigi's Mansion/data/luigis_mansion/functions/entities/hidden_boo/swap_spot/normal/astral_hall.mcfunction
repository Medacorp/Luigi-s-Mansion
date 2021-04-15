summon minecraft:area_effect_cloud 673 111 -13 {Tags:["choice"]}
summon minecraft:area_effect_cloud 673 111 -27 {Tags:["choice"]}
summon minecraft:area_effect_cloud 676 111 -16 {Tags:["choice"]}
summon minecraft:area_effect_cloud 680 111 -18 {Tags:["choice"]}
summon minecraft:area_effect_cloud 673 111 -20 {Tags:["choice"]}
summon minecraft:area_effect_cloud 680 111 -22 {Tags:["choice"]}
summon minecraft:area_effect_cloud 676 111 -24 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]