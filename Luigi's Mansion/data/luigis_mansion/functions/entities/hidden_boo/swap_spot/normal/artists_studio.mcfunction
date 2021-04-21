summon minecraft:area_effect_cloud 702 29 -57 {Tags:["choice"]}
summon minecraft:area_effect_cloud 695 29 -58 {Tags:["choice"]}
summon minecraft:area_effect_cloud 694 29 -60 {Tags:["choice"]}
summon minecraft:area_effect_cloud 689 29 -63 {Tags:["choice"]}
summon minecraft:area_effect_cloud 693 29 -62 {Tags:["choice"]}
summon minecraft:area_effect_cloud 692 29 -65 {Tags:["choice"]}
summon minecraft:area_effect_cloud 692 29 -68 {Tags:["choice"]}
summon minecraft:area_effect_cloud 693 29 -70 {Tags:["choice"]}
summon minecraft:area_effect_cloud 694 29 -72 {Tags:["choice"]}
summon minecraft:area_effect_cloud 701 29 -75 {Tags:["choice"]}
summon minecraft:area_effect_cloud 691 30 -65 {Tags:["choice"]}
summon minecraft:area_effect_cloud 691 30 -72 {Tags:["choice"]}
summon minecraft:area_effect_cloud 695 30 -75 {Tags:["choice"]}
summon minecraft:area_effect_cloud 699 29 -75 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]