execute unless entity @s[scores={Room=5}] run title @s title {"translate":"luigis_mansion:location.study"}
scoreboard players set @s Room 5
scoreboard players set @s PrevRoom 5

teleport @s[scores={HomeX=701}] ~-15 ~ ~13
teleport @s[scores={HomeX=716}] ~8 ~ ~-1
teleport @s[scores={HomeZ=43}] ~12 ~ ~-7
teleport @s[scores={HomeZ=62}] ~-18 ~91 ~-23

teleport @s[scores={HomeY=25,HomeZ=44..48}] ~-18 ~94 ~-25
teleport @s[scores={HomeY=25,HomeZ=49..50}] ~ ~-1 ~
teleport @s[scores={HomeY=25,HomeZ=51..55}] ~23 ~3 ~-9
teleport @s[scores={HomeY=25,HomeZ=56..57}] ~ ~-1 ~
teleport @s[scores={HomeY=25,HomeZ=58..61}] ~-4 ~3 ~
teleport @s[scores={HomeY=18,HomeX=702}] ~-16 ~-3 ~27
teleport @s[scores={HomeY=18,HomeX=703..704}] ~ ~1 ~
teleport @s[scores={HomeY=18,HomeZ=44..50,HomeX=705..715}] ~-6 ~-3 ~6
teleport @s[scores={HomeY=18,HomeZ=51..52,HomeX=705..715}] ~ ~1 ~
teleport @s[scores={HomeY=18,HomeZ=53..61,HomeX=705..715}] ~-6 ~-3 ~10

tag @s add already_ticked