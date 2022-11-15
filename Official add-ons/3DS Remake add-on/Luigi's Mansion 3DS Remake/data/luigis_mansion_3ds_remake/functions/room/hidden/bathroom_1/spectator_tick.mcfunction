execute unless entity @s[scores={Room=16}] run title @s title {"translate":"luigis_mansion:location.bathroom_1"}
scoreboard players set @s Room 16
scoreboard players set @s PrevRoom 16

teleport @s[scores={HomeZ=16}] ~19 ~ ~-6
teleport @s[scores={HomeZ=28}] ~5 ~91 ~11
teleport @s[scores={HomeX=659}] ~3 ~ ~19
teleport @s[scores={HomeX=649}] ~3 ~91 ~9

teleport @s[scores={HomeY=16}] ~ ~3 ~
teleport @s[scores={HomeY=9}] ~ ~1 ~

tag @s add already_ticked