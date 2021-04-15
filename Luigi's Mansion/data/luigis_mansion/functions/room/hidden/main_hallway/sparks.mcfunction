summon minecraft:area_effect_cloud 700 102 -20 {Tags:["choice","option_1"]}
summon minecraft:area_effect_cloud 700 102 -8 {Tags:["choice","option_2"]}
summon minecraft:area_effect_cloud 700 102 15 {Tags:["choice","option_3"]}
summon minecraft:area_effect_cloud 700 102 33 {Tags:["choice","option_4"]}
summon minecraft:area_effect_cloud 666 102 29 {Tags:["choice","option_5"]}
summon minecraft:area_effect_cloud 666 102 8 {Tags:["choice","option_6"]}
summon minecraft:area_effect_cloud 666 102 3 {Tags:["choice","option_7"]}
execute as @e[type=minecraft:area_effect_cloud,tag=choice] at @s store result score @s Move if entity @e[distance=..1,tag=spark]
kill @e[type=minecraft:area_effect_cloud,tag=choice,scores={Move=2}]
tag @e[type=minecraft:area_effect_cloud,tag=choice,limit=1,sort=random] add selected
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,tag=option_1,limit=1] positioned 700 102 -20 run function luigis_mansion:spawn_entities/vacuumable/spark
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,tag=option_2,limit=1] positioned 700 102 -8 run function luigis_mansion:spawn_entities/vacuumable/spark
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,tag=option_3,limit=1] positioned 700 102 15 run function luigis_mansion:spawn_entities/vacuumable/spark
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,tag=option_4,limit=1] positioned 700 102 33 run function luigis_mansion:spawn_entities/vacuumable/spark
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,tag=option_5,limit=1] positioned 666 102 29 run function luigis_mansion:spawn_entities/vacuumable/spark
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,tag=option_6,limit=1] positioned 666 102 8 run function luigis_mansion:spawn_entities/vacuumable/spark
execute if entity @e[type=minecraft:area_effect_cloud,tag=choice,tag=selected,tag=option_7,limit=1] positioned 666 102 3 run function luigis_mansion:spawn_entities/vacuumable/spark
kill @e[type=minecraft:area_effect_cloud,tag=choice]