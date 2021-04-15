tag @s add element_death
tag @s remove hurt

scoreboard players set @s[scores={HurtTime=1}] HurtTime 2
execute unless entity @s[scores={HurtTime=1..}] run scoreboard players set @s HurtTime 1
scoreboard players set @s[scores={HurtTime=3..}] HurtTime 1

tag @s[scores={HurtTime=1}] add me
execute if entity @s[scores={HurtTime=1}] as @a run function luigis_mansion:entities/ghost/find_vacuumers
tag @s[scores={HurtTime=1}] remove me
execute if entity @s[scores={HurtTime=1}] as @a[tag=vacuuming_this_ghost] run function luigis_mansion:entities/ghost/find_shooters
execute if entity @s[scores={HurtTime=1}] if entity @a[gamemode=!spectator,tag=shooter] run tag @a[tag=vacuuming_this_ghost,tag=!shooter] remove vacuuming_this_ghost
execute if entity @s[scores={HurtTime=1}] unless entity @a[gamemode=!spectator,tag=shooter] run scoreboard players operation @s KillerID = @a[sort=nearest,limit=1,gamemode=!spectator,tag=vacuuming_this_ghost] ID
execute if entity @s[scores={HurtTime=1}] if entity @a[gamemode=!spectator,tag=shooter] run scoreboard players operation @s KillerID = @a[sort=furthest,limit=1,gamemode=!spectator,tag=vacuuming_this_ghost] ID
execute if entity @s[scores={HurtTime=1}] run tag @a remove vacuuming_this_ghost
execute if entity @s[scores={HurtTime=1}] run tag @a remove shooter

scoreboard players operation #temp KillerID = @s KillerID
execute as @a[gamemode=!spectator] if score @s ID = #temp KillerID run tag @s add killer
scoreboard players reset #temp KillerID

execute at @s[scores={HurtTime=1}] run function luigis_mansion:entities/ghost/capture
execute at @s[scores={HurtTime=1},tag=gold_dummy_ghost] run scoreboard players add #training GhostCaught 1
execute at @s[scores={HurtTime=2}] run tag @s add dead
tag @a remove killer

execute if entity @s[scores={HurtTime=1}] unless entity @s[scores={Health=-2147483648..}] run tag @s add dead