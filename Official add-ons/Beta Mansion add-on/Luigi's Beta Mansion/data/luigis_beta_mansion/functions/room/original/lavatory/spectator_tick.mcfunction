execute unless entity @s[scores={Room=13}] run title @s title {"translate":"luigis_beta_mansion:location.lavatory"}
scoreboard players set @s Room 13
scoreboard players set @s PrevRoom 13

teleport @s[scores={HomeX=661}] ~-3 ~ ~-19
teleport @s[scores={HomeX=667}] ~8 ~ ~42
teleport @s[scores={HomeZ=47}] ~4 ~91 ~-8
teleport @s[scores={HomeZ=35}] ~18 ~ ~-25

teleport @s[scores={HomeY=9}] ~ ~1 ~
teleport @s[scores={HomeY=16}] ~ ~3 ~

tag @s add already_ticked