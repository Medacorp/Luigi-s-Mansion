execute unless entity @s[scores={Room=71}] run title @s title {"translate":"luigis_mansion:location.the_artists_studio"}
scoreboard players set @s Room 71
scoreboard players set @s PrevRoom 71

teleport @s[scores={HomeX=688}] ~-7 ~91 ~-39
teleport @s[scores={HomeX=692,HomeZ=72..76}] ~1 ~ ~
teleport @s[scores={HomeX=703}] ~11 ~ ~-26
teleport @s[scores={HomeZ=71}] ~37 ~ ~-41
teleport @s[scores={HomeZ=76,HomeX=689..692}] ~ ~ ~1
teleport @s[scores={HomeZ=95}] ~ ~ ~-1

teleport @s[scores={HomeY=27}] ~6 ~-3 ~7
teleport @s[scores={HomeY=34,HomeZ=84..94}] ~ ~-1 ~
teleport @s[scores={HomeY=34,HomeZ=72..83}] ~-5 ~96 ~-39

tag @s add already_ticked