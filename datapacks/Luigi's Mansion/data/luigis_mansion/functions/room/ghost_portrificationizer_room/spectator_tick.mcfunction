execute unless entity @s[scores={Room=-3}] run title @s title {"translate":"luigis_mansion:location.ghost_portrificationizer_room"}
scoreboard players set @s Room -3
scoreboard players set @s PrevRoom -3
teleport @s[scores={HomeZ=6..21,HomeX=778}] ~2 ~ ~
teleport @s[scores={HomeZ=-14..5,HomeX=778}] ~-1 ~ ~
teleport @s[scores={HomeX=764}] ~1 ~ ~
teleport @s[scores={HomeZ=23}] ~ ~ ~-1
teleport @s[scores={HomeZ=-15}] ~ ~ ~-2

teleport @s[scores={HomeY=75}] ~ ~1 ~
teleport @s[scores={HomeY=82}] ~ ~-1 ~

tag @s add already_ticked