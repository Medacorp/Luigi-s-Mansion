summon minecraft:area_effect_cloud 707 30 61 {Tags:["choice"]}
summon minecraft:area_effect_cloud 698 29 67 {Tags:["choice"]}
summon minecraft:area_effect_cloud 698 30 65 {Tags:["choice"]}
summon minecraft:area_effect_cloud 720 29 78 {Tags:["choice"]}
summon minecraft:area_effect_cloud 720 29 76 {Tags:["choice"]}
summon minecraft:area_effect_cloud 720 29 74 {Tags:["choice"]}
summon minecraft:area_effect_cloud 709 29 75 {Tags:["choice"]}
summon minecraft:area_effect_cloud 698 29 77 {Tags:["choice"]}
summon minecraft:area_effect_cloud 700 29 77 {Tags:["choice"]}
summon minecraft:area_effect_cloud 704 29 77 {Tags:["choice"]}
summon minecraft:area_effect_cloud 706 29 77 {Tags:["choice"]}
summon minecraft:area_effect_cloud 702 29 75 {Tags:["choice"]}
summon minecraft:area_effect_cloud 702 31 75 {Tags:["choice"]}
summon minecraft:area_effect_cloud 704 29 75 {Tags:["choice"]}
summon minecraft:area_effect_cloud 706 29 75 {Tags:["choice"]}
summon minecraft:area_effect_cloud 698 29 74 {Tags:["choice"]}
summon minecraft:area_effect_cloud 700 29 74 {Tags:["choice"]}
summon minecraft:area_effect_cloud 699 31 73 {Tags:["choice"]}
summon minecraft:area_effect_cloud 698 29 72 {Tags:["choice"]}
summon minecraft:area_effect_cloud 700 29 72 {Tags:["choice"]}
summon minecraft:area_effect_cloud 703 29 73 {Tags:["choice"]}
summon minecraft:area_effect_cloud 709 29 73 {Tags:["choice"]}
summon minecraft:area_effect_cloud 701 29 70 {Tags:["choice"]}
summon minecraft:area_effect_cloud 710 29 70 {Tags:["choice"]}
summon minecraft:area_effect_cloud 701 29 67 {Tags:["choice"]}
summon minecraft:area_effect_cloud 711 29 67 {Tags:["choice"]}
summon minecraft:area_effect_cloud 701 29 64 {Tags:["choice"]}
summon minecraft:area_effect_cloud 711 29 64 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]