execute as @a[scores={Room=10},tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute as @a[scores={Room=10},gamemode=!spectator] run function luigis_mansion:entities/player/scare/normal
playsound luigis_mansion:block.blockade.spawn block @a[scores={Room=10}] 739 20 58 1
setblock 739 20 58 minecraft:iron_trapdoor[facing=east,open=true,half=bottom]
setblock 739 21 58 minecraft:iron_trapdoor[facing=east,open=true,half=bottom]