execute unless entity @s[scores={Room=45}] run title @s title {"translate":"luigis_beta_mansion:location.missingno"}
scoreboard players set @s Room 45
scoreboard players set @s PrevRoom 45

teleport @s[scores={HomeX=671}] ~24 ~ ~16
teleport @s[scores={HomeX=661}] ~23 ~ ~49
teleport @s[scores={HomeZ=-72}] ~25 ~ ~51
teleport @s[scores={HomeZ=-92}] ~-21 ~ ~18

teleport @s[scores={HomeY=25}] ~11 ~94 ~62
teleport @s[scores={HomeY=18}] ~19 ~-3 ~16

tag @s add already_ticked