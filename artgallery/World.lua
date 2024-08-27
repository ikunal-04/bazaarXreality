--#region Model

RealityInfo = {
  Dimensions = 2,
  Name = 'Art Gallery',
  ['Render-With'] = '2D-Tile-0',
}

RealityParameters = {
  ['2D-Tile-0'] = {
    Version = 0,
    Spawn = { 49, 83 },
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
      TxId = 'wlzm0f9oDhxibCm6KAnBQ5yfcaEWEpmIDigoLBeA2Lk', -- TxId of the tilemap in TMJ format
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
    Position = { 49, 81 },
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

  -- ['MyNpc'] = {
  --   Type = 'Avatar',
  --   Position = { 67, 53 },
  --   Metadata = {
  --     DisplayName = 'My NPC',
  --     SpriteTxId = '0WFjH89wzK8XAA1aLPzBBEUQ1uKpQe9Oz_pj8x1Wxpc',
  --   },
  -- },
  ['WarpToHallway'] = {
    Position = { 67, 53 },
    Type = 'Hidden',
    Metadata = {
      -- SpriteTxId = '0WFjH89wzK8XAA1aLPzBBEUQ1uKpQe9Oz_pj8x1Wxpc',
      -- SpriteTxId = 'jXfJFUiFG4ojMg9YIgvxTefcvntW2GiBWw4kaow8poo',
      -- SpriteTxId = 'gGzwitPXKg_Z-jBAwzzpYt947TCmZin9o7-d6LYgClA',
      Interaction = {
        Type = 'Warp',
        Size = { 2, 3 },
        -- Position = { 25, 18 },
        Target = "akj_MST63xU3hoI-IruFpHrCbzZLujPe2U4FGGb8zdU",
      },
    }
  },
  ['qKEjN3bmCbS6Qns_ZbOY_oj_cvQO0vV_lswFLLQo-Gg'] = {
    Position = { 35, 51 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = 'About BazAR',
      SkinNumber = 5,
      Interaction = {
        Type = 'SchemaForm',
        Id = 'About'
      },
    },
  },
  ['fP4OY-xbFIVCrG1lRhQYTaxhpguPgYVwnQuMtLVwhXY'] = {
    Position = { 29, 69 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = 'Fee Structure of BazAR',
      SkinNumber = 5,
      Interaction = {
        Type = 'SchemaForm',
        Id = 'Fee'
      },
    },
  },
  ['-RpxdemItb5h-w2bZF5JU1YmvSYk7de50EGDExw6Huc'] = {
    Position = { 69, 53 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = 'Reward Structure of BazAR',
      SkinNumber = 5,
      Interaction = {
        Type = 'SchemaForm',
        Id = 'Reward'
      },
    },
  },
  ['OUGZ0XAVvwrdvUeMB1qUCPutJaZRT8yhAcPR7Pf4im0'] = {
    Position = { 66, 69 },
    Type = 'Avatar',
    Metadata = {
      DisplayName = 'Technology Stack BazAR',
      SkinNumber = 5,
      Interaction = {
        Type = 'SchemaForm',
        Id = 'Tech'
      },
    },
  },
}

--#endregion

return print("Loaded Reality Template")
