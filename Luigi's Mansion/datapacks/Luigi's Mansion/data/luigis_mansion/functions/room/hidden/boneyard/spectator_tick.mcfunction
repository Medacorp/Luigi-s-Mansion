execute unless entity @s[scores={Room=28}] run title @s title {"translate":"luigis_mansion:location.boneyard"}
scoreboard players set @s Room 28
scoreboard players set @s PreviousRoom 28

teleport @s[scores={HomeX=672}] ~-2 ~ ~
teleport @s[scores={HomeX=685}] ~14 ~-91 ~-35
teleport @s[scores={HomeZ=-23,HomeX=672}] ~ ~ ~-1
teleport @s[scores={HomeZ=-23,HomeX=673..684}] ~2 ~-91 ~-50
teleport @s[scores={HomeZ=-41}] ~ ~ ~-1

teleport @s[scores={HomeY=100}] ~ ~1 ~
teleport @s[scores={HomeY=107,HomeZ=-40..-29,HomeX=672..683}] ~ ~-1 ~
teleport @s[scores={HomeY=107,HomeX=684}] ~ ~3 ~
teleport @s[scores={HomeY=107,HomeZ=-28..-24,HomeX=672..673}] ~ ~-1 ~
teleport @s[scores={HomeY=107,HomeZ=-28..-24,HomeX=674..680}] ~ ~3 ~
teleport @s[scores={HomeY=107,HomeZ=-28..-24,HomeX=681..683}] ~ ~-1 ~

tag @s add already_ticked