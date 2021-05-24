execute unless entity @s[scores={Room=8}] run title @s title {"translate":"luigis_mansion:location.study"}
scoreboard players set @s Room 8
scoreboard players set @s PrevRoom 8

teleport @s[scores={HomeX=701}] ~-15 ~ ~-13
teleport @s[scores={HomeX=716}] ~8 ~ ~1
teleport @s[scores={HomeZ=-28}] ~12 ~ ~7
teleport @s[scores={HomeZ=-47}] ~-18 ~91 ~23

teleport @s[scores={HomeY=25,HomeZ=-33..-29}] ~-18 ~94 ~25
teleport @s[scores={HomeY=25,HomeZ=-35..-34}] ~ ~-1 ~
teleport @s[scores={HomeY=25,HomeZ=-40..-36}] ~23 ~3 ~9
teleport @s[scores={HomeY=25,HomeZ=-42..-41}] ~ ~-1 ~
teleport @s[scores={HomeY=25,HomeZ=-46..-43,HomeX=702..705}] ~ ~-1 ~
teleport @s[scores={HomeY=25,HomeZ=-46..-43,HomeX=706..715}] ~-4 ~3 ~
teleport @s[scores={HomeY=18,HomeX=702}] ~-16 ~-3 ~-27
teleport @s[scores={HomeY=18,HomeX=703..704}] ~ ~1 ~
teleport @s[scores={HomeY=18,HomeZ=-35..-26,HomeX=705..715}] ~-6 ~-3 ~-6
teleport @s[scores={HomeY=18,HomeZ=-37..-36,HomeX=705..715}] ~ ~1 ~
teleport @s[scores={HomeY=18,HomeZ=-46..-38,HomeX=705..715}] ~-6 ~-3 ~-10

tag @s add already_ticked