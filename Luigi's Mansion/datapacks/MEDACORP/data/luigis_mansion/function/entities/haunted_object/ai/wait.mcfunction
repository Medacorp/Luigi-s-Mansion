scoreboard players set @s[tag=!enabled] WaitTime 0
scoreboard players add @s[tag=enabled] WaitTime 1
execute unless entity @e[tag=same_room,tag=!spectator,tag=player,limit=1] run scoreboard players set @s WaitTime 0
data remove entity @s[tag=!in_vacuum,scores={WaitTime=..59}] data.animation
execute unless entity @s[tag=!in_vacuum,scores={WaitTime=..59}] run data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"shake"}
execute unless entity @s[tag=!in_vacuum,scores={WaitTime=..59}] if entity @s[scores={Sound=0}] run function luigis_mansion:entities/furniture/shake_sound with entity @s data.shake_sound
execute if entity @s[scores={WaitTime=100}] run function luigis_mansion:entities/haunted_object/select_to_attack