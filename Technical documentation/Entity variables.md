Entity spawning takes certain variables, they are listed and categorized below. The variables are saved in the storage "luigis_mansion:data entity" object and overwrite the values provided by mansion data

```
entity: {
    //New data
    scan_message:{ //The message spoken when scanning Toad, E. Gadd or this portrait ghost.
        sender:"me", //Who speaks when scanning this entity. Either "scanner" or "me". If set to scanner, and the scan is from Gooigi, sends the usual "......" message instead.
        message:'{"translate":"..."}', //The message to send.
        plural_message:'{"translate":"..."}' //The message used when more than 1 player is present; only used is sender is set to "me".
    }, 
    female_scan_message:{}, //The message spoken when scanning the female floating whirlinda, same format as above.
    can_talk_to:1b, //Whether Toad, E. Gadd or this portrait ghost can be talked to.
    disappear_on_vanish:1b, //Whether this ghost disappears when it vanishes.
    appear_type:"<type>", //Ghost appear type to use, differs per ghost.
    attack_type:"<type>", //Ghost attack type to use, differs per ghost.
    second_flee_damage:X, //How much damage this ghost can take in one suction before it enters its second flee state, escaping 2.5 seconds later.
    training_room_score:X, //Score granted to the one who reeled in the ghost in the training room.
    path:X, //Path number to use in a room; used by wool and dancing ghost guys only.
    
    //Overwriting data
    health:X, //Health at spawn.
    loot:{ //Loot this ghost drops upon defeat.
        drop_at_0:1b, //When set, spawns the loot the moment health drops to 0, otherwise spawns it the moment the ghost is reeled in.
        //See loot documentation for other variables.
    },
    speed:X, //The movement speed of the ghost.
    flee_speed:X, //The movement speed of the ghost while fleeing from the Poltergust.
    vanish_time:X, //How many ticks the ghost can stay in the world, haunting, but not attacking, laughing, complaining, being collided with, etc. before it vanishes. -1 means never.
    damage:{ //Damage values the ghost uses in its functions.
        <type>:X //The amount of damage dealt. Type is usually collision and attack (also used by created projectiles), but can be other values.
    }
}
```

Appear type:
```
Type   | Ghosts
normal | All ghosts except Waiter; default for all except Beta Ghost, Beta Basher, Beta Puncher, and Beta Body Slammer
none   | All ghosts; default for Waiter
beta   | Gold Ghost, Temper Terror, Speedy Spirit, Purple Puncher, Flash, Blue Twirler, Blue Blaze, Beta Ghost(default), Beta Basher(default), Beta Puncher(default), Beta Body Slammer(default)
```

Attack type:
```
Type          | Ghosts
none          | Gold Ghost, Temper Terror, Ceiling Surprise(default), Purple Bomber
punch         | Gold Ghost(default), Temper Terror(default), Blue Twirler, Blue Blaze, Beta Ghost(default), Beta Basher, Beta Body Slammer
uppercut      | Purple Puncher(default), Flash(default), Beta Puncher(default)
basher        | Gold Ghost, Temper Terror, Speedy Spirit, Purple Puncher, Flash, Blue Twirler, Blue Blaze, Grabbing Ghost, Red Grabbing Ghost, Mirror Ghost, Cinema Ghost, Beta Ghost, Beta Basher(default), Beta Puncher, Beta Body Slammer
body_slam     | Blue Twirler, Blue Blaze, Beta Body Slammer(default)
earthquake    | Blue Twirler(default), Blue Blaze(default), Beta Body Slammer
stab          | Ghost Guy(default), Dancing Ghost Guy
spin          | Ghost Guy, Dancing Ghost Guy(default)
harmless_grab | Grabbing Ghost(default), Red Grabbing Ghost, Mirror Ghost, Cinema Ghost
harmfull_grab | Grabbing Ghost, Red Grabbing Ghost(default), Mirror Ghost(default), Cinema Ghost(default)
drop_bomb     | Ceiling Surprise, Purple Bomber(default)
```