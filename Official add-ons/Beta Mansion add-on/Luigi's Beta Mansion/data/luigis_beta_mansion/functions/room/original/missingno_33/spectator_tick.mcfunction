execute unless entity @s[scores={Room=49}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 49
scoreboard players set @s PrevRoom 49

teleport @s[scores={HomeX=737}] ~-9 ~ ~12
teleport @s[scores={HomeX=749}] ~-1 ~ ~
teleport @s[scores={HomeZ=49}] ~1 ~ ~6
teleport @s[scores={HomeZ=30}] ~6 ~ ~-13

teleport @s[scores={HomeY=18}] ~ ~-3 ~
teleport @s[scores={HomeY=25,HomeZ=46..48}] ~15 ~3 ~11
teleport @s[scores={HomeY=25,HomeZ=44..45}] ~ ~-1 ~
teleport @s[scores={HomeY=25,HomeZ=38..43}] ~10 ~3 ~4
teleport @s[scores={HomeY=25,HomeZ=36..37}] ~ ~-1 ~
teleport @s[scores={HomeY=25,HomeZ=31..35}] ~7 ~3 ~-2

tag @s add already_ticked