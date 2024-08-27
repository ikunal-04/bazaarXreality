--#region Model

RealityInfo = {
  Dimensions = 2,
  Name = 'ExampleReality',
  ['Render-With'] = '2D-Tile-0',
}

RealityParameters = {
  ['2D-Tile-0'] = {
    Version = 0,
    Spawn = { 5, 7 },
    -- This is a tileset themed to Llama Land main island
    Tileset = {
      Type = 'Fixed',
      Format = 'PNG',
      TxId = 'DJ2B0HdNxshnRi5POstym8zM3Wyi0dxg94O88xLu9YM', -- TxId of the tileset in PNG format
    },
    -- This is a tilemap of sample small island
    Tilemap = {
      Type = 'Fixed',
      Format = 'TMJ',
      TxId = 'TP2qMICVUdtq18_6h3Z09G85genvE7uTWhR7boXd9ZA', -- TxId of the tilemap in TMJ format
      -- Since we are already setting the spawn in the middle, we don't need this
      -- Offset = { -10, -10 },
    },
  },
}

RealityEntitiesStatic = {
  ['MyNpc2'] = {
    Type = 'Avatar',
    Position = { 3, 7 },
    Metadata = {
      DisplayName = 'My NPC',
      SpriteTxId = '0WFjH89wzK8XAA1aLPzBBEUQ1uKpQe9Oz_pj8x1Wxpc',
    },
  },
  ['WarpToArtGallery1'] = {
    Position = { 3, 7 },
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
}

--#endregion

return print("Loaded Reality Template")
