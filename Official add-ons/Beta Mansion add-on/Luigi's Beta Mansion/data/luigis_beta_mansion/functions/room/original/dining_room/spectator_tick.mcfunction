execute unless entity @s[scores={Room=14}] run title @s title {"translate":"luigis_beta_mansion:location.dining_room"}
scoreboard players set @s Room 14
scoreboard players set @s PrevRoom 14

teleport @s[scores={HomeX=698,HomeZ=30..42}] ~-12 ~ ~2
teleport @s[scores={HomeX=698,HomeZ=43..44}] ~1 ~ ~
teleport @s[scores={HomeX=698,HomeZ=45..56}] ~-12 ~ ~21
teleport @s[scores={HomeX=710}] ~4 ~ ~-44
teleport @s[scores={HomeZ=29}] ~2 ~ ~-46
teleport @s[scores={HomeZ=57}] ~ ~ ~6

teleport @s[scores={HomeY=9,HomeZ=30..32}] ~-11 ~-3 ~-22
teleport @s[scores={HomeY=9,HomeZ=33..56}] ~ ~1 ~
teleport @s[scores={HomeY=16,HomeZ=50..56}] ~6 ~3 ~-6
teleport @s[scores={HomeY=16,HomeZ=48..49}] ~ ~-1 ~
teleport @s[scores={HomeY=16,HomeZ=30..47}] ~18 ~3 ~-11

tag @s add already_ticked