execute unless entity @s[scores={Room=64}] run title @s title {"translate":"luigis_mansion:location.armory"}
scoreboard players set @s Room 64
scoreboard players set @s PrevRoom 64

teleport @s[scores={HomeX=764}] ~-1 ~ ~
teleport @s[scores={HomeX=745}] ~-34 ~ ~-2
teleport @s[scores={HomeZ=-64}] ~ ~ ~1 
teleport @s[scores={HomeZ=-40}] ~-5 ~ ~9

teleport @s[scores={HomeY=27,HomeX=746..750}] ~-22 ~-3 ~-1
teleport @s[scores={HomeY=27,HomeX=751..752}] ~ ~1 ~
teleport @s[scores={HomeY=27,HomeX=753..763,HomeZ=-63..-47}] ~-14 ~-3 ~7
teleport @s[scores={HomeY=27,HomeX=753..763,HomeZ=-46..-45}] ~ ~1 ~
teleport @s[scores={HomeY=27,HomeX=753..763,HomeZ=-44..-41}] ~-15 ~-3 ~11
teleport @s[scores={HomeY=34,HomeX=758..763}] ~ ~-1 ~
teleport @s[scores={HomeY=34,HomeX=746..757,HomeZ=-63..-53}] ~ ~-1 ~
teleport @s[scores={HomeY=34,HomeX=746..757,HomeZ=-52..-41}] ~-46 ~96 ~23

tag @s add already_ticked