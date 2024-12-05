execute if data storage luigis_mansion:data my_memory run tag @s add keep_memory
execute if entity @s[tag=!keep_memory] run function luigis_mansion:entities/luigi/get_owner_memory
execute unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"high_health_idle"} run function luigis_mansion:entities/luigi/animation/set/none
execute unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"high_health_idle"} if entity @s[scores={Health=41..,Shrunk=0}] run playsound luigis_mansion:entity.player.idle.high_health player @a[tag=same_room] ~ ~ ~ 1
execute unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"high_health_idle"} if entity @s[scores={Health=41..,Shrunk=1..}] run playsound luigis_mansion:entity.player.idle.high_health player @a[tag=same_room] ~ ~ ~ 1 2
execute unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"high_health_idle"} if entity @s[scores={Health=..40,Shrunk=0}] run playsound luigis_mansion:entity.player.idle.low_health player @a[tag=same_room] ~ ~ ~ 1
execute unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"high_health_idle"} if entity @s[scores={Health=..40,Shrunk=1..}] run playsound luigis_mansion:entity.player.idle.low_health player @a[tag=same_room] ~ ~ ~ 1 2
execute unless data storage luigis_mansion:data my_memory.animation{namespace:"luigis_mansion",id:"high_health_idle"} run scoreboard players set @s Sound 20
data modify storage luigis_mansion:data my_memory.animation set value {namespace:"luigis_mansion",id:"high_health_idle"}
execute if entity @s[tag=!keep_memory] run data modify storage luigis_mansion:data memory append from storage luigis_mansion:data my_memory
execute if entity @s[tag=!keep_memory] run data remove storage luigis_mansion:data my_memory
tag @s remove keep_memory