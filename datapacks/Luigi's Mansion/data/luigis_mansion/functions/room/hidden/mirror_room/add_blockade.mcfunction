execute as @a[scores={Room=21},tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute as @a[scores={Room=21},gamemode=!spectator] run function luigis_mansion:entities/player/scare/normal
playsound luigis_mansion:block.blockade.spawn block @a[scores={Room=21}] 741 11 59 1
setblock 741 11 59 minecraft:iron_trapdoor[facing=south,open=true,half=bottom]
setblock 741 12 59 minecraft:iron_trapdoor[facing=south,open=true,half=bottom]
setblock 729 11 59 minecraft:iron_trapdoor[facing=south,open=true,half=bottom]
setblock 729 12 59 minecraft:iron_trapdoor[facing=south,open=true,half=bottom]