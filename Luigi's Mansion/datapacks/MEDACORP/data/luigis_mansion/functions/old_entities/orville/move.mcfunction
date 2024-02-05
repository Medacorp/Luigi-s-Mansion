scoreboard players add @s WaitTime 1
execute unless entity @s[scores={WaitTime=120..159}] run function luigis_mansion:old_entities/orville/hover
execute if entity @s[scores={WaitTime=120..159}] run function luigis_mansion:old_entities/orville/attack
execute if entity @s[scores={WaitTime=140}] run function luigis_mansion:spawn_entities/bomb
tag @s[scores={WaitTime=160}] remove at_height
scoreboard players set @s[scores={WaitTime=200}] WaitTime 40