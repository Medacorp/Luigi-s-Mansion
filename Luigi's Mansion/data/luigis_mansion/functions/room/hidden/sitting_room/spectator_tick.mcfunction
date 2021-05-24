execute unless entity @s[scores={Room=69}] run title @s title {"translate":"luigis_mansion:location.sitting_room"}
scoreboard players set @s Room 69
scoreboard players set @s PrevRoom 69

teleport @s[scores={HomeX=735}] ~-17 ~ ~4
teleport @s[scores={HomeX=747}] ~-1 ~ ~
teleport @s[scores={HomeZ=35}] ~8 ~ ~-20
teleport @s[scores={HomeZ=53}] ~ ~ ~6

teleport @s[scores={HomeY=18}] ~ ~-3 ~
teleport @s[scores={HomeY=25,HomeZ=36..40}] ~9 ~3 ~-27
teleport @s[scores={HomeY=25,HomeZ=41..42}] ~ ~-1 ~
teleport @s[scores={HomeY=25,HomeZ=43..47}] ~13 ~3 ~-17
teleport @s[scores={HomeY=25,HomeZ=48..49}] ~ ~-1 ~
teleport @s[scores={HomeY=25,HomeZ=50..52}] ~-2 ~3 ~1

tag @s add already_ticked