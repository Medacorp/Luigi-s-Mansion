playsound luigis_mansion:entity.clockwork_soldier.activate hostile @a[tag=same_room] ~ ~ ~ 1
scoreboard players set @s WaitTime 81
data modify entity @s data.animation set value {namespace:"luigis_mansion",id:"activate"}