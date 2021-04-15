summon minecraft:area_effect_cloud 704 120 51 {Tags:["choice"]}
summon minecraft:area_effect_cloud 715 120 51 {Tags:["choice"]}
summon minecraft:area_effect_cloud 701 120 48 {Tags:["choice"]}
summon minecraft:area_effect_cloud 700 120 44 {Tags:["choice"]}
summon minecraft:area_effect_cloud 700 120 40 {Tags:["choice"]}
summon minecraft:area_effect_cloud 699 122 41 {Tags:["choice"]}
summon minecraft:area_effect_cloud 700 121 47 {Tags:["choice"]}
summon minecraft:area_effect_cloud 711 120 49 {Tags:["choice"]}
summon minecraft:area_effect_cloud 707 120 47 {Tags:["choice"]}
summon minecraft:area_effect_cloud 713 120 44 {Tags:["choice"]}
summon minecraft:area_effect_cloud 710 120 41 {Tags:["choice"]}
summon minecraft:area_effect_cloud 707 120 38 {Tags:["choice"]}
summon minecraft:area_effect_cloud 703 120 37 {Tags:["choice"]}
summon minecraft:area_effect_cloud 716 120 34 {Tags:["choice"]}
summon minecraft:area_effect_cloud 706 120 33 {Tags:["choice"]}
summon minecraft:area_effect_cloud 702 120 33 {Tags:["choice"]}
summon minecraft:area_effect_cloud 702 120 52 {Tags:["choice"]}
summon minecraft:area_effect_cloud 704 120 52 {Tags:["choice"]}
summon minecraft:area_effect_cloud 706 120 52 {Tags:["choice"]}
summon minecraft:area_effect_cloud 708 120 52 {Tags:["choice"]}
summon minecraft:area_effect_cloud 712 120 52 {Tags:["choice"]}
summon minecraft:area_effect_cloud 715 120 52 {Tags:["choice"]}
summon minecraft:area_effect_cloud 700 120 51 {Tags:["choice"]}
summon minecraft:area_effect_cloud 710 120 51 {Tags:["choice"]}
summon minecraft:area_effect_cloud 707 120 50 {Tags:["choice"]}
summon minecraft:area_effect_cloud 700 120 37 {Tags:["choice"]}
summon minecraft:area_effect_cloud 702 120 37 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]