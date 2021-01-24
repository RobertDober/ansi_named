defmodule ColorNamed.AnsiColorNames do

  defmacro __using__(_opts) do
    quote do
      @ansi_color_names %{
        "black" => 0,
        "maroon" => 1,
        "toad_in_love" => 2,
        "olive" => 3,
        "navy_blue" => 4,
        "violet_eggplant" => 5,
        "teal" => 6,
        "silver" => 7,
        "gray" => 8,
        "red" => 9,
        "green" => 10,
        "yellow" => 11,
        "blue" => 12,
        "magenta" => 13,
        "cyan" => 14,
        "white" => 15,
        "dark_indigo" => 17,
        "ultramarine01" => 18,
        "ultramarine02" => 19,
        "persian_blue01" => 20,
        "dark_spring_green" => 22,
        "dark_turquoise" => 23,
        "cerulean_grey01" => 24,
        "denim01" => 25,
        "royal_blue01" => 26,
        "royal_blue02" => 27,
        "toad_in_love01" => 28,
        "sea_green01" => 29,
        "teal01" => 30,
        "cerulean_grey02" => 31,
        "klein_blue" => 32,
        "azure01" => 33,
        "vert_de_pomme01" => 34,
        "jade01" => 35,
        "jade02" => 36,
        "robin_egg_blue01" => 37,
        "bondi_blue" => 38,
        "light_blue01" => 39,
        "vert_de_pomme02" => 40,
        "malachite01" => 41,
        "emerald01" => 42,
        "turquoise" => 43,
        "robin_egg_blue02" => 44,
        "electric01" => 45,
        "spring_green01" => 47,
        "spring_green02" => 48,
        "mint_green01" => 49,
        "aquamarine01" => 50,
        "flea_belly" => 52,
        "plum" => 53,
        "indigo" => 54,
        "purple01" => 55,
        "violet01" => 56,
        "persian_blue02" => 57,
        "khaki01" => 58,
        "wet_asphalt01" => 59,
        "seroburomalinovyj01" => 60,
        "denim02" => 61,
        "royal_blue03" => 62,
        "royal_blue04" => 63,
        "olive_drab" => 64,
        "fern_green" => 65,
        "slate_gray" => 66,
        "steel_blue" => 67,
        "cornflower_blue01" => 68,
        "azure02" => 69,
        "grass01" => 70,
        "emerald02" => 71,
        "sea_green02" => 72,
        "robin_egg_blue03" => 73,
        "bluish01" => 74,
        "light_blue02" => 75,
        "vert_de_pomme03" => 76,
        "pale_green01" => 77,
        "emerald03" => 78,
        "aquamarine02" => 79,
        "robin_egg_blue04" => 80,
        "sky01" => 81,
        "bright_green" => 82,
        "malachite02" => 83,
        "spring_green03" => 84,
        "chartreuse01" => 85,
        "aquamarine03" => 86,
        "cyan01" => 87,
        "maroon01" => 88,
        "eggplant01" => 89,
        "violet_eggplant01" => 90,
        "purple02" => 91,
        "violet02" => 92,
        "violet03" => 93,
        "khaki02" => 94,
        "pale_mauve01" => 95,
        "seroburomalinovyj02" => 96,
        "amethyst01" => 97,
        "amethyst02" => 98,
        "heliotrope01" => 99,
        "olive01" => 100,
        "dark_tan" => 101,
        "gray01" => 102,
        "bluish02" => 103,
        "cornflower_blue02" => 104,
        "royal_blue05" => 105,
        "grass02" => 106,
        "asparagus" => 107,
        "swamp_green01" => 108,
        "light_grey01" => 109,
        "bluish03" => 110,
        "cornflower_blue03" => 111,
        "green_yellow01" => 112,
        "pale_green02" => 113,
        "emerald04" => 114,
        "celadon" => 115,
        "pale_blue01" => 116,
        "sky02" => 117,
        "viridian" => 118,
        "vert_de_pomme04" => 119,
        "mint_green02" => 120,
        "chartreuse02" => 121,
        "aquamarine04" => 122,
        "electric02" => 123,
        "bismarck_furious" => 124,
        "eggplant02" => 125,
        "red_violet01" => 126,
        "violet_eggplant02" => 127,
        "bright_violet" => 128,
        "violet04" => 129,
        "ochre" => 130,
        "pale_mauve02" => 131,
        "pale_red_violet01" => 132,
        "orchid01" => 133,
        "amethyst03" => 134,
        "heliotrope02" => 135,
        "dark_goldenrod" => 136,
        "pale_brown" => 137,
        "mountbatten_pink" => 138,
        "lilac01" => 139,
        "wisteria01" => 140,
        "amethyst04" => 141,
        "old_gold" => 142,
        "brass01" => 143,
        "swamp_green02" => 144,
        "light_grey02" => 145,
        "niagara" => 146,
        "wisteria02" => 147,
        "lime01" => 148,
        "pistachio01" => 149,
        "moss_green" => 150,
        "dark_tea_green" => 151,
        "pale_blue02" => 152,
        "pale_cornflower_blue" => 153,
        "green_yellow02" => 154,
        "green_yellow03" => 155,
        "pistachio02" => 156,
        "chartreuse03" => 157,
        "aquamarine05" => 158,
        "pale_blue03" => 159,
        "titian" => 160,
        "cerise01" => 161,
        "red_violet02" => 162,
        "hot_pink01" => 163,
        "magenta01" => 165,
        "tenne" => 166,
        "chestnut01" => 167,
        "pale_red_violet02" => 168,
        "orchid02" => 169,
        "orchid03" => 170,
        "heliotrope03" => 171,
        "siena" => 172,
        "dark_salmon" => 173,
        "puce01" => 174,
        "puce2" => 175,
        "violaceous01" => 176,
        "violaceous02" => 177,
        "dark_pear" => 178,
        "brass02" => 179,
        "tan" => 180,
        "pale_chestnut" => 181,
        "lilac02" => 182,
        "wisteria03" => 183,
        "childs_surprise" => 184,
        "vert_de_peche" => 185,
        "flax" => 186,
        "gray_tea_green" => 187,
        "abdel_kerims_beard01" => 188,
        "periwinkle" => 189,
        "lime02" => 190,
        "pistachio03" => 191,
        "pistachio04" => 192,
        "tea_green01" => 193,
        "tea_green02" => 194,
        "pang" => 195,
        "crimson" => 197,
        "cerise02" => 198,
        "hot_pink02" => 199,
        "hot_pink03" => 200,
        "international_orange" => 202,
        "alizarin" => 203,
        "dark_pink01" => 204,
        "dark_pink02" => 205,
        "shocked_star" => 206,
        "fuchsia" => 207,
        "tangerine" => 208,
        "salmon" => 209,
        "chestnut02" => 210,
        "pale_red_violet03" => 211,
        "pale_magenta" => 212,
        "violaceous03" => 213,
        "orange" => 214,
        "pink_orange" => 215,
        "saumon" => 216,
        "pink01" => 217,
        "pink02" => 218,
        "violaceous04" => 219,
        "gold" => 220,
        "mustard01" => 221,
        "mustard02" => 222,
        "dark_peach" => 223,
        "pale_pink" => 224,
        "thistle" => 225,
        "corn01" => 227,
        "corn02" => 228,
        "perhydor" => 229,
        "lemon_cream" => 230,
        "black01" => 232,
        "black02" => 233,
        "black03" => 234,
        "bistre" => 235,
        "anthracite" => 236,
        "wet_asphalt02" => 237,
        "wet_asphalt03" => 238,
        "wet_asphalt04" => 239,
        "wet_asphalt05" => 240,
        "wet_asphalt06" => 241,
        "wet_asphalt07" => 242,
        "gray02" => 245,
        "gray03" => 246,
        "gray04" => 247,
        "gray05" => 248,
        "light_grey03" => 249,
        "light_grey04" => 250,
        "silver01" => 251,
        "abdel_kerims_beard02" => 252,
        "abdel_kerims_beard03" => 253,
        "abdel_kerims_beard04" => 254,
        "seashell" => 255
        }
    end
  end

end
