execute as @a[tag=this_player,tag=separated_camera,limit=1] run function luigis_mansion:entities/player/camera/reset
function luigis_mansion:entities/luigi/animation/shared/freeze_player {rotated:"~ ~"}
execute unless entity @s[scores={DeathTime=1..}] run scoreboard players set @s DeathTime 61
scoreboard players set @s[scores={DeathTime=61..}] DeathTime 61
scoreboard players remove @s[scores={DeathTime=1..}] DeathTime 1
tag @s remove death_animation
tag @s[scores={DeathTime=0}] remove revived_animation
execute if entity @s[scores={DeathTime=20}] run playsound luigis_mansion:entity.player.revive player @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={DeathTime=60}] as @a[tag=this_player,limit=1] run function luigis_mansion:other/revive_message
scoreboard players set @s[scores={DeathTime=0}] Health 100
execute if entity @s[scores={DeathTime=0}] run function luigis_mansion:entities/luigi/health/sync
execute if entity @s[scores={DeathTime=0}] run gamemode adventure @a[tag=this_player,limit=1]
scoreboard players reset @s[scores={DeathTime=0}] DeathTime
execute if entity @s[scores={Shrunk=1..}] run function luigis_mansion:items/poison_mushroom/wear_off