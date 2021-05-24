execute unless entity @s[scores={Room=-1}] run title @s title {"translate":"luigis_mansion:location.underground_lab"}
scoreboard players set @s Room -1
scoreboard players set @s PrevRoom -1
teleport @s[scores={HomeZ=23}] ~ ~ ~-1
teleport @s[scores={HomeX=780..782,HomeZ=5}] ~ ~ ~1
teleport @s[scores={HomeX=783..795,HomeZ=5}] ~ ~ ~-2
teleport @s[scores={HomeX=796}] ~-1 ~ ~
teleport @s[scores={HomeX=779}] ~-2 ~ ~

teleport @s[scores={HomeY=75}] ~ ~1 ~
execute if entity @s[scores={HomeY=82,HomeX=788..789,HomeZ=21..22}] run function #luigis_mansion:room/underground_lab/spectator_enter_mansion
execute unless entity @s[scores={HomeX=788..789,HomeZ=21..22}] run teleport @s[scores={HomeY=82}] ~ ~-1 ~

tag @s add already_ticked