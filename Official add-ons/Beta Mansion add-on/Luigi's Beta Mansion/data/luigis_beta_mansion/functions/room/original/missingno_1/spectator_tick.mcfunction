execute unless entity @s[scores={Room=17}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 17
scoreboard players set @s PrevRoom 17

teleport @s[scores={HomeX=694}] ~20 ~ ~-5
teleport @s[scores={HomeX=684}] ~ ~ ~-38
teleport @s[scores={HomeZ=42}] ~-7 ~ ~15
teleport @s[scores={HomeZ=23}] ~2 ~ ~-40

teleport @s[scores={HomeY=25}] ~-12 ~94 ~-25
teleport @s[scores={HomeY=18,HomeZ=39..41}] ~-10 ~-3 ~27
teleport @s[scores={HomeY=18,HomeZ=37..38}] ~ ~1 ~
teleport @s[scores={HomeY=18,HomeZ=24..36}] ~-10 ~-3 ~8

tag @s add already_ticked