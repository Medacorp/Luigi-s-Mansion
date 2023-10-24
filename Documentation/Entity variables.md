Entity spawning takes certain variables, they are listed and categorized below. The variables are saved in the storage "luigis_mansion:data entity" object and overwrite the values provided by mansion data

```
entity: {
    //New data
    scan_message:{ //The message spoken when scanning this Toad, E. Gadd, portrait ghost or fake door.
        sender:"me", //Who speaks when scanning this entity. Either "scanner" or "me". If set to scanner, and the scan is from Gooigi, sends the usual "......" message instead.
        message:'{"translate":"..."}', //The message to send.
        plural_message:'{"translate":"..."}' //The message used when more than 1 player is present; only used is sender is set to "me".
    }, 
    female_scan_message:{}, //The message spoken when scanning the female floating whirlinda, same format as above. Only applies to the floating whirlindas (obviously).
    can_talk_to:1b, //Whether Toad, E. Gadd or this portrait ghost can be talked to. Default = 1b for non-portrait ghosts and 0b for portrait ghosts
    disappear_on_vanish:1b, //Whether this ghost disappears when it vanishes.
    appear_type:"<type>", //Ghost appear type to use, differs per ghost, see IDs in use for valid values.
    attack_type:"<type>", //Ghost attack type to use, differs per ghost, see IDs in use for valid values.
    second_flee_damage:X, //How much damage this ghost can take in one suction before it enters its second flee state, escaping 2.5 seconds later.
    training_room_score:X, //Score granted to the one who reeled in the ghost in the training room.
    path:X, //Path number to use in a room; used by wool and dancing ghost guys only.
    door:{ //Required for and used only by fake doors
        model: { //Required, the ID of the door model. See IDs in use for valid IDs.
            namespace:"luigis_mansion", //Required, the namespace of the door model.
            id:"mansion/1" //Required, the id of the door model.
        },
        frame: { //Optional, the ID of the frame model. See IDs in use for valid IDs.
            namespace:"luigis_mansion", //The namespace of the frame model.
            id:"normal" //The ID of the frame model.
        },
        left_hinge:1b //If the hinge is on the left of the door itself (your right when facing it). Default = 0b.
    },
    
    //Overwriting data
    health:X, //Health at spawn. Only applies to ghost types that have health.
    loot:{ //Loot this ghost drops upon defeat.
        drop_at_0:1b, //When set, spawns the loot the moment health drops to 0, otherwise spawns it the moment the ghost is reeled in. Only applies to ghost types that have health.
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