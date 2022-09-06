execute unless entity @s[scores={Room=12}] run title @s title {"translate":"luigis_beta_mansion:location.bath_room"}
scoreboard players set @s Room 12
scoreboard players set @s PrevRoom 12

teleport @s[scores={HomeZ=16}] ~19 ~ ~-6
teleport @s[scores={HomeZ=28}] ~5 ~91 ~11
teleport @s[scores={HomeX=659}] ~3 ~ ~19
teleport @s[scores={HomeX=649}] ~3 ~91 ~9

teleport @s[scores={HomeY=16}] ~ ~3 ~
teleport @s[scores={HomeY=9}] ~ ~1 ~

tag @s add already_ticked