execute as @a[scores={Room=56},tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute as @a[scores={Room=56}] run function luigis_mansion:entities/player/scare/normal
playsound luigis_mansion:block.blockade.spawn block @a[scores={Room=56}] 749 29 -18 1
setblock 749 29 -18 minecraft:iron_trapdoor[facing=south,open=true,half=bottom]
setblock 749 30 -18 minecraft:iron_trapdoor[facing=south,open=true,half=bottom]
playsound luigis_mansion:block.blockade.spawn block @a[scores={Room=56}] 738 29 9 1
setblock 738 29 9 minecraft:iron_trapdoor[facing=east,open=true,half=bottom]
setblock 738 30 9 minecraft:iron_trapdoor[facing=east,open=true,half=bottom]