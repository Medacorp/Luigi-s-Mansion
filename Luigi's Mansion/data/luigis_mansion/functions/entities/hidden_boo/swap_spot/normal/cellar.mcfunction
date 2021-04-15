summon minecraft:area_effect_cloud 716 96 -23 {Tags:["choice"]}
summon minecraft:area_effect_cloud 707 96 -35 {Tags:["choice"]}
summon minecraft:area_effect_cloud 709 94 -24 {Tags:["choice"]}
summon minecraft:area_effect_cloud 708 94 -37 {Tags:["choice"]}
summon minecraft:area_effect_cloud 708 93 -34 {Tags:["choice"]}
summon minecraft:area_effect_cloud 714 93 -26 {Tags:["choice"]}
summon minecraft:area_effect_cloud 713 93 -31 {Tags:["choice"]}
summon minecraft:area_effect_cloud 713 95 -31 {Tags:["choice"]}
summon minecraft:area_effect_cloud 713 97 -31 {Tags:["choice"]}
summon minecraft:area_effect_cloud 714 93 -40 {Tags:["choice"]}
summon minecraft:area_effect_cloud 714 95 -40 {Tags:["choice"]}
summon minecraft:area_effect_cloud 714 97 -40 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]