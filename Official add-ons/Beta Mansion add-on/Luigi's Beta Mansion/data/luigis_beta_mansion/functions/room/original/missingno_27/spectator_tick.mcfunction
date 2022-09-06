execute unless entity @s[scores={Room=43}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 43
scoreboard players set @s PrevRoom 43

teleport @s[scores={HomeZ=16}] ~19 ~ ~-6
teleport @s[scores={HomeZ=28}] ~ ~ ~-1
teleport @s[scores={HomeX=659}] ~3 ~ ~19
teleport @s[scores={HomeX=649}] ~1 ~ ~

teleport @s[scores={HomeY=25}] ~5 ~94 ~9
teleport @s[scores={HomeY=18}] ~ ~-3 ~

tag @s add already_ticked