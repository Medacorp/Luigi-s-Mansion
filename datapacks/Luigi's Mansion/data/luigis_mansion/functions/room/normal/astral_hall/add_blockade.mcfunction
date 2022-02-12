execute as @a[scores={Room=45},tag=looking_at_map] run function luigis_mansion:items/gameboy_horror/map/close
execute as @a[scores={Room=45}] run function luigis_mansion:entities/player/scare/normal
playsound luigis_mansion:block.blockade.spawn block @a[scores={Room=45}] 666 20 -73 1
setblock 666 20 -73 minecraft:iron_trapdoor[facing=north,open=true,half=bottom]
setblock 666 21 -73 minecraft:iron_trapdoor[facing=north,open=true,half=bottom]
playsound luigis_mansion:block.blockade.spawn block @a[scores={Room=45}] 666 20 -91 1
setblock 666 20 -91 minecraft:iron_trapdoor[facing=south,open=true,half=bottom]
setblock 666 21 -91 minecraft:iron_trapdoor[facing=south,open=true,half=bottom]