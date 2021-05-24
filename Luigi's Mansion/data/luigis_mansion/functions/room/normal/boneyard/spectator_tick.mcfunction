execute unless entity @s[scores={Room=28}] run title @s title {"translate":"luigis_mansion:location.boneyard"}
scoreboard players set @s Room 28
scoreboard players set @s PrevRoom 28

teleport @s[scores={HomeX=672}] ~-2 ~ ~
teleport @s[scores={HomeX=685}] ~14 ~-91 ~35
teleport @s[scores={HomeZ=38,HomeX=672}] ~ ~ ~1
teleport @s[scores={HomeZ=38,HomeX=673..684}] ~2 ~-91 ~50
teleport @s[scores={HomeZ=56}] ~ ~ ~-1

teleport @s[scores={HomeY=100}] ~ ~1 ~
teleport @s[scores={HomeY=107,HomeZ=43..55,HomeX=672..683}] ~ ~-1 ~
teleport @s[scores={HomeY=107,HomeX=684}] ~ ~3 ~
teleport @s[scores={HomeY=107,HomeZ=39..42,HomeX=672..673}] ~ ~-1 ~
teleport @s[scores={HomeY=107,HomeZ=39..42,HomeX=674..678}] ~ ~3 ~
teleport @s[scores={HomeY=107,HomeZ=39..42,HomeX=679..683}] ~ ~-1 ~

tag @s add already_ticked