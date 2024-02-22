execute if entity @s[tag=!flee] run playsound luigis_mansion:entity.king_boo.hurt hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s[tag=!flee] Sound 40

data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"flee"}
tag @s add flee