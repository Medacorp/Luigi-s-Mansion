execute as @a[scores={Room=4},tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute as @a[scores={Room=4}] run function luigis_mansion:entities/player/scare/normal
playsound luigis_mansion:block.blockade.spawn block @a[scores={Room=4}] 693 20 26 1
setblock 693 20 26 minecraft:iron_trapdoor[facing=west,open=true,half=bottom]
setblock 693 21 26 minecraft:iron_trapdoor[facing=west,open=true,half=bottom]
playsound luigis_mansion:block.blockade.spawn block @a[scores={Room=4}] 689 20 41 1
setblock 689 20 41 minecraft:iron_trapdoor[facing=north,open=true,half=bottom]
setblock 689 21 41 minecraft:iron_trapdoor[facing=north,open=true,half=bottom]