execute if entity @s[scores={IdleTime=..-1},tag=idle] run function luigis_mansion:entities/player/animation/set/none
scoreboard players remove @s[scores={PoltergustTime=1..}] PoltergustTime 1
scoreboard players set @s[tag=instant_poltergust_put_away] PoltergustTime 0
execute if entity @s[scores={PoltergustTime=10},tag=!gooigi] run playsound luigis_mansion:entity.player.put_poltergust_away player @a[tag=same_room] ~ ~ ~ 1
tag @s[scores={PoltergustTime=1..}] add was_putting_away_poltergust
tag @s[scores={PoltergustTime=0}] remove was_putting_away_poltergust
tag @s[scores={PoltergustTime=0}] remove poltergust_grabbed