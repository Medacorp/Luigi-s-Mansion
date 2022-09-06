execute unless entity @s[scores={Room=48}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 48
scoreboard players set @s PrevRoom 48

teleport @s[scores={HomeX=674}] ~10 ~ ~-46
teleport @s[scores={HomeX=687}] ~12 ~ ~-2
teleport @s[scores={HomeZ=31}] ~12 ~ ~-48
teleport @s[scores={HomeZ=45}] ~ ~ ~21

teleport @s[scores={HomeY=9}] ~ ~1 ~
teleport @s[scores={HomeY=16,HomeX=675..683}] ~10 ~3 ~-8
teleport @s[scores={HomeY=16,HomeX=684..685}] ~ ~-1 ~
teleport @s[scores={HomeY=16,HomeX=686}] ~28 ~3 ~-13

tag @s add already_ticked