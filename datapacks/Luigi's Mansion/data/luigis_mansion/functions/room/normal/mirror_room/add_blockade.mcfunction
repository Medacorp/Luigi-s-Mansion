execute as @a[scores={Room=21},tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute as @a[scores={Room=21},gamemode=!spectator] run function luigis_mansion:entities/player/scare/normal
playsound luigis_mansion:block.blockade.spawn block @a[scores={Room=21}] 741 11 -44 1
setblock 741 11 -44 minecraft:iron_trapdoor[facing=north,open=true,half=bottom]
setblock 741 12 -44 minecraft:iron_trapdoor[facing=north,open=true,half=bottom]
setblock 729 11 -44 minecraft:iron_trapdoor[facing=north,open=true,half=bottom]
setblock 729 12 -44 minecraft:iron_trapdoor[facing=north,open=true,half=bottom]