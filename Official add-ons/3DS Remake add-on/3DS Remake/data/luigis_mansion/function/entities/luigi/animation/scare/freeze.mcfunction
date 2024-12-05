scoreboard players add @s AnimationProgress 1
execute if entity @s[scores={AnimationProgress=1,Health=41..,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.scare_freeze.high_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=1,Health=41..,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.scare_freeze.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute if entity @s[scores={AnimationProgress=1,Health=..40,Shrunk=0},tag=!gooigi] run playsound luigis_mansion:entity.player.scare_freeze.low_health player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={AnimationProgress=1,Health=..40,Shrunk=1..},tag=!gooigi] run playsound luigis_mansion:entity.player.scare_freeze.low_health player @a[tag=same_room] ~ ~ ~ 1 2
scoreboard players set @s[scores={AnimationProgress=1},tag=!gooigi] Sound 60
execute if entity @s[scores={AnimationProgress=20},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~-4.5"}
execute if entity @s[scores={AnimationProgress=21},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~-9"}
execute if entity @s[scores={AnimationProgress=22},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~-13.5"}
execute if entity @s[scores={AnimationProgress=23},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~-18"}
execute if entity @s[scores={AnimationProgress=24},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~-22.5"}
execute if entity @s[scores={AnimationProgress=25},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~-27"}
execute if entity @s[scores={AnimationProgress=26},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~-31.5"}
execute if entity @s[scores={AnimationProgress=27},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~-36"}
execute if entity @s[scores={AnimationProgress=28},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~-40.5"}
execute if entity @s[scores={AnimationProgress=29},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~-45"}
execute if entity @s[scores={AnimationProgress=30},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~-49.5"}
execute if entity @s[scores={AnimationProgress=31},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~-54"}
execute if entity @s[scores={AnimationProgress=32},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~-58.5"}
execute if entity @s[scores={AnimationProgress=33},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~-63"}
execute if entity @s[scores={AnimationProgress=34},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~-67.5"}
execute if entity @s[scores={AnimationProgress=35},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~-72"}
execute if entity @s[scores={AnimationProgress=36},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~-76.5"}
execute if entity @s[scores={AnimationProgress=37},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~-81"}
execute if entity @s[scores={AnimationProgress=38},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~-85.5"}
execute if entity @s[scores={AnimationProgress=39..},tag=!flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~-90"}
execute if entity @s[scores={AnimationProgress=20},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~4.5"}
execute if entity @s[scores={AnimationProgress=21},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~9"}
execute if entity @s[scores={AnimationProgress=22},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~13.5"}
execute if entity @s[scores={AnimationProgress=23},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~18"}
execute if entity @s[scores={AnimationProgress=24},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~22.5"}
execute if entity @s[scores={AnimationProgress=25},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~27"}
execute if entity @s[scores={AnimationProgress=26},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~31.5"}
execute if entity @s[scores={AnimationProgress=27},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~36"}
execute if entity @s[scores={AnimationProgress=28},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~40.5"}
execute if entity @s[scores={AnimationProgress=29},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~45"}
execute if entity @s[scores={AnimationProgress=30},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~49.5"}
execute if entity @s[scores={AnimationProgress=31},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~54"}
execute if entity @s[scores={AnimationProgress=32},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~58.5"}
execute if entity @s[scores={AnimationProgress=33},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~63"}
execute if entity @s[scores={AnimationProgress=34},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~67.5"}
execute if entity @s[scores={AnimationProgress=35},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~72"}
execute if entity @s[scores={AnimationProgress=36},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~76.5"}
execute if entity @s[scores={AnimationProgress=37},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~81"}
execute if entity @s[scores={AnimationProgress=38},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~85.5"}
execute if entity @s[scores={AnimationProgress=39..},tag=flipped_gravity] run function luigis_mansion:entities/luigi/move/execute {execute:"at @s rotated ~ 0",teleport:"^ ^ ^ ~ ~90"}
tag @s remove new_poltergust_grabbed
tag @s remove poltergust_grabbed
tag @s remove vacuuming_ghost
tag @s add disable_flashlight
tag @s add disable_game_boy_horror
tag @s add disable_interact
tag @s add disable_poltergust
execute if entity @s[scores={AnimationProgress=100}] run function luigis_mansion:entities/luigi/animation/set/none