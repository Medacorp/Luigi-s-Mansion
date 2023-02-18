execute unless entity @s[scores={Room=47}] run title @s title {"translate":"luigis_mansion:location.billiards_room"}
scoreboard players set @s Room 47
scoreboard players set @s PreviousRoom 47

teleport @s[scores={HomeX=674,HomeZ=-73..-63}] ~-8 ~ ~42
teleport @s[scores={HomeX=674,HomeZ=-62..-61}] ~1 ~ ~
teleport @s[scores={HomeX=674,HomeZ=-60..-51}] ~10 ~ ~65
teleport @s[scores={HomeX=687,HomeZ=-73..-65}] ~12 ~ ~17
teleport @s[scores={HomeX=687,HomeZ=-64..-63}] ~-1 ~ ~
teleport @s[scores={HomeX=687,HomeZ=-62..-51}] ~12 ~ ~21
teleport @s[scores={HomeZ=-74}] ~-2 ~91 ~50
teleport @s[scores={HomeZ=-50}] ~ ~ ~21

teleport @s[scores={HomeY=9}] ~ ~1 ~
teleport @s[scores={HomeY=16,HomeX=675..683,HomeZ=-73..-56}] ~3 ~3 ~14
teleport @s[scores={HomeY=16,HomeX=675..683,HomeZ=-55..-54}] ~ ~-1 ~
teleport @s[scores={HomeY=16,HomeX=675..683,HomeZ=-53..-51}] ~10 ~3 ~2
teleport @s[scores={HomeY=16,HomeX=684..685}] ~ ~-1 ~
teleport @s[scores={HomeY=16,HomeX=686,HomeZ=-73..-56}] ~16 ~3 ~2
teleport @s[scores={HomeY=16,HomeX=686,HomeZ=-55..-54}] ~ ~-1 ~
teleport @s[scores={HomeY=16,HomeX=686,HomeZ=-53..-51}] ~28 ~3 ~32

tag @s add already_ticked