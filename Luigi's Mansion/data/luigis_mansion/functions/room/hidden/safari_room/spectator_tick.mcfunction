execute unless entity @s[scores={Room=50}] run title @s title {"translate":"luigis_mansion:location.safari_room"}
scoreboard players set @s Room 50
scoreboard players set @s PrevRoom 50

teleport @s[scores={HomeX=733}] ~-15 ~ ~-5
teleport @s[scores={HomeX=745}] ~-1 ~ ~
teleport @s[scores={HomeZ=50}] ~15 ~ ~-20
teleport @s[scores={HomeZ=74}] ~ ~ ~-1

teleport @s[scores={HomeY=27,HomeZ=51..53}] ~2 ~-3 ~-1
teleport @s[scores={HomeY=27,HomeZ=54..55}] ~ ~1 ~
teleport @s[scores={HomeY=27,HomeZ=56..73}] ~2 ~-3 ~3
teleport @s[scores={HomeY=34,HomeZ=63..73}] ~ ~-1 ~
teleport @s[scores={HomeY=34,HomeZ=51..62,HomeX=734..738}] ~-27 ~96 ~-18
teleport @s[scores={HomeY=34,HomeZ=51..62,HomeX=739..744}] ~ ~-1 ~

tag @s add already_ticked