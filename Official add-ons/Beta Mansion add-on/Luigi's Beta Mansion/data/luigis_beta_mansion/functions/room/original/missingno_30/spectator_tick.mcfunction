execute unless entity @s[scores={Room=46}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 46
scoreboard players set @s PrevRoom 46

teleport @s[scores={HomeX=640}] ~44 ~ ~29
teleport @s[scores={HomeX=650}] ~45 ~ ~-4
teleport @s[scores={HomeZ=-73}] ~21 ~ ~-18
teleport @s[scores={HomeZ=-83}] ~ ~ ~1

teleport @s[scores={HomeY=18}] ~40 ~-3 ~-4
teleport @s[scores={HomeY=25}] ~32 ~94 ~42

tag @s add already_ticked