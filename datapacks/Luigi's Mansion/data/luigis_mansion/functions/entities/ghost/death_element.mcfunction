tag @s add element_death
tag @s remove element_hurt
tag @s remove hurt

scoreboard players add @s DeathTime 1

tag @s[scores={DeathTime=1}] add me
execute if entity @s[scores={DeathTime=1}] as @a run function luigis_mansion:entities/ghost/find_vacuumers
tag @s[scores={DeathTime=1}] remove me
execute if entity @s[scores={DeathTime=1}] as @a[tag=vacuuming_this_ghost] run function luigis_mansion:entities/ghost/find_shooters
execute if entity @s[scores={DeathTime=1}] if entity @a[tag=!spectator,tag=shooter] run tag @a[tag=vacuuming_this_ghost,tag=!shooter] remove vacuuming_this_ghost
execute if entity @s[scores={DeathTime=1}] unless entity @a[tag=!spectator,tag=shooter] run scoreboard players operation @s KillerID = @a[sort=nearest,limit=1,tag=!spectator,tag=vacuuming_this_ghost] ID
execute if entity @s[scores={DeathTime=1}] if entity @a[tag=!spectator,tag=shooter] run scoreboard players operation @s KillerID = @a[sort=furthest,limit=1,tag=!spectator,tag=vacuuming_this_ghost] ID
execute if entity @s[scores={DeathTime=1}] run tag @a remove vacuuming_this_ghost
execute if entity @s[scores={DeathTime=1}] run tag @a remove shooter

scoreboard players operation #temp KillerID = @s KillerID
execute as @a[tag=!spectator] if score @s ID = #temp KillerID run tag @s add killer
execute if entity @s[scores={DeathTime=1}] unless entity @a[tag=killer,limit=1] run function luigis_mansion:entities/ghost/cancel_death
scoreboard players reset #temp KillerID

execute at @s[scores={DeathTime=1,Room=1..}] run function luigis_mansion:entities/ghost/capture
execute at @s[scores={DeathTime=1,Room=-2}] run scoreboard players add #training_room GhostCaught 1
execute at @s[scores={DeathTime=1,Room=-2,GhostCaught=1..}] run scoreboard players operation @a[tag=killer,distance=..0.7] GhostCaught += @s GhostCaught
execute at @s[scores={DeathTime=1..}] run tag @s add captured
tag @a[tag=killer,limit=1] add vaporizing_ghost
tag @a[tag=killer,limit=1] remove killer

execute if entity @s[scores={DeathTime=1}] unless entity @s[scores={Health=-2147483648..}] run tag @s add captured