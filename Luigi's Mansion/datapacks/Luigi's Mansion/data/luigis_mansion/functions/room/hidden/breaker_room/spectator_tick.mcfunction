execute unless entity @s[scores={Room=57}] run title @s title {"translate":"luigis_mansion:location.breaker_room"}
scoreboard players set @s Room 57
scoreboard players set @s PreviousRoom 57

teleport @s[scores={HomeX=687}] ~1 ~ ~
teleport @s[scores={HomeX=699}] ~15 ~ ~
teleport @s[scores={HomeZ=77}] ~ ~ ~-1
teleport @s[scores={HomeZ=58}] ~13 ~ ~-23

teleport @s[scores={HomeY=0}] ~ ~1 ~
teleport @s[scores={HomeY=7}] ~12 ~3 ~7

tag @s add already_ticked