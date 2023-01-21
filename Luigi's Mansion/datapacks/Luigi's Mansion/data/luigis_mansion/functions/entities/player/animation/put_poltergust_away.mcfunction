scoreboard players set @s[tag=instant_poltergust_put_away] IdleTime -1
execute if entity @s[scores={IdleTime=-10}] run playsound luigis_mansion:entity.player.put_poltergust_away player @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={IdleTime=-1}] remove poltergust_grabbed