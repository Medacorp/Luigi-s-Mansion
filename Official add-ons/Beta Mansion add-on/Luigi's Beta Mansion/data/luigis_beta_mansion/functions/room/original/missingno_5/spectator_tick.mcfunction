execute unless entity @s[scores={Room=21}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 21
scoreboard players set @s PrevRoom 21

teleport @s[scores={HomeX=679,HomeZ=4..5}] ~1 ~ ~
teleport @s[scores={HomeX=679,HomeZ=-21..3}] ~-17 ~ ~-6
teleport @s[scores={HomeX=679,HomeZ=-23..-22}] ~1 ~ ~
teleport @s[scores={HomeX=679,HomeZ=-29..-24}] ~-32 ~ ~-7
teleport @s[scores={HomeX=685,HomeZ=-29..-24}] ~-23 ~ ~-49
teleport @s[scores={HomeX=685,HomeZ=-23..-22}] ~-1 ~ ~
teleport @s[scores={HomeX=685,HomeZ=-16..-15}] ~-1 ~ ~
teleport @s[scores={HomeX=685,HomeZ=-14..3}] ~ ~ ~38
teleport @s[scores={HomeX=685,HomeZ=4..5}] ~-1 ~ ~
teleport @s[scores={HomeX=685,HomeZ=6..10}] ~-7 ~ ~51
teleport @s[scores={HomeZ=11,HomeX=680..684}] ~-18 ~ ~25
teleport @s[scores={HomeZ=11,HomeX=679}] ~ ~ ~-1

teleport @s[scores={HomeY=18}] ~ ~-3 ~
teleport @s[scores={HomeY=25}] ~-14 ~94 ~13

tag @s add already_ticked