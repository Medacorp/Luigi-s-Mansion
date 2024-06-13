scoreboard players set @s VulnerableTime 2147483647
execute if entity @s[nbt=!{data:{animation:{namespace:"luigis_mansion",id:"laugh"}}}] run playsound luigis_mansion:entity.madame_clairvoya.laugh hostile @a[tag=same_room] ~ ~ ~ 1
data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"laugh"}
tag @e[tag=exact_same_room,tag=furniture,tag=door] add blockade