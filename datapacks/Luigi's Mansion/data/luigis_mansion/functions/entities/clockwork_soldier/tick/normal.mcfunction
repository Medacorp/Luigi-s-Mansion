execute if entity @s[tag=activated,tag=!was_activated,scores={WaitTime=0}] run function luigis_mansion:entities/clockwork_soldier/activate
tag @s[tag=activated,scores={WaitTime=1}] add was_activated

scoreboard players remove @s[scores={WaitTime=1..}] WaitTime 1
execute if entity @s[tag=was_activated,tag=!vanish,tag=!complain,tag=!attack,tag=!windless,scores={WaitTime=0}] positioned ^ ^ ^0.7 if entity @e[tag=same_room,tag=!spectator,distance=..0.7,limit=1] run tag @s add attack
execute if entity @s[tag=was_activated,tag=!vanish,tag=attack,tag=!windless,scores={StunTime=0}] run function luigis_mansion:entities/clockwork_soldier/attack

scoreboard players add @s[tag=was_activated,tag=in_vacuum] VacuumTime 1
scoreboard players set @s[tag=!in_vacuum_2,tag=!in_vacuum] VacuumTime 0
tag @s[tag=!in_vacuum] remove in_vacuum_2
tag @s[tag=in_vacuum] add in_vacuum_2
execute if entity @s[tag=!windless,scores={VacuumTime=40..}] run function luigis_mansion:entities/clockwork_soldier/lose_wind

scoreboard players set @s[tag=attack] Distance 0
execute at @s[tag=was_activated,tag=!attack,tag=!complain,tag=!vanish,scores={Distance=0,WaitTime=0}] run function luigis_mansion:entities/clockwork_soldier/target
execute at @s[tag=was_activated,tag=!attack,tag=!complain,tag=!vanish,scores={Distance=1..,WaitTime=0}] run function luigis_mansion:entities/clockwork_soldier/move
execute if entity @s[tag=was_activated,tag=!attack,tag=complain,tag=!vanish] run function luigis_mansion:entities/clockwork_soldier/complain
tag @s[scores={VulnerableTime=1}] add vanish