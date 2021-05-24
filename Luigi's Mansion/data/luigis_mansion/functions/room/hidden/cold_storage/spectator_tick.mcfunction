execute unless entity @s[scores={Room=68}] run title @s title {"translate":"luigis_mansion:location.cold_storage"}
scoreboard players set @s Room 68
scoreboard players set @s PrevRoom 68

teleport @s[scores={HomeX=722}] ~-24 ~ ~
teleport @s[scores={HomeX=741}] ~-1 ~ ~ 
teleport @s[scores={HomeZ=4}] ~ ~ ~1
teleport @s[scores={HomeZ=20}] ~-9 ~ ~11

teleport @s[scores={HomeY=0}] ~ ~1 ~
teleport @s[scores={HomeY=7,HomeX=723..727}] ~-9 ~3 ~22
teleport @s[scores={HomeY=7,HomeX=728..729}] ~ ~-1 ~ 
teleport @s[scores={HomeY=7,HomeX=730..740,HomeZ=5..7}] ~14 ~3 ~8
teleport @s[scores={HomeY=7,HomeX=730..740,HomeZ=8..9}] ~ ~-1 ~
teleport @s[scores={HomeY=7,HomeX=730..740,HomeZ=10..19}] ~6 ~3 ~26

tag @s add already_ticked