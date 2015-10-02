--[[
  TribeWar for Transformice.
  @version  0.0.1
  @authors  SkyzohKey, Nathaan, Nicolasledu
]]--

-- Global module object.
TribeWar = {
  -- Constructor.
  new = function ()
    return self;
  end,
  --[[ PLAYERS. ]]--
  -- Player object.
  Player = {},
  -- PlayerManager object.
  PlayerManager = {},

  --[[ PROFILS. ]]--
  -- ProfilManager object.
  ProfilManager = {},
  -- ScoreManager object.
  ScoreManager = {},

  --[[ MAPS. ]]--
  -- Map object.
  Map = {
    -- Constructor.
    new = function ()
      return self;
    end,

    -- Map Type.
    Type = {
      VANILLA = 0,
      RACING = 1,
      BOOTCAMP = 2, -- To do later if needed.
      DEFILANTE = 3, -- To do later if needed.
      FFA = 4 -- To do later if needed.
    },

    -- Map time.
    Time = {
      VANILLA = 2.0,
      RACING = 1,
      BOOTCAMP = 5.0,
      DEFILANTE = 1.3,
      FFA = 1.5
    },

    code = "1", -- Map code.
    type = self.Type.VANILLA, -- Map type.
    time = self.Time[self.type]; -- Get the time from the map type.
  },
  -- MapManager object.
  MapManager = {
    currentMap = Map:new();
  }
};

local module = TribeWar:new();
