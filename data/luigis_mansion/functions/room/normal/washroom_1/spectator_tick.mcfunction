execute unless entity @s[scores={Room=19}] run title @s title {"translate":"luigis_mansion:location.washroom"}
scoreboard players set @s Room 19
scoreboard players set @s PrevRoom 19

teleport @s[scores={HomeX=661}] ~-3 ~ ~-19
teleport @s[scores={HomeX=667}] ~8 ~ ~42
teleport @s[scores={HomeZ=47}] ~4 ~91 ~-8
teleport @s[scores={HomeZ=35}] ~18 ~ ~-25

teleport @s[scores={HomeY=9}] ~ ~1 ~
teleport @s[scores={HomeY=16}] ~ ~3 ~

tag @s add already_ticked