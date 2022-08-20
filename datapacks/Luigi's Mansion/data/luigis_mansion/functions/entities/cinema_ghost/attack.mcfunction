scoreboard players add @s[scores={ActionTime=41..}] ActionTime 1
scoreboard players set @s[scores={ActionTime=40}] ActionTime 33
scoreboard players add @s[scores={ActionTime=1..39}] ActionTime 1
execute unless entity @s[scores={ActionTime=1..}] run scoreboard players set @s ActionTime 1
scoreboard players set @s[scores={ActionTime=1}] AnimationProg 0
execute if entity @s[scores={ActionTime=1..20}] run function luigis_mansion:animations/grabbing_ghost/grab
tag @s[scores={ActionTime=1}] remove stunnable
execute if entity @s[scores={ActionTime=1}] run playsound luigis_mansion:entity.cinema_ghost.attack hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=1}] positioned ^ ^ ^0.8 as @e[distance=..0.8,tag=gameboy_horror_location] run function luigis_mansion:entities/gameboy_horror_location/bring_player_back
execute if entity @s[scores={ActionTime=1}] positioned ^ ^ ^0.8 run scoreboard players operation @s GrabbedID = @a[tag=!spectator,distance=..0.8,tag=!grabbed,limit=1] ID
execute if entity @s[scores={ActionTime=1}] positioned ^ ^ ^0.8 run tag @a[tag=!spectator,distance=..0.8,tag=!grabbed,limit=1] add grabbed
execute if entity @s[scores={GrabbedID=-2147483648..}] run scoreboard players operation #temp ID = @s GrabbedID
execute if entity @s[scores={GrabbedID=-2147483648..}] as @a[tag=grabbed] if score @s ID = #temp ID run tag @s add still_grabbed
execute if entity @s[scores={GrabbedID=-2147483648..}] if entity @a[tag=still_grabbed,limit=1] as @e[tag=chest] if score @s ID = #temp ID run tag @s add grabbed_model
execute if entity @s[scores={ActionTime=1..20}] if score #mirrored Selected matches 0 run function luigis_mansion:entities/cinema_ghost/grab/normal
execute if entity @s[scores={ActionTime=1..20}] if score #mirrored Selected matches 1 run function luigis_mansion:entities/cinema_ghost/grab/mirrored
execute if entity @s[scores={ActionTime=20},tag=harmless] as @a[tag=still_grabbed,limit=1] run function luigis_mansion:entities/player/knockback/harmless_grab
execute if entity @s[scores={ActionTime=20},tag=!harmless] as @a[tag=still_grabbed,limit=1] run function luigis_mansion:entities/player/knockback/harmfull_grab
execute if entity @s[scores={ActionTime=20..40}] unless entity @a[tag=still_grabbed,limit=1] run scoreboard players set @s ActionTime 41
execute if entity @s[scores={ActionTime=20..40}] at @e[tag=grabbed_model,limit=1] run teleport @s ^ ^ ^-0.65 ~ ~
execute if entity @s[scores={ActionTime=40},tag=!harmless] run scoreboard players add @a[tag=still_grabbed,limit=1] GrabbedShake 1
tag @a[tag=still_grabbed,limit=1] remove still_grabbed
tag @e[tag=grabbed_model,limit=1] remove grabbed_model
scoreboard players reset #temp ID
tag @s[scores={ActionTime=40}] add laugh
tag @s[scores={ActionTime=41}] add stunnable
scoreboard players set @s[scores={ActionTime=41}] AnimationProg 0
scoreboard players reset @s[scores={ActionTime=41}] GrabbedID
execute if entity @s[scores={ActionTime=41}] run playsound luigis_mansion:entity.cinema_ghost.let_go hostile @a[tag=same_room] ~ ~ ~ 1
execute if entity @s[scores={ActionTime=41..61}] run function luigis_mansion:animations/grabbing_ghost/let_go
tag @s[scores={ActionTime=61},tag=!laugh] add complain
tag @s[scores={ActionTime=61}] remove attack
scoreboard players set @s[scores={ActionTime=61}] AnimationProg 0
scoreboard players set @s[scores={ActionTime=61}] ActionTime 0