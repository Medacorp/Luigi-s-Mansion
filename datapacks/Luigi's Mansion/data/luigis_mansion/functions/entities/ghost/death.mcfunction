scoreboard players set @s[tag=!boo_hurt,tag=!boo_death,tag=!normal_death] HurtTime 3
tag @s[tag=!boo_hurt,tag=!boo_death] add normal_death
scoreboard players set @s[tag=boo_hurt,tag=!boo_death] HurtTime 3
tag @s[tag=boo_hurt] add boo_death
tag @s[tag=boo_hurt] remove boo_hurt

scoreboard players set @s[scores={HurtTime=1}] HurtTime 2
execute unless entity @s[scores={HurtTime=1..}] run scoreboard players set @s HurtTime 1
scoreboard players set @s[scores={HurtTime=3..},tag=!boo_death] HurtTime 1
scoreboard players set @s[scores={HurtTime=3..},tag=boo_death] HurtTime 0

tag @s[scores={HurtTime=1}] add me
execute if entity @s[scores={HurtTime=1}] as @a run function luigis_mansion:entities/ghost/find_vacuumers
tag @s[scores={HurtTime=1}] remove me
execute if entity @s[scores={HurtTime=1}] run scoreboard players operation @s KillerID = @p[gamemode=!spectator,tag=vacuuming_this_ghost] ID
execute if entity @s[scores={HurtTime=1}] run tag @a remove vacuuming_this_ghost

scoreboard players operation #temp KillerID = @s KillerID
execute as @a[gamemode=!spectator] if score @s ID = #temp KillerID run tag @s add killer
scoreboard players reset #temp KillerID
execute at @s facing entity @a[tag=killer,limit=1] feet run teleport @s ~ ~ ~ ~-180 ~
execute store result score #temp HomeRot run data get entity @s Rotation[1] 100
scoreboard players operation #temp HomeRot *= #-1 Constants
execute store result entity @s Rotation[1] float 0.01 run scoreboard players get #temp HomeRot
scoreboard players reset #temp HomeRot

scoreboard players set @s Move 0
execute at @s unless entity @s[scores={HurtTime=0},tag=boo_death] run teleport @s ^ ^ ^-0.4

execute at @s[scores={HurtTime=1}] unless entity @s[scores={Room=..-1}] if entity @a[tag=killer,limit=1,scores={GhostCount=2..}] if score #ghost_heart_size Selected matches 1.. run function luigis_mansion:spawn_entities/item/ghost_heart
execute at @s[scores={HurtTime=1,Room=1..}] run function luigis_mansion:entities/ghost/capture
execute at @s[scores={HurtTime=1,Room=-2}] run scoreboard players add #training_room GhostCaught 1
execute at @s[scores={HurtTime=2}] if entity @a[gamemode=!spectator,distance=..0.7] run tag @s add dead
tag @a remove killer

execute if entity @s[scores={HurtTime=1}] unless entity @s[scores={Health=-2147483648..}] run tag @s add dead