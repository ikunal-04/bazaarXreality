--#region Model

RealityInfo = {
    Dimensions = 2,
    Name = 'Art Gallery',
    ['Render-With'] = '2D-Tile-0',
}

RealityParameters = {
    ['2D-Tile-0'] = {
        Version = 0,
        Spawn = { 29, 68 },
        -- This is a tileset themed to Llama Land main island
        Tileset = {
            Type = 'Fixed',
            Format = 'PNG',
            TxId = '7Yiq9_AsUQv7_ThtyS3Rm9tZwyOSq7_xZL7pOyXQvps', -- TxId of the tileset in PNG format
        },
        -- This is a tilemap of sample small island
        Tilemap = {
            Type = 'Fixed',
            Format = 'TMJ',
            TxId = 'aCEGGH5eMvUx-3_y9BQ_UZNCStzIe49Yey4Xfzt8vLg', -- TxId of the tilemap in TMJ format
            -- Since we are already setting the spawn in the middle, we don't need this
            -- Offset = { -10, -10 },
        },
    },
    ['Audio-0'] = {
        Bgm = {
            Type = 'Fixed',
            Format = 'WEBM',
            TxId = 'XAGMTysIgodO6NbIhvr3YoPp5QPXQ3heeCuxAuUhTIs',
        }
    }
}

RealityEntitiesStatic = {
    ['WarpToArtGallery1'] = {
        Position = { 25, 68 },
        Type = 'Hidden',
        Metadata = {
            -- SpriteTxId = '0WFjH89wzK8XAA1aLPzBBEUQ1uKpQe9Oz_pj8x1Wxpc',
            -- SpriteTxId = 'jXfJFUiFG4ojMg9YIgvxTefcvntW2GiBWw4kaow8poo',
            -- SpriteTxId = 'gGzwitPXKg_Z-jBAwzzpYt947TCmZin9o7-d6LYgClA',
            Interaction = {
                Type = 'Warp',
                Size = { 2, 3 },
                -- Position = { 25, 18 },
                Target = "5OS0KUNpgAfeAyPViK_VC_Y7Y2TxAujxihwY254hrzQ",
            },
        }
    },
    ['WarpToEntrance'] = {
        Position = { 58, 68 },
        Type = 'Hidden',
        Metadata = {
            -- SpriteTxId = '0WFjH89wzK8XAA1aLPzBBEUQ1uKpQe9Oz_pj8x1Wxpc',
            -- SpriteTxId = 'jXfJFUiFG4ojMg9YIgvxTefcvntW2GiBWw4kaow8poo',
            -- SpriteTxId = 'gGzwitPXKg_Z-jBAwzzpYt947TCmZin9o7-d6LYgClA',
            Interaction = {
                Type = 'Warp',
                Size = { 2, 3 },
                -- Position = { 25, 18 },
                Target = "vlfHBk8angJO6E3CsaRpqFSvlNd_rwMQfQp1-gqjU3E",
            },
        }
    },
--       ['MyNpc'] = {
--     Type = 'Avatar',
--     Position = { 84, 68 },
--     Metadata = {
--       DisplayName = 'My NPC',
--       SpriteTxId = '0WFjH89wzK8XAA1aLPzBBEUQ1uKpQe9Oz_pj8x1Wxpc',
--     },
--   },
    ['mdb3oWQM78UMaUoHN0BsSfNI0mCbaeX5iuEfWrNtuKg'] = {
        Position = { 49, 41 },
        Type = 'Avatar',
        Metadata = {
            DisplayName = 'Info Llama',
            SkinNumber = 6,
            Interaction = {
                Type = 'SchemaForm',
                Id = 'Info'
            },
        },
    },
}

--#endregion

return print("Loaded Reality Template")
