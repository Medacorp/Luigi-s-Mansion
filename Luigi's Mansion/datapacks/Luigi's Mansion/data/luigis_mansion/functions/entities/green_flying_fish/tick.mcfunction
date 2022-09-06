execute if entity @s[tag=dead] run function luigis_mansion:entities/green_flying_fish/drop_loot

scoreboard players set @s[tag=fleeing] WaitTime 0
tag @s remove fleeing

execute store result score #temp Room run scoreboard players get @s Room
execute as @e[tag=green_flying_fish,tag=visible] if score @s Room = #temp Room run scoreboard players add #temp ActionTime 1
execute unless score #temp ActionTime matches 3.. unless entity @e[distance=..0.7,tag=same_room,tag=!spectator,limit=1] unless entity @e[tag=green_flying_fish,tag=visible,distance=..0.7] if entity @s[tag=!visible] run playsound luigis_mansion:entity.green_flying_fish.spawn hostile @a[tag=same_room] ~ ~ ~ 1
execute unless score #temp ActionTime matches 3.. unless entity @e[distance=..0.7,tag=same_room,tag=!spectator,limit=1] unless entity @e[tag=green_flying_fish,tag=visible,distance=..0.7] run tag @s add visible
scoreboard players reset #temp ActionTime
scoreboard players reset #temp Room

data modify entity @s[tag=visible] ArmorItems[3].id set value "minecraft:leather_chestplate"
scoreboard players add @s[tag=visible] WaitTime 1
execute if entity @s[scores={WaitTime=1..59}] run function luigis_mansion:entities/green_flying_fish/hover
execute if entity @s[scores={WaitTime=60..}] run function luigis_mansion:entities/green_flying_fish/attack
scoreboard players set @s[scores={WaitTime=80}] WaitTime 0
tag @s[scores={WaitTime=1}] remove at_height
data modify entity @s Pose.Head[0] set from entity @s Rotation[1]
execute at @s[tag=visible,scores={LightX=-2147483648..}] run function luigis_mansion:other/cast_shadow/1_tall