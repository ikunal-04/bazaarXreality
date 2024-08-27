--#region Model

RealityInfo = {
    Dimensions = 2,
    Name = 'Art Gallery',
    ['Render-With'] = '2D-Tile-0',
}

RealityParameters = {
    ['2D-Tile-0'] = {
        Version = 0,
        Spawn = { 52, 66 },
        -- This is a tileset themed to Llama Land main island
        Tileset = {
            Type = 'Fixed',
            Format = 'PNG',
            TxId = 'xMP0ziCR4YLD-g60ucwNpDKbyvtIrZZyt-M-BHNQZc0', -- TxId of the tileset in PNG format
        },
        -- This is a tilemap of sample small island
        Tilemap = {
            Type = 'Fixed',
            Format = 'TMJ',
            TxId = 'bHunsYgq0b5BX_Tn41FA3Kl-ZqGT7tw1mFkNimOmoJo', -- TxId of the tilemap in TMJ format
            -- Since we are already setting the spawn in the middle, we don't need this
            -- Offset = { -10, -10 },
        },
        ['Audio-0'] = {
            Bgm = {
                Type = 'Fixed',
                Format = 'WEBM',
                TxId = '59_JWuZ_aa3UPmZ9jEEILAe5_61EzieN0rFLHUw-ra8',
            }
        }
    },
    ['Audio-0'] = {
        Bgm = {
            Type = 'Fixed',
            Format = 'WEBM',
            TxId = '59_JWuZ_aa3UPmZ9jEEILAe5_61EzieN0rFLHUw-ra8',
        }
    }
}

RealityEntitiesStatic = {
    ['WarpToArtGallery1'] = {
        Position = { 52, 45 },
        Type = 'Hidden',
        Metadata = {
            -- SpriteTxId = '0WFjH89wzK8XAA1aLPzBBEUQ1uKpQe9Oz_pj8x1Wxpc',
            -- SpriteTxId = 'jXfJFUiFG4ojMg9YIgvxTefcvntW2GiBWw4kaow8poo',
            -- SpriteTxId = 'gGzwitPXKg_Z-jBAwzzpYt947TCmZin9o7-d6LYgClA',
            Interaction = {
                Type = 'Warp',
                Size = { 2, 3 },
                -- Position = { 25, 18 },
                Target = "7_J2DJWqQW7eqR3Mr08gzTsYrgetdRjo_SqsDgTdfT4",
            },
        }
    },
--       ['MyNpc'] = {
--     Type = 'Avatar',
--     Position = { 25, 68 },
--     Metadata = {
--       DisplayName = 'My NPC',
--       SpriteTxId = '0WFjH89wzK8XAA1aLPzBBEUQ1uKpQe9Oz_pj8x1Wxpc',
--     },
--   },
    ['KRDLphN9ZU53Jqcka90uK37LlD_gEdsUdd0hDtPHzQ8'] = {
        Position = { 48, 45 },
        Type = 'Avatar',
        Metadata = {
            DisplayName = 'Welcome Llama',
            SkinNumber = 4,
            Interaction = {
                Type = 'SchemaForm',
                Id = 'Welcome'
            },
        },
    },
}

--#endregion

return print("Loaded Reality Template")
