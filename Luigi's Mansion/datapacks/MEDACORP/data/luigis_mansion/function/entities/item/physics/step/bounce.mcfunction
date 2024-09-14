execute if entity @s[tag=!bounced_already] run function luigis_mansion:entities/item/bounce_sound with entity @s ArmorItems[3].components."minecraft:custom_data".item
scoreboard players operation @s Move *= #-1 Constants
scoreboard players set @s[tag=floor_bounce] Move 0
scoreboard players set @s[scores={Move=1..3}] Move 0
scoreboard players remove @s[scores={Move=1..}] Move 3
execute unless entity @s[scores={Move=0}] run scoreboard players remove @s Move 3
scoreboard players set @s[scores={Move=1..11},tag=keep_bouncing] Move 12
scoreboard players set @s[scores={Move=..-70}] Move -70
scoreboard players set @s[scores={Move=70..}] Move 70
tag @s[scores={Move=0..}] remove falling
tag @s[scores={Move=..-1}] add falling

execute if entity @s[tag=random_turn_on_bounce] store result score #temp Time run data get entity @s Rotation[0]
execute if entity @s[tag=random_turn_on_bounce] store result score #temp2 Time run random value -90..90
execute if entity @s[tag=random_turn_on_bounce] store result entity @s Rotation[0] float 1 run scoreboard players operation #temp Time += #temp2 Time
execute if entity @s[tag=random_turn_on_bounce] run data modify entity @s Rotation[1] set value 0.0f
scoreboard players reset #temp Time
scoreboard players reset #temp2 Time