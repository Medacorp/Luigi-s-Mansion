execute as @a[scores={Room=49},tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute as @a[scores={Room=49}] run function luigis_mansion:entities/player/scare
playsound luigis_mansion:block.blockade.spawn block @a[scores={Room=49}] 738 20 44 1
setblock 738 20 44 minecraft:iron_trapdoor[facing=east,open=true,half=bottom]
setblock 738 21 44 minecraft:iron_trapdoor[facing=east,open=true,half=bottom]