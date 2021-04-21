summon minecraft:area_effect_cloud 695 2 -45 {Tags:["choice"]}
summon minecraft:area_effect_cloud 699 3 -51 {Tags:["choice"]}
summon minecraft:area_effect_cloud 698 2 -60 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 3 -61 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 2 -60 {Tags:["choice"]}
summon minecraft:area_effect_cloud 696 2 -60 {Tags:["choice"]}
summon minecraft:area_effect_cloud 695 3 -61 {Tags:["choice"]}
summon minecraft:area_effect_cloud 695 2 -60 {Tags:["choice"]}
summon minecraft:area_effect_cloud 694 2 -60 {Tags:["choice"]}
summon minecraft:area_effect_cloud 693 3 -61 {Tags:["choice"]}
summon minecraft:area_effect_cloud 692 2 -60 {Tags:["choice"]}
summon minecraft:area_effect_cloud 692 2 -60 {Tags:["choice"]}
summon minecraft:area_effect_cloud 691 3 -61 {Tags:["choice"]}
summon minecraft:area_effect_cloud 691 2 -60 {Tags:["choice"]}
summon minecraft:area_effect_cloud 690 2 -60 {Tags:["choice"]}
summon minecraft:area_effect_cloud 689 3 -61 {Tags:["choice"]}
summon minecraft:area_effect_cloud 689 2 -60 {Tags:["choice"]}
summon minecraft:area_effect_cloud 688 2 -60 {Tags:["choice"]}
summon minecraft:area_effect_cloud 690 2 -45 {Tags:["choice"]}
summon minecraft:area_effect_cloud 691 2 -44 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]