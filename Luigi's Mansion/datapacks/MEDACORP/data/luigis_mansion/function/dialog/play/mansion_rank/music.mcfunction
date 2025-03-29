execute as @a[tag=same_room] run function luigis_mansion:other/music/set/silence
data modify storage luigis_mansion:data temp set from storage luigis_mansion:data dialogs[0].rank
execute if data storage luigis_mansion:data {temp:"h"} as @a[tag=same_room] run function luigis_mansion:other/music/set/mansion_rank_low
execute unless data storage luigis_mansion:data {temp:"h"} unless data storage luigis_mansion:data {temp:"a"} as @a[tag=same_room] run function luigis_mansion:other/music/set/mansion_rank_medium
execute if data storage luigis_mansion:data {temp:"a"} as @a[tag=same_room] run function luigis_mansion:other/music/set/mansion_rank_high
data remove storage luigis_mansion:data temp