summon minecraft:area_effect_cloud 693 121 36 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 120 42 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 121 40 {Tags:["choice"]}
summon minecraft:area_effect_cloud 696 120 53 {Tags:["choice"]}
summon minecraft:area_effect_cloud 696 120 51 {Tags:["choice"]}
summon minecraft:area_effect_cloud 696 120 49 {Tags:["choice"]}
summon minecraft:area_effect_cloud 695 120 50 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 120 52 {Tags:["choice"]}
summon minecraft:area_effect_cloud 686 120 52 {Tags:["choice"]}
summon minecraft:area_effect_cloud 690 120 52 {Tags:["choice"]}
summon minecraft:area_effect_cloud 692 120 52 {Tags:["choice"]}
summon minecraft:area_effect_cloud 688 120 50 {Tags:["choice"]}
summon minecraft:area_effect_cloud 688 122 50 {Tags:["choice"]}
summon minecraft:area_effect_cloud 690 120 50 {Tags:["choice"]}
summon minecraft:area_effect_cloud 692 120 50 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 120 49 {Tags:["choice"]}
summon minecraft:area_effect_cloud 686 120 49 {Tags:["choice"]}
summon minecraft:area_effect_cloud 685 122 48 {Tags:["choice"]}
summon minecraft:area_effect_cloud 684 120 47 {Tags:["choice"]}
summon minecraft:area_effect_cloud 686 120 47 {Tags:["choice"]}
summon minecraft:area_effect_cloud 689 120 48 {Tags:["choice"]}
summon minecraft:area_effect_cloud 695 120 48 {Tags:["choice"]}
summon minecraft:area_effect_cloud 687 120 45 {Tags:["choice"]}
summon minecraft:area_effect_cloud 696 120 45 {Tags:["choice"]}
summon minecraft:area_effect_cloud 687 120 42 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 120 42 {Tags:["choice"]}
summon minecraft:area_effect_cloud 687 120 39 {Tags:["choice"]}
summon minecraft:area_effect_cloud 697 120 39 {Tags:["choice"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s if entity @e[tag=hidden_boo,distance=..1,limit=1] run kill @s
execute at @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] run teleport @s ~ ~ ~
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,limit=1] run tag @s add noticed_by_boo_radar
kill @e[type=minecraft:area_effect_cloud,tag=choice]