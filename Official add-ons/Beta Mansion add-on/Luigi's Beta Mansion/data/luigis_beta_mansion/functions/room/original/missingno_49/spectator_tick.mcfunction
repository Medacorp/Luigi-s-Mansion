execute unless entity @s[scores={Room=65}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 65
scoreboard players set @s PrevRoom 65

teleport @s[scores={HomeX=764}] ~-1 ~ ~
teleport @s[scores={HomeX=745}] ~-34 ~ ~2
teleport @s[scores={HomeZ=79}] ~ ~ ~-1 
teleport @s[scores={HomeZ=55}] ~-5 ~ ~-9

teleport @s[scores={HomeY=27,HomeX=746..750}] ~-22 ~-3 ~1
teleport @s[scores={HomeY=27,HomeX=751..752}] ~ ~1 ~
teleport @s[scores={HomeY=27,HomeX=753..763,HomeZ=62..78}] ~-14 ~-3 ~-7
teleport @s[scores={HomeY=27,HomeX=753..763,HomeZ=60..61}] ~ ~1 ~
teleport @s[scores={HomeY=27,HomeX=753..763,HomeZ=56..59}] ~-15 ~-3 ~-11
teleport @s[scores={HomeY=34,HomeX=758..763}] ~ ~-1 ~
teleport @s[scores={HomeY=34,HomeX=746..757,HomeZ=68..78}] ~ ~-1 ~
teleport @s[scores={HomeY=34,HomeX=746..757,HomeZ=56..67}] ~-46 ~96 ~-23

tag @s add already_ticked