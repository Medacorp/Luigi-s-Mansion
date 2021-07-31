execute unless entity @s[scores={Room=34}] run title @s title {"translate":"luigis_mansion:location.tea_room"}
scoreboard players set @s Room 34
scoreboard players set @s PrevRoom 34

teleport @s[scores={HomeX=638}] ~1 ~ ~
teleport @s[scores={HomeX=648,HomeZ=46..50}] ~32 ~ ~-7
teleport @s[scores={HomeX=648,HomeZ=51..52}] ~-1 ~ ~
teleport @s[scores={HomeX=648,HomeZ=53..75}] ~13 ~ ~
teleport @s[scores={HomeZ=45}] ~15 ~ ~-3
teleport @s[scores={HomeZ=76,HomeX=639..642}] ~ ~ ~-1
teleport @s[scores={HomeZ=76,HomeX=643..647}] ~-16 ~ ~23

teleport @s[scores={HomeY=25}] ~16 ~94 ~-20
teleport @s[scores={HomeY=18}] ~ ~-3 ~

tag @s add already_ticked