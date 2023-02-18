execute unless entity @e[tag=gooigi_model,limit=1] run function luigis_mansion_3ds_remake:spawn_entities/gooigi/player

execute if entity @a[tag=same_room,tag=!gooigi,limit=1] run scoreboard players operation @s FollowID = @a[tag=same_room,tag=!gooigi,limit=1] ID
execute if entity @s[tag=!spawn_animation,tag=!death_animation] if score #players Totals matches 1.. unless entity @a[tag=same_room,tag=!gooigi,limit=1] run function luigis_mansion_3ds_remake:entities/player/gooigi_follow

execute if score #non_gooigis Totals matches 0 if score #all_non_gooigis Totals matches 1.. run scoreboard players set @s Health 0
execute if score #non_gooigis Totals matches 0 if score #all_non_gooigis Totals matches 0 run function luigis_mansion_3ds_remake:entities/player/un_gooigi

execute if entity @s[scores={Invulnerable=1..}] run function luigis_mansion_3ds_remake:entities/player/gooigi_melt

execute unless entity @s[tag=!walking,tag=!running,tag=!riding_poltergust] if entity @s[scores={Sound=0,Shrunk=0}] run playsound luigis_mansion_3ds_remake:entity.gooigi.walk player @a[tag=same_room] ~ ~ ~ 0.5
execute unless entity @s[tag=!walking,tag=!running,tag=!riding_poltergust] if entity @s[scores={Sound=0,Shrunk=1..}] run playsound luigis_mansion_3ds_remake:entity.gooigi.walk player @a[tag=same_room] ~ ~ ~ 0.5 2
execute unless entity @s[tag=!walking,tag=!running,tag=!riding_poltergust] run scoreboard players set @s[scores={Sound=0}] Sound 5

execute if entity @s[scores={Walk=0,Run=0,Sneak=0,Jump=0,IdleTime=0..},tag=!sneak_pos,tag=!spectator,tag=player,tag=!warp,tag=!scanning,tag=!poltergust_selected,tag=!riding_poltergust] run function luigis_mansion_3ds_remake:entities/player/gooigi_idle
execute if entity @s[scores={Animation=1..},tag=idle] unless entity @s[scores={Walk=0,Run=0,Sneak=0,Jump=0},tag=!sneak_pos,tag=!spectator,tag=player,tag=!warp,tag=!scanning,tag=!poltergust_selected,tag=!riding_poltergust] run function luigis_mansion:entities/player/animation/set/none
execute if entity @s[scores={Animation=1..},tag=!looking_at_map,tag=!idle] unless entity @s[scores={KnockbackTime=1..}] unless entity @s[scores={ScareTime=1..}] run function luigis_mansion:entities/player/animation/freeze_player
execute if entity @s[scores={IdleTime=..-1}] run function luigis_mansion_3ds_remake:entities/player/gooigi_idle

# Gooigi cannot speak, so he cannot choose
trigger ClairvoyaChoice add 0
trigger EGaddCallChoice add 0
trigger EGaddGalleryChoice add 0
trigger EGaddGhostPortrificationizerRoomChoice add 0
trigger EGaddUndergroundLabChoice add 0
trigger EGaddTrainingRoomChoice add 0
trigger JarvisChoice add 0
trigger MansionChoice add 0
trigger MelodyChoice add 0
trigger ResetChoice add 0
trigger Toad1Choice add 0
trigger Toad2Choice add 0
trigger Toad3Choice add 0
trigger Toad4Choice add 0
trigger Toad5Choice add 0
trigger TrainingRoomOption add 0
trigger TwinsChoice add 0

execute if entity @s[tag=death_animation] run function luigis_mansion_3ds_remake:entities/player/gooigi_death_animation
execute if entity @s[tag=spawn_animation] run function luigis_mansion_3ds_remake:entities/gooigi/spawn_animation

execute at @s[tag=!camera] run function luigis_mansion_3ds_remake:animations/gooigi