execute unless entity @s[scores={Room=45}] run title @s title {"translate":"luigis_mansion:location.astral_hall"}
scoreboard players set @s Room 45
scoreboard players set @s PrevRoom 45

teleport @s[scores={HomeX=671}] ~24 ~ ~-16
teleport @s[scores={HomeX=661,HomeZ=88..91}] ~23 ~ ~-49
teleport @s[scores={HomeX=661,HomeZ=92..93}] ~1 ~ ~
teleport @s[scores={HomeX=661,HomeZ=94..106}] ~4 ~ ~-42
teleport @s[scores={HomeZ=87}] ~25 ~ ~-51
teleport @s[scores={HomeZ=107}] ~-21 ~ ~-18

teleport @s[scores={HomeY=25}] ~11 ~94 ~-62
teleport @s[scores={HomeY=18}] ~19 ~-3 ~-34

tag @s add already_ticked