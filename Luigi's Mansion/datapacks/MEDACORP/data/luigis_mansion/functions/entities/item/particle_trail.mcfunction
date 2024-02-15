$particle $(particle_trail) ~ ~1.75 ~ 0 0 0 0 1 normal @a[tag=same_room]
$execute if score #temp MirrorX matches -2147483648.. run function luigis_mansion:entities/item/particle/mirror_trail_x {particle_trail:"$(particle_trail)"}
$execute if score #temp MirrorZ matches -2147483648.. run function luigis_mansion:entities/item/particle/mirror_trail_z {particle_trail:"$(particle_trail)"}