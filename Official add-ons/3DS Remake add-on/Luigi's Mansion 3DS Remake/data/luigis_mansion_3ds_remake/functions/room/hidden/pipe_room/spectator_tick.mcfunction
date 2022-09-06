execute unless entity @s[scores={Room=67}] run title @s title {"translate":"luigis_mansion:location.pipe_room"}
scoreboard players set @s Room 67
scoreboard players set @s PrevRoom 67

teleport @s[scores={HomeX=687}] ~1 ~ ~
teleport @s[scores={HomeX=699}] ~24 ~ ~
teleport @s[scores={HomeZ=11}] ~ ~ ~-1
teleport @s[scores={HomeZ=-5}] ~13 ~ ~-11

teleport @s[scores={HomeY=0}] ~ ~1 ~
teleport @s[scores={HomeY=7,HomeZ=-4..-2}] ~12 ~3 ~-37
teleport @s[scores={HomeY=7,HomeZ=-1..0}] ~ ~-1 ~
teleport @s[scores={HomeY=7,HomeZ=1..5}] ~13 ~3 ~-22
teleport @s[scores={HomeY=7,HomeZ=6..7}] ~ ~-1 ~
teleport @s[scores={HomeY=7,HomeZ=8..10}] ~11 ~3 ~26

tag @s add already_ticked