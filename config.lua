Config = {}

Config.webhook = "https://discord.com/api/webhooks/972903117559570442/1pLiCXSvkKGHJls6NKW4fBHVl5D2Jxn2V2P9qLBcdhd5o_L2Rit0p_gI09pyPu0JHTl0"						-- Webhook to send logs to discord
Config.lang = "de"								-- Set the file language [en/br]

Config.ESX = {									-- ESX settings, if you are using vRP just ignore
	['ESXSHAREDOBJECT'] = "esx:getSharedObject",-- Change your getshared object event here, in case you are using anti-cheat
	['account_dealership'] = 'bank',			-- Change here the account that should be used with dealership expenses
	['account_customers'] = 'bank',				-- Change here the account that the money should be debited when buying vehicles in the dealership
}

Config.format = {
	['currency'] = 'EUR',						-- This is the currency format, so that your currency symbol appears correctly [Examples: BRL, USD]
	['location'] = 'de-DE'						-- This is the location of your country, to format the decimal places according to your standard [Examples: pt-BR, en-US]
}
Config.default_stock = 100						-- Stock when the dealership has no owner (set as false to use the values from dealership_stock, if this is not false the dealership_stock table is useless)
Config.max_dealerships_per_player = 1			-- Maximum number of dealerships that each player can have
Config.PlateFormat = 'xxxxxxxx'					-- Plate generation format (n = number | l = letter | x = any)

Config.sell_vehicles = {
	['sell_without_owner'] = false,				-- true: will allow players to intantly sell vehicles to a dealership that has no owner | false: players will only be able to sell vehicle when has owner
	['percentage'] = 0.7						-- Percentage of the vehicle sell value (0.7 = 70%)
}

Config.enable_custom_colours = false			-- Set this as true if you want to use custom colours (Your garage and your LS Customs must have support to custom colours)

-- Here are the places where the person can open the dealership menu
-- You can add as many locations as you want, just use the location already created as an example
Config.dealership_locations = {
	["dealer_1"] = {															-- ID
		['buy_price'] = 99999999,												-- Price to buy this dealership
		['sell_price'] = 100,												-- Price to sell this dealership
		['coord'] = {-1167.4794, -1715.7994, 4.6928},									-- Coordinate to open the menu
		['truck_coord'] = {-1131.2482, -1738.3958, 4.0494, 304.4117},							-- Garage coordinates, where the trucks will spawn (coordinates composed of x, y, z, h)
		['trailer_coord'] = {-1148.6136, -1750.5269, 3.9397, 302.2039},						-- Garage coordinates, where the trailers will spawn (coordinates composed of x, y, z, h)
		['test_drive'] = {
			['teleport'] = true,												-- If set true, when starting a test drive you'll be teleported to the coord below. Else, the car will just be unfreezed
			['test_drive_coord'] = {1561.6461, 875.9366, 77.2428, 10.4978},				-- Coordinates where player will teleport when start a test drive
			['test_drive_time'] = 60											-- Time in seconds the test drive will last
		},
		['truck_name'] = "hauler",												-- Truck spawn name
		['trailer'] = {															-- Trailers spawn name
			['empty'] = "tr2",
			['full'] = "tr4",
		},
		['cutomers_garage_coord'] = {-1121.0374, -1703.4194, 4.1092, 276.3577},				-- Customers garage coordinates, where the bought vehicles will spawn (coordinates composed of x, y, z, h)
		['sell_blip_coords'] = {												-- The coordinates where customers will buy things on this dealership (coordinates composed of x, y, z)
			{
				['dealer'] = {-1147.2560, -1713.7289, 4.6894},
				['preview'] = {-1143.1288, -1717.9891, 4.3954, 166.8203} 
			},
			{
				['dealer'] = {-1140.2684, -1709.2076, 4.6884},
				['preview'] = {-1136.5614, -1712.9369, 4.3984, 268.6171} 
			},
			{
				['dealer'] = {-1133.2590, -1704.5566, 4.6875},
				['preview'] = {-1129.6760, -1708.3209, 4.3985, 142.3255}
			}
		},
		['type'] = 'sunset',			 									-- Insert here the dealership type ID
		['account'] = {															-- Account settings for this dealership
			['vehicles'] = 'bank',												-- Account that the money should be debited when buying vehicle in the dealership
			['dealership'] = 'bank',											-- Account that should be used with dealership expenses (owner)
		}
	},
	["dealer_2"] = {															-- ID
		['buy_price'] = 99999999,												-- Price to buy this dealership
		['sell_price'] = 100,												-- Price to sell this dealership
		['coord'] = {832.7713, -829.5960, 26.3326},									-- Coordinate to open the menu
		['truck_coord'] = {784.7788, -808.6893, 26.0568, 0.5328},							-- Garage coordinates, where the trucks will spawn (coordinates composed of x, y, z, h)
		['trailer_coord'] = {784.6149, -842.2953, 25.6127, 359.4719},						-- Garage coordinates, where the trailers will spawn (coordinates composed of x, y, z, h)
		['test_drive'] = {
			['teleport'] = true,												-- If set true, when starting a test drive you'll be teleported to the coord below. Else, the car will just be unfreezed
			['test_drive_coord'] = {1561.6461, 875.9366, 77.2428, 10.4978},				-- Coordinates where player will teleport when start a test drive
			['test_drive_time'] = 60											-- Time in seconds the test drive will last
		},
		['truck_name'] = "hauler",												-- Truck spawn name
		['trailer'] = {															-- Trailers spawn name
			['empty'] = "tr2",
			['full'] = "tr4",
		},
		['cutomers_garage_coord'] = {826.9482, -798.1457, 26.2113, 85.2688},				-- Customers garage coordinates, where the bought vehicles will spawn (coordinates composed of x, y, z, h)
		['sell_blip_coords'] = {												-- The coordinates where customers will buy things on this dealership (coordinates composed of x, y, z)
			{
				['dealer'] = {832.3705, -823.2715, 26.3533},
				['preview'] = {829.0875, -813.2228, 25.9208, 91.2806} 
			},
			{
				['dealer'] = {834.2936, -823.1752, 26.3534},
				['preview'] = {828.4210, -805.9205, 25.9205, 90.8106} 
			}
		},
		['type'] = 'yarak',			 									-- Insert here the dealership type ID
		['account'] = {															-- Account settings for this dealership
			['vehicles'] = 'bank',												-- Account that the money should be debited when buying vehicle in the dealership
			['dealership'] = 'bank',											-- Account that should be used with dealership expenses (owner)
		}
	},
	["dealer_3"] = {															-- ID
		['buy_price'] = 99999999,												-- Price to buy this dealership
		['sell_price'] = 100,												-- Price to sell this dealership
		['coord'] = {1073.4199, -784.3525, 58.3054},									-- Coordinate to open the menu
		['truck_coord'] = {1080.8568, -754.6903, 57.6575, 88.9142},							-- Garage coordinates, where the trucks will spawn (coordinates composed of x, y, z, h)
		['trailer_coord'] = {1110.7131, -755.4454, 57.7030, 87.4039},						-- Garage coordinates, where the trailers will spawn (coordinates composed of x, y, z, h)
		['test_drive'] = {
			['teleport'] = true,												-- If set true, when starting a test drive you'll be teleported to the coord below. Else, the car will just be unfreezed
			['test_drive_coord'] = {1561.6461, 875.9366, 77.2428, 10.4978},				-- Coordinates where player will teleport when start a test drive
			['test_drive_time'] = 60											-- Time in seconds the test drive will last
		},
		['truck_name'] = "hauler",												-- Truck spawn name
		['trailer'] = {															-- Trailers spawn name
			['empty'] = "tr2",
			['full'] = "tr4",
		},
		['cutomers_garage_coord'] = {1107.3040, -778.9365, 58.2625, 345.6756},				-- Customers garage coordinates, where the bought vehicles will spawn (coordinates composed of x, y, z, h)
		['sell_blip_coords'] = {												-- The coordinates where customers will buy things on this dealership (coordinates composed of x, y, z)
			{
				['dealer'] = {1089.1643, -784.3813, 58.3053},
				['preview'] = {1091.1383, -778.4135, 58.3447, 268.9963} 
			},
			{
				['dealer'] = {1084.9463, -784.4739, 58.3053},
				['preview'] = {1082.9065, -778.4614, 58.3446, 90.6814} 
			}
		},
		['type'] = 'marek',			 									-- Insert here the dealership type ID
		['account'] = {															-- Account settings for this dealership
			['vehicles'] = 'bank',												-- Account that the money should be debited when buying vehicle in the dealership
			['dealership'] = 'bank',											-- Account that should be used with dealership expenses (owner)
		}
	},
	["dealer_4"] = {															-- ID
		['buy_price'] = 99999999,												-- Price to buy this dealership
		['sell_price'] = 100,												-- Price to sell this dealership
		['coord'] = {-812.6788, -1371.4039, 5.1503},									-- Coordinate to open the menu
		['truck_coord'] = {-789.0217, -1328.1191, 5.0004, 321.6566},							-- Garage coordinates, where the trucks will spawn (coordinates composed of x, y, z, h)
		['trailer_coord'] = {-825.0139, -1328.4540, 5.0004, 268.0531},						-- Garage coordinates, where the trailers will spawn (coordinates composed of x, y, z, h)
		['test_drive'] = {
			['teleport'] = true,												-- If set true, when starting a test drive you'll be teleported to the coord below. Else, the car will just be unfreezed
			['test_drive_coord'] = {-798.1282, -1503.6226, 0.2945, 111.2724},				-- Coordinates where player will teleport when start a test drive
			['test_drive_time'] = 60											-- Time in seconds the test drive will last
		},
		['truck_name'] = "hauler",												-- Truck spawn name
		['trailer'] = {															-- Trailers spawn name
			['empty'] = "tr2",
			['full'] = "tr4",
		},
		['cutomers_garage_coord'] = {-798.1282, -1503.6226, 0.2945, 111.2724},				-- Customers garage coordinates, where the bought vehicles will spawn (coordinates composed of x, y, z, h)
		['sell_blip_coords'] = {												-- The coordinates where customers will buy things on this dealership (coordinates composed of x, y, z)
			{
				['dealer'] = {-846.3253, -1367.7469, 1.6052},
				['preview'] = {-843.1686, -1372.1125, 0.2887, 111.4627} 
			}
		},
		['type'] = 'boote',			 									-- Insert here the dealership type ID
		['account'] = {															-- Account settings for this dealership
			['vehicles'] = 'bank',												-- Account that the money should be debited when buying vehicle in the dealership
			['dealership'] = 'bank',											-- Account that should be used with dealership expenses (owner)
		}
	},
	["dealer_5"] = {															-- ID
		['buy_price'] = 99999999,												-- Price to buy this dealership
		['sell_price'] = 100,												-- Price to sell this dealership
		['coord'] = {-27.9265, -1108.5676, 27.2744},									-- Coordinate to open the menu
		['truck_coord'] = {-14.5996, -1081.4871, 27.0472, 112.0040},							-- Garage coordinates, where the trucks will spawn (coordinates composed of x, y, z, h)
		['trailer_coord'] = {-29.6606, -1081.8483, 27.0419, 73.3495},						-- Garage coordinates, where the trailers will spawn (coordinates composed of x, y, z, h)
		['test_drive'] = {
			['teleport'] = true,												-- If set true, when starting a test drive you'll be teleported to the coord below. Else, the car will just be unfreezed
			['test_drive_coord'] = {-14.5996, -1081.4871, 27.0472, 112.0040},				-- Coordinates where player will teleport when start a test drive
			['test_drive_time'] = 60											-- Time in seconds the test drive will last
		},
		['truck_name'] = "hauler",												-- Truck spawn name
		['trailer'] = {															-- Trailers spawn name
			['empty'] = "tr2",
			['full'] = "tr4",
		},
		['cutomers_garage_coord'] = {-14.5996, -1081.4871, 27.0472, 112.0040},				-- Customers garage coordinates, where the bought vehicles will spawn (coordinates composed of x, y, z, h)
		['sell_blip_coords'] = {												-- The coordinates where customers will buy things on this dealership (coordinates composed of x, y, z)
			{
				['dealer'] = {-38.5886, -1100.0300, 27.2744},
				['preview'] = {-42.1260, -1101.1183, 26.8906, 173.9297} 
			},
			{
				['dealer'] = {-40.6389, -1094.6670, 27.2744},
				['preview'] = {-37.1570, -1093.3904, 26.8903, 186.6803} 
			},
			{
				['dealer'] = {-46.7466, -1095.9071, 27.2744},
				['preview'] = {-47.3542, -1092.2467, 26.8906, 69.7403} 
			},
			{
				['dealer'] = {-51.3429, -1094.8052, 27.2744},
				['preview'] = {-54.6012, -1096.5042, 26.8901, 188.5828} 
			},
			{
				['dealer'] = {-51.2187, -1087.4233, 27.2744},
				['preview'] = {-49.8208, -1084.0519, 26.8902, 38.8053} 
			},
		},
		['type'] = 'vanilla',			 									-- Insert here the dealership type ID
		['account'] = {															-- Account settings for this dealership
			['vehicles'] = 'bank',												-- Account that the money should be debited when buying vehicle in the dealership
			['dealership'] = 'bank',											-- Account that should be used with dealership expenses (owner)
		}
	},
	








}

-- Here you configure each type of dealership available to buy
Config.dealership_types = {
	['sunset'] = {								-- Dealership type ID
		['stock_capacity'] = 150,					-- Max stock capacity
		['max_employees'] = 5,						-- Max employees
		['vehicles'] = {							-- Here you configure the vehicles on this dealership
		
			---================================= ACURA
			['acura2f2f'] = {														
				['name'] = "2000 Acura NSX 2F2F",															
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/acura2f2f.png',							
				['page'] = 3
			},

			['filthynsx'] = {														
				['name'] = "2000 Acura NSX Liberty Walk",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/filthynsx.png',								
				['page'] = 3
			},
			---================================= ACURA END
			---================================= ALFA ROMEO
			
			['giulia'] = {														
				['name'] = "2020 Alfa Romeo Giulia GTA",									
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/giulia.png',							
				['page'] = 1
			},
		
			['4c'] = {														
				['name'] = "2008 Alfa Romeo 4C Spider",									
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/4c.png',							
				['page'] = 0
			},
				
			['mito'] = {														
				['name'] = "Alfa Romeo Mito",										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mito.png',								
				['page'] = 0
			},
			
			---================================= ALFA ROMEO END
			---================================= AMC
			
			['amxss'] = {														
				['name'] = "1970 AMX SS",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/amxss.png',								
				['page'] = 3
			},
			
			---================================= AMC END
			---================================= APOLLO
			['ie'] = {														
				['name'] = "2012 Apollo Intensa Emozione",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ie.png',							
				['page'] = 6
			},
			---================================= APOLLO END
			---================================= ASTON MARTIN

			['vulcanamr'] = {														
				['name'] = "2018 Aston Martin Vulcan",																		
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/vulcanamr.png',								
				['page'] = 6
			},

			['asdbx'] = {														
				['name'] = "2020 Aston Martin DBX",																		
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/asdbx.png',								
				['page'] = 5
			},

			['dbxlumma'] = {														
				['name'] = "2020 Aston Martin DBX Lumma",																
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/dbxlumma.png',							
				['page'] = 5
			},

			['foxleggera'] = {														
				['name'] = "2018 Aston Martin DBS Superleggera",															
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/foxleggera.png',								
				['page'] = 3
			},

			['rapides'] = {														
				['name'] = "2006 Aston Martin Rapide S",																	
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rapides.png',								
				['page'] = 1
			},

			['valkyrietp'] = {														
				['name'] = "2020 Aston Martin Valkyrie",																		
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/valkyrietp.png',							
				['page'] = 6
			},

			['v877'] = {														
				['name'] = "1977 Aston Martin Vantage V8",																	
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/v877.png',							
				['page'] = 3
			},

			['vantage'] = {														
				['name'] = "2017 Aston Martin Vantage",																		
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/vantage.png',							
				['page'] = 3
			},

			['victor'] = {														
				['name'] = "2020 Aston Martin Victor",																			
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/victor.png',							
				['page'] = 3
			},

			['MansoryDBX'] = {														
				['name'] = "2020 Aston Martin DBX Mansory",																			
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/MansoryDBX.png',								
				['page'] = 5
			},

			['dbxultimate'] = {														
				['name'] = "2022 Aston Martin DBX Ultimate Edition",																			
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/dbxultimate.png',							
				['page'] = 5
			},
			---================================= ASTON MARTIN END
			---================================= AUDI
		
			['audiq3'] = {														
				['name'] = "2011 Audi Q3 8U",										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/audiq3.png',						
				['page'] = 5
			},
		
			['s3sedan'] = {														
				['name'] = "2013 Audi A3 Limosine",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s3sedan.png',							
				['page'] = 1
			},
		
				['audis32'] = {														
				['name'] = "2002 Audi S3",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/audis32.png',							
				['page'] = 0
			},
			
			['ocnetrongt'] = {														
				['name'] = "2018 Audi E-Tron GT",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ocnetrongt.png',								
				['page'] = 1
			},

			['21rsq8'] = {														
				['name'] = "2020 Audi RS Q8",	                											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/21rsq8.png',								
				['page'] = 5
			},

			['r8v10'] = {														
				['name'] = "2020 Audi R8 V10",	            											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/r8v10.png',							
				['page'] = 6
			},

			['ttrs'] = {														
				['name'] = "2007 Audi TT 8J RS",                												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ttrs.png',								
				['page'] = 3
			},

			['s1hoonitron'] = {														
				['name'] = "2022 Audi S1E Quattro Hoonitron",                												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s1hoonitron.png',								
				['page'] = 3
			},

			['s8d4'] = {														
				['name'] = "2017 Audi S8 D4",            												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s8d4.png',							
				['page'] = 1
			},

			['rs6m'] = {														
				['name'] = "2020 Audi RS6 C8 Mansory",	    											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs6m.png',								
				['page'] = 1
			},

			['rs7r'] = {														
				['name'] = "2021 Audi RS 7 C8 Sportback ABT",	            											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs7r.png',							
				['page'] = 1
			},

			['rs6c8'] = {														
				['name'] = "2020 Audi RS 6 C8 Limosine",	    											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs6c8.png',							
				['page'] = 1
			},

			['rs6avant20'] = {														
				['name'] = "2020 Audi RS 6 C8 Avant",	        											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs6avant20.png',							
				['page'] = 2
			},

			['audquattros'] = {														
				['name'] = "1983 Audi Quattro Sport",        												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/audquattros.png',							
				['page'] = 3
			},

			['a6tfsi'] = {					    									
				['name'] = "2018 Audi A6 C8 TFSI",                  												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/a6tfsi.png',						
				['page'] = 1
			},

			['rs5'] = {														
				['name'] = "2011 Audi RS 5",               												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs5.png',							
				['page'] = 3
			},

			['topcarrsq8'] = {														
				['name'] = "2020 Audi RS Q8 Lumma",           												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/topcarrsq8.png',								
				['page'] = 5
			},

			['sq72016'] = {														
				['name'] = "2016 Audi SQ7",	            											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sq72016.png',							
				['page'] = 5
			},

			['s8d2'] = {														
				['name'] = "1998 Audi S8 D2",	                											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s8d2.png',								
				['page'] = 1
			},

			['rsq8m'] = {														
				['name'] = "2020 Audi RS Q8 Mansory",	            											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rsq8m.png',									
				['page'] = 5
			},

			['rs318'] = {														
				['name'] = "2018 Audi RS 3 Sportback",            												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs318.png',								
				['page'] = 1
			},

			['rs7mans'] = {														
				['name'] = "2020 Audi RS 7 C8 Sportback Mansory",              												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs7mans.png',								
				['page'] = 1
			},

			['rs7c8wb'] = {														
				['name'] = "2020 Audi RS 7 C8 Sportback Widebody",	    											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs7c8wb.png',								
				['page'] = 1
			},

			['rs7c8'] = {														
				['name'] = "2020 Audi RS 7 C8 Sportback Widebody",	    											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs7c8.png',									
				['page'] = 1
			},

			['rmodrs7'] = {														
				['name'] = "2015 Audi RS 7 C7 Sportback Animiert",      												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodrs7.png',							
				['page'] = 3
			},

			['rs52018'] = {														
				['name'] = "2018 Audi RS 5",      												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs52018.png',							
				['page'] = 3
			},

			['rs7'] = {														
				['name'] = "2018 Audi RS 7 C7 Sportback",            												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs7.png',							
				['page'] = 1
			},

			['rs6rabt20'] = {														
				['name'] = "2020 Audi RS 6 R C8 ABT Avant",           												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs6rabt20.png',									
				['page'] = 2
			},

			['rs6'] = {														
				['name'] = "2017 Audi RS 6 C7",	    											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs6.png',								
				['page'] = 2
			},

			['r8cabt'] = {														
				['name'] = "2020 Audi R8 V10 ABT Spider",            												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/r8cabt.png',									
				['page'] = 3
			},

			['q8prior'] = {														
				['name'] = "2020 Audi Q8 Prior Edition",	            											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/q8prior.png',							
				['page'] = 5
			},

			['mansoryrs6'] = {														
				['name'] = "2020 Audi RS 6 C8 Avant Mansory",        												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mansoryrs6.png',									
				['page'] = 2
			},

			['auds5'] = {														
				['name'] = "2020 Audi RS 5 Mansory",              												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/auds5.png',								
				['page'] = 3
			},

			['ar8lb'] = {														
				['name'] = "2018 Audi R8 V10 Liberty Walk",		            										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ar8lb.png',									
				['page'] = 3
			},

			['ocnetrongtAnimirt'] = {														
				['name'] = "2018 Audi E-tron GT Animiert",		            										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ocnetrongtAnimirt.png',									
				['page'] = 1
			},

			['mansrs6'] = {														
				['name'] = "2020 Audi RS 6 Mansaug",		            										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mansrs6.png',									
				['page'] = 2
			},

			['keyvanyrs612'] = {														
				['name'] = "2019 Audi RS6 C8 Keyvany",		            										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/keyvanyrs612.png',									
				['page'] = 2
			},

			['rsq8mans'] = {														
				['name'] = "2022 Audi RSQ8 Mansory",		            										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rsq8mans.png',									
				['page'] = 5
			},

			['keyvanyrs6'] = {														
				['name'] = "2022 Audi RS6 Avant Keyvany",		            										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/keyvanyrs6.png',									
				['page'] = 2
			},

			['SQ7ABT'] = {														
				['name'] = "2017 Audi Q7 ABT",		            										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/SQ7ABT.png',									
				['page'] = 5
			},

			['ttshrr'] = {														
				['name'] = "2022 Audi TTS HR R Series",		            										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ttshrr.png',									
				['page'] = 3
			},

			['ttrs19'] = {														
				['name'] = "2019 Audi TTRS",		            										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ttrs19.png',									
				['page'] = 3
			},

			['rs7c8KHANlll'] = {														
				['name'] = "2019 Audi Rs7 Khanniii Edition",		            										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs7c8KHANlll.png',									
				['page'] = 1
			},

			['rs6c8KHANlll'] = {														
				['name'] = "2019 Audi RS6 C8 Sedan Widebody",		            										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs6c8KHANlll.png',									
				['page'] = 1
			},

			['ttrs22'] = {														
				['name'] = "2018 Audi TT FV/8S RS Black Edition",		            										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ttrs22.png',									
				['page'] = 3
			},

			['LMTLSR8'] = {														
				['name'] = "2020 Audi R8 Prior Design Carbon",		            										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/LMTLSR8.png',									
				['page'] = 3
			},

			['drers4avant'] = {														
				['name'] = "2022 Audi RS 4 Avant",		            										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/drers4avant.png',									
				['page'] = 2
			},

			['rs322sedan'] = {														
				['name'] = "2022 Audi RS 3 Sedan",		            										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs322sedan.png',									
				['page'] = 1
			},

			['s1hr'] = {														
				['name'] = "2020 Audi S1 Hachi Desing",		            										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s1hr.png',									
				['page'] = 0
			},

			['rsqurus'] = {														
				['name'] = "2021 Audi RS Q8 Mansory Urus Body",		            										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rsqurus.png',									
				['page'] = 5
			},

			['ikx3abt20'] = {														
				['name'] = "2020 Audi RS 7 C8 Sportback ABT",		            										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ikx3abt20.png',									
				['page'] = 1
			},

			['rs3h'] = {														
				['name'] = "2019 Audi RS 3 Hachi Desing",		            										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs3h.png',									
				['page'] = 1
			},

			['a6avant'] = {														
				['name'] = "2018 Audi A6 C8 Avant",		            										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/a6avant.png',									
				['page'] = 1
			},
			---================================= AUDI END
			---================================= AUSTIN

			['ah300'] = {														
				['name'] = "1959 Austin Healey 3000",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ah300.png',						
				['page'] = 3
			},
			---================================= AUSTIN END
			---================================= BENTLEY
			['bcgt'] = {														
				['name'] = "2015 Bentley Continental GT Speed",															
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bcgt.png',							
				['page'] = 6
			},

			['19msctntgt4'] = {														
				['name'] = "2020 Bentley Continental GT GTC Keyvany",															
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/19msctntgt4.png',								
				['page'] = 3
			},
			
			['17onyxbtg2'] = {														
				['name'] = "2020 Bentley Bentayga Onyx",																		
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,								
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/17onyxbtg2.png',								
				['page'] = 5
			},
			
			['bbentayga'] = {														
				['name'] = "2020 Bentley Bentayga",																			
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bbentayga.png',							
				['page'] = 5
			},
			
			['21bentayga'] = {														
				['name'] = "2020 Bentley Bentayga Mansory",																
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/21bentayga.png',							
				['page'] = 5
			},
			
			['19msctntgt'] = {														
				['name'] = "2021 Bentley Continental GT Mansory",														
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/19msctntgt.png',									
				['page'] = 3
			},
			
			['contss21c'] = {														
				['name'] = "2011 Bentley Continental GT Cabrio",															
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/contss21c.png',								
				['page'] = 3
			},
			
			['17bcs'] = {														
				['name'] = "2017 Bentley Continental Supersports",															
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/17bcs.png',								
				['page'] = 3
			},
			
			['flyingspur'] = {														
				['name'] = "2013 Bentley Flying Spur",																	
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/flyingspur.png',							
				['page'] = 1
			},
			
			['mulsanne17sp'] = {														
				['name'] = "2017 Bentley Mulsanne Mansory",																	
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mulsanne17sp.png',									
				['page'] = 1
			},

			['rmodbacalar'] = {
				['name'] = "2021 Bentley Bacalar",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodbacalar.png',
				['page'] = 3
			},
			---================================= BENTLEY END
			---================================= BMW
			['m5e60'] = {
				['name'] = "2005 BMW E60 M5",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m5e60.png',
				['page'] = 1
			},
			
			
			['m5f90'] = {
				['name'] = "2018 BMW F90 M5",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m5f90.png',
				['page'] = 1
			},

			['bmw7sw2'] = {
				['name'] = "2022 BMW 760i G73",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bmw7sw2.png',
				['page'] = 1
			},

			['bmw7sw'] = {
				['name'] = "2022 BMW 760i G73 Blacked Forgiato",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bmw7sw.png',
				['page'] = 1
			},
			
			['g20stock'] = {
				['name'] = "2019 BMW G20 330i M Sport",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/g20stock.png',
				['page'] = 1
			},
			
			['g20wide'] = {
				['name'] = "2019 BMW G20 330i M Sport Wide Body",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/g20wide.png',
				['page'] = 1
			},
			
			['mcjcw20'] = {
				['name'] = "2015 Mini Cooper JCW",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mcjcw20.png',
				['page'] = 0
			},
			
			['x5e53'] = {
				['name'] = "1999 BMW E53 X5",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/x5e53.png',
				['page'] = 5
			},
		
			['x5bmw'] = {
				['name'] = "2009 BMW F85 X5M",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/x5bmw.png',
				['page'] = 5
			},
					
			['mteche39'] = {
				['name'] = "1998 BMW E39 M5",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mteche39.png',
				['page'] = 1
			},
				
			['z48'] = {
				['name'] = "2002 BMW Z4",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/z48.png',
				['page'] = 3
			},

			['e36drift'] = {
				['name'] = "1998 BMW e36 Drift",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/e36drift.png',
				['page'] = 3
			},
			
			['m3e36'] = {
				['name'] = "1999 BMW E36 M3",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m3e36.png',
				['page'] = 3
			},

			['bmdrift'] = {
				['name'] = "1991 BMW E30 Drift",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bmdrift.png',
				['page'] = 3
			},

			['bmwe'] = {
				['name'] = "2004 BMW E46 Drift",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bmwe.png',
				['page'] = 3
			},

			['BeefMWe46'] = {
				['name'] = "2005 BMW M3 E46 Drift",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/BeefMWe46.png',
				['page'] = 3
			},
			
			['m42020'] = {
				['name'] = "2021 BMW G22 420i",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m42020.png',
				['page'] = 3
			},

			['m5e60'] = {
				['name'] = "2005 BMW E60 M5",					
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m5e60.png',
				['page'] = 1
			},
			
			['19msctntgt3'] = {
				['name'] = "2019 BMW 530d xDrive G30 Touring",				
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/19msctntgt3.png',
				['page'] = 2
			},
			
			['oracle2'] = {
				['name'] = "2019 BMW 750li xDrive",				
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/oracle2.png',
				['page'] = 1
			},
			
			['alpinab7'] = {
				['name'] = "2019 BMW Alpina B7",					
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/alpinab7.png',
				['page'] = 1
			},
			
			['alpinab7z'] = {
				['name'] = "2019 BMW Alpina B7 Animiert",		
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/alpinab7z.png',
				['page'] = 1
			},
			
			['m1'] = {
				['name'] = "2013 BMW M1 Stance Works",			
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m1.png',
				['page'] = 3
			},
			
			['bmwvision'] = {
				['name'] = "2018 BMW M2 Vision",					
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bmwvision.png',
				['page'] = 3
			},
			
			['m3gtr'] = {
				['name'] = "2005 BMW E46 M3 GTR",					
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m3gtr.png',
				['page'] = 3
			},

			['e46facelift'] = {
				['name'] = "2006 BMW M3 E46 Facelift",					
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/e46facelift.png',
				['page'] = 3
			},
			
			['m3touring'] = {
				['name'] = "2022 BMW G80 M3 Touring",			
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m3touring.png',
				['page'] = 2
			},
			
			['m4c20'] = {
				['name'] = "2014 BMW M4 CS Cabrio",				
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m4c20.png',
				['page'] = 3
			},

			['buffalo1312'] = {
				['name'] = "2017 Bmw M4 F82 LB Drift",				
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/buffalo1312.png',
				['page'] = 3
			},
			
			['m4lb'] = {
				['name'] = "2014 BMW M4 F82 Liberty Walk Animiert",		
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m4lb.png',
				['page'] = 3
			},
			
			['m4cg83mp'] = {
				['name'] = "2020 BMW G82 M4 CS",			
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m4cg83mp.png',
				['page'] = 3
			},
			
			['f10m5'] = {	
				['name'] = "2010 BMW F10 M5",					
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/f10m5.png',
				['page'] = 1
			},
			
			['22m5sal'] = {
				['name'] = "2022 BMW M5 F90",			
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/22m5sal.png',
				['page'] = 1
			},
			
			['m6prior'] = {
				['name'] = "2015 BMW F13 M6 Prior Design",			
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m6prior.png',
				['page'] = 3
			},
			
			['bmw8mm'] = {
				['name'] = "2019 BMW G15 M8 Gran Coupe Animiert",			
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bmw8mm.png',
				['page'] = 3
			},
			
			['bmwm8prior'] = {
				['name'] = "2018 BMW G15 M8 Prior Design",			
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bmwm8prior.png',
				['page'] = 3
			},
			
			['17m760i'] = {
				['name'] = "2017 BMW M760Li",						
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/17m760i.png',
				['page'] = 1
			},
			
			['bmwx6mham'] = {
				['name'] = "2020 BMW X6 Hamann G06",					
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bmwx6mham.png',
				['page'] = 5
			},
			
			['lummax6'] = {
				['name'] = "2011 BMW X6 Lumma CLR",				
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lummax6.png',
				['page'] = 5
			},
			
			['m4comp'] = {
				['name'] = "2019 BMW M4 Competition",		
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m4comp.png',
				['page'] = 3
			},
			
			['BMWM5CS'] = {
				['name'] = "2021 BMW G30 M5 CS",		
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/BMWM5CS.png',
				['page'] = 1
			},
			
			['bmwm8'] = {
				['name'] = "2018 BMW G15 M8",					
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bmwm8.png',
				['page'] = 3
			},
			
			['hycadem8'] = {
				['name'] = "2018 BMW G14 M8 GTR Hycade",					
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/hycadem8.png',
				['page'] = 3
			},

			['850'] = {
				['name'] = "1995 BMW 850 CSI",				
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/850.png',
				['page'] = 3
			},

			['m6f13'] = {
				['name'] = "2012 BMW M6 Cabrio",				
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m6f13.png',
				['page'] = 3
			},

			['rmodm4gts'] = {
				['name'] = "2015 BMW M4 GTS Liberty Walk",				
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodm4gts.png',
				['page'] = 3
			},

			['mansm2'] = {
				['name'] = "2018 BMW M2 Mansaug",				
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mansm2.png',
				['page'] = 3
			},

			['mansm4'] = {
				['name'] = "2021 BMW M4 Mansaug",				
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mansm4.png',
				['page'] = 3
			},
			
			['rmodm8c'] = {
				['name'] = "2018 BMW G15 M8 Competition Cabrio",	
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodm8c.png',
				['page'] = 3
			},
			
			['mh8'] = {
				['name'] = "2018 BMW G15 M8 Manhart",			
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mh8.png',
				['page'] = 3
			},
			
			['mansm8'] = {
				['name'] = "2018 BMW G15 M8 Competition Mansaug",			
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mansm8.png',
				['page'] = 3
			},
			
			['m5e60wb'] = {
				['name'] = "2007 BMW E60 M5 Wide Body",			
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m5e60wb.png',
				['page'] = 1
			},
			
			['m6f06'] = {
				['name'] = "2013 BMW F06 M6 Gran Coupe",			
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m6f06.png',
				['page'] = 1
			},
			
			['m3g80c'] = {
				['name'] = "2021 BMW G80 M3 Competition",		
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m3g80c.png',
				['page'] = 1
			},
			
			['e46t'] = {
				['name'] = "1998 BMW E46 Touring",				
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/e46t.png',
				['page'] = 2
			},
			
			['f82'] = {
				['name'] = "2014 BMW F82 M4",					
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/f82.png',
				['page'] = 3
			},
			
			['m4c'] = {
				['name'] = "2014 BMW F82 M4 Cabrio",				
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m4c.png',
				['page'] = 3
			},
			
			['m4cc'] = {
				['name'] = "2021 BMW M4 Animiert",			
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m4cc.png',
				['page'] = 3
			},
			
			['rmodx6'] = {
				['name'] = "2013 BMW X6M Wide Body",			
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodx6.png',
				['page'] = 5
			},
			
			['bmwg07'] = {
				['name'] = "2019 BMW G07 X7",					
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bmwg07.png',
				['page'] = 5
			},

			['x7m60iprzemo'] = {
				['name'] = "2022 BMW X7 M60i G07",					
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/x7m60iprzemo.png',
				['page'] = 5
			},
			
			['m3e30'] = {
				['name'] = "1988 BMW E30 M3",					
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m3e30.png',
				['page'] = 3
			},
				
			['m2'] = {
				['name'] = "2018 BMW M2",						
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m2.png',
				['page'] = 3
			},

			['minilb'] = {														
				['name'] = "2007 Mini Cooper Liberty Walk",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/minilb.png',									
				['page'] = 0
			},

			['royAlpinaB4s_FL'] = {
				['name'] = "2019 BMW M4 F82 Alpina",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/royAlpinaB4s_FL.png',
				['page'] = 3
			},

			['bmwm4csl'] = {
				['name'] = "2019 BMW M4 F82 Alpina",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bmwm4csl.png',
				['page'] = 3
			},

			['bmwx7'] = {
				['name'] = "2021 BMW X7 G07 Khann",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bmwx7.png',
				['page'] = 5
			},

			['ikx3m4cs'] = {
				['name'] = "2017 BMW M4 CS F82",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ikx3m4cs.png',
				['page'] = 3
			},

			['m5e61przemo'] = {
				['name'] = "2007 BMW M5 e61",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m5e61przemo.png',
				['page'] = 2
			},

			['m4mafia'] = {
				['name'] = "2020 BMW M4 F82 Mafia",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m4mafia.png',
				['page'] = 3
			},

			['burak328'] = {
				['name'] = "1998 BMW E36 328i M Sport Cabrio",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/burak328.png',
				['page'] = 3
			},

			['CCE60limit'] = {
				['name'] = "2007 BMW E60 Balenciaga x Gucci",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/CCE60limit.png',
				['page'] = 1
			},

			['z4alchemist'] = {
				['name'] = "2020 BMW Z4",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/z4alchemist.png',
				['page'] = 3
			},

			['x6m'] = {
				['name'] = "2017 BMW X6M",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/x6m.png',
				['page'] = 5
			},

			['mi8'] = {
				['name'] = "2018 BMW I8 Coupe MANSAUG",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mi8.png',
				['page'] = 3
			},

			['DL_mhx700'] = {
				['name'] = "2021 BMW X700 Manhart",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/DL_mhx700.png',
				['page'] = 5
			},

			['m8keyvany1'] = {
				['name'] = "2018 BMW G14 M8 Keyvany X Armytrix Performance",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m8keyvany1.png',
				['page'] = 3
			},

			['owlalpina'] = {
				['name'] = "2022 BMW Alpina B7 Versace",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/owlalpina.png',
				['page'] = 1
			},

			['DL_mh4'] = {
				['name'] = "2017 BMW M4 Manhart",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/DL_mh4.png',
				['page'] = 3
			},

			['DL_mh4650'] = {
				['name'] = "2016 BMW M4 650 Manhart",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/DL_mh4650.png',
				['page'] = 3
			},

			['DL_mh2'] = {
				['name'] = "2018 BMW M2 Manhart",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/DL_mh2.png',
				['page'] = 3
			},

			['DL_mh8'] = {
				['name'] = "2019 BMW G15 M8 Coupe Manhart",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/DL_mh8.png',
				['page'] = 1
			},

			['bmwmafiam3'] = {
				['name'] = "2022 BMW M3 Touring Competition Mafia Edition",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bmwmafiam3.png',
				['page'] = 2
			},

			['x6mpd'] = {
				['name'] = "2020 BMW X6M Prior",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/x6mpd.png',
				['page'] = 5
			},

			['drex6mlarte'] = {
				['name'] = "2019 BMW G06 X6M Larte",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/drex6mlarte.png',
				['page'] = 5
			},

			['x6larte'] = {
				['name'] = "2019 BMW G06 X6 Larte",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/x6larte.png',
				['page'] = 5
			},

			['18mh5'] = {
				['name'] = "2022 BMW M5 Manhart",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/18mh5.png',
				['page'] = 1
			},

			['m5e60wb1'] = {
				['name'] = "2005 BMW M5 E60 V10 Black Edition",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m5e60wb1.png',
				['page'] = 1
			},

			['16m4gts'] = {
				['name'] = "2015 BMW M4 GTS",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/16m4gts.png',
				['page'] = 3
			},

			['m2wb'] = {
				['name'] = "2018 BMW M2 CS",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m2wb.png',
				['page'] = 3
			},

			['i8r'] = {
				['name'] = "2019 BMW i8 Roadster",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/i8r.png',
				['page'] = 3
			},

			['m3g80c11'] = {
				['name'] = "2021 BMW M3 G80 Manhart",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m3g80c11.png',
				['page'] = 1
			},

			['m850'] = {
				['name'] = "2018 BMW G14 M850i",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m850.png',
				['page'] = 3
			},

			['m8keyvany'] = {
				['name'] = "2018 BMW G14 M8 Keyvany",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m8keyvany.png',
				['page'] = 3
			},

			['m5abflug'] = {
				['name'] = "2013 BMW M5 F11",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m5abflug.png',
				['page'] = 2
			},

			['m3f80'] = {
				['name'] = "2014 BMW M3 F80",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m3f80.png',
				['page'] = 2
			},

			['e46'] = {
				['name'] = "2003 BMW E46 M3",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/e46.png',
				['page'] = 3
			},


			---================================= BMW END
			---================================= BRABHAM
			['bt62r'] = {
				['name'] = "2019 Brabham BT62",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,	
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bt62r.png',
				['page'] = 6
			},
			---================================= BRABHAM END
			---================================= BRABUS
			
			['wycb50'] = {
				['name'] = "2021 Brabus S500 B50",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/wycb50.png',
				['page'] = 1
			},

			['primo2'] = {
				['name'] = "2017 Brabus 900 S63 Maybach W223",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/wycb50.png',
				['page'] = 1
			},
			
			['CLS53'] = {
				['name'] = "2019 Brabus 800 CLS53 C257",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/CLS53.png',
				['page'] = 1
			},
			
			['brabuse700'] = {
				['name'] = "2017 Brabus 700 E63 Coupe",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/brabuse700.png',
				['page'] = 3
			},
			
			['b800'] = {
				['name'] = "2018 Brabus 800 E63 W213",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/b800.png',
				['page'] = 1
			},
			
			['21s580m'] = {
				['name'] = "2020 Mercedes-Benz Maybach S580 W223",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/21s580m.png',
				['page'] = 1
			},
			
			['b800c217'] = {
				['name'] = "2018 Brabus 800 S63 C217 Coupe",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/b800c217.png',
				['page'] = 3
			},
			
			['g900przemo6x6'] = {
				['name'] = "2013 Brabus 700 B63s 6x6",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/g900przemo6x6.png',
				['page'] = 5
			},

			['g900przemo'] = {
				['name'] = "2019 Brabus G900 1 of 10",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/g900przemo.png',
				['page'] = 5
			},
			
			['gle800przemo'] = {
				['name'] = "2021 Brabus 800 GLE 63s",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gle800przemo.png',
				['page'] = 5
			},
			
			['oycgle'] = {
				['name'] = "2021 Brabus GLE 900 Coupe Rocket",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/oycgle.png',
				['page'] = 5
			},
			
			['brabusgtc800'] = {
				['name'] = "2019 Brabus 800 GTs",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/brabusgtc800.png',
				['page'] = 3
			},

			['glsmbrabus900'] = {
				['name'] = "2022 Brabus Maybach GLS 900",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/glsmbrabus900.png',
				['page'] = 5
			},
			
			['brabus900bs'] = {
				['name'] = "2020 Brabus 900 Rocket GT Black Series",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/brabus900bs.png',
				['page'] = 3
			},
			
			['cla900rocket21'] = {
				['name'] = "2019 Brabus Rocket 900 CLA63",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cla900rocket21.png',
				['page'] = 1
			},
			
			['12cls63'] = {
				['name'] = "2014 Brabus Rocket 800 CLS63",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/12cls63.png',
				['page'] = 1
			},
			
			['d35'] = {
				['name'] = "2018 Brabus D35 Adventure G63",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/d35.png',
				['page'] = 5
			},
			
			['brabus800mj'] = {
				['name'] = "2019 Brabus 800 GT63",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/brabus800mj.png',				
				['page'] = 1
			},
			
			['b800f'] = {
				['name'] = "2021 Brabus 800 E63 W213 Facelift",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/b800f.png',
				['page'] = 1
			},
			
			['e800eprzemo'] = {
				['name'] = "2020 Brabus 800 E63 Estate",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/e800eprzemo.png',
				['page'] = 2
			},
			
			['rocket'] = {
				['name'] = "2020 Brabus Rocket 900 GT63s",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rocket.png',
				['page'] = 1
			},

			['bs900convertible'] = {
				['name'] = "2020 Brabus 900 Cabriolet",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bs900convertible.png',
				['page'] = 3
			},
			
			['brabus850'] = {
				['name'] = "2015 Brabus 850 S63 Coupe",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/brabus850.png',
				['page'] = 3
			},
			
			['evcs850'] = {
				['name'] = "2018 Brabus 850 S63",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/evcs850.png',
				['page'] = 1
			},
			
			['g500'] = {
				['name'] = "2016 Brabus G500 4x4",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/g500.png',
				['page'] = 5
			},
			
			['G800'] = {
				['name'] = "2021 Brabus 800 G63",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/G800.png',
				['page'] = 5
			},
			
			['2020g900'] = {
				['name'] = "2020 Brabus Rocket 900 G63",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/2020g900.png',
				['page'] = 5
			},
			
			['gls800przemo'] = {
				['name'] = "2016 Brabus 850 XL GLS63",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gls800przemo.png',
				['page'] = 5
			},
			
			['GLS63'] = {
				['name'] = "2021 Brabus 800 GLS63",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/GLS63.png',
				['page'] = 5
			},

			['s600'] = {
				['name'] = "2007 Brabus s600 w221",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s600.png',
				['page'] = 1
			},

			['b800e53'] = {
				['name'] = "2021 Brabus Rocket SL63",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/b800e53.png',
				['page'] = 1
			},

			['brabusghost700'] = {
				['name'] = "2023 Brabus 700 Ghost",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/brabusghost700.png',
				['page'] = 1
			},

			['gcmsl2022'] = {
				['name'] = "2021 Brabus Rocket SL63",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gcmsl2022.png',
				['page'] = 3
			},

			['gcmsl2022'] = {
				['name'] = "2021 Brabus Rocket SL63",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gcmsl2022.png',
				['page'] = 3
			},
			---================================= BRABUS END
			---================================= BUGATTI
			['centuria'] = {
				['name'] = "2019 Bugatti Centuria Mansory",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/centuria.png',
				['page'] = 6
			},

			['ikx3gp22'] = {
				['name'] = "2021 Bugatti Chiron Pur Sport Grand Prix",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ikx3gp22.png',
				['page'] = 6
			},

			['2019chiron'] = {
				['name'] = "2016 Bugatti Chiron",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/2019chiron.png',
				['page'] = 6
			},

			['rmodbugatti'] = {
				['name'] = "2021 Bugatti La Voiture Noire",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodbugatti.png',
				['page'] = 6
			},

			['divo'] = {
				['name'] = "2018 Bugatti Divo",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/divo.png',
				['page'] = 6
			},

			['divo21'] = {
				['name'] = "2018 Buggati Divo Animiert",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/divo21.png',
				['page'] = 6
			},

			['wycalt'] = {
				['name'] = "2019 Bugatti Atlantic",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/wycalt.png',
				['page'] = 6
			},

			['bolide'] = {
				['name'] = "2019 Bugatti Bolide",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bolide.png',
				['page'] = 6
			},

			['bugatticentodieci'] = {
				['name'] = "2020 Bugatti Centodieci",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bugatticentodieci.png',
				['page'] = 6
			},

			['eb110'] = {
				['name'] = "1995 Bugatti EB110 Super Sport",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/eb110.png',
				['page'] = 6
			},

			['bug300ss'] = {
				['name'] = "2015 Bugatti Super Sport",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bug300ss.png',
				['page'] = 6
			},

			['bugwbprzemo'] = {
				['name'] = "2005 Bugatti Veyron BiTurbo",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bugwbprzemo.png',
				['page'] = 6
			},

			['mbug'] = {
				['name'] = "2015 Bugatti Veyron Vivere Mansory",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mbug.png',
				['page'] = 6
			},

			['veyron2016'] = {
				['name'] = "2015 Bugatti Veyron 16.4 Oakley Design",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/veyron2016.png',
				['page'] = 6
			},

			['bvit'] = {
				['name'] = "2015 Bugatti Veyron Vitesse",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bvit.png',
				['page'] = 6
			},

			['purwb'] = {
				['name'] = "2021 Bugatti Chiron Pur Sport Spoon Edition",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/purwb.png',
				['page'] = 6
			},

			['ikx3mistral23'] = {
				['name'] = "2023 Bugatti Mistral",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ikx3mistral23.png',
				['page'] = 6
			},

			['chironssport110'] = {
				['name'] = "2019 Bugatti Chiron 110 Aniversary Carbon Blue Edition",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/chironssport110.png',
				['page'] = 6
			},

			---================================= BUGATTI END
			---================================= CADILLAC
			['ctsv16'] = {
				['name'] = "2015 Cadillac CTS V",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ctsv16.png',
				['page'] = 1
			},
		
			['cesc21'] = {
				['name'] = "2017 Cadillac Escalade",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cesc21.png',
				['page'] = 5
			},

			['escaladesport'] = {
				['name'] = "2017 Cadillac Escalade ESV Sport",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/escaladesport.png',
				['page'] = 5
			},
			---================================= CADILLAC END
			---================================= CHEVROLET
			
			['silverado'] = {														
				['name'] = "1998 Chevrolet Silverado",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/silverado.png',								
				['page'] = 5
			},
		
			['che1950ez'] = {														
				['name'] = "1950 Chevrolet Pickup",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/che1950ez.png',									
				['page'] = 5
			},
			
			['70zr1'] = {														
				['name'] = "1972 Chevrolet Corvette ZR1",										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/70zr1.png',								
				['page'] = 3
			},

			['nova'] = {														
				['name'] = "1972 Hoonigan Chevrolet Napalm Nova Drift",										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/nova.png',								
				['page'] = 3
			},
		
			['czr1'] = {														
				['name'] = "2009 Chevrolet Corvette ZR1",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/czr1.png',								
				['page'] = 3
			},

			['211le'] = {														
				['name'] = "2019 Chevrolet Camaro ZL1 1LE",	        											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/211le.png',								
				['page'] = 3
			},
			
			['chevelless'] = {														
				['name'] = "1970 Chevrolet Chevelle SS",	            											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/chevelless.png',							
				['page'] = 3
			},
			
			['elcamino70'] = {														
				['name'] = "1970 Chevrolet El Camino SS",	            											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/elcamino70.png',								
				['page'] = 3
			},
			
			['camaross'] = {														
				['name'] = "1966 Chevrolet Camaro 300 SS",	        											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/camaross.png',								
				['page'] = 3
			},
			
			['ss69'] = {														
				['name'] = "1969 Chevrolet Camaro SS",	           											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ss69.png',						
				['page'] = 3
			},

			['impala72'] = {														
				['name'] = "1972 Chevrolet Impala",	           											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/impala72.png',						
				['page'] = 3
			},

			['77carlo'] = {														
				['name'] = "1977 Chevrolet Monte Carlo",	           											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/77carlo.png',						
				['page'] = 3
			},
			
			['stingray'] = {														
				['name'] = "2020 Chevrolet Corvett C8",          											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/stingray.png',								
				['page'] = 3
			},
			
			['corvette63gsf5'] = {														
				['name'] = "1963 Chevrolet Corvett Grand Sport",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/corvette63gsf5.png',								
				['page'] = 3
			},
			---================================= CHEVROLET END
			---================================= CHRYSLER
			['cross'] = {														
				['name'] = "2003 Chrysler Cross",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cross.png',									
				['page'] = 3
			},

			['chr300'] = {														
				['name'] = "2007 Chrysler 300 SRT8",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/chr300.png',									
				['page'] = 1
			},
			---================================= CHRYSLER END
			---================================= DELOREAN
			['dmc12wb'] = {														
				['name'] = "1982 DeLorean DMC12 Wide Body",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/dmc12wb.png',								
				['page'] = 3
			},
			---================================= DELOREAN END
			---================================= DODGE
		
			['68dart'] = {														
				['name'] = "1968 Dodge Dart Hemi Super Stock",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/68dart.png',								
				['page'] = 3
			},
		
			['charger69'] = {														
				['name'] = "1969 Dodge Charger RT 426 Hemi",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/charger69.png',										
				['page'] = 3
			},
			
			['ram2500'] = {														
				['name'] = "2012 Dodge Ram 2500",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ram2500.png',								
				['page'] = 5
			},
			
			['ram99'] = {														
				['name'] = "1999 Dodge Ram 1500",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ram99.png',									
				['page'] = 5
			},

			['demon'] = {														
				['name'] = "2018 Dodge Challenger SRT Demon",	            											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/demon.png',									
				['page'] = 3
			},
			
			['charger21'] = {														
				['name'] = "2014 Dodge Charger SRT Hellcat Redeye",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/charger21.png',										
				['page'] = 3
			},
			
			['21durango'] = {														
				['name'] = "2015 Dodge Durango SRT",	                    											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/21durango.png',						
				['page'] = 5
			},
			
			['dodgeanimirt'] = {														
				['name'] = "1998 Dodge Durango Animiert",	        											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/dodgeanimirt.png',									
				['page'] = 5
			},
			
			['rt70'] = {														
				['name'] = "1970 Dodge Charger",	                											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rt70.png',									
				['page'] = 3
			},

			['manssrt'] = {														
				['name'] = "2014 Dodge Charger Mansaug",	                											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/manssrt.png',						
				['page'] = 1
			},
			
			['trx'] = {														
				['name'] = "2010 Dodge Ram 1500 Rebel TRX",                   												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/trx.png',								
				['page'] = 5
			},
			
			['viper'] = {														
				['name'] = "2010 Dodge Viper SRT 10 ACR",	                    											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/viper.png',										
				['page'] = 3
			},
			
			['99viper'] = {														
				['name'] = "1999 Dodge Viper ACR",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/99viper.png',								
				['page'] = 3
			},
			---================================= DODGE ENG
			---================================= FERRARI
			
			['bb512'] = {														
				['name'] = "1978 Ferrari BB 512",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bb512.png',							
				['page'] = 6
			},

			['fd599'] = {
				['name'] = "2013 Ferrari 599 GTB Fiorano Drift",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fd599.png',
				['page'] = 3
			},
		
			['f355s'] = {														
				['name'] = "1994 Ferrari F355 Spider",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/f355s.png',							
				['page'] = 6
			},

			['f250gto'] = {														
				['name'] = "1960 Ferrari F250 GTO Type 2",           												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/f250gto.png',						
				['page'] = 6
			},
			
			['330p4'] = {														
				['name'] = "1966 Ferrari 330 P4",	                											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/330p4.png',							
				['page'] = 6
			},
			
			['f12m'] = {														
				['name'] = "2013 Ferrari F12 Stallone Mansory",          												
				['price_to_customer'] = 100,			    						
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/f12m.png',							
				['page'] = 3
			},
			
			['599xxevo'] = {														
				['name'] = "2009 Ferrari 599XX Evoluzine",	            											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/599xxevo.png',						
				['page'] = 6
			},
			
			['enzo'] = {														
				['name'] = "2002 Ferrari Enzo",		                    										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/enzo.png',						
				['page'] = 6
			},
			
			['fxx'] = {														
				['name'] = "2005 Ferrari FXX",	                    											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fxx.png',						
				['page'] = 6
			},
			
			['2016f12tdf'] = {														
				['name'] = "2012 Ferrari F12 TDF",	                    											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/2016f12tdf.png',							
				['page'] = 6
			},
			
			['f5095'] = {														
				['name'] = "1995 Ferrari F50",	                        											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/f5095.png',							
				['page'] = 6
			},
			
			['svjtt'] = {														
				['name'] = "2018 Ferrari Monza SP2",	                    											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/svjtt.png',					
				['page'] = 6
			},
			
			['pistaspider19'] = {														
				['name'] = "2019 Ferrari Pista 488 Spider",	            											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/pistaspider19.png',							
				['page'] = 6
			},
			
			['sf90'] = {														
				['name'] = "2020 Ferrari SF90 Spider",	                											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sf90.png',							
				['page'] = 6
			},
			
			['f430s'] = {														
				['name'] = "2009 Ferrari F430 Scuderia",	                											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/f430s.png',								
				['page'] = 6
			},
			
			['458it'] = {														
				['name'] = "2009 Ferrari 458 Italia",                    												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/458it.png',							
				['page'] = 6
			},
			
			['porto18'] = {														
				['name'] = "2018 Ferrari Portofino",	                    											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/porto18.png',				
				['page'] = 6
			},
			
			['f40'] = {														
				['name'] = "1987 Ferrari F40",	                        											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/f40.png',						
				['page'] = 6
			},
			
			['fxxk'] = {														
				['name'] = "2014 Ferrari FXX K EVO",	                        											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fxxk.png',						
				['page'] = 6
			},
			
			['aperta'] = {														
				['name'] = "2018 Ferrari LaFerrari Aperta",	            											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/aperta.png',					
				['page'] = 6
			},
			
			['laferrari17'] = {														
				['name'] = "2013 Ferrari LaFerrari Aperta Animiert",	    											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/laferrari17.png',						
				['page'] = 6
			},
			
			['fm488'] = {
				['name'] = "2017 Ferrari 488 Siracusa 4XX Mansory",         
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fm488.png',
				['page'] = 6
			},

			['mansroma'] = {
				['name'] = "2021 Ferrari Roma Mansaug",         
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mansroma.png',
				['page'] = 6
			},

			['manssf90'] = {
				['name'] = "2020 Ferrari SF90 Stradale Mansaug",         
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/manssf90.png',
				['page'] = 6
			},
			
			['fm488'] = {
				['name'] = "2017 Ferrari 488 Siracusa 4XX Mansory",         
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fm488.png',
				['page'] = 6
			},
			
			['812mnsry'] = {
				['name'] = "2019 Ferrari 812 Stallone GTS Mansory",      
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/812mnsry.png',
				['page'] = 6
			},
			
			['ferrari812super'] = {
				['name'] = "2019 Ferrari 812 Stallone Animiert",         
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ferrari812super.png',
				['page'] = 6
			},
			
			['f812c21'] = {
				['name'] = "2017 Ferrari 812 Competizione",              
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/f812c21.png',
				['page'] = 3
			},

			['f8t'] = {
				['name'] = "2017 Ferrari F8 Tributo",              
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/f8t.png',
				['page'] = 3
			},

			['jellybigpeen'] = {
				['name'] = "1984 Ferrari Testerossa",              
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/jellybigpeen.png',
				['page'] = 6
			},

			['purosangue'] = {
				['name'] = "2023 Ferrari Purosangue",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/purosangue.png',
				['page'] = 5
			},

			['488sp2'] = {
				['name'] = "2019 Ferrari 488 Widebody",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/488sp2.png',
				['page'] = 6
			},

			['308jota'] = {
				['name'] = "1985 Ferrari 308 ota",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/308jota.png',
				['page'] = 3
			},

			['freebogemenzo'] = {
				['name'] = "2002 Ferrari Enzo Gemballa MIG-U1",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/freebogemenzo.png',
				['page'] = 6
			},

			['458hr'] = {
				['name'] = "2009 Ferrari 458 HR",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/458hr.png',
				['page'] = 6
			},
			---================================= FERRARI END
			---================================= FIAT
			
			['punto'] = {														
				['name'] = "2000 Fiat Punto",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/punto.png',								
				['page'] = 0
			},

			['CamberJoe'] = {														
				['name'] = "1999 Fiat Multipla CamberJoe",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/CamberJoe.png',								
				['page'] = 4
			},
			
			---================================= FIAT END
			---================================= FORD
			
			['f250r'] = {														
				['name'] = "1980 Ford F250 Ranger Crew Cab",										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,											
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/f250r.png',								
				['page'] = 5
			},
			
			['ffrs'] = {														
				['name'] = "2009 Ford Focus RS",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,											
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ffrs.png',									
				['page'] = 3
			},
		
			['95stang'] = {														
				['name'] = "1995 Ford Mustang",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/95stang.png',							
				['page'] = 3
			},
			
			['mache'] = {														
				['name'] = "2019 Ford Mustang Mach E",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,											
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mache.png',								
				['page'] = 5
			},

			['mst'] = {														
				['name'] = "2010 Ford Mustang Shelby",																
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mst.png',								
				['page'] = 3
			},
			
			['mustangspec5'] = {														
				['name'] = "2015 Ford Mustang RTR SPEC 5",																
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mustangspec5.png',								
				['page'] = 3
			},
			
			['19raptor'] = {														
				['name'] = "2022 Ford F150 Raptor Crew Cab",																
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/19raptor.png',							
				['page'] = 5
			},
			
			['f100'] = {														
				['name'] = "1966 Ford F100",																		
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/f100.png',								
				['page'] = 5
			},
			
			['gt2017'] = {														
				['name'] = "2017 Ford GT",																		
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gt2017.png',							
				['page'] = 3
			},
			
			['mgt17'] = {														
				['name'] = "2018 Ford GT Mansory",																		
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mgt17.png',							
				['page'] = 6
			},

			['elegy2'] = {														
				['name'] = "2013 Ford Fiesta Ken Block",																		
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/elegy2.png',							
				['page'] = 0
			},
			
			['gt17'] = {														
				['name'] = "2017 Ford GT Prior Design",																	
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gt17.png',								
				['page'] = 3
			},
			
			['gt401'] = {														
				['name'] = "1968 Ford GT40 MK1",																		
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gt401.png',								
				['page'] = 3
			},
			
			['mustangbkit'] = {														
				['name'] = "2015 Ford Mustang GT",																		
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mustangbkit.png',							
				['page'] = 3
			},
			
			['mustang'] = {														
				['name'] = "2017 Ford Mustang RTR MW",																	
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mustang.png',							
				['page'] = 3
			},

			['Ford_Mustang_GT500'] = {														
				['name'] = "1967 Ford Mustang GT500",																	
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/Ford_Mustang_GT500.png',							
				['page'] = 3
			},
			
			['taki428'] = {														
				['name'] = "1969 Ford Mustang Shelby GT500",															
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/taki428.png',						
				['page'] = 3
			},
			
			['Ford_Mustang_GT500'] = {														
				['name'] = "1967 Ford Mustang GT500",															
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/Ford_Mustang_GT500.png',							
				['page'] = 3
			},
			
			['velociraptor'] = {														
				['name'] = "2017 Hennessy Velociraptor 6x6",															
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/velociraptor.png',						
				['page'] = 5
			},
			
			['boss302'] = {														
				['name'] = "1969 Ford Mustang Boss 302",																		
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,											
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/boss302.png',							
				['page'] = 3
			},
			
			['forde1'] = {														
				['name'] = "1982 Ford Escort RS1600 MK1",																	
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,											
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/forde1.png',							
				['page'] = 3
			},

			['mansgtmk2'] = {														
				['name'] = "2018 Ford GT MK Mansaug",																	
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,											
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mansgtmk2.png',							
				['page'] = 6
			},

			['manssupersnake'] = {														
				['name'] = "2019 Ford Selby Super Snake Mansaug",																	
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,											
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/manssupersnake.png',							
				['page'] = 3
			},

			['mamba'] = {
				['name'] = "1963 Shelby Cobra 427 SC",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mamba.png',
				['page'] = 3
			},

			['mustangbh'] = {
				['name'] = "2023 Ford Mustang Black Horse",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mustangbh.png',
				['page'] = 3
			},

			['shelby20'] = {
				['name'] = "2020 Ford Mustang Shelby GT500",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/shelby20.png',
				['page'] = 3
			},

			['galaxie'] = {
				['name'] = "1964 Ford Galaxye 500",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/galaxie.png',
				['page'] = 1
			},

			['2019rtr'] = {
				['name'] = "2019 Ford Mustang RTR",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/2019rtr.png',
				['page'] = 3
			},

			['f150svtwb'] = {
				['name'] = "2018 Ford F150 Design Widebody",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/f150svtwb.png',
				['page'] = 5
			},

			['ford34'] = {
				['name'] = "1934 Ford 3 Window Coupe Street Rod",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ford34.png',
				['page'] = 3
			},

			['ford32hulagirl'] = {
				['name'] = "1932 Ford Custom Roadster Hula Girl",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ford32hulagirl.png',
				['page'] = 3
			},

			['ford32cd'] = {
				['name'] = "1932 Ford Deluxe",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ford32cd.png',
				['page'] = 3
			},

			['ford31weaver'] = {
				['name'] = "1931 Ford Weaver Customs",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ford31weaver.png',
				['page'] = 3
			},
			---================================= FORD END
			---================================= GMC
			['ateamvan'] = {
				['name'] = "1983 GMC Vandura A-Team",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ateamvan.png',
				['page'] = 4
			},
			---================================= GMC END
			---================================= HENNESSY
			['xnsgt'] = {														
				['name'] = "2014 Hennessey Venom GT",																	
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/xnsgt.png',									
				['page'] = 6
			},

			['x3f522'] = {
				['name'] = "2022 Hennessy Venom F5",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/x3f522.png',
				['page'] = 6
			},
			---================================= HENNESSY END		
			---================================= HONDA
			['fk8'] = {														
				['name'] = "2017 Honda Civic FK8",										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/FK8.png',							
				['page'] = 1
			},

			['fk8hr'] = {														
				['name'] = "2017 Honda Civic Type R Drift",										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fk8hr.png',							
				['page'] = 1
			},

			['hcej1'] = {														
				['name'] = "2000 Honda Civic EJ1 FATF",															
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/hcej1.png',								
				['page'] = 3
			},
			
			['hondelsol'] = {														
				['name'] = "1998 Honda CR-X DelSol",																
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/hondelsol.png',								
				['page'] = 0
			},
			
			['nsx2'] = {														
				['name'] = "1992 Honda NSX TypeR",																	
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/nsx2.png',									
				['page'] = 6
			},
			
			['2f2fs2000'] = {														
				['name'] = "2003 Honda S2000 2F2F",																
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/2f2fs2000.png',									
				['page'] = 3
			},

			['s2pm'] = {														
				['name'] = "2004 Honda S2000 Drift",																
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s2pm.png',									
				['page'] = 3
			},
			
			['civic'] = {														
				['name'] = "1996 Honda Civic EJ6",																
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/civic.png',								
				['page'] = 3
			},

			['ef9'] = {														
				['name'] = "1990 Honda Civic EF9",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/EF9.png',								
				['page'] = 0
			},

			['ek9'] = {														
				['name'] = "1997 Honda Civic EK9",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/EK9.png',								
				['page'] = 0
			},

			['dc5'] = {														
				['name'] = "2002 Honda Integra DC5 TypeR",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/DC5.png',							
				['page'] = 3
			},

			['hs2000'] = {														
				['name'] = "2003 Honda S2000",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 150,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/hs2000.png',								
				['page'] = 3
			},

			['hondansx'] = {														
				['name'] = "1990 Honda NSX",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 150,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/hondansx.png',								
				['page'] = 3
			},
			---================================= HONDA END
			---================================= HUMMER
		
			['h2m'] = {														
				['name'] = "2005 HUMMER H2",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/h2m.png',							
				['page'] = 5
			},
			---================================= HUMMER END
			---================================= HYUNDAI 
			
			['i30n'] = {														
				['name'] = "2019 Hyundai i30n",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/i30n.png',									
				['page'] = 0
			},
			
			['sonata20'] = {														
				['name'] = "2005 Hyundai Grandeur",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sonata20.png',									
				['page'] = 1
			},

			['pablohyundaiveloster'] = {														
				['name'] = "2002 Hyundai Veloster Speed Hunter Edition I Itzahmad",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/pablohyundaiveloster.png',									
				['page'] = 1
			},
			
			---================================= HYUNDAI END
			---================================= INFINITY
			['mansq60'] = {														
				['name'] = "2018 Infiniti Q60 Project Black S Mansaug",																
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mansq60.png',								
				['page'] = 3
			},

			['larteqx80'] = {														
				['name'] = "2017 Infiniti QX80",																
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/larteqx80.png',								
				['page'] = 3
			},
			---================================= INFINITY END
			---================================= JAGUAR
			['xj'] = {														
				['name'] = "2010 Jaguar XJ",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/xj.png',								
				['page'] = 1
			},

			['jagpr8'] = {														
				['name'] = "2018 Jaguar XE SVR Project8",														
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/jagpr8.png',								
				['page'] = 1
			},
			
			['fpace21'] = {														
				['name'] = "2016 Jaguar F Space",															
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fpace21.png',								
				['page'] = 5
			},
			---================================= JAGUAR END
			---================================= JEEP 
			
			['jurassicjeep'] = {														
				['name'] = "1987 Jeep Wangler Jurassic Park",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/jurassicjeep.png',									
				['page'] = 5
			},
			
			['jeepreneg'] = {														
				['name'] = "2014 Jeep Renegade",									
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/jeepreneg.png',								
				['page'] = 5
			},
		
			['rubilord'] = {														
				['name'] = "2017 Jeep Wrangler Rubicon",										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rubilord.png',									
				['page'] = 5
			},

			['trhawk'] = {														
				['name'] = "2018 Jeep Cherokee Trackhawk",	                											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/trhawk.png',								
				['page'] = 5
			},
			
			['demonhawk'] = {														
				['name'] = "2020 Jeep Grand Cherokee STR Tyrannos",	        											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/demonhawk.png',									
				['page'] = 5
			},
			
			['trailcat'] = {														
				['name'] = "2018 Jeep Wrangler Unlimited Sport",	            											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/trailcat.png',								
				['page'] = 5
			},

			['rmodjeep'] = {														
				['name'] = "2017 Jeep Grand Cherokee",	            											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodjeep.png',									
				['page'] = 5
			},
		
			---================================= JEEP END
			---================================= KIA 
			
			['sportage16'] = {
				['name'] = "2016 Kia Sportage GT Line",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sportage16.png',
				['page'] = 5
			},
		
			['kia'] = {														
				['name'] = "2018 Kia Stinger GT",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/kia.png',						
				['page'] = 1
			},
			
			---================================= KIA END
			---================================= KOENIGSEGG
			['agerars'] = {														
				['name'] = "2015 Koenigsegg Agera RS",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,											
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/agerars.png',								
				['page'] = 6
			},
			
			['koenigseggagerar'] = {														
				['name'] = "2014 Koenigsegg Agera R",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/koenigseggagerar.png',								
				['page'] = 6
			},
			
			['gemera'] = {														
				['name'] = "2023 Koenigsegg Gemera",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gemera.png',									
				['page'] = 6
			},
			
			['gemeraanimirt'] = {														
				['name'] = "2023 Koenigsegg Gemra Animiert",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gemeraanimirt.png',									
				['page'] = 6
			},
			
			['jesko'] = {														
				['name'] = "2022 Koenigsegg Jesko",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/jesko.png',								
				['page'] = 6
			},
			
			['regera'] = {														
				['name'] = "2015 Koenigsegg Regera Cabrio",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/regera.png',								
				['page'] = 6
			},

			['x3gemwb'] = {														
				['name'] = "2023 Koenigsegg Gemera Widebody",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/x3gemwb.png',								
				['page'] = 6
			},

			['agerars12'] = {
				['name'] = "2015 Koenigsegg Agera RS Dark",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/agerars12.png',
				['page'] = 6
			},
			---================================= KOENIGSEGG END
			---================================= KTM
			['x3gtx20'] = {
				['name'] = "2020 KTM X BOW GTX 2020",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/x3gtx20.png',
				['page'] = 3
			},
			---================================= KTM END
			---================================= LAMBORGHINI
			['rmodlp750'] = {														
				['name'] = "2015 Lamborghini Aventador SVJ LP750-4",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodlp750.png',									
				['page'] = 6
			},
			
			['gcmlamboultimae'] = {														
				['name'] = "2011 Lamborghini Aventador Animiert",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gcmlamboultimae.png',								
				['page'] = 6
			},
			
			['urus19'] = {														
				['name'] = "2017 Lamborghini Urus",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/urus19.png',								
				['page'] = 5
			},
			
			['urus19nov'] = {														
				['name'] = "2017 Lamborghini Urus Novitec Esteso",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/urus19nov.png',								
				['page'] = 5
			},
			
			['keyrus'] = {														
				['name'] = "2017 Lamborghini Urus Keyvany V1",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/keyrus.png',							
				['page'] = 5
			},
			
			['keyrus2'] = {														
				['name'] = "2018 Lamborghini Urus Keyvany V2",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/keyrus2.png',							
				['page'] = 5
			},
			
			['dk350z'] = {														
				['name'] = "2012 Lamborghini Apertos Carbon Mansory",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/dk350z.png',							
				['page'] = 6
			},
			
			['lpi8004'] = {														
				['name'] = "2022 Lamborghini Countach LPI 800-4",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lpi8004.png',								
				['page'] = 6
			},

			['manscountach'] = {														
				['name'] = "2022 Lamborghini Countach LPI 800 4 Mansaug",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/manscountach.png',									
				['page'] = 6
			},

			['sc20'] = {														
				['name'] = "2020 Lamborghini SC20",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sc20.png',								
				['page'] = 6
			},
			
			['610dtm'] = {														
				['name'] = "2017 Lamborghini Huracán Jon Olsson LP610-4",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/610dtm.png',								
				['page'] = 6
			},
			
			['huraperfospy'] = {														
				['name'] = "2019 Lamborghini Huracán Performante Spider LP640-4",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/huraperfospy.png',								
				['page'] = 6
			},
			
			['lp670sv'] = {														
				['name'] = "2006 Lamborghini Murcielago SV LP640",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lp670sv.png',									
				['page'] = 6
			},
			
			['lbperfs'] = {														
				['name'] = "2016 Lamborghini Huracán Performante Spider Liberty Walk",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lbperfs.png',							
				['page'] = 6
			},
			
			['hurpernov'] = {														
				['name'] = "2017 Lamborghini Huracán Performante Novitec LP640-4",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/hurpernov.png',								
				['page'] = 6
			},
			
			['sc18'] = {														
				['name'] = "2018 Lamborghini SC18 Alston",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sc18.png',								
				['page'] = 6
			},
			
			['avj'] = {														
				['name'] = "2015 Lamborghini Aventador J LP750-4",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/avj.png',								
				['page'] = 6
			},
			
			['gallardo07'] = {														
				['name'] = "2013 Lamborghini Gallardo Superleggera LP570-4",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gallardo07.png',								
				['page'] = 6
			},
			
			['hurlbp'] = {														
				['name'] = "2020 Lamborghini Huracán EVO Wide Body LP640-4",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,											
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/hurlbp.png',								
				['page'] = 6
			},
			
			['18performante'] = {														
				['name'] = "2019 Lamborghini Huracán Performante LP640-4",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,											
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/18performante.png',								
				['page'] = 6
			},
			
			['rmodsian'] = {														
				['name'] = "2019 Lamborghini Sian",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,											
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodsian.png',								
				['page'] = 6
			},
			
			['rmodveneno'] = {														
				['name'] = "2013 Lamborghini Veneno",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodveneno.png',							
				['page'] = 6
			},
			
			['reven'] = {														
				['name'] = "2009 Lamborghini Reventon",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/reven.png',								
				['page'] = 6
			},

			['lbdy01'] = {														
				['name'] = "2013 Lamborghini Veneno Animiert",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lbdy01.png',								
				['page'] = 6
			},
			
			['mansurus'] = {														
				['name'] = "2018 Lamborghini Urus Mansaug",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mansurus.png',								
				['page'] = 5
			},

			['urus'] = {														
				['name'] = "2018 Lamborghini Urus",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/urus.png',						
				['page'] = 5
			},
			
			['urus1016'] = {														
				['name'] = "2018 Lamborghini Urus 1016 Industries",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/urus1016.png',							
				['page'] = 5
			},
			
			['GODzMANURUS'] = {														
				['name'] = "2018 Lamborghini Urus Mansory",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/GODzMANURUS.png',						
				['page'] = 5
			},
			
			['murus'] = {														
				['name'] = "2017 Lamborghini Urus Mansory Animiert",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/murus.png',								
				['page'] = 5
			},
			
			['cont88'] = {														
				['name'] = "1978 Lamborghini Countach LP400 S",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cont88.png',						
				['page'] = 6
			},

			['ldsv'] = {														
				['name'] = "2000 Lamborghini Diablo SV",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ldsv.png',								
				['page'] = 6
			},

			['aventadors'] = {														
				['name'] = "2014 Lamborghini Aventador S Roadster Jokers",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/aventadors.png',								
				['page'] = 6
			},

			['lhuracant'] = {
				['name'] = "2016 Lamborghini Huracan",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lhuracant.png',
				['page'] = 6
			},

			['lp770r'] = {
				['name'] = "2016 Lamborghini Centenario Roadster",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lp770r.png',
				['page'] = 3
			},

			['urusv'] = {
				['name'] = "2018 Lamborghini Urus Vorsteiner",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/urusv.png',
				['page'] = 5
			},

			['Urus_Stretch_6'] = {
				['name'] = "2017 Lamborghini Urus Limousine",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/Urus_Stretch_6.png',
				['page'] = 1
			},

			['purus'] = {
				['name'] = "2019 Lamborghini Urus Prior",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/purus.png',
				['page'] = 5
			},

			['sinacp'] = {
				['name'] = "2019 Lamborghini Sian Roadster",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sinacp.png',
				['page'] = 6
			},

			['huracantecnica'] = {
				['name'] = "2022 Lamborghini Huracan Tecnica",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/huracantecnica.png',
				['page'] = 6
			},

			['revent334'] = {
				['name'] = "2015 Lamborghini Reventon Spoon Edition",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/revent334.png',
				['page'] = 6
			},

			['huracanhr'] = {
				['name'] = "2014 Lamborghini Huracan HR",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/huracanhr.png',
				['page'] = 6
			},

			['svjr63'] = {
				['name'] = "2020 Lamborghini Svj 63 Roadster",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/svjr63.png',
				['page'] = 6
			},
			---================================= LAMBORGHINI END
			---================================= LEXUS
			['lx470'] = {														
				['name'] = "Lexus LX470",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lx470.png',								
				['page'] = 5
			},

			['nxkotaro'] = {														
				['name'] = "2015 Lexus NX 200t",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/nxkotaro.png',								
				['page'] = 5
			},

			['lc500'] = {														
				['name'] = "2020 Lexus LC500",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lc500.png',									
				['page'] = 3
			},

			['lfahachi'] = {														
				['name'] = "2012 Lexus LFA KZ",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lfahachi.png',									
				['page'] = 3
			},

			['waldls'] = {														
				['name'] = "Lexus LS500 Wald",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/waldls.png',								
				['page'] = 1
			},

			['lfa'] = {														
				['name'] = "Lexus LFA",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lfa.png',							
				['page'] = 3
			},
			---================================= LEXUS END
			---================================= LANCIA
			['deltaintegrale'] = {														
				['name'] = "1994 Lancia Delta Integrale",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,											
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/deltaintegrale.png',									
				['page'] = 0
			},
			---================================= LANCIA END
			---================================= LOTUS
			['evija'] = {														
				['name'] = "2020 Lotus Evija",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/evija.png',								
				['page'] = 6
			},
			---================================= LOTUS END
			---================================= LIBERTY WALK
			['ar8lb'] = {														
				['name'] = "2018 Audi R8 V10 Liberty Walk",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ar8lb.png',									
				['page'] = 6
			},
			
			['lwas5'] = {														
				['name'] = "2015 Audi S5 Liberty Walk",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lwas5.png',									
				['page'] = 3
			},
			
			['rmodmi8lb'] = {														
				['name'] = "2018 BMW i8 Liberty Walk",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodmi8lb.png',							
				['page'] = 3
			},
			
			['e92lb'] = {														
				['name'] = "2006 BMW E92 M3 Liberty Walk",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/e92lb.png',								
				['page'] = 3
			},
			
			['lw458s'] = {														
				['name'] = "2009 Ferrari 458 Italia Liberty Walk",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lw458s.png',								
				['page'] = 6
			},
			
			['lb750sv'] = {														
				['name'] = "2018 Lamborghini Aventador Liberty Walk",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lb750sv.png',									
				['page'] = 6
			},
			
			['gallardosuperlb'] = {														
				['name'] = "2011 Lamborghini Gallardo LP570-4 Liberty Walk",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gallardosuperlb.png',							
				['page'] = 6
			},
			
			['610lb'] = {														
				['name'] = "2014 Lamborghini Huracán LP610-4",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/610lb.png',									
				['page'] = 6
			},

			['huragucci'] = {														
				['name'] = "2015 Lamborghini Huracán Gucci",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/huragucci.png',								
				['page'] = 6
			},
			
			['lc500'] = {														
				['name'] = "2020 Lexus LC500",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lc500.png',								
				['page'] = 3
			},
			
			['granlb'] = {														
				['name'] = "2017 Maserati GranTurismo MC Liberty Walk",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/granlb.png',							
				['page'] = 6
			},
			
			['63lb'] = {														
				['name'] = "2008 Mercedes-Benz C63 W204 Liberty Walk",																								
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/63lb.png',								
				['page'] = 3
			},
			
			['gtrlb2'] = {														
				['name'] = "2018 Nissan GTR Liberty Walk V2",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gtrlb2.png',								
				['page'] = 6
			},
			---================================= LIBERTY WALK END
			---================================= MASERATI
			['mlnovitec'] = {														
				['name'] = "2016 Maserati Levante Novitec",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mlnovitec.png',									
				['page'] = 5
			},
			
			['masgc'] = {														
				['name'] = "2010 Maserati GranCabrio MC",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/masgc.png',								
				['page'] = 3
			},

			['ghibli18'] = {
				['name'] = "2018 Maserati Ghibli Granlusso",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ghibli18.png',
				['page'] = 1
			},
			---================================= MASERATI END
			---================================= MAZDA
			['krcrx7'] = {														
				['name'] = "2002 Mazda RX7 KRC Type2",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/krcrx7.png',								
				['page'] = 3
			},

			['hotwaterlab'] = {														
				['name'] = "2000 Mazda rx7 Drift",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/hotwaterlab.png',								
				['page'] = 3
			},
			
			['fd'] = {														
				['name'] = "1996 Mazda RX7 FD",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fd.png',								
				['page'] = 3
			},

			['rx7cwest'] = {														
				['name'] = "2002 Mazda Rx7 C West Drift",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rx7cwest.png',								
				['page'] = 3
			},
			
			['rx7camberv1'] = {														
				['name'] = "2002 Mazda RX7 FD Camber",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rx7camberv1.png',								
				['page'] = 3
			},
			
			['fnfrx7'] = {														
				['name'] = "2000 Mazda RX7 FD VeilSide",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fnfrx7.png',								
				['page'] = 3
			},
			
			['fnfrx7dom'] = {														
				['name'] = "2002 Mazda RX7 FD FATF",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fnfrx7dom.png',									
				['page'] = 3
			},
			
			['2f2frx7'] = {														
				['name'] = "2002 Mazda RX7 FD 2F2F",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/2f2frx7.png',								
				['page'] = 3
			},

			['na6'] = {														
				['name'] = "1998 Mazda MX5 NA6",     											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/na6.png',							
				['page'] = 0
			},

			['mx5326'] = {														
				['name'] = "1996 Mazda MX5 326",									
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mx5326.png',									
				['page'] = 0
			},

			['rx7rb'] = {														
				['name'] = "2000 Mazda RX7 FD Rocket Bunny",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rx7rb.png',									
				['page'] = 3
			},

			['z31'] = {														
				['name'] = "2001 Mazda RX7 Z31",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/z31.png',								
				['page'] = 3
			},
			---================================= MAZDA END
			---================================= MCLAREN 
			['720s18'] = {														
				['name'] = "2017 McLaren 720s",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,											
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/720s18.png',								
				['page'] = 6
			},
			
			['720sprior'] = {														
				['name'] = "2020 McLaren 720s Prior Design",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,											
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/720sprior.png',									
				['page'] = 6
			},
			
			['artura22wb'] = {														
				['name'] = "2022 McLaren Artura Wide Body",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,											
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/artura22wb.png',								
				['page'] = 6
			},

			['mansgt'] = {														
				['name'] = "2019 McLaren GT Mansaug",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,											
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mansgt.png',								
				['page'] = 6
			},
			
			['elva'] = {														
				['name'] = "2020 McLaren Elva",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,											
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/elva.png',									
				['page'] = 6
			},
			
			['p1gtr'] = {														
				['name'] = "2015 McLaren P1 GTR",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,											
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/p1gtr.png',									
				['page'] = 6
			},
			
			['senna'] = {														
				['name'] = "2018 McLaren Senna",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,											
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/senna.png',									
				['page'] = 6
			},
			
			['mclaren_senna_gtr_2019'] = {														
				['name'] = "2018 Mclaren senna GTR",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,											
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mclaren_senna_gtr_2019.png',									
				['page'] = 6
			},
			
			['rmodspeed'] = {														
				['name'] = "2021 McLaren Speedtail",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,											
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodspeed.png',									
				['page'] = 6
			},

			['oycn65'] = {
				['name'] = "2021 McLaren 765LT Novitec",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/oycn65.png',
				['page'] = 3
			},

			['sennatopsec'] = {
				['name'] = "2018 Mclaren Senna Liberty Walk",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sennatopsec.png',
				['page'] = 6
			},

			['600ltmso'] = {
				['name'] = "2021 Mclaren 600LT",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/600ltmso.png',
				['page'] = 3
			},
			---================================= MCLAREN END
			---================================= MERCEDES BENZ
			
			['cls63s'] = {														
				['name'] = "2018 Mercedes-Benz CLS63 C220",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cls63s.png',								
				['page'] = 1
			},
		
			['a45amg'] = {														
				['name'] = "2016 Mercedes-Benz A45 AMG",										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/a45amg.png',							
				['page'] = 0
			},
		
			['c63s'] = {														
				['name'] = "2016 Mercedes-Benz C63 Coupe Hycade C205",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/C63S.png',									
				['page'] = 3
			},
		
			['cls500w219'] = {														
				['name'] = "2004 Mercedes-Benz CLS500 W219",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cls500w219.png',								
				['page'] = 1
			},
		
			['clslz'] = {														
				['name'] = "2012 Mercedes-Benz CLS500 Shooting Brake C220",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/clslz.png',								
				['page'] = 1
			},
			
			['v250'] = {
				['name'] = "2014 Mercedes-Benz v250 Vito",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/v250.png',
				['page'] = 4
			},
			
			['topv'] = {
				['name'] = "2020 Mercedes-Benz v250 Vito Inferno",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/topv.png',
				['page'] = 4
			},
			
			['amgce'] = {														
				['name'] = "1996 Mercedes-Benz 300CE AMG",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/amgce.png',								
				['page'] = 3
			},
			
			['560sec87'] = {														
				['name'] = "1991 Mercedes-Benz 560SEC",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/560SEC87.png',								
				['page'] = 3
			},
			
			['c32'] = {														
				['name'] = "2004 Mercedes-Benz C32 AMG",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/c32.png',							
				['page'] = 1
			},
			
			['m13fortwo'] = {
				['name'] = "2020 Smart M13 ForTwo",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m13fortwo.png',
				['page'] = 0
			},

			['e63sc'] = {														
				['name'] = "2017 Mercedes-Benz E63S Coupe 4matic+ C238",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/e63sc.png',								
				['page'] = 3
			},
			
			['190e'] = {														
				['name'] = "1988 Mercedes-Benz 190e",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/190e.png',								
				['page'] = 1
			},

			['AMGCEW'] = {														
				['name'] = "1996 Mercedes-Benz 300CE AMG",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/AMGCEW.png',								
				['page'] = 3
			},
			
			['a45animiert'] = {														
				['name'] = "2016 Mercedes-Benz A45s AMG Animiert",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/a45animiert.png',							
				['page'] = 0
			},
			
			['amggtrr20'] = {														
				['name'] = "2015 Mercedes-Benz GT-R AMG Roadster",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/amggtrr20.png',								
				['page'] = 3
			},

			['amggtsmansory'] = {														
				['name'] = "2016 Mercedes-Benz AMG GT Mansory",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/amggtsmansory.png',								
				['page'] = 3
			},

			['mansamgt21'] = {														
				['name'] = "2015 Mercedes-Benz AMG GT BS Mansaug",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mansamgt21.png',								
				['page'] = 3
			},
			
			['gta5rp_veh_c63s'] = {														
				['name'] = "2014 Mercedes-Benz C63s W205",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gta5rp_veh_c63s.png',							
				['page'] = 1
			},

			['dvc63darwin'] = {														
				['name'] = "2018 Mercedes-Benz w205 c63s Breitbau",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/dvc63darwin.png',							
				['page'] = 1
			},
			
			['mbc63'] = {														
				['name'] = "2007 Mercedes-Benz C63 Black Series W204",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mbc63.png',								
				['page'] = 3
			},
			
			['c63scpd'] = {														
				['name'] = "2017 Mercedes-Benz C63s Cabrio Prior Design C205",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/c63scpd.png',								
				['page'] = 3
			},
			
			['c63spd'] = {														
				['name'] = "2017 Mercedes-Benz C63s Coupe Prior Design C205",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/c63spd.png',							
				['page'] = 3
			},
			
			['clkgtr'] = {														
				['name'] = "1998 Mercedes-Benz CLK GTR",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/clkgtr.png',							
				['page'] = 6
			},

			['cl65'] = {														
				['name'] = "2010 Mercedes-Benz CL65",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cl65.png',								
				['page'] = 6
			},
			
			['cls19'] = {														
				['name'] = "2021 Mercedes-Benz CLS53 AMG C257",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cls19.png',								
				['page'] = 1
			},
			
			['e53coupe21'] = {														
				['name'] = "2022 Mercedes-Benz E53 AMG Coupe",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/e53coupe21.png',							
				['page'] = 3
			},
			
			['benze55'] = {														
				['name'] = "2002 Mercedes-Benz E55 AMG",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/benze55.png',							
				['page'] = 1
			},
			
			['19msctntgt2'] = {														
				['name'] = "2021 Mercedes-Benz E63 Estate AMG W213",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/19msctntgt2.png',								
				['page'] = 2
			},
			
			['g50019'] = {														
				['name'] = "2015 Mercedes-Benz Gronos G63 Mansory",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/g50019.png',							
				['page'] = 5
			},
			
			['g63m'] = {														
				['name'] = "2015 Mercedes-Benz G63 Mansory",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/g63m.png',								
				['page'] = 5
			},

			['merc6x6'] = {														
				['name'] = "2014 Mercedes-Benz G63 6x6",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/merc6x6.png',							
				['page'] = 5
			},
			
			['fordh'] = {														
				['name'] = "2019 Mercedes-Benz G 63 AMG by MANSORY STAR TROOPER PHILIPP PLEIN",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fordh.png',								
				['page'] = 5
			},
			
			['g770'] = {														
				['name'] = "2018 Mercedes-Benz G770 Lumma",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/g770.png',								
				['page'] = 5
			},
			
			['fordh2'] = {														
				['name'] = "2016 Mercedes-Benz CLA45S AMG",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fordh2.png',								
				['page'] = 1
			},
			
			['g6'] = {														
				['name'] = "2018 Mercedes-Benz GLE63 ONYX G6",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/g6.png',						
				['page'] = 5
			},
			
			['gle63s'] = {														
				['name'] = "2015 Mercedes-Benz GLE63S W166 AMG",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gle63s.png',								
				['page'] = 5
			},
			
			['gls600'] = {														
				['name'] = "2019 Mercedes-Benz GLS600 Maybach",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gls600.png',									
				['page'] = 5
			},
			
			['mansorys500'] = {														
				['name'] = "2020 Mercedes-Benz S500 Mansory",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mansorys500.png',								
				['page'] = 1
			},
			
			['rmodgt63'] = {														
				['name'] = "2020 Mercedes-Benz GT 63s",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodgt63.png',								
				['page'] = 1
			},
			
			['s560'] = {														
				['name'] = "2014 Mercedes-Benz S Class S560",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s560.png',								
				['page'] = 1
			},
			
			['sl65bs09'] = {														
				['name'] = "2009 Mercedes-Benz SL65 AMG Black Series",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sl65bs09.png',									
				['page'] = 6
			},
			
			['sec60w126przemo'] = {														
				['name'] = "1987 Mercedes-Benz W126 560 Umbau",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sec60w126przemo.png',								
				['page'] = 3
			},
			
			['mbslr'] = {														
				['name'] = "2005 Mercedes-Benz SLR McLaren",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mbslr.png',							
				['page'] = 6
			},
			
			['xxxxx'] = {														
				['name'] = "2019 Mercedes-Benz X-Klasse Exy Monster X Concept",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/xxxxx.png',							
				['page'] = 5
			},
			
			['sbm1302'] = {														
				['name'] = "2016 Mercedes-Benz GLS 500",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sbm1302.png',									
				['page'] = 5
			},
			
			['mbs650maybach'] = {														
				['name'] = "2016 Mercedes-Benz S650 Maybach C217",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mbs650maybach.png',							
				['page'] = 1
			},
			
			['2018s650p'] = {														
				['name'] = "2018 Mercedes-Benz S650 Pullman",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/2018s650p.png',							
				['page'] = 1
			},
			
			['mb300sl'] = {														
				['name'] = "1954 Mercedes-Benz 300SL Gullwing",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mb300sl.png',							
				['page'] = 3
			},
			
			['c63hr'] = {														
				['name'] = "2017 Mercedes-Benz C63s Coupe HR C205",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/c63hr.png',								
				['page'] = 3
			},
			
			['S63AMG'] = {														
				['name'] = "2018 Mercedes-Benz S63 W222 Mansory",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/S63AMG.png',							
				['page'] = 1
			},

			['s63mansorycabrio'] = {														
				['name'] = "2017 Mercedes-Benz S63 Cabrio Mansory",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s63mansorycabrio.png',									
				['page'] = 3
			},

			['manss63'] = {														
				['name'] = "2021 Mercedes-Benz S63 Coupe Mansaug",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/manss63.png',								
				['page'] = 3
			},
			
			['mbbs20'] = {														
				['name'] = "2021 Mercedes-Benz GT AMG Black Series",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mbbs20.png',							
				['page'] = 6
			},
			
			['s63w222'] = {														
				['name'] = "2020 Mercedes-Benz S63 AMG W222",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,									
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s63w222.png',							
				['page'] = 1
			},
			
			['mb18'] = {														
				['name'] = "2019 Mercedes-Benz S63 Cabrio W222",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mb18.png',							
				['page'] = 3
			},
			
			['e63amg'] = {														
				['name'] = "2011 Mercedes-Benz E63 AMG W212",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/e63amg.png',								
				['page'] = 1
			},
			
			['amggt63'] = {														
				['name'] = "2018 Mercedes-Benz GT63s AMG Coupé",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/amggt63.png',							
				['page'] = 1
			},
			
			['slsamg'] = {														
				['name'] = "2010 Mercedes-Benz SLS AMG C197",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/slsamg.png',							
				['page'] = 6
			},
			
			['slrsm09'] = {														
				['name'] = "2009 Mercedes-Benz SLR McLaren Stirling Moss",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/slrsm09.png',							
				['page'] = 6
			},
			
			['s63c217'] = {														
				['name'] = "2015 Mercedes-Benz S63 Coupe 4matic+ C217",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s63c217.png',				
				['page'] = 3
			},
			
			['s63m'] = {														
				['name'] = "2020 Mercedes-Benz S63 Coupe Mansory Black Edition C217",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s63m.png',									
				['page'] = 3
			},
			
			['gronos6x6'] = {														
				['name'] = "2015 Mercedes-Benz Gronos 6x6 Mansory",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gronos6x6.png',							
				['page'] = 5
			},
			
			['mayg600p'] = {														
				['name'] = "2018 Mercedes-Benz G600 Maybach",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,											
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mayg600p.png',								
				['page'] = 5
			},
			
			['mansorygls500'] = {														
				['name'] = "2018 Mercedes-Benz GLS 500 Mansory",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mansorygls500.png',								
				['page'] = 5
			},
			
			['Xg632019'] = {														
				['name'] = "2019 Mercedes-Benz G63 AMG W464",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/Xg632019.png',								
				['page'] = 5
			},
			
			['gl63'] = {														
				['name'] = "2016 Mercedes-Benz GL63 AMG X166",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gl63.png',								
				['page'] = 5
			},
			
			['gle21'] = {														
				['name'] = "2017 Mercedes-Benz GLE63 AMG",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gle21.png',							
				['page'] = 5
			},
			
			['gle63'] = {														
				['name'] = "2019 Mercedes-Benz GLC 63s AMG",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gle63.png',								
				['page'] = 5
			},
			
			['amgone'] = {
				['name'] = "2022 Mercedes-Benz AMG One",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/amgone.png',
				['page'] = 6
			},

			['gls6002'] = {
				['name'] = "2020 Mercedes-Benz GLS600 Maybach Blacked Forgiato",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gls6002.png',
				['page'] = 5
			},

			['sjbenz'] = {
				['name'] = "2010 Mercedes-Benz S63 Black Bison Wald",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sjbenz.png',
				['page'] = 1
			},

			['cr700'] = {
				['name'] = "2021 Mercedes Benz e63 Estate Manhart CF700",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cr700.png',
				['page'] = 2
			},

			['e63s_2021'] = {
				['name'] = "2021 Mercedes-Benz E63s",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/e63s_2021.png',
				['page'] = 1
			},

			['s63w222'] = {
				['name'] = "2020 Mercedes-Benz S63 AMG W222",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s63w222.png',
				['page'] = 1
			},

			['s500'] = {
				['name'] = "2020 Mercedes-Benz S500 W223",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s500.png',
				['page'] = 1
			},

			['hslr'] = {
				['name'] = "2008 Mercedes Benz Hamann volcano SLR",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/hslr.png',
				['page'] = 3
			},

			['cl600przemo1'] = {
				['name'] = "2005 Mercedes-Benz CL600",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cl600przemo1.png',
				['page'] = 3
			},

			['s500w222'] = {
				['name'] = "2020 Mercedes Benz S500 W222",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s500w222.png',
				['page'] = 1
			},

			['SlsBlackSeries'] = {
				['name'] = "2013 Mercedes Benz SLS AMG Black Series",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/SlsBlackSeries.png',
				['page'] = 3
			},

			['cl600bsprzemo'] = {
				['name'] = "2005 Mercedes Benz CL55 w215",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cl600bsprzemo.png',
				['page'] = 3
			},

			['DL_GLR700'] = {
				['name'] = "2020 Mercedes Benz Manhart GLR70",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/DL_GLR700.png',
				['page'] = 5
			},

			['DL_G700'] = {
				['name'] = "2022 Mercedes Benz Manhart G700 Inferno",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/DL_G700.png',
				['page'] = 5
			},

			['cls19mafia'] = {
				['name'] = "2022 Mercedes CLS 19 Mafia Edition",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cls19mafia.png',
				['page'] = 1
			},

			['zlay_asap'] = {
				['name'] = "1982 Mercedes Benz 190E ASAP",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/zlay_asap.png',
				['page'] = 1
			},

			['mercedessl63'] = {
				['name'] = "2023 Mercedes Benz SL63 AMG",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mercedessl63.png',
				['page'] = 3
			},

			['s63mafiav2'] = {
				['name'] = "2020 Mercedes Benz S63 Mafia Custom",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s63mafiav2.png',
				['page'] = 3
			},

			['s65f'] = {
				['name'] = "2017 Mercedes S65 AMG W222 FL Blacked",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s65f.png',
				['page'] = 1
			},

			['mayg900'] = {
				['name'] = "2021 Mercedes Maybach G900 EmrHusmen Edition",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/MAYG900.png',
				['page'] = 5
			},

			['s500Mansory'] = {
				['name'] = "2021 Mercedes Benz S63 AMG Mansory",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s500Mansory.png',
				['page'] = 1
			},

			['cls1919'] = {
				['name'] = "2018 Mercedes Benz CLS 53 AMG Black Edition",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cls1919.png',
				['page'] = 1
			},

			['mbc21'] = {
				['name'] = "2019 Mercedes-Benz C class AMG Line",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mbc21.png',
				['page'] = 1
			},

			['lummag770'] = {
				['name'] = "2019 Mercedes-Benz AMG G63 Lumma",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lummag770.png',
				['page'] = 5
			},
			---================================= MERCEDES BENZ END
			---================================= MITSUBISHI
			['fnfmits'] = {														
				['name'] = "2000 Mitsubishi Eclipse GSX FATF",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fnfmits.png',								
				['page'] = 3
			},
			
			['2f2fgts'] = {														
				['name'] = "2003 Mitsubishi Eclipse Spyder GTS 2F2F",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/2f2fgts.png',								
				['page'] = 3
			},
			
			['2f2fmle7'] = {														
				['name'] = "2001 Mitsubishi Lancer Evolution VII 2F2F",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/2f2fmle7.png',									
				['page'] = 1
			},
			
			['fnflan'] = {														
				['name'] = "2001 Mitsubishi Lancer Evolution VII",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fnflan.png',									
				['page'] = 1
			},

			['gxevox'] = {														
				['name'] = "2012 Mitsubishi Lancer Evolution X",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gxevox.png',							
				['page'] = 1
			},

			['cp9a'] = {														
				['name'] = "1999 Mitsubishi Lancer Evolution VI GSR CP9A",										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cp9a.png',								
				['page'] = 1
			},

			['eclipse'] = {														
				['name'] = "1995 Mitsubishi Eclipse GSX",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/eclipse.png',								
				['page'] = 3
			},
		
			['mlec'] = {														
				['name'] = "2005 Mitsubishi Lancer Evolution IX MR",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mlec.png',							
				['page'] = 1
			},

			['evo9'] = {														
				['name'] = "2005 Mitsubishi Lancer Evolution IX",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/evo9.png',								
				['page'] = 1
			},

			['evo10'] = {														
				['name'] = "1983 Mitsubishi Lancer Evo X Varis Type2",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/evo10.png',								
				['page'] = 1
			},
			---================================= MITSUBISHI END
			---================================= NISSAN
			['rmodgtr50'] = {														
				['name'] = "2020 Nissan GTR 50",													
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodgtr50.png',							
				['page'] = 3
			},

			['fd370z'] = {														
				['name'] = "2013 Nissan 370Z Drift",													
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fd370z.png',							
				['page'] = 3
			},

			['fds14'] = {														
				['name'] = "1996 Nissan FDS14 Drift",													
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fds14.png',							
				['page'] = 3
			},

			['daisx'] = {														
				['name'] = "1991 Nissan 240 SX Dai Yoshihara Drift",													
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/daisx.png',							
				['page'] = 3
			},

			['rmod240sx'] = {														
				['name'] = "1997 Nissan 240 SX Drift 2",													
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmod240sx.png',							
				['page'] = 3
			},
		
			['qashqai16'] = {														
				['name'] = "2016 Nissan Qashqai",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/qashqai16.png',								
				['page'] = 5
			},
			
			['nisaltima'] = {														
				['name'] = "1992 Nissan Altima",										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/nisaltima.png',								
				['page'] = 1
			},
			
			['rc'] = {
				['name'] = "2020 Nissan Patrol Nismo Limgene",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rc.png',
				['page'] = 5
			},

			['r35'] = {														
				['name'] = "2016 Nissan GTR",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/r35.png',						
				['page'] = 3
			},

			['gxr35'] = {														
				['name'] = "2017 Nissan GTR 35",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gxr35.png',							
				['page'] = 3
			},
			
			['nismo20'] = {														
				['name'] = "2019 Nissan GTR Nismo",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/nismo20.png',					
				['page'] = 6
			},

			['rmodgtr50'] = {														
				['name'] = "2020 Nissan GTR 50",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodgtr50.png',						
				['page'] = 3
			},

			['mansgtr50'] = {														
				['name'] = "2020 Nissan GT R50 Mansaug",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mansgtr50.png',						
				['page'] = 3
			},
			
			['zlay_gtrkuhl'] = {														
				['name'] = "2017 Nissan GTR Kuhl Racing",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/zlay_gtrkuhl.png',						
				['page'] = 3
			},
			
			['z15326power2'] = {														
				['name'] = "2000 Zlayworks Nissan Silvia S15 Drift",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
                ['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/z15326power2.png',					
				['page'] = 3
			},
			
			['skylineanimiert'] = {														
				['name'] = "2002 Nissan Skyline R34GTR Animiert",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/skylineanimiert.png',							
				['page'] = 3
			},
			
			['300zw'] = {														
				['name'] = "1983 Nissan 300zx Wide Body",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/300zw.png',					
				['page'] = 3
			},
			
			['370z'] = {														
				['name'] = "2013 Nissan 370z Nismo",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/370z.png',						
				['page'] = 3
			},
			
			['r33vspec'] = {														
				['name'] = "1995 Nissan Skyline R33 GTR V-Spec",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
                ['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/r33vspec.png',							
				['page'] = 3
			},
			
			['ns13'] = {														
				['name'] = "1993 Nissan Silvia S13",												
				['price_to_customer'] =100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ns13.png',							
				['page'] = 3
			},
			
			['fnf4r34'] = {														
				['name'] = "1999 Nissan Skyline R34 GTT FATF4",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fnf4r34.png',							
				['page'] = 3
			},
			
			['350zdk'] = {														
				['name'] = "2009 Nissan 350z DK TD",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/350zdk.png',						
				['page'] = 3
			},
			
			['350zm'] = {														
				['name'] = "2008 Nissan 350z Morimoto TD",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/350zm.png',					
				['page'] = 3
			},
			
			['silvias15'] = {														
				['name'] = "2001 Nissan Silvia S15 Spec-R Monalisa TD",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/silvias15.png',						
				['page'] = 3
			},
			
			['bnsgtr99'] = {														
				['name'] = "1995 Nissan Skyline R32 GTR V-Spec 2F2F",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bnsgtr99.png',				
				['page'] = 3
			},
			
			['nissantitan17'] = {														
				['name'] = "2004 Nissan Titan",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/nissantitan17.png',				
				['page'] = 5
			},

			['skylinec110'] = {														
				['name'] = "1977 Nissan Skyline C110",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/skylinec110.png',			
				['page'] = 3
			},

			['skyline'] = {														
				['name'] = "2002 Nissan Skyline R34 GTR V-Spec II",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/skyline.png',			
				['page'] = 3
			},

			['s30'] = {														
				['name'] = "1978 Nissan Fairlady 240z",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s30.png',			
				['page'] = 3
			},

			['kgc10'] = {														
				['name'] = "1971 Nissan Skyline Hakosuka KGC10",										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/kgc10.png',					
				['page'] = 3
			},

			['s14'] = {														
				['name'] = "1999 Nissan Silvia S14",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s14.png',						
				['page'] = 3
			},

			['gxs15'] = {														
				['name'] = "2002 Nissan Silvia S15 Spec-R",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gxs15.png',						
				['page'] = 3
			},
			
			['nisr32'] = {														
				['name'] = "1995 Nissan Skyline R32 GTR V-Spec",										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/nisr32.png',					
				['page'] = 3
			},

			['bnr32'] = {														
				['name'] = "1995 Nissan Skyline R32 GTR V-Spec",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bnr32.png',					
				['page'] = 3
			},
			
			['skylinec110'] = {														
				['name'] = "1977 Nissan Skyline C110",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/skylinec110.png',						
				['page'] = 3
			},

			['silvia3'] = {														
				['name'] = "1998 Nissan Silvia S14",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/silvia3.png',					
				['page'] = 3
			},

			['titanh'] = {
				['name'] = "2006 Nissan Titan Hachi Desing",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/titanh.png',
				['page'] = 5
			},

			['protoz12'] = {
				['name'] = "2008 Nissan 400z Widebody Evo Edition",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/protoz12.png',
				['page'] = 3
			},

			['240sxhr'] = {
				['name'] = "1997 Nissan 240 SX Drift",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/240sxhr.png',
				['page'] = 3
			},

			['bnrpandem'] = {
				['name'] = "1991 Nissan BNR R32 Pandem",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bnrpandem.png',
				['page'] = 3
			},

			['r34lb'] = {
				['name'] = "1998 Nissan r34 Breitbau Drift",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/r34lb.png',
				['page'] = 3
			},

			['s15urashr'] = {
				['name'] = "2001 Nissan silvia s15 Drift",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s15urashr.png',
				['page'] = 3
			},

			['350z'] = {
				['name'] = "2002 Nissan 350z Drift",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/350z.png',
				['page'] = 3
			},

			['420x'] = {
				['name'] = "1994 Nissan 240sx",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/420x.png',
				['page'] = 3
			},

			['silvia31'] = {
				['name'] = "2000 Nissan Silvia S13 Drift Custom R35",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/silvia31.png',
				['page'] = 3
			},

			['NisSkyR34RB'] = {
				['name'] = "2000 Nissan Skyline R34RB I TR",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/NisSkyR34RB.png',
				['page'] = 3
			},

			['gtr17'] = {
				['name'] = "2017 Nissan R35 GTR Aimgain",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gtr17.png',
				['page'] = 3
			},
			---================================= NISSAN END
			---================================= PEUGEOT
			
			['peugeot'] = {														
				['name'] = "1987 Peugeot 405",										
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/peugeot.png',							
				['page'] = 1
			},
		
			['206'] = {														
				['name'] = "1998 Peugeot 206",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/206.png',							
				['page'] = 0
			},
		
			['30822'] = {														
				['name'] = "2022 Peugeot 308",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/30822.png',							
				['page'] = 0
			},
			---================================= PEUGEOT END
			---================================= PAGANI
			['huayra'] = {														
				['name'] = "2012 Pagani Huayra",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,											
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/huayra.png',								
				['page'] = 6
			},

			['Imola'] = {														
				['name'] = "2016 Pagani Huayra Animiert",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,											
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/Imola.png',								
				['page'] = 6
			},
			
			['huayrabc19'] = {														
				['name'] = "2018 Pagani Huayra BC Roadster",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,											
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/huayrabc19.png',							
				['page'] = 6
			},

			['pgnimola'] = {
				['name'] = "2023 Pagani Huayra Utopia",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/pgnimola.png',
				['page'] = 6
			},

			['zonda'] = {
				['name'] = "2017 Pagani Zonda Barchetta",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/zonda.png',
				['page'] = 6
			},
			---================================= PAGANI END
			---================================= PLYMOUTH
			['superbird'] = {														
				['name'] = "1970 Plymouth Superbird",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/superbird.png',									
				['page'] = 3
			},
			
			['hemis'] = {														
				['name'] = "1974 Plymouth Formula S Barracuda Hemi S",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/hemis.png',							
				['page'] = 3
			},
			---================================= PLYMOUTH END
			---================================= PONTIAC
			['bonneville58'] = {														
				['name'] = "1958 Pontiac Bonneville",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bonneville58.png',									
				['page'] = 3
			},
			---================================= PONTIAC END
			---================================= PORSCHE
			
			['taycan'] = {														
				['name'] = "2021 Porsche Taycan",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/taycan.png',								
				['page'] = 1
			},

			['priortaycan'] = {														
				['name'] = "2021 Porsche Taycan Prior Desing",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/priortaycan.png',								
				['page'] = 1
			},
		
			['boxterlb'] = {														
				['name'] = "2016 Porsche 718 Boxter Liberty Walk",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/boxterlb.png',									
				['page'] = 3
			},

			['caymank'] = {														
				['name'] = "2013 Porsche Cayman Drift",											
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/caymank.png',									
				['page'] = 3
			},

			['porrs73'] = {														
				['name'] = "1973 Porsche 911 Carrera RS",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/porrs73.png',								
				['page'] = 3
			},
			
			['911turbos'] = {														
				['name'] = "2020 Porsche 911 Turbo S",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/911turbos.png',							
				['page'] = 6
			},

			['mans911'] = {														
				['name'] = "2020 Porsche 911 Turbo s Mansaug",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mans911.png',						
				['page'] = 6
			},
			
			['911turbos2'] = {														
				['name'] = "2021 Porsche 911 Techart Turbo GT",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/911turbos2.png',							
				['page'] = 6
			},
			
			['rufyb'] = {														
				['name'] = "1989 Porsche 911 930",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rufyb.png',								
				['page'] = 3
			},
			
			['pcs20'] = {														
				['name'] = "2020 Porsche 911 Carrera S",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/pcs20.png',							
				['page'] = 3
			},
			
			['gt2rsmr'] = {														
				['name'] = "2017 Porsche 911 GT2 RS MR",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gt2rsmr.png',							
				['page'] = 3
			},
			
			['911gt3'] = {														
				['name'] = "2021 Porsche 911 GT3 CUP",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/911gt3.png',							
				['page'] = 3
			},
			
			['911tp'] = {														
				['name'] = "2022 Porsche 911 Stringer GTR",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/911tp.png',						
				['page'] = 3
			},
			
			['911tpcarbon'] = {														
				['name'] = "Porsche 911 Stringer GTR Carbon Edition",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
                ['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/911tpcarbon.png',						
				['page'] = 3
			},
			
			['911rt'] = {														
				['name'] = "2016 Porsche 911 Targa",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/911rt.png',							
				['page'] = 3
			},
			
			['pcmansory'] = {														
				['name'] = "2015 Porsche Cayenne Turbo S Mansory",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/pcmansory.png',						
				['page'] = 5
			},
			
			['pmhd21'] = {														
				['name'] = "2021 Porsche Panamera 4S E Hybrid",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/pmhd21.png',								
				['page'] = 1
			},
			
			['rikorwb'] = {														
				['name'] = "1992 Porsche RWB Zweite Entwicklung",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rikorwb.png',							
				['page'] = 3
			},
			
			['918'] = {														
				['name'] = "2010 Porsche 918 Spider",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/918.png',						
				['page'] = 6
			},
			
			['993rwb'] = {														
				['name'] = "1993 Porsche 993 RWB",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/993rwb.png',							
				['page'] = 3
			},
			
			['pgt3'] = {														
				['name'] = "2015 Porsche GT3",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/pgt3.png',								
				['page'] = 6
			},
			
			['grandgt18'] = {														
				['name'] = "2021 Porsche Panamera Grand GT Techart",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/grandgt18.png',							
				['page'] = 2
			},
			
			['str20'] = {														
				['name'] = "2019 Porsche Speedster",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/str20.png',							
				['page'] = 3
			},
			
			['cayenneturbo'] = {														
				['name'] = "2010 Porsche Cayenne Turbo S",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,										
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cayenneturbo.png',							
				['page'] = 5
			},

			['911gtr'] = {
				['name'] = "2022 Porsche 911 Stinger GTR",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/911gtr.png',
				['page'] = 3
			},

			['oycgt3rs'] = {
				['name'] = "2023 Porsche 992 GT3 RS",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/oycgt3rs.png',
				['page'] = 3
			},

			['356a'] = {
				['name'] = "1954 Porsche 356 Speedster HR",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/356a.png',
				['page'] = 3
			},

			['CRT_800'] = {
				['name'] = "2022 Porsche Cayenne Turbo CRT 800 Manhart",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/CRT_800.png',
				['page'] = 5
			},

			['porcgt03'] = {
				['name'] = "2003 Porsche Carrera GT 980",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/porcgt03.png',
				['page'] = 3
			},

			['718gt4rs'] = {
				['name'] = "2019 Porsche 718 GT4 RS",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/718gt4rs.png',
				['page'] = 3
			},

			['718gts'] = {
				['name'] = "2019 Porsche 718 gts Widebody",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/718gts.png',
				['page'] = 3
			},

			['ikx3cross22'] = {
				['name'] = "2022 Porsche Taycan Turbo S Cross Turismo",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ikx3cross22.png',
				['page'] = 1
			},

			['ikx3duke911'] = {
				['name'] = "2022 Porsche 911 GT RSR Duke Dynamics",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ikx3duke911.png',
				['page'] = 3
			},

			['taycants21m'] = {
				['name'] = "2021 Porsche Taycan Mansory",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/taycants21m.png',
				['page'] = 1
			},

			['itzpanameraprior'] = {
				['name'] = "2019 Porsche Panamera Prior",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/itzpanameraprior.png',
				['page'] = 1
			},

			['pgt322'] = {
				['name'] = "2022 Porsche 911 GT3",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/pgt322.png',
				['page'] = 3
			},
			---================================= PORSCHE END
			---================================= RANGE ROVER
			
			['Evoque'] = {
				['name'] = "2012 Range Rover Evoque Hamann",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/Evoque.png',
				['page'] = 5
			},
		
			['def90'] = {
				['name'] = "2016 Landrover Defender",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/def90.png',
				['page'] = 5
			},
		
			['velar'] = {
				['name'] = "2017 Range Rover Velar",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/velar.png',
				['page'] = 5
			},
			['rrst'] = {
				['name'] = "2018 Range Rover Sport Wide Hamann",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rrst.png',
				['page'] = 5
			},
			
			['RRAB'] = {
				['name'] = "2015 Range Rover Mansory",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/RRAB.png',
				['page'] = 5
			},

			['SVR14'] = {
				['name'] = "2019 Range Rover SVR Mansory",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/SVR14.png',
				['page'] = 5
			},

			['rrsport2023'] = {
				['name'] = "2023 Range Rove Sport HSE",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rrsport2023.png',
				['page'] = 5
			},
			---================================= RANGE ROVER END
			---================================= ROLLS ROYCE
			
			['bbdawn'] = {
				['name'] = "2017 Rolls Royce Dawn Wald",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bbdawn.png',
				['page'] = 3
			},

			['ghostswb'] = {
				['name'] = "2021 Rolls Royce Ghost Mansory Billionair Edition",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ghostswb.png',
				['page'] = 1
			},
			
			['rrphantom'] = {
				['name'] = "2017 Rolls Royce Phantom",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rrphantom.png',
				['page'] = 1
			},
			
			['wraith'] = {
				['name'] = "2013 Rolls Royce Wraith",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/wraith.png',
				['page'] = 3
			},
			
			['cullinan'] = {
				['name'] = "2012 Rolls Royce Cullinan",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cullinan.png',
				['page'] = 5
			},

			['noviteccullinan'] = {
				['name'] = "2018 Rolls Royce Cullinan Novitec",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/noviteccullinan.png',
				['page'] = 5
			},
			
			['Coastline'] = {
				['name'] = "2020 Rolls Royce Cullinan Coastline",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/Coastline.png',
				['page'] = 5
			},
			
			['cullinanv3'] = {
				['name'] = "2014 Rolls Royce Cullinan Keyvany",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cullinanv3.png',
				['page'] = 5
			},
			
			['mansorycullinanv2'] = {
				['name'] = "2016 Rolls Royce Cullinan Mansory",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mansorycullinanv2.png',
				['page'] = 5
			},
			
			['chrolls'] = {
				['name'] = "2017 Rolls Royce Cullinan Mansory",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/chrolls.png',
				['page'] = 5
			},
			
			['crownrs'] = {
				['name'] = "2020 Rolls Royce Ghost",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/crownrs.png',
				['page'] = 1
			},
			
			['ph8m'] = {
				['name'] = "2022 Rolls Royce Phantom Mansory",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ph8m.png',
				['page'] = 1
			},
			
			['phantommc'] = {
				['name'] = "2012 Rolls Royce Phantom Mutec",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/phantommc.png',
				['page'] = 1
			},

			['sspur'] = {
				['name'] = "1980 Rolls Royce Silver Spirit",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sspur.png',
				['page'] = 1
			},

			['onyxdawn'] = {
				['name'] = "2015 Rolls Royce Dawn Onyx",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/onyxdawn.png',
				['page'] = 3
			},

			['DawnBlackBadge'] = {
				['name'] = "2021 Rolls Royce Dawn Mansory",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/DawnBlackBadge.png',
				['page'] = 3
			},

			['19msctntgt5'] = {
				['name'] = "2021 Rolls Royce Phantom MAFIA",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/19msctntgt5.png',
				['page'] = 1
			},

			['cullimevo'] = {
				['name'] = "2017 Rolls Royce Cullinan Mansory Evo",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cullimevo.png',
				['page'] = 5
			},

			['oycklnk'] = {
				['name'] = "2016 Rolls Royce Cullinan Keyvany V2",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/oycklnk.png',
				['page'] = 5
			},

			['Mansoryphantom8'] = {
				['name'] = "2022 Rolls Royce Mansory Phantom",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/Mansoryphantom8.png',
				['page'] = 1
			},

			['bra900'] = {
				['name'] = "2021 Rolls Royce Ghost",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bra900.png',
				['page'] = 1
			},

			['4b_rolls_limo'] = {
				['name'] = "2017 Rolls Royce Phantom Stretch-Limousine",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/4b_rolls_limo.png',
				['page'] = 1
			},

			['overdose'] = {
				['name'] = "2018 Rolls Royce Wraith Novitec",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/overdose.png',
				['page'] = 3
			},
			---================================= ROLLS ROYCE END
			---================================= RENAULT
			['twingo2'] = {
				['name'] = "1993 Twingo",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/twingo2.png',
				['page'] = 0
			},
			
			['mers18'] = {
				['name'] = "2018 Renault Megane RS",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mers18.png',
				['page'] = 1
			},
			
			['twizy'] = {
				['name'] = "2011 Renault Twizy",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/twizy.png',
				['page'] = 0
			},
			
			['zoeesport'] = {
				['name'] = "2017 Renault Zoe-E Sport",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/zoeesport.png',
				['page'] = 0
			},
			---================================= RENAULT END
			---================================= SKODA
			['sovrs'] = {
				['name'] = "2013 Skoda Octavia RS",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sovrs.png',
				['page'] = 2
			},
			---================================= SKODA END
			---================================= SPYKER
			['x3gtx20'] = {
				['name'] = "2000 Spyker C8 Aileron Spyder",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/x3gtx20.png',
				['page'] = 6
			},
			---================================= SPYKER END
			---================================= SUBARU
			['subwrx'] = {
				['name'] = "2014 Subaru Impreza WRX STI",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/subwrx.png',
				['page'] = 1
			},
			
			['ff4wrx'] = {
				['name'] = "2014 Subaru WRX STI FATF4",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ff4wrx.png',
				['page'] = 1
			},

			['impreza2019wb'] = {
				['name'] = "2019 Subaru Impreza WRX Widebody",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/impreza2019wb.png',
				['page'] = 1
			},

			['subwrx1'] = {
				['name'] = "2004 Subaru Impreza WRX STI 326 POWER",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/subwrx1.png',
				['page'] = 1
			},

			['GODzRB26SUBI'] = {
				['name'] = "2017 Subaru Impreza III WRX STI",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/GODzRB26SUBI.png',
				['page'] = 1
			},

			['gxwrx'] = {
				['name'] = "2018 Subaru WRX STI",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gxwrx.png',
				['page'] = 1
			},

			['wrx'] = {
				['name'] = "2009 Subaru WRX Drift",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/wrx.png',
				['page'] = 1
			},
			---================================= SUBARU END
			---================================= TESLA
			
			['teslapd'] = {
				['name'] = "2021 Tesla Model 3 Prior Design",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/teslapd.png',
				['page'] = 1
			},
			
			['tmodel'] = {
				['name'] = "2014 Tesla Model T",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/tmodel.png',
				['page'] = 1
			},
		
			['p90d'] = {
				['name'] = "2016 Tesla P90D",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/p90d.png',
				['page'] = 5
			},

			['cybertruck'] = {
				['name'] = "2022 Tesla Cybertruck",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cybertruck.png',
				['page'] = 5
			},
			---================================= TESLA END
			---================================= TOYOTA
			
			['vxr'] = {
				['name'] = "2008 Toyota Land Cruiser VXR",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/vxr.png',
				['page'] = 5
			},
		
			['sclkuz'] = {
				['name'] = "2020 Toyota Land Cruiser 200 HAKAMA",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sclkuz.png',
				['page'] = 5
			},
			
			['lc300gr'] = {
				['name'] = "2021 Toyota Land Cruiser 300",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lc300gr.png',
				['page'] = 5
			},
			
			['camry55'] = {
				['name'] = "2004 Toyota Camry",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/camry55.png',
				['page'] = 1
			},
		
			['avalontrd'] = {
				['name'] = "2022 Toyota Avalon TRD",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/avalontrd.png',
				['page'] = 1
			},

			['protoz'] = {
				['name'] = "2017 Toyota Hilux Tonka",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/protoz.png',
				['page'] = 5
			},
			
			
			['2f2fmk4'] = {
				['name'] = "1993 Toyota Supra MK4 2F2F",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/2f2fmk4.png',
				['page'] = 3
			},
			
			['fnfmk4'] = {
				['name'] = "2000 Toyota Supra MK4 FATF",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fnfmk4.png',
				['page'] = 3
			},

			['gt86lb'] = {														
				['name'] = "2013 Toyota GT86 Liberty Walk",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,											
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gt86lb.png',								
				['page'] = 3
			},

			['326p'] = {														
				['name'] = "2012 Toyota GT86 Drift",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,											
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/326p.png',								
				['page'] = 3
			},

			['gt86trust'] = {														
				['name'] = "2018 Toyota GT86 Trust Drift",												
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,											
				['amount_to_owner'] = 0,										
				['max_stock'] = 1500,											
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gt86trust.png',								
				['page'] = 3
			},

			['majsoar'] = {
				['name'] = "2000 Toyota Soarer GT-T Twin Turbo Z30",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/majsoar.png',
				['page'] = 3
			},

			['mk2100'] = {
				['name'] = "2001 Toyota Mark II JZX100",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mk2100.png',
				['page'] = 1
			},

			['cam8tun'] = {
				['name'] = "2018 Toyota Camry XSE Crazy exterior",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cam8tun.png',
				['page'] = 1
			},

			['ae86'] = {
				['name'] = "1986 Toyota AE86",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ae86.png',
				['page'] = 3
			},

			['tsgr20'] = {
				['name'] = "2019 Toyota Supra GR 20",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/tsgr20.png',
				['page'] = 3
			},

			['a80'] = {
				['name'] = "1995 Toyota Supra MK4",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/a80.png',
				['page'] = 3
			},

			['86karma'] = {
				['name'] = "2012 Toyota GT86 KARMA",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/86karma.png',
				['page'] = 3
			},
			---================================= TOYOTA END
			---================================= VOLVO 
			['v242'] = {
				['name'] = "1983 Volvo 242 Turbo",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/v242.png',
				['page'] = 1
			},

			['starone'] = {
				['name'] = "2017 Volvo Polstar One",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/starone.png',
				['page'] = 3
			},
			
			['xc40'] = {
				['name'] = "2022 Volvo XC40 R Desing T5",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/xc40.png',
				['page'] = 5
			},
			
			['volvoxc90'] = {
				['name'] = "2017 Volvo XC90 T8 R Desing",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/volvoxc90.png',
				['page'] = 5
			},

			['s60'] = {
				['name'] = "2022 Volvo S60 Black Edition",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s60.png',
				['page'] = 1
			},
			---================================= VOLVO END
			---================================= VW
			
			['amarok'] = {
				['name'] = "2010 Volkswagen Amarok V6",	
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/amarok.png',
				['page'] = 5
			},
		
			['vwcaddy'] = {
				['name'] = "2003 Volkswagen Caddy",		
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/vwcaddy.png',
				['page'] = 4
			},
		
			['rmodmk7'] = {
				['name'] = "2012 Volkswagen Golf MK7 Pandem",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodmk7.png',
				['page'] = 0
			},
			['golf91wideprzemo'] = {
				['name'] = "1989 Volkswagen Golf MK2 Turbo",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/golf91wideprzemo.png',
				['page'] = 0
			},
			
			['vwtdiv6'] = {
				['name'] = "2010 Volkswagen Touareg",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/vwtdiv6.png',
				['page'] = 5
			},
		
			['touaregr50'] = {
				['name'] = "2008 Volkswagen Touareg R50",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/touaregr50.png',
				['page'] = 5
			},
			
			['type258'] = {
				['name'] = "1968 Volkswagen T1",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/type258.png',
				['page'] = 4
			},
			
			['type262'] = { 
				['name'] = "1968 Volkswagen T1",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/type262.png',
				['page'] = 4
			},
			
			['type263'] = { 
				['name'] = "VW Bulli V3",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/type263.png',
				['page'] = 4
			},
			
			['type266'] = { 
				['name'] = "1968 Volkswagen T1",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/type266.png',
				['page'] = 4
			},
			
			['golfgti'] = {
				['name'] = "2005 Volkswagen Golf 5",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/golfgti.png',
				['page'] = 0
			},
			
			['mk1rabbit'] = {
				['name'] = "1983 Volkswagen Golf MK1",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mk1rabbit.png',
				['page'] = 0
			},
			
			['golfmk6'] = {
				['name'] = "2009 Volkswagen Golf R MK6",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/golfmk6.png',
				['page'] = 0
			},
			
			['MK3'] = {
				['name'] = "1997 Volkswagen Golf MK3 GTI",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/MK3.png',
				['page'] = 0
			},
			
			['mk4'] = {
				['name'] = "2002 Volkswagen Golf MK4 R32",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mk4.png',
				['page'] = 0
			},
			
			['golfr18'] = {
				['name'] = "2018 Volkswagen Golf R Mk7",	
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/golfr18.png',
				['page'] = 0
			},

			['fnfjetta'] = {
				['name'] = "1979 Volkswagen Jetta FATF",
				['price_to_customer'] = 100,
				['price_to_owner'] = 9999999999,
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fnfjetta.png',
				['page'] = 1
			},
			
			['golfp'] = {
				['name'] = "2014 Volkswagen Golf R Mk7 Pandem Ukraine",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/golfp.png',
				['page'] = 0
			},

			['gcmgolf8r'] = {
				['name'] = "2021 Volkswagen Golf Mk8 R Armytrix",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gcmgolf8r.png',
				['page'] = 0
			},

			['golmarlboro'] = {
				['name'] = "1981 Volkswagen Scirocco Quadrado Marlboro",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/golmarlboro.png',
				['page'] = 0
			},
			---================================= VW END
			---================================= W MOTORS
			['fenyr'] = {
				['name'] = "2017 W-Motors Fenyr Supersport",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
                ['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fenyr.png',
				['page'] = 6
			},
			---================================= W MOTORS END
			---================================= ZENVO
			['zn20'] = {
				['name'] = "2017 Zenvo TS1 R",
				['price_to_customer'] = 100,									
				['price_to_owner'] = 9999999999,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 0,
				['max_stock'] = 1500,
                ['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/zn20.png',
				['page'] = 6
			},
			---================================= ZENVO END
			
		},
		['pagination'] = {				-- Create pages to your vehicles
			[0] = "Kleinwagen",
			[1] = "Limousine",
			[2] = "Kombi",
			[3] = "Coupé",
			[4] = "Vans",
			[5] = "SUV/Jeep",
			[6] = "Sport/Hypercars",
		},
		['blips'] = {					-- Create the blips on map
			['id'] = 0,				-- Blip ID [Set this value 0 to dont have blip]
			['name'] = "Autohaus Sunset",	-- Blip Name
			['color'] = 28,				-- Blip Color
			['scale'] = 0.5,			-- Blip Scale
		}
	},
	
	['yarak'] = {								-- Dealership type ID
		['stock_capacity'] = 150,					-- Max stock capacity
		['max_employees'] = 5,						-- Max employees
		['vehicles'] = {							-- Here you configure the vehicles on this dealership
		
		---================================= ACURA
		['acura2f2f'] = {														
			['name'] = "2000 Acura NSX 2F2F",															
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/acura2f2f.png',							
			['page'] = 3
		},

		['filthynsx'] = {														
			['name'] = "2000 Acura NSX Liberty Walk",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/filthynsx.png',								
			['page'] = 3
		},
		---================================= ACURA END
		---================================= ALFA ROMEO
		
		['giulia'] = {														
			['name'] = "2020 Alfa Romeo Giulia GTA",									
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/giulia.png',							
			['page'] = 1
		},
	
		['4c'] = {														
			['name'] = "2008 Alfa Romeo Mito",									
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/4c.png',							
			['page'] = 0
		},
			
		['mito'] = {														
			['name'] = "Alfa Romeo Mito",										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mito.png',								
			['page'] = 0
		},
		
		---================================= ALFA ROMEO END
		---================================= AMC
		
		['amxss'] = {														
			['name'] = "1970 AMX SS",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/amxss.png',								
			['page'] = 3
		},
		
		---================================= AMC END
		---================================= APOLLO
		['ie'] = {														
			['name'] = "2012 Apollo Intensa Emozione",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ie.png',							
			['page'] = 6
		},
		---================================= APOLLO END
		---================================= ASTON MARTIN

		['vulcanamr'] = {														
			['name'] = "2018 Aston Martin Vulcan",																		
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/vulcanamr.png',								
			['page'] = 6
		},

		['asdbx'] = {														
			['name'] = "2020 Aston Martin DBX",																		
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/asdbx.png',								
			['page'] = 5
		},

		['dbxlumma'] = {														
			['name'] = "2020 Aston Martin DBX Lumma",																
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/dbxlumma.png',							
			['page'] = 5
		},

		['foxleggera'] = {														
			['name'] = "2018 Aston Martin DBS Superleggera",															
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/foxleggera.png',								
			['page'] = 3
		},

		['rapides'] = {														
			['name'] = "2006 Aston Martin Rapide S",																	
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rapides.png',								
			['page'] = 1
		},

		['valkyrietp'] = {														
			['name'] = "2020 Aston Martin Valkyrie",																		
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/valkyrietp.png',							
			['page'] = 6
		},

		['v877'] = {														
			['name'] = "1977 Aston Martin Vantage V8",																	
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/v877.png',							
			['page'] = 3
		},

		['vantage'] = {														
			['name'] = "2017 Aston Martin Vantage",																		
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/vantage.png',							
			['page'] = 3
		},

		['victor'] = {														
			['name'] = "2020 Aston Martin Victor",																			
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/victor.png',							
			['page'] = 3
		},

		['MansoryDBX'] = {														
			['name'] = "2020 Aston Martin DBX Mansory",																			
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/MansoryDBX.png',								
			['page'] = 5
		},

		['dbxultimate'] = {														
			['name'] = "2022 Aston Martin DBX Ultimate Edition",																			
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/dbxultimate.png',							
			['page'] = 5
		},
		---================================= ASTON MARTIN END
		---================================= AUDI
	
		['audiq3'] = {														
			['name'] = "2011 Audi Q3 8U",										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/audiq3.png',						
			['page'] = 5
		},
	
		['s3sedan'] = {														
			['name'] = "2013 Audi A3 Limosine",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s3sedan.png',							
			['page'] = 1
		},
	
			['audis32'] = {														
			['name'] = "2002 Audi S3",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/audis32.png',							
			['page'] = 0
		},
		
		['ocnetrongt'] = {														
			['name'] = "2018 Audi E-Tron GT",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ocnetrongt.png',								
			['page'] = 1
		},

		['21rsq8'] = {														
			['name'] = "2020 Audi RS Q8",	                											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/21rsq8.png',								
			['page'] = 5
		},

		['r8v10'] = {														
			['name'] = "2020 Audi R8 V10",	            											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/r8v10.png',							
			['page'] = 6
		},

		['ttrs'] = {														
			['name'] = "2007 Audi TT 8J RS",                												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ttrs.png',								
			['page'] = 3
		},

		['s1hoonitron'] = {														
			['name'] = "2022 Audi S1E Quattro Hoonitron",                												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s1hoonitron.png',								
			['page'] = 3
		},

		['s8d4'] = {														
			['name'] = "2017 Audi S8 D4",            												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s8d4.png',							
			['page'] = 1
		},

		['rs6m'] = {														
			['name'] = "2020 Audi RS6 C8 Mansory",	    											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs6m.png',								
			['page'] = 1
		},

		['rs7r'] = {														
			['name'] = "2021 Audi RS 7 C8 Sportback ABT",	            											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs7r.png',							
			['page'] = 1
		},

		['rs6c8'] = {														
			['name'] = "2020 Audi RS 6 C8 Limosine",	    											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs6c8.png',							
			['page'] = 1
		},

		['rs6avant20'] = {														
			['name'] = "2020 Audi RS 6 C8 Avant",	        											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs6avant20.png',							
			['page'] = 2
		},

		['audquattros'] = {														
			['name'] = "1983 Audi Quattro Sport",        												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/audquattros.png',							
			['page'] = 3
		},

		['a6tfsi'] = {					    									
			['name'] = "2018 Audi A6 C8 TFSI",                  												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/a6tfsi.png',						
			['page'] = 1
		},

		['rs5'] = {														
			['name'] = "2011 Audi RS 5",               												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs5.png',							
			['page'] = 3
		},

		['topcarrsq8'] = {														
			['name'] = "2020 Audi RS Q8 Lumma",           												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/topcarrsq8.png',								
			['page'] = 5
		},

		['sq72016'] = {														
			['name'] = "2016 Audi SQ7",	            											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sq72016.png',							
			['page'] = 5
		},

		['s8d2'] = {														
			['name'] = "1998 Audi S8 D2",	                											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s8d2.png',								
			['page'] = 1
		},

		['rsq8m'] = {														
			['name'] = "2020 Audi RS Q8 Mansory",	            											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rsq8m.png',									
			['page'] = 5
		},

		['rs318'] = {														
			['name'] = "2018 Audi RS 3 Sportback",            												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs318.png',								
			['page'] = 1
		},

		['rs7mans'] = {														
			['name'] = "2020 Audi RS 7 C8 Sportback Mansory",              												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs7mans.png',								
			['page'] = 1
		},

		['rs7c8wb'] = {														
			['name'] = "2020 Audi RS 7 C8 Sportback Widebody",	    											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs7c8wb.png',								
			['page'] = 1
		},

		['rs7c8'] = {														
			['name'] = "2020 Audi RS 7 C8 Sportback Widebody",	    											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs7c8.png',									
			['page'] = 1
		},

		['rmodrs7'] = {														
			['name'] = "2015 Audi RS 7 C7 Sportback Animiert",      												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodrs7.png',							
			['page'] = 3
		},

		['rs52018'] = {														
			['name'] = "2018 Audi RS 5",      												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs52018.png',							
			['page'] = 3
		},

		['rs7'] = {														
			['name'] = "2018 Audi RS 7 C7 Sportback",            												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs7.png',							
			['page'] = 1
		},

		['rs6rabt20'] = {														
			['name'] = "2020 Audi RS 6 R C8 ABT Avant",           												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs6rabt20.png',									
			['page'] = 2
		},

		['rs6'] = {														
			['name'] = "2017 Audi RS 6 C7",	    											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs6.png',								
			['page'] = 2
		},

		['r8cabt'] = {														
			['name'] = "2020 Audi R8 V10 ABT Spider",            												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/r8cabt.png',									
			['page'] = 3
		},

		['q8prior'] = {														
			['name'] = "2020 Audi Q8 Prior Edition",	            											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/q8prior.png',							
			['page'] = 5
		},

		['mansoryrs6'] = {														
			['name'] = "2020 Audi RS 6 C8 Avant Mansory",        												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mansoryrs6.png',									
			['page'] = 2
		},

		['auds5'] = {														
			['name'] = "2020 Audi RS 5 Mansory",              												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/auds5.png',								
			['page'] = 3
		},

		['ar8lb'] = {														
			['name'] = "2018 Audi R8 V10 Liberty Walk",		            										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ar8lb.png',									
			['page'] = 3
		},

		['ocnetrongtAnimirt'] = {														
			['name'] = "2018 Audi E-tron GT Animiert",		            										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ocnetrongtAnimirt.png',									
			['page'] = 1
		},

		['mansrs6'] = {														
			['name'] = "2020 Audi RS 6 Mansaug",		            										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mansrs6.png',									
			['page'] = 2
		},

		['keyvanyrs612'] = {														
			['name'] = "2019 Audi RS6 C8 Keyvany",		            										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/keyvanyrs612.png',									
			['page'] = 2
		},

		['rsq8mans'] = {														
			['name'] = "2022 Audi RSQ8 Mansory",		            										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rsq8mans.png',									
			['page'] = 5
		},

		['keyvanyrs6'] = {														
			['name'] = "2022 Audi RS6 Avant Keyvany",		            										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/keyvanyrs6.png',									
			['page'] = 2
		},

		['SQ7ABT'] = {														
			['name'] = "2017 Audi Q7 ABT",		            										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/SQ7ABT.png',									
			['page'] = 5
		},

		['ttshrr'] = {														
			['name'] = "2022 Audi TTS HR R Series",		            										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ttshrr.png',									
			['page'] = 3
		},

		['ttrs19'] = {														
			['name'] = "2019 Audi TTRS",		            										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ttrs19.png',									
			['page'] = 3
		},

		['rs7c8KHANlll'] = {														
			['name'] = "2019 Audi Rs7 Khanniii Edition",		            										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs7c8KHANlll.png',									
			['page'] = 1
		},

		['rs6c8KHANlll'] = {														
			['name'] = "2019 Audi RS6 C8 Sedan Widebody",		            										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs6c8KHANlll.png',									
			['page'] = 1
		},

		['ttrs22'] = {														
			['name'] = "2018 Audi TT FV/8S RS Black Edition",		            										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ttrs22.png',									
			['page'] = 3
		},

		['LMTLSR8'] = {														
			['name'] = "2020 Audi R8 Prior Design Carbon",		            										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/LMTLSR8.png',									
			['page'] = 3
		},

		['drers4avant'] = {														
			['name'] = "2022 Audi RS 4 Avant",		            										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/drers4avant.png',									
			['page'] = 2
		},

		['rs322sedan'] = {														
			['name'] = "2022 Audi RS 3 Sedan",		            										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs322sedan.png',									
			['page'] = 1
		},

		['s1hr'] = {														
			['name'] = "2020 Audi S1 Hachi Desing",		            										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s1hr.png',									
			['page'] = 0
		},

		['rsqurus'] = {														
			['name'] = "2021 Audi RS Q8 Mansory Urus Body",		            										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rsqurus.png',									
			['page'] = 5
		},

		['ikx3abt20'] = {														
			['name'] = "2020 Audi RS 7 C8 Sportback ABT",		            										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ikx3abt20.png',									
			['page'] = 1
		},

		['rs3h'] = {														
			['name'] = "2019 Audi RS 3 Hachi Desing",		            										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rs3h.png',									
			['page'] = 1
		},

		['a6avant'] = {														
			['name'] = "2018 Audi A6 C8 Avant",		            										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/a6avant.png',									
			['page'] = 1
		},
		---================================= AUDI END
		---================================= AUSTIN

		['ah300'] = {														
			['name'] = "1959 Austin Healey 3000",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ah300.png',						
			['page'] = 3
		},
		---================================= AUSTIN END
		---================================= BENTLEY
		['bcgt'] = {														
			['name'] = "2015 Bentley Continental GT Speed",															
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bcgt.png',							
			['page'] = 6
		},

		['19msctntgt4'] = {														
			['name'] = "2020 Bentley Continental GT GTC Keyvany",															
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/19msctntgt4.png',								
			['page'] = 3
		},
		
		['17onyxbtg2'] = {														
			['name'] = "2020 Bentley Bentayga Onyx",																		
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,								
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/17onyxbtg2.png',								
			['page'] = 5
		},
		
		['bbentayga'] = {														
			['name'] = "2020 Bentley Bentayga",																			
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bbentayga.png',							
			['page'] = 5
		},
		
		['21bentayga'] = {														
			['name'] = "2020 Bentley Bentayga Mansory",																
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/21bentayga.png',							
			['page'] = 5
		},
		
		['19msctntgt'] = {														
			['name'] = "2021 Bentley Continental GT Mansory",														
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/19msctntgt.png',									
			['page'] = 3
		},
		
		['contss21c'] = {														
			['name'] = "2011 Bentley Continental GT Cabrio",															
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/contss21c.png',								
			['page'] = 3
		},
		
		['17bcs'] = {														
			['name'] = "2017 Bentley Continental Supersports",															
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/17bcs.png',								
			['page'] = 3
		},
		
		['flyingspur'] = {														
			['name'] = "2013 Bentley Flying Spur",																	
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/flyingspur.png',							
			['page'] = 1
		},
		
		['mulsanne17sp'] = {														
			['name'] = "2017 Bentley Mulsanne Mansory",																	
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mulsanne17sp.png',									
			['page'] = 1
		},

		['rmodbacalar'] = {
			['name'] = "2021 Bentley Bacalar",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodbacalar.png',
			['page'] = 3
		},
		---================================= BENTLEY END
		---================================= BMW
		['m5e60'] = {
			['name'] = "2005 BMW E60 M5",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m5e60.png',
			['page'] = 1
		},
		
		
		['m5f90'] = {
			['name'] = "2018 BMW F90 M5",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m5f90.png',
			['page'] = 1
		},

		['bmw7sw2'] = {
			['name'] = "2022 BMW 760i G73",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bmw7sw2.png',
			['page'] = 1
		},

		['bmw7sw'] = {
			['name'] = "2022 BMW 760i G73 Blacked Forgiato",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bmw7sw.png',
			['page'] = 1
		},
		
		['g20stock'] = {
			['name'] = "2019 BMW G20 330i M Sport",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/g20stock.png',
			['page'] = 1
		},
		
		['g20wide'] = {
			['name'] = "2019 BMW G20 330i M Sport Wide Body",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/g20wide.png',
			['page'] = 1
		},
		
		['mcjcw20'] = {
			['name'] = "2015 Mini Cooper JCW",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mcjcw20.png',
			['page'] = 0
		},
		
		['x5e53'] = {
			['name'] = "1999 BMW E53 X5",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/x5e53.png',
			['page'] = 5
		},
	
		['x5bmw'] = {
			['name'] = "2009 BMW F85 X5M",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/x5bmw.png',
			['page'] = 5
		},
				
		['mteche39'] = {
			['name'] = "1998 BMW E39 M5",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mteche39.png',
			['page'] = 1
		},
			
		['z48'] = {
			['name'] = "2002 BMW Z4",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/z48.png',
			['page'] = 3
		},

		['e36drift'] = {
			['name'] = "1998 BMW e36 Drift",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/e36drift.png',
			['page'] = 3
		},
		
		['m3e36'] = {
			['name'] = "1999 BMW E36 M3",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m3e36.png',
			['page'] = 3
		},

		['bmdrift'] = {
			['name'] = "1991 BMW E30 Drift",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bmdrift.png',
			['page'] = 3
		},

		['bmwe'] = {
			['name'] = "2004 BMW E46 Drift",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bmwe.png',
			['page'] = 3
		},

		['BeefMWe46'] = {
			['name'] = "2005 BMW M3 E46 Drift",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/BeefMWe46.png',
			['page'] = 3
		},
		
		['m42020'] = {
			['name'] = "2021 BMW G22 420i",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m42020.png',
			['page'] = 3
		},

		['m5e60'] = {
			['name'] = "2005 BMW E60 M5",					
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m5e60.png',
			['page'] = 1
		},
		
		['19msctntgt3'] = {
			['name'] = "2019 BMW 530d xDrive G30 Touring",				
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/19msctntgt3.png',
			['page'] = 2
		},
		
		['oracle2'] = {
			['name'] = "2019 BMW 750li xDrive",				
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/oracle2.png',
			['page'] = 1
		},
		
		['alpinab7'] = {
			['name'] = "2019 BMW Alpina B7",					
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/alpinab7.png',
			['page'] = 1
		},
		
		['alpinab7z'] = {
			['name'] = "2019 BMW Alpina B7 Animiert",		
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/alpinab7z.png',
			['page'] = 1
		},
		
		['m1'] = {
			['name'] = "2013 BMW M1 Stance Works",			
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m1.png',
			['page'] = 3
		},
		
		['bmwvision'] = {
			['name'] = "2018 BMW M2 Vision",					
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bmwvision.png',
			['page'] = 3
		},
		
		['m3gtr'] = {
			['name'] = "2005 BMW E46 M3 GTR",					
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m3gtr.png',
			['page'] = 3
		},

		['e46facelift'] = {
			['name'] = "2006 BMW M3 E46 Facelift",					
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/e46facelift.png',
			['page'] = 3
		},
		
		['m3touring'] = {
			['name'] = "2022 BMW G80 M3 Touring",			
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m3touring.png',
			['page'] = 2
		},
		
		['m4c20'] = {
			['name'] = "2014 BMW M4 CS Cabrio",				
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m4c20.png',
			['page'] = 3
		},

		['buffalo1312'] = {
			['name'] = "2017 Bmw M4 F82 LB Drift",				
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/buffalo1312.png',
			['page'] = 3
		},
		
		['m4lb'] = {
			['name'] = "2014 BMW M4 F82 Liberty Walk Animiert",		
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m4lb.png',
			['page'] = 3
		},
		
		['m4cg83mp'] = {
			['name'] = "2020 BMW G82 M4 CS",			
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m4cg83mp.png',
			['page'] = 3
		},
		
		['f10m5'] = {	
			['name'] = "2010 BMW F10 M5",					
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/f10m5.png',
			['page'] = 1
		},
		
		['22m5sal'] = {
			['name'] = "2022 BMW M5 F90",			
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/22m5sal.png',
			['page'] = 1
		},
		
		['m6prior'] = {
			['name'] = "2015 BMW F13 M6 Prior Design",			
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m6prior.png',
			['page'] = 3
		},
		
		['bmw8mm'] = {
			['name'] = "2019 BMW G15 M8 Gran Coupe Animiert",			
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bmw8mm.png',
			['page'] = 3
		},
		
		['bmwm8prior'] = {
			['name'] = "2018 BMW G15 M8 Prior Design",			
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bmwm8prior.png',
			['page'] = 3
		},
		
		['17m760i'] = {
			['name'] = "2017 BMW M760Li",						
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/17m760i.png',
			['page'] = 1
		},
		
		['bmwx6mham'] = {
			['name'] = "2020 BMW X6 Hamann G06",					
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bmwx6mham.png',
			['page'] = 5
		},
		
		['lummax6'] = {
			['name'] = "2011 BMW X6 Lumma CLR",				
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lummax6.png',
			['page'] = 5
		},
		
		['m4comp'] = {
			['name'] = "2019 BMW M4 Competition",		
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m4comp.png',
			['page'] = 3
		},
		
		['BMWM5CS'] = {
			['name'] = "2021 BMW G30 M5 CS",		
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/BMWM5CS.png',
			['page'] = 1
		},
		
		['bmwm8'] = {
			['name'] = "2018 BMW G15 M8",					
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bmwm8.png',
			['page'] = 3
		},
		
		['hycadem8'] = {
			['name'] = "2018 BMW G14 M8 GTR Hycade",					
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/hycadem8.png',
			['page'] = 3
		},

		['850'] = {
			['name'] = "1995 BMW 850 CSI",				
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/850.png',
			['page'] = 3
		},

		['m6f13'] = {
			['name'] = "2012 BMW M6 Cabrio",				
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m6f13.png',
			['page'] = 3
		},

		['rmodm4gts'] = {
			['name'] = "2015 BMW M4 GTS Liberty Walk",				
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodm4gts.png',
			['page'] = 3
		},

		['mansm2'] = {
			['name'] = "2018 BMW M2 Mansaug",				
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mansm2.png',
			['page'] = 3
		},

		['mansm4'] = {
			['name'] = "2021 BMW M4 Mansaug",				
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mansm4.png',
			['page'] = 3
		},
		
		['rmodm8c'] = {
			['name'] = "2018 BMW G15 M8 Competition Cabrio",	
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodm8c.png',
			['page'] = 3
		},
		
		['mh8'] = {
			['name'] = "2018 BMW G15 M8 Manhart",			
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mh8.png',
			['page'] = 3
		},
		
		['mansm8'] = {
			['name'] = "2018 BMW G15 M8 Competition Mansaug",			
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mansm8.png',
			['page'] = 3
		},
		
		['m5e60wb'] = {
			['name'] = "2007 BMW E60 M5 Wide Body",			
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m5e60wb.png',
			['page'] = 1
		},
		
		['m6f06'] = {
			['name'] = "2013 BMW F06 M6 Gran Coupe",			
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m6f06.png',
			['page'] = 1
		},
		
		['m3g80c'] = {
			['name'] = "2021 BMW G80 M3 Competition",		
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m3g80c.png',
			['page'] = 1
		},
		
		['e46t'] = {
			['name'] = "1998 BMW E46 Touring",				
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/e46t.png',
			['page'] = 2
		},
		
		['f82'] = {
			['name'] = "2014 BMW F82 M4",					
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/f82.png',
			['page'] = 3
		},
		
		['m4c'] = {
			['name'] = "2014 BMW F82 M4 Cabrio",				
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m4c.png',
			['page'] = 3
		},
		
		['m4cc'] = {
			['name'] = "2021 BMW M4 Animiert",			
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m4cc.png',
			['page'] = 3
		},
		
		['rmodx6'] = {
			['name'] = "2013 BMW X6M Wide Body",			
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodx6.png',
			['page'] = 5
		},
		
		['bmwg07'] = {
			['name'] = "2019 BMW G07 X7",					
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bmwg07.png',
			['page'] = 5
		},

		['x7m60iprzemo'] = {
			['name'] = "2022 BMW X7 M60i G07",					
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/x7m60iprzemo.png',
			['page'] = 5
		},
		
		['m3e30'] = {
			['name'] = "1988 BMW E30 M3",					
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m3e30.png',
			['page'] = 3
		},
			
		['m2'] = {
			['name'] = "2018 BMW M2",						
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m2.png',
			['page'] = 3
		},

		['minilb'] = {														
			['name'] = "2007 Mini Cooper Liberty Walk",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/minilb.png',									
			['page'] = 0
		},

		['royAlpinaB4s_FL'] = {
			['name'] = "2019 BMW M4 F82 Alpina",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/royAlpinaB4s_FL.png',
			['page'] = 3
		},

		['bmwm4csl'] = {
			['name'] = "2019 BMW M4 F82 Alpina",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bmwm4csl.png',
			['page'] = 3
		},

		['bmwx7'] = {
			['name'] = "2021 BMW X7 G07 Khann",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bmwx7.png',
			['page'] = 5
		},

		['ikx3m4cs'] = {
			['name'] = "2017 BMW M4 CS F82",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ikx3m4cs.png',
			['page'] = 3
		},

		['m5e61przemo'] = {
			['name'] = "2007 BMW M5 e61",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m5e61przemo.png',
			['page'] = 2
		},

		['m4mafia'] = {
			['name'] = "2020 BMW M4 F82 Mafia",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m4mafia.png',
			['page'] = 3
		},

		['burak328'] = {
			['name'] = "1998 BMW E36 328i M Sport Cabrio",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/burak328.png',
			['page'] = 3
		},

		['CCE60limit'] = {
			['name'] = "2007 BMW E60 Balenciaga x Gucci",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/CCE60limit.png',
			['page'] = 1
		},

		['z4alchemist'] = {
			['name'] = "2020 BMW Z4",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/z4alchemist.png',
			['page'] = 3
		},

		['x6m'] = {
			['name'] = "2017 BMW X6M",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/x6m.png',
			['page'] = 5
		},

		['mi8'] = {
			['name'] = "2018 BMW I8 Coupe MANSAUG",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mi8.png',
			['page'] = 3
		},

		['DL_mhx700'] = {
			['name'] = "2021 BMW X700 Manhart",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/DL_mhx700.png',
			['page'] = 5
		},

		['m8keyvany1'] = {
			['name'] = "2018 BMW G14 M8 Keyvany X Armytrix Performance",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m8keyvany1.png',
			['page'] = 3
		},

		['owlalpina'] = {
			['name'] = "2022 BMW Alpina B7 Versace",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/owlalpina.png',
			['page'] = 1
		},

		['DL_mh4'] = {
			['name'] = "2017 BMW M4 Manhart",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/DL_mh4.png',
			['page'] = 3
		},

		['DL_mh4650'] = {
			['name'] = "2016 BMW M4 650 Manhart",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/DL_mh4650.png',
			['page'] = 3
		},

		['DL_mh2'] = {
			['name'] = "2018 BMW M2 Manhart",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/DL_mh2.png',
			['page'] = 3
		},

		['DL_mh8'] = {
			['name'] = "2019 BMW G15 M8 Coupe Manhart",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/DL_mh8.png',
			['page'] = 1
		},

		['bmwmafiam3'] = {
			['name'] = "2022 BMW M3 Touring Competition Mafia Edition",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bmwmafiam3.png',
			['page'] = 2
		},

		['x6mpd'] = {
			['name'] = "2020 BMW X6M Prior",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/x6mpd.png',
			['page'] = 5
		},

		['drex6mlarte'] = {
			['name'] = "2019 BMW G06 X6M Larte",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/drex6mlarte.png',
			['page'] = 5
		},

		['x6larte'] = {
			['name'] = "2019 BMW G06 X6 Larte",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/x6larte.png',
			['page'] = 5
		},

		['18mh5'] = {
			['name'] = "2022 BMW M5 Manhart",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/18mh5.png',
			['page'] = 1
		},

		['m5e60wb1'] = {
			['name'] = "2005 BMW M5 E60 V10 Black Edition",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m5e60wb1.png',
			['page'] = 1
		},

		['16m4gts'] = {
			['name'] = "2015 BMW M4 GTS",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/16m4gts.png',
			['page'] = 3
		},

		['m2wb'] = {
			['name'] = "2018 BMW M2 CS",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m2wb.png',
			['page'] = 3
		},

		['i8r'] = {
			['name'] = "2019 BMW i8 Roadster",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/i8r.png',
			['page'] = 3
		},

		['m3g80c11'] = {
			['name'] = "2021 BMW M3 G80 Manhart",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m3g80c11.png',
			['page'] = 1
		},

		['m850'] = {
			['name'] = "2018 BMW G14 M850i",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m850.png',
			['page'] = 3
		},

		['m8keyvany'] = {
			['name'] = "2018 BMW G14 M8 Keyvany",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m8keyvany.png',
			['page'] = 3
		},

		['m5abflug'] = {
			['name'] = "2013 BMW M5 F11",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m5abflug.png',
			['page'] = 2
		},

		['m3f80'] = {
			['name'] = "2014 BMW M3 F80",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m3f80.png',
			['page'] = 2
		},

		['e46'] = {
			['name'] = "2003 BMW E46 M3",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/e46.png',
			['page'] = 3
		},


		---================================= BMW END
		---================================= BRABHAM
		['bt62r'] = {
			['name'] = "2019 Brabham BT62",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,	
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bt62r.png',
			['page'] = 6
		},
		---================================= BRABHAM END
		---================================= BRABUS
		
		['wycb50'] = {
			['name'] = "2021 Brabus S500 B50",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/wycb50.png',
			['page'] = 1
		},

		['primo2'] = {
			['name'] = "2017 Brabus 900 S63 Maybach W223",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/wycb50.png',
			['page'] = 1
		},
		
		['CLS53'] = {
			['name'] = "2019 Brabus 800 CLS53 C257",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/CLS53.png',
			['page'] = 1
		},
		
		['brabuse700'] = {
			['name'] = "2017 Brabus 700 E63 Coupe",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/brabuse700.png',
			['page'] = 3
		},
		
		['b800'] = {
			['name'] = "2018 Brabus 800 E63 W213",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/b800.png',
			['page'] = 1
		},
		
		['21s580m'] = {
			['name'] = "2020 Mercedes-Benz Maybach S580 W223",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/21s580m.png',
			['page'] = 1
		},
		
		['b800c217'] = {
			['name'] = "2018 Brabus 800 S63 C217 Coupe",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/b800c217.png',
			['page'] = 3
		},
		
		['g900przemo6x6'] = {
			['name'] = "2013 Brabus 700 B63s 6x6",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/g900przemo6x6.png',
			['page'] = 5
		},

		['g900przemo'] = {
			['name'] = "2019 Brabus G900 1 of 10",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/g900przemo.png',
			['page'] = 5
		},
		
		['gle800przemo'] = {
			['name'] = "2021 Brabus 800 GLE 63s",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gle800przemo.png',
			['page'] = 5
		},
		
		['oycgle'] = {
			['name'] = "2021 Brabus GLE 900 Coupe Rocket",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/oycgle.png',
			['page'] = 5
		},
		
		['brabusgtc800'] = {
			['name'] = "2019 Brabus 800 GTs",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/brabusgtc800.png',
			['page'] = 3
		},

		['glsmbrabus900'] = {
			['name'] = "2022 Brabus Maybach GLS 900",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/glsmbrabus900.png',
			['page'] = 5
		},
		
		['brabus900bs'] = {
			['name'] = "2020 Brabus 900 Rocket GT Black Series",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/brabus900bs.png',
			['page'] = 3
		},
		
		['cla900rocket21'] = {
			['name'] = "2019 Brabus Rocket 900 CLA63",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cla900rocket21.png',
			['page'] = 1
		},
		
		['12cls63'] = {
			['name'] = "2014 Brabus Rocket 800 CLS63",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/12cls63.png',
			['page'] = 1
		},
		
		['d35'] = {
			['name'] = "2018 Brabus D35 Adventure G63",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/d35.png',
			['page'] = 5
		},
		
		['brabus800mj'] = {
			['name'] = "2019 Brabus 800 GT63",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/brabus800mj.png',				
			['page'] = 1
		},
		
		['b800f'] = {
			['name'] = "2021 Brabus 800 E63 W213 Facelift",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/b800f.png',
			['page'] = 1
		},
		
		['e800eprzemo'] = {
			['name'] = "2020 Brabus 800 E63 Estate",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/e800eprzemo.png',
			['page'] = 2
		},
		
		['rocket'] = {
			['name'] = "2020 Brabus Rocket 900 GT63s",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rocket.png',
			['page'] = 1
		},

		['bs900convertible'] = {
			['name'] = "2020 Brabus 900 Cabriolet",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bs900convertible.png',
			['page'] = 3
		},
		
		['brabus850'] = {
			['name'] = "2015 Brabus 850 S63 Coupe",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/brabus850.png',
			['page'] = 3
		},
		
		['evcs850'] = {
			['name'] = "2018 Brabus 850 S63",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/evcs850.png',
			['page'] = 1
		},
		
		['g500'] = {
			['name'] = "2016 Brabus G500 4x4",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/g500.png',
			['page'] = 5
		},
		
		['G800'] = {
			['name'] = "2021 Brabus 800 G63",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/G800.png',
			['page'] = 5
		},
		
		['2020g900'] = {
			['name'] = "2020 Brabus Rocket 900 G63",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/2020g900.png',
			['page'] = 5
		},
		
		['gls800przemo'] = {
			['name'] = "2016 Brabus 850 XL GLS63",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gls800przemo.png',
			['page'] = 5
		},
		
		['GLS63'] = {
			['name'] = "2021 Brabus 800 GLS63",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/GLS63.png',
			['page'] = 5
		},

		['s600'] = {
			['name'] = "2007 Brabus s600 w221",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s600.png',
			['page'] = 1
		},

		['b800e53'] = {
			['name'] = "2021 Brabus Rocket SL63",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/b800e53.png',
			['page'] = 1
		},

		['brabusghost700'] = {
			['name'] = "2023 Brabus 700 Ghost",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/brabusghost700.png',
			['page'] = 1
		},

		['gcmsl2022'] = {
			['name'] = "2021 Brabus Rocket SL63",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gcmsl2022.png',
			['page'] = 3
		},

		['gcmsl2022'] = {
			['name'] = "2021 Brabus Rocket SL63",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gcmsl2022.png',
			['page'] = 3
		},
		---================================= BRABUS END
		---================================= BUGATTI
		['centuria'] = {
			['name'] = "2019 Bugatti Centuria Mansory",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/centuria.png',
			['page'] = 6
		},

		['ikx3gp22'] = {
			['name'] = "2021 Bugatti Chiron Pur Sport Grand Prix",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ikx3gp22.png',
			['page'] = 6
		},

		['2019chiron'] = {
			['name'] = "2016 Bugatti Chiron",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/2019chiron.png',
			['page'] = 6
		},

		['rmodbugatti'] = {
			['name'] = "2021 Bugatti La Voiture Noire",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodbugatti.png',
			['page'] = 6
		},

		['divo'] = {
			['name'] = "2018 Bugatti Divo",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/divo.png',
			['page'] = 6
		},

		['divo21'] = {
			['name'] = "2018 Buggati Divo Animiert",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/divo21.png',
			['page'] = 6
		},

		['wycalt'] = {
			['name'] = "2019 Bugatti Atlantic",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/wycalt.png',
			['page'] = 6
		},

		['bolide'] = {
			['name'] = "2019 Bugatti Bolide",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bolide.png',
			['page'] = 6
		},

		['bugatticentodieci'] = {
			['name'] = "2020 Bugatti Centodieci",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bugatticentodieci.png',
			['page'] = 6
		},

		['eb110'] = {
			['name'] = "1995 Bugatti EB110 Super Sport",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/eb110.png',
			['page'] = 6
		},

		['bug300ss'] = {
			['name'] = "2015 Bugatti Super Sport",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bug300ss.png',
			['page'] = 6
		},

		['bugwbprzemo'] = {
			['name'] = "2005 Bugatti Veyron BiTurbo",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bugwbprzemo.png',
			['page'] = 6
		},

		['mbug'] = {
			['name'] = "2015 Bugatti Veyron Vivere Mansory",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mbug.png',
			['page'] = 6
		},

		['veyron2016'] = {
			['name'] = "2015 Bugatti Veyron 16.4 Oakley Design",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/veyron2016.png',
			['page'] = 6
		},

		['bvit'] = {
			['name'] = "2015 Bugatti Veyron Vitesse",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bvit.png',
			['page'] = 6
		},

		['purwb'] = {
			['name'] = "2021 Bugatti Chiron Pur Sport Spoon Edition",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/purwb.png',
			['page'] = 6
		},

		['ikx3mistral23'] = {
			['name'] = "2023 Bugatti Mistral",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ikx3mistral23.png',
			['page'] = 6
		},

		['chironssport110'] = {
			['name'] = "2019 Bugatti Chiron 110 Aniversary Carbon Blue Edition",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/chironssport110.png',
			['page'] = 6
		},

		---================================= BUGATTI END
		---================================= CADILLAC
		['ctsv16'] = {
			['name'] = "2015 Cadillac CTS V",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ctsv16.png',
			['page'] = 1
		},
	
		['cesc21'] = {
			['name'] = "2017 Cadillac Escalade",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cesc21.png',
			['page'] = 5
		},

		['escaladesport'] = {
			['name'] = "2017 Cadillac Escalade ESV Sport",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/escaladesport.png',
			['page'] = 5
		},
		---================================= CADILLAC END
		---================================= CHEVROLET
		
		['silverado'] = {														
			['name'] = "1998 Chevrolet Silverado",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/silverado.png',								
			['page'] = 5
		},
	
		['che1950ez'] = {														
			['name'] = "1950 Chevrolet Pickup",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/che1950ez.png',									
			['page'] = 5
		},
		
		['70zr1'] = {														
			['name'] = "1972 Chevrolet Corvette ZR1",										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/70zr1.png',								
			['page'] = 3
		},

		['nova'] = {														
			['name'] = "1972 Hoonigan Chevrolet Napalm Nova Drift",										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/nova.png',								
			['page'] = 3
		},
	
		['czr1'] = {														
			['name'] = "2009 Chevrolet Corvette ZR1",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/czr1.png',								
			['page'] = 3
		},

		['211le'] = {														
			['name'] = "2019 Chevrolet Camaro ZL1 1LE",	        											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/211le.png',								
			['page'] = 3
		},
		
		['chevelless'] = {														
			['name'] = "1970 Chevrolet Chevelle SS",	            											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/chevelless.png',							
			['page'] = 3
		},
		
		['elcamino70'] = {														
			['name'] = "1970 Chevrolet El Camino SS",	            											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/elcamino70.png',								
			['page'] = 3
		},
		
		['camaross'] = {														
			['name'] = "1966 Chevrolet Camaro 300 SS",	        											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/camaross.png',								
			['page'] = 3
		},
		
		['ss69'] = {														
			['name'] = "1969 Chevrolet Camaro SS",	           											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ss69.png',						
			['page'] = 3
		},

		['impala72'] = {														
			['name'] = "1972 Chevrolet Impala",	           											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/impala72.png',						
			['page'] = 3
		},

		['77carlo'] = {														
			['name'] = "1977 Chevrolet Monte Carlo",	           											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/77carlo.png',						
			['page'] = 3
		},
		
		['stingray'] = {														
			['name'] = "2020 Chevrolet Corvett C8",          											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/stingray.png',								
			['page'] = 3
		},
		
		['corvette63gsf5'] = {														
			['name'] = "1963 Chevrolet Corvett Grand Sport",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/corvette63gsf5.png',								
			['page'] = 3
		},
		---================================= CHEVROLET END
		---================================= CHRYSLER
		['cross'] = {														
			['name'] = "2003 Chrysler Cross",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cross.png',									
			['page'] = 3
		},

		['chr300'] = {														
			['name'] = "2007 Chrysler 300 SRT8",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/chr300.png',									
			['page'] = 1
		},
		---================================= CHRYSLER END
		---================================= DELOREAN
		['dmc12wb'] = {														
			['name'] = "1982 DeLorean DMC12 Wide Body",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/dmc12wb.png',								
			['page'] = 3
		},
		---================================= DELOREAN END
		---================================= DODGE
	
		['68dart'] = {														
			['name'] = "1968 Dodge Dart Hemi Super Stock",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/68dart.png',								
			['page'] = 3
		},
	
		['charger69'] = {														
			['name'] = "1969 Dodge Charger RT 426 Hemi",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/charger69.png',										
			['page'] = 3
		},
		
		['ram2500'] = {														
			['name'] = "2012 Dodge Ram 2500",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ram2500.png',								
			['page'] = 5
		},
		
		['ram99'] = {														
			['name'] = "1999 Dodge Ram 1500",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ram99.png',									
			['page'] = 5
		},

		['demon'] = {														
			['name'] = "2018 Dodge Challenger SRT Demon",	            											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/demon.png',									
			['page'] = 3
		},
		
		['charger21'] = {														
			['name'] = "2014 Dodge Charger SRT Hellcat Redeye",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/charger21.png',										
			['page'] = 3
		},
		
		['21durango'] = {														
			['name'] = "2015 Dodge Durango SRT",	                    											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/21durango.png',						
			['page'] = 5
		},
		
		['dodgeanimirt'] = {														
			['name'] = "1998 Dodge Durango Animiert",	        											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/dodgeanimirt.png',									
			['page'] = 5
		},
		
		['rt70'] = {														
			['name'] = "1970 Dodge Charger",	                											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rt70.png',									
			['page'] = 3
		},

		['manssrt'] = {														
			['name'] = "2014 Dodge Charger Mansaug",	                											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/manssrt.png',						
			['page'] = 1
		},
		
		['trx'] = {														
			['name'] = "2010 Dodge Ram 1500 Rebel TRX",                   												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/trx.png',								
			['page'] = 5
		},
		
		['viper'] = {														
			['name'] = "2010 Dodge Viper SRT 10 ACR",	                    											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/viper.png',										
			['page'] = 3
		},
		
		['99viper'] = {														
			['name'] = "1999 Dodge Viper ACR",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/99viper.png',								
			['page'] = 3
		},
		---================================= DODGE ENG
		---================================= FERRARI
		
		['bb512'] = {														
			['name'] = "1978 Ferrari BB 512",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bb512.png',							
			['page'] = 6
		},

		['fd599'] = {
			['name'] = "2013 Ferrari 599 GTB Fiorano Drift",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fd599.png',
			['page'] = 3
		},
	
		['f355s'] = {														
			['name'] = "1994 Ferrari F355 Spider",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/f355s.png',							
			['page'] = 6
		},

		['f250gto'] = {														
			['name'] = "1960 Ferrari F250 GTO Type 2",           												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/f250gto.png',						
			['page'] = 6
		},
		
		['330p4'] = {														
			['name'] = "1966 Ferrari 330 P4",	                											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/330p4.png',							
			['page'] = 6
		},
		
		['f12m'] = {														
			['name'] = "2013 Ferrari F12 Stallone Mansory",          												
			['price_to_customer'] = 100,			    						
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/f12m.png',							
			['page'] = 3
		},
		
		['599xxevo'] = {														
			['name'] = "2009 Ferrari 599XX Evoluzine",	            											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/599xxevo.png',						
			['page'] = 6
		},
		
		['enzo'] = {														
			['name'] = "2002 Ferrari Enzo",		                    										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/enzo.png',						
			['page'] = 6
		},
		
		['fxx'] = {														
			['name'] = "2005 Ferrari FXX",	                    											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fxx.png',						
			['page'] = 6
		},
		
		['2016f12tdf'] = {														
			['name'] = "2012 Ferrari F12 TDF",	                    											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/2016f12tdf.png',							
			['page'] = 6
		},
		
		['f5095'] = {														
			['name'] = "1995 Ferrari F50",	                        											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/f5095.png',							
			['page'] = 6
		},
		
		['svjtt'] = {														
			['name'] = "2018 Ferrari Monza SP2",	                    											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/svjtt.png',					
			['page'] = 6
		},
		
		['pistaspider19'] = {														
			['name'] = "2019 Ferrari Pista 488 Spider",	            											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/pistaspider19.png',							
			['page'] = 6
		},
		
		['sf90'] = {														
			['name'] = "2020 Ferrari SF90 Spider",	                											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sf90.png',							
			['page'] = 6
		},
		
		['f430s'] = {														
			['name'] = "2009 Ferrari F430 Scuderia",	                											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/f430s.png',								
			['page'] = 6
		},
		
		['458it'] = {														
			['name'] = "2009 Ferrari 458 Italia",                    												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/458it.png',							
			['page'] = 6
		},
		
		['porto18'] = {														
			['name'] = "2018 Ferrari Portofino",	                    											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/porto18.png',				
			['page'] = 6
		},
		
		['f40'] = {														
			['name'] = "1987 Ferrari F40",	                        											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/f40.png',						
			['page'] = 6
		},
		
		['fxxk'] = {														
			['name'] = "2014 Ferrari FXX K EVO",	                        											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fxxk.png',						
			['page'] = 6
		},
		
		['aperta'] = {														
			['name'] = "2018 Ferrari LaFerrari Aperta",	            											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/aperta.png',					
			['page'] = 6
		},
		
		['laferrari17'] = {														
			['name'] = "2013 Ferrari LaFerrari Aperta Animiert",	    											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/laferrari17.png',						
			['page'] = 6
		},
		
		['fm488'] = {
			['name'] = "2017 Ferrari 488 Siracusa 4XX Mansory",         
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fm488.png',
			['page'] = 6
		},

		['mansroma'] = {
			['name'] = "2021 Ferrari Roma Mansaug",         
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mansroma.png',
			['page'] = 6
		},

		['manssf90'] = {
			['name'] = "2020 Ferrari SF90 Stradale Mansaug",         
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/manssf90.png',
			['page'] = 6
		},
		
		['fm488'] = {
			['name'] = "2017 Ferrari 488 Siracusa 4XX Mansory",         
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fm488.png',
			['page'] = 6
		},
		
		['812mnsry'] = {
			['name'] = "2019 Ferrari 812 Stallone GTS Mansory",      
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/812mnsry.png',
			['page'] = 6
		},
		
		['ferrari812super'] = {
			['name'] = "2019 Ferrari 812 Stallone Animiert",         
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ferrari812super.png',
			['page'] = 6
		},
		
		['f812c21'] = {
			['name'] = "2017 Ferrari 812 Competizione",              
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/f812c21.png',
			['page'] = 3
		},

		['f8t'] = {
			['name'] = "2017 Ferrari F8 Tributo",              
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/f8t.png',
			['page'] = 3
		},

		['jellybigpeen'] = {
			['name'] = "1984 Ferrari Testerossa",              
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/jellybigpeen.png',
			['page'] = 6
		},

		['purosangue'] = {
			['name'] = "2023 Ferrari Purosangue",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/purosangue.png',
			['page'] = 5
		},

		['488sp2'] = {
			['name'] = "2019 Ferrari 488 Widebody",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/488sp2.png',
			['page'] = 6
		},

		['308jota'] = {
			['name'] = "1985 Ferrari 308 ota",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/308jota.png',
			['page'] = 3
		},

		['freebogemenzo'] = {
			['name'] = "2002 Ferrari Enzo Gemballa MIG-U1",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/freebogemenzo.png',
			['page'] = 6
		},

		['458hr'] = {
			['name'] = "2009 Ferrari 458 HR",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/458hr.png',
			['page'] = 6
		},
		---================================= FERRARI END
		---================================= FIAT
		
		['punto'] = {														
			['name'] = "2000 Fiat Punto",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/punto.png',								
			['page'] = 0
		},

		['CamberJoe'] = {														
			['name'] = "1999 Fiat Multipla CamberJoe",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/CamberJoe.png',								
			['page'] = 4
		},
		
		---================================= FIAT END
		---================================= FORD
		
		['f250r'] = {														
			['name'] = "1980 Ford F250 Ranger Crew Cab",										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,											
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/f250r.png',								
			['page'] = 5
		},
		
		['ffrs'] = {														
			['name'] = "2009 Ford Focus RS",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,											
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ffrs.png',									
			['page'] = 3
		},
	
		['95stang'] = {														
			['name'] = "1995 Ford Mustang",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/95stang.png',							
			['page'] = 3
		},
		
		['mache'] = {														
			['name'] = "2019 Ford Mustang Mach E",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,											
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mache.png',								
			['page'] = 5
		},

		['mst'] = {														
			['name'] = "2010 Ford Mustang Shelby",																
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mst.png',								
			['page'] = 3
		},
		
		['mustangspec5'] = {														
			['name'] = "2015 Ford Mustang RTR SPEC 5",																
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mustangspec5.png',								
			['page'] = 3
		},
		
		['19raptor'] = {														
			['name'] = "2022 Ford F150 Raptor Crew Cab",																
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/19raptor.png',							
			['page'] = 5
		},
		
		['f100'] = {														
			['name'] = "1966 Ford F100",																		
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/f100.png',								
			['page'] = 5
		},
		
		['gt2017'] = {														
			['name'] = "2017 Ford GT",																		
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gt2017.png',							
			['page'] = 3
		},
		
		['mgt17'] = {														
			['name'] = "2018 Ford GT Mansory",																		
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mgt17.png',							
			['page'] = 6
		},

		['elegy2'] = {														
			['name'] = "2013 Ford Fiesta Ken Block",																		
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/elegy2.png',							
			['page'] = 0
		},
		
		['gt17'] = {														
			['name'] = "2017 Ford GT Prior Design",																	
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gt17.png',								
			['page'] = 3
		},
		
		['gt401'] = {														
			['name'] = "1968 Ford GT40 MK1",																		
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gt401.png',								
			['page'] = 3
		},
		
		['mustangbkit'] = {														
			['name'] = "2015 Ford Mustang GT",																		
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mustangbkit.png',							
			['page'] = 3
		},
		
		['mustang'] = {														
			['name'] = "2017 Ford Mustang RTR MW",																	
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mustang.png',							
			['page'] = 3
		},

		['Ford_Mustang_GT500'] = {														
			['name'] = "1967 Ford Mustang GT500",																	
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/Ford_Mustang_GT500.png',							
			['page'] = 3
		},
		
		['taki428'] = {														
			['name'] = "1969 Ford Mustang Shelby GT500",															
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/taki428.png',						
			['page'] = 3
		},
		
		['Ford_Mustang_GT500'] = {														
			['name'] = "1967 Ford Mustang GT500",															
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/Ford_Mustang_GT500.png',							
			['page'] = 3
		},
		
		['velociraptor'] = {														
			['name'] = "2017 Hennessy Velociraptor 6x6",															
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/velociraptor.png',						
			['page'] = 5
		},
		
		['boss302'] = {														
			['name'] = "1969 Ford Mustang Boss 302",																		
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,											
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/boss302.png',							
			['page'] = 3
		},
		
		['forde1'] = {														
			['name'] = "1982 Ford Escort RS1600 MK1",																	
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,											
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/forde1.png',							
			['page'] = 3
		},

		['mansgtmk2'] = {														
			['name'] = "2018 Ford GT MK Mansaug",																	
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,											
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mansgtmk2.png',							
			['page'] = 6
		},

		['manssupersnake'] = {														
			['name'] = "2019 Ford Selby Super Snake Mansaug",																	
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,											
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/manssupersnake.png',							
			['page'] = 3
		},

		['mamba'] = {
			['name'] = "1963 Shelby Cobra 427 SC",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mamba.png',
			['page'] = 3
		},

		['mustangbh'] = {
			['name'] = "2023 Ford Mustang Black Horse",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mustangbh.png',
			['page'] = 3
		},

		['shelby20'] = {
			['name'] = "2020 Ford Mustang Shelby GT500",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/shelby20.png',
			['page'] = 3
		},

		['galaxie'] = {
			['name'] = "1964 Ford Galaxye 500",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/galaxie.png',
			['page'] = 1
		},

		['2019rtr'] = {
			['name'] = "2019 Ford Mustang RTR",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/2019rtr.png',
			['page'] = 3
		},

		['f150svtwb'] = {
			['name'] = "2018 Ford F150 Design Widebody",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/f150svtwb.png',
			['page'] = 5
		},

		['ford34'] = {
			['name'] = "1934 Ford 3 Window Coupe Street Rod",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ford34.png',
			['page'] = 3
		},

		['ford32hulagirl'] = {
			['name'] = "1932 Ford Custom Roadster Hula Girl",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ford32hulagirl.png',
			['page'] = 3
		},

		['ford32cd'] = {
			['name'] = "1932 Ford Deluxe",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ford32cd.png',
			['page'] = 3
		},

		['ford31weaver'] = {
			['name'] = "1931 Ford Weaver Customs",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ford31weaver.png',
			['page'] = 3
		},
		---================================= FORD END
		---================================= GMC
		['ateamvan'] = {
			['name'] = "1983 GMC Vandura A-Team",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ateamvan.png',
			['page'] = 4
		},
		---================================= GMC END
		---================================= HENNESSY
		['xnsgt'] = {														
			['name'] = "2014 Hennessey Venom GT",																	
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/xnsgt.png',									
			['page'] = 6
		},

		['x3f522'] = {
			['name'] = "2022 Hennessy Venom F5",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/x3f522.png',
			['page'] = 6
		},
		---================================= HENNESSY END		
		---================================= HONDA
		['fk8'] = {														
			['name'] = "2017 Honda Civic FK8",										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/FK8.png',							
			['page'] = 1
		},

		['fk8hr'] = {														
			['name'] = "2017 Honda Civic Type R Drift",										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fk8hr.png',							
			['page'] = 1
		},

		['hcej1'] = {														
			['name'] = "2000 Honda Civic EJ1 FATF",															
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/hcej1.png',								
			['page'] = 3
		},
		
		['hondelsol'] = {														
			['name'] = "1998 Honda CR-X DelSol",																
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/hondelsol.png',								
			['page'] = 0
		},
		
		['nsx2'] = {														
			['name'] = "1992 Honda NSX TypeR",																	
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/nsx2.png',									
			['page'] = 6
		},
		
		['2f2fs2000'] = {														
			['name'] = "2003 Honda S2000 2F2F",																
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/2f2fs2000.png',									
			['page'] = 3
		},

		['s2pm'] = {														
			['name'] = "2004 Honda S2000 Drift",																
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s2pm.png',									
			['page'] = 3
		},
		
		['civic'] = {														
			['name'] = "1996 Honda Civic EJ6",																
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/civic.png',								
			['page'] = 3
		},

		['ef9'] = {														
			['name'] = "1990 Honda Civic EF9",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/EF9.png',								
			['page'] = 0
		},

		['ek9'] = {														
			['name'] = "1997 Honda Civic EK9",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/EK9.png',								
			['page'] = 0
		},

		['dc5'] = {														
			['name'] = "2002 Honda Integra DC5 TypeR",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/DC5.png',							
			['page'] = 3
		},

		['hs2000'] = {														
			['name'] = "2003 Honda S2000",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 150,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/hs2000.png',								
			['page'] = 3
		},

		['hondansx'] = {														
			['name'] = "1990 Honda NSX",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 150,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/hondansx.png',								
			['page'] = 3
		},
		---================================= HONDA END
		---================================= HUMMER
	
		['h2m'] = {														
			['name'] = "2005 HUMMER H2",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/h2m.png',							
			['page'] = 5
		},
		---================================= HUMMER END
		---================================= HYUNDAI 
		
		['i30n'] = {														
			['name'] = "2019 Hyundai i30n",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/i30n.png',									
			['page'] = 0
		},
		
		['sonata20'] = {														
			['name'] = "2005 Hyundai Grandeur",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sonata20.png',									
			['page'] = 1
		},

		['pablohyundaiveloster'] = {														
			['name'] = "2002 Hyundai Veloster Speed Hunter Edition I Itzahmad",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/pablohyundaiveloster.png',									
			['page'] = 1
		},
		
		---================================= HYUNDAI END
		---================================= INFINITY
		['mansq60'] = {														
			['name'] = "2018 Infiniti Q60 Project Black S Mansaug",																
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mansq60.png',								
			['page'] = 3
		},

		['larteqx80'] = {														
			['name'] = "2017 Infiniti QX80",																
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/larteqx80.png',								
			['page'] = 3
		},
		---================================= INFINITY END
		---================================= JAGUAR
		['xj'] = {														
			['name'] = "2010 Jaguar XJ",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/xj.png',								
			['page'] = 1
		},

		['jagpr8'] = {														
			['name'] = "2018 Jaguar XE SVR Project8",														
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/jagpr8.png',								
			['page'] = 1
		},
		
		['fpace21'] = {														
			['name'] = "2016 Jaguar F Space",															
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fpace21.png',								
			['page'] = 5
		},
		---================================= JAGUAR END
		---================================= JEEP 
		
		['jurassicjeep'] = {														
			['name'] = "1987 Jeep Wangler Jurassic Park",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/jurassicjeep.png',									
			['page'] = 5
		},
		
		['jeepreneg'] = {														
			['name'] = "2014 Jeep Renegade",									
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/jeepreneg.png',								
			['page'] = 5
		},
	
		['rubilord'] = {														
			['name'] = "2017 Jeep Wrangler Rubicon",										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rubilord.png',									
			['page'] = 5
		},

		['trhawk'] = {														
			['name'] = "2018 Jeep Cherokee Trackhawk",	                											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/trhawk.png',								
			['page'] = 5
		},
		
		['demonhawk'] = {														
			['name'] = "2020 Jeep Grand Cherokee STR Tyrannos",	        											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/demonhawk.png',									
			['page'] = 5
		},
		
		['trailcat'] = {														
			['name'] = "2018 Jeep Wrangler Unlimited Sport",	            											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/trailcat.png',								
			['page'] = 5
		},

		['rmodjeep'] = {														
			['name'] = "2017 Jeep Grand Cherokee",	            											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodjeep.png',									
			['page'] = 5
		},
	
		---================================= JEEP END
		---================================= KIA 
		
		['sportage16'] = {
			['name'] = "2016 Kia Sportage GT Line",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sportage16.png',
			['page'] = 5
		},
	
		['kia'] = {														
			['name'] = "2018 Kia Stinger GT",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/kia.png',						
			['page'] = 1
		},
		
		---================================= KIA END
		---================================= KOENIGSEGG
		['agerars'] = {														
			['name'] = "2015 Koenigsegg Agera RS",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,											
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/agerars.png',								
			['page'] = 6
		},
		
		['koenigseggagerar'] = {														
			['name'] = "2014 Koenigsegg Agera R",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/koenigseggagerar.png',								
			['page'] = 6
		},
		
		['gemera'] = {														
			['name'] = "2023 Koenigsegg Gemera",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gemera.png',									
			['page'] = 6
		},
		
		['gemeraanimirt'] = {														
			['name'] = "2023 Koenigsegg Gemra Animiert",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gemeraanimirt.png',									
			['page'] = 6
		},
		
		['jesko'] = {														
			['name'] = "2022 Koenigsegg Jesko",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/jesko.png',								
			['page'] = 6
		},
		
		['regera'] = {														
			['name'] = "2015 Koenigsegg Regera Cabrio",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/regera.png',								
			['page'] = 6
		},

		['x3gemwb'] = {														
			['name'] = "2023 Koenigsegg Gemera Widebody",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/x3gemwb.png',								
			['page'] = 6
		},

		['agerars12'] = {
			['name'] = "2015 Koenigsegg Agera RS Dark",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/agerars12.png',
			['page'] = 6
		},
		---================================= KOENIGSEGG END
		---================================= KTM
		['x3gtx20'] = {
			['name'] = "2020 KTM X BOW GTX 2020",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/x3gtx20.png',
			['page'] = 3
		},
		---================================= KTM END
		---================================= LAMBORGHINI
		['rmodlp750'] = {														
			['name'] = "2015 Lamborghini Aventador SVJ LP750-4",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodlp750.png',									
			['page'] = 6
		},
		
		['gcmlamboultimae'] = {														
			['name'] = "2011 Lamborghini Aventador Animiert",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gcmlamboultimae.png',								
			['page'] = 6
		},
		
		['urus19'] = {														
			['name'] = "2017 Lamborghini Urus",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/urus19.png',								
			['page'] = 5
		},
		
		['urus19nov'] = {														
			['name'] = "2017 Lamborghini Urus Novitec Esteso",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/urus19nov.png',								
			['page'] = 5
		},
		
		['keyrus'] = {														
			['name'] = "2017 Lamborghini Urus Keyvany V1",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/keyrus.png',							
			['page'] = 5
		},
		
		['keyrus2'] = {														
			['name'] = "2018 Lamborghini Urus Keyvany V2",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/keyrus2.png',							
			['page'] = 5
		},
		
		['dk350z'] = {														
			['name'] = "2012 Lamborghini Apertos Carbon Mansory",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/dk350z.png',							
			['page'] = 6
		},
		
		['lpi8004'] = {														
			['name'] = "2022 Lamborghini Countach LPI 800-4",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lpi8004.png',								
			['page'] = 6
		},

		['manscountach'] = {														
			['name'] = "2022 Lamborghini Countach LPI 800 4 Mansaug",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/manscountach.png',									
			['page'] = 6
		},

		['sc20'] = {														
			['name'] = "2020 Lamborghini SC20",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sc20.png',								
			['page'] = 6
		},
		
		['610dtm'] = {														
			['name'] = "2017 Lamborghini Huracán Jon Olsson LP610-4",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/610dtm.png',								
			['page'] = 6
		},
		
		['huraperfospy'] = {														
			['name'] = "2019 Lamborghini Huracán Performante Spider LP640-4",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/huraperfospy.png',								
			['page'] = 6
		},
		
		['lp670sv'] = {														
			['name'] = "2006 Lamborghini Murcielago SV LP640",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lp670sv.png',									
			['page'] = 6
		},
		
		['lbperfs'] = {														
			['name'] = "2016 Lamborghini Huracán Performante Spider Liberty Walk",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lbperfs.png',							
			['page'] = 6
		},
		
		['hurpernov'] = {														
			['name'] = "2017 Lamborghini Huracán Performante Novitec LP640-4",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/hurpernov.png',								
			['page'] = 6
		},
		
		['sc18'] = {														
			['name'] = "2018 Lamborghini SC18 Alston",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sc18.png',								
			['page'] = 6
		},
		
		['avj'] = {														
			['name'] = "2015 Lamborghini Aventador J LP750-4",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/avj.png',								
			['page'] = 6
		},
		
		['gallardo07'] = {														
			['name'] = "2013 Lamborghini Gallardo Superleggera LP570-4",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gallardo07.png',								
			['page'] = 6
		},
		
		['hurlbp'] = {														
			['name'] = "2020 Lamborghini Huracán EVO Wide Body LP640-4",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,											
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/hurlbp.png',								
			['page'] = 6
		},
		
		['18performante'] = {														
			['name'] = "2019 Lamborghini Huracán Performante LP640-4",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,											
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/18performante.png',								
			['page'] = 6
		},
		
		['rmodsian'] = {														
			['name'] = "2019 Lamborghini Sian",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,											
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodsian.png',								
			['page'] = 6
		},
		
		['rmodveneno'] = {														
			['name'] = "2013 Lamborghini Veneno",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodveneno.png',							
			['page'] = 6
		},
		
		['reven'] = {														
			['name'] = "2009 Lamborghini Reventon",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/reven.png',								
			['page'] = 6
		},

		['lbdy01'] = {														
			['name'] = "2013 Lamborghini Veneno Animiert",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lbdy01.png',								
			['page'] = 6
		},
		
		['mansurus'] = {														
			['name'] = "2018 Lamborghini Urus Mansaug",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mansurus.png',								
			['page'] = 5
		},

		['urus'] = {														
			['name'] = "2018 Lamborghini Urus",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/urus.png',						
			['page'] = 5
		},
		
		['urus1016'] = {														
			['name'] = "2018 Lamborghini Urus 1016 Industries",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/urus1016.png',							
			['page'] = 5
		},
		
		['GODzMANURUS'] = {														
			['name'] = "2018 Lamborghini Urus Mansory",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/GODzMANURUS.png',						
			['page'] = 5
		},
		
		['murus'] = {														
			['name'] = "2017 Lamborghini Urus Mansory Animiert",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/murus.png',								
			['page'] = 5
		},
		
		['cont88'] = {														
			['name'] = "1978 Lamborghini Countach LP400 S",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cont88.png',						
			['page'] = 6
		},

		['ldsv'] = {														
			['name'] = "2000 Lamborghini Diablo SV",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ldsv.png',								
			['page'] = 6
		},

		['aventadors'] = {														
			['name'] = "2014 Lamborghini Aventador S Roadster Jokers",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/aventadors.png',								
			['page'] = 6
		},

		['lhuracant'] = {
			['name'] = "2016 Lamborghini Huracan",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lhuracant.png',
			['page'] = 6
		},

		['lp770r'] = {
			['name'] = "2016 Lamborghini Centenario Roadster",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lp770r.png',
			['page'] = 3
		},

		['urusv'] = {
			['name'] = "2018 Lamborghini Urus Vorsteiner",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/urusv.png',
			['page'] = 5
		},

		['Urus_Stretch_6'] = {
			['name'] = "2017 Lamborghini Urus Limousine",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/Urus_Stretch_6.png',
			['page'] = 1
		},

		['purus'] = {
			['name'] = "2019 Lamborghini Urus Prior",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/purus.png',
			['page'] = 5
		},

		['sinacp'] = {
			['name'] = "2019 Lamborghini Sian Roadster",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sinacp.png',
			['page'] = 6
		},

		['huracantecnica'] = {
			['name'] = "2022 Lamborghini Huracan Tecnica",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/huracantecnica.png',
			['page'] = 6
		},

		['revent334'] = {
			['name'] = "2015 Lamborghini Reventon Spoon Edition",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/revent334.png',
			['page'] = 6
		},

		['huracanhr'] = {
			['name'] = "2014 Lamborghini Huracan HR",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/huracanhr.png',
			['page'] = 6
		},

		['svjr63'] = {
			['name'] = "2020 Lamborghini Svj 63 Roadster",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/svjr63.png',
			['page'] = 6
		},
		---================================= LAMBORGHINI END
		---================================= LEXUS
		['lx470'] = {														
			['name'] = "Lexus LX470",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lx470.png',								
			['page'] = 5
		},

		['nxkotaro'] = {														
			['name'] = "2015 Lexus NX 200t",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/nxkotaro.png',								
			['page'] = 5
		},

		['lc500'] = {														
			['name'] = "2020 Lexus LC500",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lc500.png',									
			['page'] = 3
		},

		['lfahachi'] = {														
			['name'] = "2012 Lexus LFA KZ",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lfahachi.png',									
			['page'] = 3
		},

		['waldls'] = {														
			['name'] = "Lexus LS500 Wald",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/waldls.png',								
			['page'] = 1
		},

		['lfa'] = {														
			['name'] = "Lexus LFA",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lfa.png',							
			['page'] = 3
		},
		---================================= LEXUS END
		---================================= LANCIA
		['deltaintegrale'] = {														
			['name'] = "1994 Lancia Delta Integrale",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,											
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/deltaintegrale.png',									
			['page'] = 0
		},
		---================================= LANCIA END
		---================================= LOTUS
		['evija'] = {														
			['name'] = "2020 Lotus Evija",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/evija.png',								
			['page'] = 6
		},
		---================================= LOTUS END
		---================================= LIBERTY WALK
		['ar8lb'] = {														
			['name'] = "2018 Audi R8 V10 Liberty Walk",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ar8lb.png',									
			['page'] = 6
		},
		
		['lwas5'] = {														
			['name'] = "2015 Audi S5 Liberty Walk",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lwas5.png',									
			['page'] = 3
		},
		
		['rmodmi8lb'] = {														
			['name'] = "2018 BMW i8 Liberty Walk",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodmi8lb.png',							
			['page'] = 3
		},
		
		['e92lb'] = {														
			['name'] = "2006 BMW E92 M3 Liberty Walk",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/e92lb.png',								
			['page'] = 3
		},
		
		['lw458s'] = {														
			['name'] = "2009 Ferrari 458 Italia Liberty Walk",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lw458s.png',								
			['page'] = 6
		},
		
		['lb750sv'] = {														
			['name'] = "2018 Lamborghini Aventador Liberty Walk",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lb750sv.png',									
			['page'] = 6
		},
		
		['gallardosuperlb'] = {														
			['name'] = "2011 Lamborghini Gallardo LP570-4 Liberty Walk",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gallardosuperlb.png',							
			['page'] = 6
		},
		
		['610lb'] = {														
			['name'] = "2014 Lamborghini Huracán LP610-4",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/610lb.png',									
			['page'] = 6
		},

		['huragucci'] = {														
			['name'] = "2015 Lamborghini Huracán Gucci",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/huragucci.png',								
			['page'] = 6
		},
		
		['lc500'] = {														
			['name'] = "2020 Lexus LC500",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lc500.png',								
			['page'] = 3
		},
		
		['granlb'] = {														
			['name'] = "2017 Maserati GranTurismo MC Liberty Walk",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/granlb.png',							
			['page'] = 6
		},
		
		['63lb'] = {														
			['name'] = "2008 Mercedes-Benz C63 W204 Liberty Walk",																								
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/63lb.png',								
			['page'] = 3
		},
		
		['gtrlb2'] = {														
			['name'] = "2018 Nissan GTR Liberty Walk V2",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gtrlb2.png',								
			['page'] = 6
		},
		---================================= LIBERTY WALK END
		---================================= MASERATI
		['mlnovitec'] = {														
			['name'] = "2016 Maserati Levante Novitec",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mlnovitec.png',									
			['page'] = 5
		},
		
		['masgc'] = {														
			['name'] = "2010 Maserati GranCabrio MC",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/masgc.png',								
			['page'] = 3
		},

		['ghibli18'] = {
			['name'] = "2018 Maserati Ghibli Granlusso",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ghibli18.png',
			['page'] = 1
		},
		---================================= MASERATI END
		---================================= MAZDA
		['krcrx7'] = {														
			['name'] = "2002 Mazda RX7 KRC Type2",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/krcrx7.png',								
			['page'] = 3
		},

		['hotwaterlab'] = {														
			['name'] = "2000 Mazda rx7 Drift",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/hotwaterlab.png',								
			['page'] = 3
		},
		
		['fd'] = {														
			['name'] = "1996 Mazda RX7 FD",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fd.png',								
			['page'] = 3
		},

		['rx7cwest'] = {														
			['name'] = "2002 Mazda Rx7 C West Drift",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rx7cwest.png',								
			['page'] = 3
		},
		
		['rx7camberv1'] = {														
			['name'] = "2002 Mazda RX7 FD Camber",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rx7camberv1.png',								
			['page'] = 3
		},
		
		['fnfrx7'] = {														
			['name'] = "2000 Mazda RX7 FD VeilSide",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fnfrx7.png',								
			['page'] = 3
		},
		
		['fnfrx7dom'] = {														
			['name'] = "2002 Mazda RX7 FD FATF",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fnfrx7dom.png',									
			['page'] = 3
		},
		
		['2f2frx7'] = {														
			['name'] = "2002 Mazda RX7 FD 2F2F",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/2f2frx7.png',								
			['page'] = 3
		},

		['na6'] = {														
			['name'] = "1998 Mazda MX5 NA6",     											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/na6.png',							
			['page'] = 0
		},

		['mx5326'] = {														
			['name'] = "1996 Mazda MX5 326",									
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mx5326.png',									
			['page'] = 0
		},

		['rx7rb'] = {														
			['name'] = "2000 Mazda RX7 FD Rocket Bunny",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rx7rb.png',									
			['page'] = 3
		},

		['z31'] = {														
			['name'] = "2001 Mazda RX7 Z31",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/z31.png',								
			['page'] = 3
		},
		---================================= MAZDA END
		---================================= MCLAREN 
		['720s18'] = {														
			['name'] = "2017 McLaren 720s",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,											
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/720s18.png',								
			['page'] = 6
		},
		
		['720sprior'] = {														
			['name'] = "2020 McLaren 720s Prior Design",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,											
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/720sprior.png',									
			['page'] = 6
		},
		
		['artura22wb'] = {														
			['name'] = "2022 McLaren Artura Wide Body",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,											
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/artura22wb.png',								
			['page'] = 6
		},

		['mansgt'] = {														
			['name'] = "2019 McLaren GT Mansaug",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,											
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mansgt.png',								
			['page'] = 6
		},
		
		['elva'] = {														
			['name'] = "2020 McLaren Elva",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,											
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/elva.png',									
			['page'] = 6
		},
		
		['p1gtr'] = {														
			['name'] = "2015 McLaren P1 GTR",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,											
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/p1gtr.png',									
			['page'] = 6
		},
		
		['senna'] = {														
			['name'] = "2018 McLaren Senna",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,											
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/senna.png',									
			['page'] = 6
		},
		
		['mclaren_senna_gtr_2019'] = {														
			['name'] = "2018 Mclaren senna GTR",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,											
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mclaren_senna_gtr_2019.png',									
			['page'] = 6
		},
		
		['rmodspeed'] = {														
			['name'] = "2021 McLaren Speedtail",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,											
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodspeed.png',									
			['page'] = 6
		},

		['oycn65'] = {
			['name'] = "2021 McLaren 765LT Novitec",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/oycn65.png',
			['page'] = 3
		},

		['sennatopsec'] = {
			['name'] = "2018 Mclaren Senna Liberty Walk",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sennatopsec.png',
			['page'] = 6
		},

		['600ltmso'] = {
			['name'] = "2021 Mclaren 600LT",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/600ltmso.png',
			['page'] = 3
		},
		---================================= MCLAREN END
		---================================= MERCEDES BENZ
		
		['cls63s'] = {														
			['name'] = "2018 Mercedes-Benz CLS63 C220",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cls63s.png',								
			['page'] = 1
		},
	
		['a45amg'] = {														
			['name'] = "2016 Mercedes-Benz A45 AMG",										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/a45amg.png',							
			['page'] = 0
		},
	
		['c63s'] = {														
			['name'] = "2016 Mercedes-Benz C63 Coupe Hycade C205",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/C63S.png',									
			['page'] = 3
		},
	
		['cls500w219'] = {														
			['name'] = "2004 Mercedes-Benz CLS500 W219",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cls500w219.png',								
			['page'] = 1
		},
	
		['clslz'] = {														
			['name'] = "2012 Mercedes-Benz CLS500 Shooting Brake C220",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/clslz.png',								
			['page'] = 1
		},
		
		['v250'] = {
			['name'] = "2014 Mercedes-Benz v250 Vito",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/v250.png',
			['page'] = 4
		},
		
		['topv'] = {
			['name'] = "2020 Mercedes-Benz v250 Vito Inferno",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/topv.png',
			['page'] = 4
		},
		
		['amgce'] = {														
			['name'] = "1996 Mercedes-Benz 300CE AMG",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/amgce.png',								
			['page'] = 3
		},
		
		['560sec87'] = {														
			['name'] = "1991 Mercedes-Benz 560SEC",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/560SEC87.png',								
			['page'] = 3
		},
		
		['c32'] = {														
			['name'] = "2004 Mercedes-Benz C32 AMG",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/c32.png',							
			['page'] = 1
		},
		
		['m13fortwo'] = {
			['name'] = "2020 Smart M13 ForTwo",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m13fortwo.png',
			['page'] = 0
		},

		['e63sc'] = {														
			['name'] = "2017 Mercedes-Benz E63S Coupe 4matic+ C238",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/e63sc.png',								
			['page'] = 3
		},
		
		['190e'] = {														
			['name'] = "1988 Mercedes-Benz 190e",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/190e.png',								
			['page'] = 1
		},

		['AMGCEW'] = {														
			['name'] = "1996 Mercedes-Benz 300CE AMG",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/AMGCEW.png',								
			['page'] = 3
		},
		
		['a45animiert'] = {														
			['name'] = "2016 Mercedes-Benz A45s AMG Animiert",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/a45animiert.png',							
			['page'] = 0
		},
		
		['amggtrr20'] = {														
			['name'] = "2015 Mercedes-Benz GT-R AMG Roadster",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/amggtrr20.png',								
			['page'] = 3
		},

		['amggtsmansory'] = {														
			['name'] = "2016 Mercedes-Benz AMG GT Mansory",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/amggtsmansory.png',								
			['page'] = 3
		},

		['mansamgt21'] = {														
			['name'] = "2015 Mercedes-Benz AMG GT BS Mansaug",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mansamgt21.png',								
			['page'] = 3
		},
		
		['gta5rp_veh_c63s'] = {														
			['name'] = "2014 Mercedes-Benz C63s W205",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gta5rp_veh_c63s.png',							
			['page'] = 1
		},

		['dvc63darwin'] = {														
			['name'] = "2018 Mercedes-Benz w205 c63s Breitbau",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/dvc63darwin.png',							
			['page'] = 1
		},
		
		['mbc63'] = {														
			['name'] = "2007 Mercedes-Benz C63 Black Series W204",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mbc63.png',								
			['page'] = 3
		},
		
		['c63scpd'] = {														
			['name'] = "2017 Mercedes-Benz C63s Cabrio Prior Design C205",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/c63scpd.png',								
			['page'] = 3
		},
		
		['c63spd'] = {														
			['name'] = "2017 Mercedes-Benz C63s Coupe Prior Design C205",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/c63spd.png',							
			['page'] = 3
		},
		
		['clkgtr'] = {														
			['name'] = "1998 Mercedes-Benz CLK GTR",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/clkgtr.png',							
			['page'] = 6
		},

		['cl65'] = {														
			['name'] = "2010 Mercedes-Benz CL65",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cl65.png',								
			['page'] = 6
		},
		
		['cls19'] = {														
			['name'] = "2021 Mercedes-Benz CLS53 AMG C257",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cls19.png',								
			['page'] = 1
		},
		
		['e53coupe21'] = {														
			['name'] = "2022 Mercedes-Benz E53 AMG Coupe",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/e53coupe21.png',							
			['page'] = 3
		},
		
		['benze55'] = {														
			['name'] = "2002 Mercedes-Benz E55 AMG",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/benze55.png',							
			['page'] = 1
		},
		
		['19msctntgt2'] = {														
			['name'] = "2021 Mercedes-Benz E63 Estate AMG W213",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/19msctntgt2.png',								
			['page'] = 2
		},
		
		['g50019'] = {														
			['name'] = "2015 Mercedes-Benz Gronos G63 Mansory",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/g50019.png',							
			['page'] = 5
		},
		
		['g63m'] = {														
			['name'] = "2015 Mercedes-Benz G63 Mansory",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/g63m.png',								
			['page'] = 5
		},

		['merc6x6'] = {														
			['name'] = "2014 Mercedes-Benz G63 6x6",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/merc6x6.png',							
			['page'] = 5
		},
		
		['fordh'] = {														
			['name'] = "2019 Mercedes-Benz G 63 AMG by MANSORY STAR TROOPER PHILIPP PLEIN",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fordh.png',								
			['page'] = 5
		},
		
		['g770'] = {														
			['name'] = "2018 Mercedes-Benz G770 Lumma",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/g770.png',								
			['page'] = 5
		},
		
		['fordh2'] = {														
			['name'] = "2016 Mercedes-Benz CLA45S AMG",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fordh2.png',								
			['page'] = 1
		},
		
		['g6'] = {														
			['name'] = "2018 Mercedes-Benz GLE63 ONYX G6",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/g6.png',						
			['page'] = 5
		},
		
		['gle63s'] = {														
			['name'] = "2015 Mercedes-Benz GLE63S W166 AMG",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gle63s.png',								
			['page'] = 5
		},
		
		['gls600'] = {														
			['name'] = "2019 Mercedes-Benz GLS600 Maybach",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gls600.png',									
			['page'] = 5
		},
		
		['mansorys500'] = {														
			['name'] = "2020 Mercedes-Benz S500 Mansory",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mansorys500.png',								
			['page'] = 1
		},
		
		['rmodgt63'] = {														
			['name'] = "2020 Mercedes-Benz GT 63s",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodgt63.png',								
			['page'] = 1
		},
		
		['s560'] = {														
			['name'] = "2014 Mercedes-Benz S Class S560",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s560.png',								
			['page'] = 1
		},
		
		['sl65bs09'] = {														
			['name'] = "2009 Mercedes-Benz SL65 AMG Black Series",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sl65bs09.png',									
			['page'] = 6
		},
		
		['sec60w126przemo'] = {														
			['name'] = "1987 Mercedes-Benz W126 560 Umbau",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sec60w126przemo.png',								
			['page'] = 3
		},
		
		['mbslr'] = {														
			['name'] = "2005 Mercedes-Benz SLR McLaren",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mbslr.png',							
			['page'] = 6
		},
		
		['xxxxx'] = {														
			['name'] = "2019 Mercedes-Benz X-Klasse Exy Monster X Concept",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/xxxxx.png',							
			['page'] = 5
		},
		
		['sbm1302'] = {														
			['name'] = "2016 Mercedes-Benz GLS 500",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sbm1302.png',									
			['page'] = 5
		},
		
		['mbs650maybach'] = {														
			['name'] = "2016 Mercedes-Benz S650 Maybach C217",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mbs650maybach.png',							
			['page'] = 1
		},
		
		['2018s650p'] = {														
			['name'] = "2018 Mercedes-Benz S650 Pullman",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/2018s650p.png',							
			['page'] = 1
		},
		
		['mb300sl'] = {														
			['name'] = "1954 Mercedes-Benz 300SL Gullwing",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mb300sl.png',							
			['page'] = 3
		},
		
		['c63hr'] = {														
			['name'] = "2017 Mercedes-Benz C63s Coupe HR C205",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/c63hr.png',								
			['page'] = 3
		},
		
		['S63AMG'] = {														
			['name'] = "2018 Mercedes-Benz S63 W222 Mansory",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/S63AMG.png',							
			['page'] = 1
		},

		['s63mansorycabrio'] = {														
			['name'] = "2017 Mercedes-Benz S63 Cabrio Mansory",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s63mansorycabrio.png',									
			['page'] = 3
		},

		['manss63'] = {														
			['name'] = "2021 Mercedes-Benz S63 Coupe Mansaug",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/manss63.png',								
			['page'] = 3
		},
		
		['mbbs20'] = {														
			['name'] = "2021 Mercedes-Benz GT AMG Black Series",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mbbs20.png',							
			['page'] = 6
		},
		
		['s63w222'] = {														
			['name'] = "2020 Mercedes-Benz S63 AMG W222",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,									
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s63w222.png',							
			['page'] = 1
		},
		
		['mb18'] = {														
			['name'] = "2019 Mercedes-Benz S63 Cabrio W222",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mb18.png',							
			['page'] = 3
		},
		
		['e63amg'] = {														
			['name'] = "2011 Mercedes-Benz E63 AMG W212",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/e63amg.png',								
			['page'] = 1
		},
		
		['amggt63'] = {														
			['name'] = "2018 Mercedes-Benz GT63s AMG Coupé",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/amggt63.png',							
			['page'] = 1
		},
		
		['slsamg'] = {														
			['name'] = "2010 Mercedes-Benz SLS AMG C197",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/slsamg.png',							
			['page'] = 6
		},
		
		['slrsm09'] = {														
			['name'] = "2009 Mercedes-Benz SLR McLaren Stirling Moss",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/slrsm09.png',							
			['page'] = 6
		},
		
		['s63c217'] = {														
			['name'] = "2015 Mercedes-Benz S63 Coupe 4matic+ C217",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s63c217.png',				
			['page'] = 3
		},
		
		['s63m'] = {														
			['name'] = "2020 Mercedes-Benz S63 Coupe Mansory Black Edition C217",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s63m.png',									
			['page'] = 3
		},
		
		['gronos6x6'] = {														
			['name'] = "2015 Mercedes-Benz Gronos 6x6 Mansory",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gronos6x6.png',							
			['page'] = 5
		},
		
		['mayg600p'] = {														
			['name'] = "2018 Mercedes-Benz G600 Maybach",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,											
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mayg600p.png',								
			['page'] = 5
		},
		
		['mansorygls500'] = {														
			['name'] = "2018 Mercedes-Benz GLS 500 Mansory",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mansorygls500.png',								
			['page'] = 5
		},
		
		['Xg632019'] = {														
			['name'] = "2019 Mercedes-Benz G63 AMG W464",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/Xg632019.png',								
			['page'] = 5
		},
		
		['gl63'] = {														
			['name'] = "2016 Mercedes-Benz GL63 AMG X166",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gl63.png',								
			['page'] = 5
		},
		
		['gle21'] = {														
			['name'] = "2017 Mercedes-Benz GLE63 AMG",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gle21.png',							
			['page'] = 5
		},
		
		['gle63'] = {														
			['name'] = "2019 Mercedes-Benz GLC 63s AMG",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gle63.png',								
			['page'] = 5
		},
		
		['amgone'] = {
			['name'] = "2022 Mercedes-Benz AMG One",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/amgone.png',
			['page'] = 6
		},

		['gls6002'] = {
			['name'] = "2020 Mercedes-Benz GLS600 Maybach Blacked Forgiato",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gls6002.png',
			['page'] = 5
		},

		['sjbenz'] = {
			['name'] = "2010 Mercedes-Benz S63 Black Bison Wald",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sjbenz.png',
			['page'] = 1
		},

		['cr700'] = {
			['name'] = "2021 Mercedes Benz e63 Estate Manhart CF700",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cr700.png',
			['page'] = 2
		},

		['e63s_2021'] = {
			['name'] = "2021 Mercedes-Benz E63s",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/e63s_2021.png',
			['page'] = 1
		},

		['s63w222'] = {
			['name'] = "2020 Mercedes-Benz S63 AMG W222",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s63w222.png',
			['page'] = 1
		},

		['s500'] = {
			['name'] = "2020 Mercedes-Benz S500 W223",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s500.png',
			['page'] = 1
		},

		['hslr'] = {
			['name'] = "2008 Mercedes Benz Hamann volcano SLR",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/hslr.png',
			['page'] = 3
		},

		['cl600przemo1'] = {
			['name'] = "2005 Mercedes-Benz CL600",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cl600przemo1.png',
			['page'] = 3
		},

		['s500w222'] = {
			['name'] = "2020 Mercedes Benz S500 W222",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s500w222.png',
			['page'] = 1
		},

		['SlsBlackSeries'] = {
			['name'] = "2013 Mercedes Benz SLS AMG Black Series",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/SlsBlackSeries.png',
			['page'] = 3
		},

		['cl600bsprzemo'] = {
			['name'] = "2005 Mercedes Benz CL55 w215",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cl600bsprzemo.png',
			['page'] = 3
		},

		['DL_GLR700'] = {
			['name'] = "2020 Mercedes Benz Manhart GLR70",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/DL_GLR700.png',
			['page'] = 5
		},

		['DL_G700'] = {
			['name'] = "2022 Mercedes Benz Manhart G700 Inferno",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/DL_G700.png',
			['page'] = 5
		},

		['cls19mafia'] = {
			['name'] = "2022 Mercedes CLS 19 Mafia Edition",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cls19mafia.png',
			['page'] = 1
		},

		['zlay_asap'] = {
			['name'] = "1982 Mercedes Benz 190E ASAP",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/zlay_asap.png',
			['page'] = 1
		},

		['mercedessl63'] = {
			['name'] = "2023 Mercedes Benz SL63 AMG",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mercedessl63.png',
			['page'] = 3
		},

		['s63mafiav2'] = {
			['name'] = "2020 Mercedes Benz S63 Mafia Custom",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s63mafiav2.png',
			['page'] = 3
		},

		['s65f'] = {
			['name'] = "2017 Mercedes S65 AMG W222 FL Blacked",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s65f.png',
			['page'] = 1
		},

		['mayg900'] = {
			['name'] = "2021 Mercedes Maybach G900 EmrHusmen Edition",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/MAYG900.png',
			['page'] = 5
		},

		['s500Mansory'] = {
			['name'] = "2021 Mercedes Benz S63 AMG Mansory",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s500Mansory.png',
			['page'] = 1
		},

		['cls1919'] = {
			['name'] = "2018 Mercedes Benz CLS 53 AMG Black Edition",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cls1919.png',
			['page'] = 1
		},

		['mbc21'] = {
			['name'] = "2019 Mercedes-Benz C class AMG Line",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mbc21.png',
			['page'] = 1
		},

		['lummag770'] = {
			['name'] = "2019 Mercedes-Benz AMG G63 Lumma",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lummag770.png',
			['page'] = 5
		},
		---================================= MERCEDES BENZ END
		---================================= MITSUBISHI
		['fnfmits'] = {														
			['name'] = "2000 Mitsubishi Eclipse GSX FATF",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fnfmits.png',								
			['page'] = 3
		},
		
		['2f2fgts'] = {														
			['name'] = "2003 Mitsubishi Eclipse Spyder GTS 2F2F",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/2f2fgts.png',								
			['page'] = 3
		},
		
		['2f2fmle7'] = {														
			['name'] = "2001 Mitsubishi Lancer Evolution VII 2F2F",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/2f2fmle7.png',									
			['page'] = 1
		},
		
		['fnflan'] = {														
			['name'] = "2001 Mitsubishi Lancer Evolution VII",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fnflan.png',									
			['page'] = 1
		},

		['gxevox'] = {														
			['name'] = "2012 Mitsubishi Lancer Evolution X",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gxevox.png',							
			['page'] = 1
		},

		['cp9a'] = {														
			['name'] = "1999 Mitsubishi Lancer Evolution VI GSR CP9A",										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cp9a.png',								
			['page'] = 1
		},

		['eclipse'] = {														
			['name'] = "1995 Mitsubishi Eclipse GSX",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/eclipse.png',								
			['page'] = 3
		},
	
		['mlec'] = {														
			['name'] = "2005 Mitsubishi Lancer Evolution IX MR",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mlec.png',							
			['page'] = 1
		},

		['evo9'] = {														
			['name'] = "2005 Mitsubishi Lancer Evolution IX",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/evo9.png',								
			['page'] = 1
		},

		['evo10'] = {														
			['name'] = "1983 Mitsubishi Lancer Evo X Varis Type2",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/evo10.png',								
			['page'] = 1
		},
		---================================= MITSUBISHI END
		---================================= NISSAN
		['rmodgtr50'] = {														
			['name'] = "2020 Nissan GTR 50",													
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodgtr50.png',							
			['page'] = 3
		},

		['fd370z'] = {														
			['name'] = "2013 Nissan 370Z Drift",													
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fd370z.png',							
			['page'] = 3
		},

		['fds14'] = {														
			['name'] = "1996 Nissan FDS14 Drift",													
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fds14.png',							
			['page'] = 3
		},

		['daisx'] = {														
			['name'] = "1991 Nissan 240 SX Dai Yoshihara Drift",													
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/daisx.png',							
			['page'] = 3
		},

		['rmod240sx'] = {														
			['name'] = "1997 Nissan 240 SX Drift 2",													
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmod240sx.png',							
			['page'] = 3
		},
	
		['qashqai16'] = {														
			['name'] = "2016 Nissan Qashqai",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/qashqai16.png',								
			['page'] = 5
		},
		
		['nisaltima'] = {														
			['name'] = "1992 Nissan Altima",										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/nisaltima.png',								
			['page'] = 1
		},
		
		['rc'] = {
			['name'] = "2020 Nissan Patrol Nismo Limgene",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rc.png',
			['page'] = 5
		},

		['r35'] = {														
			['name'] = "2016 Nissan GTR",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/r35.png',						
			['page'] = 3
		},

		['gxr35'] = {														
			['name'] = "2017 Nissan GTR 35",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gxr35.png',							
			['page'] = 3
		},
		
		['nismo20'] = {														
			['name'] = "2019 Nissan GTR Nismo",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/nismo20.png',					
			['page'] = 6
		},

		['rmodgtr50'] = {														
			['name'] = "2020 Nissan GTR 50",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodgtr50.png',						
			['page'] = 3
		},

		['mansgtr50'] = {														
			['name'] = "2020 Nissan GT R50 Mansaug",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mansgtr50.png',						
			['page'] = 3
		},
		
		['zlay_gtrkuhl'] = {														
			['name'] = "2017 Nissan GTR Kuhl Racing",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/zlay_gtrkuhl.png',						
			['page'] = 3
		},
		
		['z15326power2'] = {														
			['name'] = "2000 Zlayworks Nissan Silvia S15 Drift",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/z15326power2.png',					
			['page'] = 3
		},
		
		['skylineanimiert'] = {														
			['name'] = "2002 Nissan Skyline R34GTR Animiert",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/skylineanimiert.png',							
			['page'] = 3
		},
		
		['300zw'] = {														
			['name'] = "1983 Nissan 300zx Wide Body",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/300zw.png',					
			['page'] = 3
		},
		
		['370z'] = {														
			['name'] = "2013 Nissan 370z Nismo",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/370z.png',						
			['page'] = 3
		},
		
		['r33vspec'] = {														
			['name'] = "1995 Nissan Skyline R33 GTR V-Spec",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/r33vspec.png',							
			['page'] = 3
		},
		
		['ns13'] = {														
			['name'] = "1993 Nissan Silvia S13",												
			['price_to_customer'] =100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ns13.png',							
			['page'] = 3
		},
		
		['fnf4r34'] = {														
			['name'] = "1999 Nissan Skyline R34 GTT FATF4",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fnf4r34.png',							
			['page'] = 3
		},
		
		['350zdk'] = {														
			['name'] = "2009 Nissan 350z DK TD",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/350zdk.png',						
			['page'] = 3
		},
		
		['350zm'] = {														
			['name'] = "2008 Nissan 350z Morimoto TD",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/350zm.png',					
			['page'] = 3
		},
		
		['silvias15'] = {														
			['name'] = "2001 Nissan Silvia S15 Spec-R Monalisa TD",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/silvias15.png',						
			['page'] = 3
		},
		
		['bnsgtr99'] = {														
			['name'] = "1995 Nissan Skyline R32 GTR V-Spec 2F2F",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bnsgtr99.png',				
			['page'] = 3
		},
		
		['nissantitan17'] = {														
			['name'] = "2004 Nissan Titan",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/nissantitan17.png',				
			['page'] = 5
		},

		['skylinec110'] = {														
			['name'] = "1977 Nissan Skyline C110",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/skylinec110.png',			
			['page'] = 3
		},

		['skyline'] = {														
			['name'] = "2002 Nissan Skyline R34 GTR V-Spec II",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/skyline.png',			
			['page'] = 3
		},

		['s30'] = {														
			['name'] = "1978 Nissan Fairlady 240z",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s30.png',			
			['page'] = 3
		},

		['kgc10'] = {														
			['name'] = "1971 Nissan Skyline Hakosuka KGC10",										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/kgc10.png',					
			['page'] = 3
		},

		['s14'] = {														
			['name'] = "1999 Nissan Silvia S14",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s14.png',						
			['page'] = 3
		},

		['gxs15'] = {														
			['name'] = "2002 Nissan Silvia S15 Spec-R",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gxs15.png',						
			['page'] = 3
		},
		
		['nisr32'] = {														
			['name'] = "1995 Nissan Skyline R32 GTR V-Spec",										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/nisr32.png',					
			['page'] = 3
		},

		['bnr32'] = {														
			['name'] = "1995 Nissan Skyline R32 GTR V-Spec",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bnr32.png',					
			['page'] = 3
		},
		
		['skylinec110'] = {														
			['name'] = "1977 Nissan Skyline C110",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/skylinec110.png',						
			['page'] = 3
		},

		['silvia3'] = {														
			['name'] = "1998 Nissan Silvia S14",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/silvia3.png',					
			['page'] = 3
		},

		['titanh'] = {
			['name'] = "2006 Nissan Titan Hachi Desing",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/titanh.png',
			['page'] = 5
		},

		['protoz12'] = {
			['name'] = "2008 Nissan 400z Widebody Evo Edition",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/protoz12.png',
			['page'] = 3
		},

		['240sxhr'] = {
			['name'] = "1997 Nissan 240 SX Drift",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/240sxhr.png',
			['page'] = 3
		},

		['bnrpandem'] = {
			['name'] = "1991 Nissan BNR R32 Pandem",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bnrpandem.png',
			['page'] = 3
		},

		['r34lb'] = {
			['name'] = "1998 Nissan r34 Breitbau Drift",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/r34lb.png',
			['page'] = 3
		},

		['s15urashr'] = {
			['name'] = "2001 Nissan silvia s15 Drift",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s15urashr.png',
			['page'] = 3
		},

		['350z'] = {
			['name'] = "2002 Nissan 350z Drift",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/350z.png',
			['page'] = 3
		},

		['420x'] = {
			['name'] = "1994 Nissan 240sx",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/420x.png',
			['page'] = 3
		},

		['silvia31'] = {
			['name'] = "2000 Nissan Silvia S13 Drift Custom R35",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/silvia31.png',
			['page'] = 3
		},

		['NisSkyR34RB'] = {
			['name'] = "2000 Nissan Skyline R34RB I TR",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/NisSkyR34RB.png',
			['page'] = 3
		},

		['gtr17'] = {
			['name'] = "2017 Nissan R35 GTR Aimgain",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gtr17.png',
			['page'] = 3
		},
		---================================= NISSAN END
		---================================= PEUGEOT
		
		['peugeot'] = {														
			['name'] = "1987 Peugeot 405",										
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/peugeot.png',							
			['page'] = 1
		},
	
		['206'] = {														
			['name'] = "1998 Peugeot 206",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/206.png',							
			['page'] = 0
		},
	
		['30822'] = {														
			['name'] = "2022 Peugeot 308",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/30822.png',							
			['page'] = 0
		},
		---================================= PEUGEOT END
		---================================= PAGANI
		['huayra'] = {														
			['name'] = "2012 Pagani Huayra",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,											
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/huayra.png',								
			['page'] = 6
		},

		['Imola'] = {														
			['name'] = "2016 Pagani Huayra Animiert",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,											
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/Imola.png',								
			['page'] = 6
		},
		
		['huayrabc19'] = {														
			['name'] = "2018 Pagani Huayra BC Roadster",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,											
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/huayrabc19.png',							
			['page'] = 6
		},

		['pgnimola'] = {
			['name'] = "2023 Pagani Huayra Utopia",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/pgnimola.png',
			['page'] = 6
		},

		['zonda'] = {
			['name'] = "2017 Pagani Zonda Barchetta",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/zonda.png',
			['page'] = 6
		},
		---================================= PAGANI END
		---================================= PLYMOUTH
		['superbird'] = {														
			['name'] = "1970 Plymouth Superbird",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/superbird.png',									
			['page'] = 3
		},
		
		['hemis'] = {														
			['name'] = "1974 Plymouth Formula S Barracuda Hemi S",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/hemis.png',							
			['page'] = 3
		},
		---================================= PLYMOUTH END
		---================================= PONTIAC
		['bonneville58'] = {														
			['name'] = "1958 Pontiac Bonneville",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bonneville58.png',									
			['page'] = 3
		},
		---================================= PONTIAC END
		---================================= PORSCHE
		
		['taycan'] = {														
			['name'] = "2021 Porsche Taycan",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/taycan.png',								
			['page'] = 1
		},

		['priortaycan'] = {														
			['name'] = "2021 Porsche Taycan Prior Desing",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/priortaycan.png',								
			['page'] = 1
		},
	
		['boxterlb'] = {														
			['name'] = "2016 Porsche 718 Boxter Liberty Walk",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/boxterlb.png',									
			['page'] = 3
		},

		['caymank'] = {														
			['name'] = "2013 Porsche Cayman Drift",											
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/caymank.png',									
			['page'] = 3
		},

		['porrs73'] = {														
			['name'] = "1973 Porsche 911 Carrera RS",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/porrs73.png',								
			['page'] = 3
		},
		
		['911turbos'] = {														
			['name'] = "2020 Porsche 911 Turbo S",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/911turbos.png',							
			['page'] = 6
		},

		['mans911'] = {														
			['name'] = "2020 Porsche 911 Turbo s Mansaug",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mans911.png',						
			['page'] = 6
		},
		
		['911turbos2'] = {														
			['name'] = "2021 Porsche 911 Techart Turbo GT",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/911turbos2.png',							
			['page'] = 6
		},
		
		['rufyb'] = {														
			['name'] = "1989 Porsche 911 930",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rufyb.png',								
			['page'] = 3
		},
		
		['pcs20'] = {														
			['name'] = "2020 Porsche 911 Carrera S",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/pcs20.png',							
			['page'] = 3
		},
		
		['gt2rsmr'] = {														
			['name'] = "2017 Porsche 911 GT2 RS MR",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gt2rsmr.png',							
			['page'] = 3
		},
		
		['911gt3'] = {														
			['name'] = "2021 Porsche 911 GT3 CUP",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/911gt3.png',							
			['page'] = 3
		},
		
		['911tp'] = {														
			['name'] = "2022 Porsche 911 Stringer GTR",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/911tp.png',						
			['page'] = 3
		},
		
		['911tpcarbon'] = {														
			['name'] = "Porsche 911 Stringer GTR Carbon Edition",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/911tpcarbon.png',						
			['page'] = 3
		},
		
		['911rt'] = {														
			['name'] = "2016 Porsche 911 Targa",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/911rt.png',							
			['page'] = 3
		},
		
		['pcmansory'] = {														
			['name'] = "2015 Porsche Cayenne Turbo S Mansory",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/pcmansory.png',						
			['page'] = 5
		},
		
		['pmhd21'] = {														
			['name'] = "2021 Porsche Panamera 4S E Hybrid",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/pmhd21.png',								
			['page'] = 1
		},
		
		['rikorwb'] = {														
			['name'] = "1992 Porsche RWB Zweite Entwicklung",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rikorwb.png',							
			['page'] = 3
		},
		
		['918'] = {														
			['name'] = "2010 Porsche 918 Spider",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/918.png',						
			['page'] = 6
		},
		
		['993rwb'] = {														
			['name'] = "1993 Porsche 993 RWB",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/993rwb.png',							
			['page'] = 3
		},
		
		['pgt3'] = {														
			['name'] = "2015 Porsche GT3",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/pgt3.png',								
			['page'] = 6
		},
		
		['grandgt18'] = {														
			['name'] = "2021 Porsche Panamera Grand GT Techart",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/grandgt18.png',							
			['page'] = 2
		},
		
		['str20'] = {														
			['name'] = "2019 Porsche Speedster",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/str20.png',							
			['page'] = 3
		},
		
		['cayenneturbo'] = {														
			['name'] = "2010 Porsche Cayenne Turbo S",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,										
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cayenneturbo.png',							
			['page'] = 5
		},

		['911gtr'] = {
			['name'] = "2022 Porsche 911 Stinger GTR",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/911gtr.png',
			['page'] = 3
		},

		['oycgt3rs'] = {
			['name'] = "2023 Porsche 992 GT3 RS",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/oycgt3rs.png',
			['page'] = 3
		},

		['356a'] = {
			['name'] = "1954 Porsche 356 Speedster HR",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/356a.png',
			['page'] = 3
		},

		['CRT_800'] = {
			['name'] = "2022 Porsche Cayenne Turbo CRT 800 Manhart",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/CRT_800.png',
			['page'] = 5
		},

		['porcgt03'] = {
			['name'] = "2003 Porsche Carrera GT 980",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/porcgt03.png',
			['page'] = 3
		},

		['718gt4rs'] = {
			['name'] = "2019 Porsche 718 GT4 RS",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/718gt4rs.png',
			['page'] = 3
		},

		['718gts'] = {
			['name'] = "2019 Porsche 718 gts Widebody",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/718gts.png',
			['page'] = 3
		},

		['ikx3cross22'] = {
			['name'] = "2022 Porsche Taycan Turbo S Cross Turismo",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ikx3cross22.png',
			['page'] = 1
		},

		['ikx3duke911'] = {
			['name'] = "2022 Porsche 911 GT RSR Duke Dynamics",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ikx3duke911.png',
			['page'] = 3
		},

		['taycants21m'] = {
			['name'] = "2021 Porsche Taycan Mansory",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/taycants21m.png',
			['page'] = 1
		},

		['itzpanameraprior'] = {
			['name'] = "2019 Porsche Panamera Prior",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/itzpanameraprior.png',
			['page'] = 1
		},

		['pgt322'] = {
			['name'] = "2022 Porsche 911 GT3",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/pgt322.png',
			['page'] = 3
		},
		---================================= PORSCHE END
		---================================= RANGE ROVER
		
		['Evoque'] = {
			['name'] = "2012 Range Rover Evoque Hamann",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/Evoque.png',
			['page'] = 5
		},
	
		['def90'] = {
			['name'] = "2016 Landrover Defender",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/def90.png',
			['page'] = 5
		},
	
		['velar'] = {
			['name'] = "2017 Range Rover Velar",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/velar.png',
			['page'] = 5
		},
		['rrst'] = {
			['name'] = "2018 Range Rover Sport Wide Hamann",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rrst.png',
			['page'] = 5
		},
		
		['RRAB'] = {
			['name'] = "2015 Range Rover Mansory",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/RRAB.png',
			['page'] = 5
		},

		['SVR14'] = {
			['name'] = "2019 Range Rover SVR Mansory",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/SVR14.png',
			['page'] = 5
		},

		['rrsport2023'] = {
			['name'] = "2023 Range Rove Sport HSE",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rrsport2023.png',
			['page'] = 5
		},
		---================================= RANGE ROVER END
		---================================= ROLLS ROYCE
		
		['bbdawn'] = {
			['name'] = "2017 Rolls Royce Dawn Wald",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bbdawn.png',
			['page'] = 3
		},

		['ghostswb'] = {
			['name'] = "2021 Rolls Royce Ghost Mansory Billionair Edition",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ghostswb.png',
			['page'] = 1
		},
		
		['rrphantom'] = {
			['name'] = "2017 Rolls Royce Phantom",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rrphantom.png',
			['page'] = 1
		},
		
		['wraith'] = {
			['name'] = "2013 Rolls Royce Wraith",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/wraith.png',
			['page'] = 3
		},
		
		['cullinan'] = {
			['name'] = "2012 Rolls Royce Cullinan",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cullinan.png',
			['page'] = 5
		},

		['noviteccullinan'] = {
			['name'] = "2018 Rolls Royce Cullinan Novitec",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/noviteccullinan.png',
			['page'] = 5
		},
		
		['Coastline'] = {
			['name'] = "2020 Rolls Royce Cullinan Coastline",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/Coastline.png',
			['page'] = 5
		},
		
		['cullinanv3'] = {
			['name'] = "2014 Rolls Royce Cullinan Keyvany",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cullinanv3.png',
			['page'] = 5
		},
		
		['mansorycullinanv2'] = {
			['name'] = "2016 Rolls Royce Cullinan Mansory",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mansorycullinanv2.png',
			['page'] = 5
		},
		
		['chrolls'] = {
			['name'] = "2017 Rolls Royce Cullinan Mansory",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/chrolls.png',
			['page'] = 5
		},
		
		['crownrs'] = {
			['name'] = "2020 Rolls Royce Ghost",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/crownrs.png',
			['page'] = 1
		},
		
		['ph8m'] = {
			['name'] = "2022 Rolls Royce Phantom Mansory",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ph8m.png',
			['page'] = 1
		},
		
		['phantommc'] = {
			['name'] = "2012 Rolls Royce Phantom Mutec",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/phantommc.png',
			['page'] = 1
		},

		['sspur'] = {
			['name'] = "1980 Rolls Royce Silver Spirit",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sspur.png',
			['page'] = 1
		},

		['onyxdawn'] = {
			['name'] = "2015 Rolls Royce Dawn Onyx",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/onyxdawn.png',
			['page'] = 3
		},

		['DawnBlackBadge'] = {
			['name'] = "2021 Rolls Royce Dawn Mansory",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/DawnBlackBadge.png',
			['page'] = 3
		},

		['19msctntgt5'] = {
			['name'] = "2021 Rolls Royce Phantom MAFIA",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/19msctntgt5.png',
			['page'] = 1
		},

		['cullimevo'] = {
			['name'] = "2017 Rolls Royce Cullinan Mansory Evo",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cullimevo.png',
			['page'] = 5
		},

		['oycklnk'] = {
			['name'] = "2016 Rolls Royce Cullinan Keyvany V2",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/oycklnk.png',
			['page'] = 5
		},

		['Mansoryphantom8'] = {
			['name'] = "2022 Rolls Royce Mansory Phantom",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/Mansoryphantom8.png',
			['page'] = 1
		},

		['bra900'] = {
			['name'] = "2021 Rolls Royce Ghost",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bra900.png',
			['page'] = 1
		},

		['4b_rolls_limo'] = {
			['name'] = "2017 Rolls Royce Phantom Stretch-Limousine",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/4b_rolls_limo.png',
			['page'] = 1
		},

		['overdose'] = {
			['name'] = "2018 Rolls Royce Wraith Novitec",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/overdose.png',
			['page'] = 3
		},
		---================================= ROLLS ROYCE END
		---================================= RENAULT
		['twingo2'] = {
			['name'] = "1993 Twingo",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/twingo2.png',
			['page'] = 0
		},
		
		['mers18'] = {
			['name'] = "2018 Renault Megane RS",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mers18.png',
			['page'] = 1
		},
		
		['twizy'] = {
			['name'] = "2011 Renault Twizy",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/twizy.png',
			['page'] = 0
		},
		
		['zoeesport'] = {
			['name'] = "2017 Renault Zoe-E Sport",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/zoeesport.png',
			['page'] = 0
		},
		---================================= RENAULT END
		---================================= SKODA
		['sovrs'] = {
			['name'] = "2013 Skoda Octavia RS",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sovrs.png',
			['page'] = 2
		},
		---================================= SKODA END
		---================================= SPYKER
		['x3gtx20'] = {
			['name'] = "2000 Spyker C8 Aileron Spyder",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/x3gtx20.png',
			['page'] = 6
		},
		---================================= SPYKER END
		---================================= SUBARU
		['subwrx'] = {
			['name'] = "2014 Subaru Impreza WRX STI",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/subwrx.png',
			['page'] = 1
		},
		
		['ff4wrx'] = {
			['name'] = "2014 Subaru WRX STI FATF4",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ff4wrx.png',
			['page'] = 1
		},

		['impreza2019wb'] = {
			['name'] = "2019 Subaru Impreza WRX Widebody",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/impreza2019wb.png',
			['page'] = 1
		},

		['subwrx1'] = {
			['name'] = "2004 Subaru Impreza WRX STI 326 POWER",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/subwrx1.png',
			['page'] = 1
		},

		['GODzRB26SUBI'] = {
			['name'] = "2017 Subaru Impreza III WRX STI",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/GODzRB26SUBI.png',
			['page'] = 1
		},

		['gxwrx'] = {
			['name'] = "2018 Subaru WRX STI",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gxwrx.png',
			['page'] = 1
		},

		['wrx'] = {
			['name'] = "2009 Subaru WRX Drift",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/wrx.png',
			['page'] = 1
		},
		---================================= SUBARU END
		---================================= TESLA
		
		['teslapd'] = {
			['name'] = "2021 Tesla Model 3 Prior Design",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/teslapd.png',
			['page'] = 1
		},
		
		['tmodel'] = {
			['name'] = "2014 Tesla Model T",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/tmodel.png',
			['page'] = 1
		},
	
		['p90d'] = {
			['name'] = "2016 Tesla P90D",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/p90d.png',
			['page'] = 5
		},

		['cybertruck'] = {
			['name'] = "2022 Tesla Cybertruck",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cybertruck.png',
			['page'] = 5
		},
		---================================= TESLA END
		---================================= TOYOTA
		
		['vxr'] = {
			['name'] = "2008 Toyota Land Cruiser VXR",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/vxr.png',
			['page'] = 5
		},
	
		['sclkuz'] = {
			['name'] = "2020 Toyota Land Cruiser 200 HAKAMA",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sclkuz.png',
			['page'] = 5
		},
		
		['lc300gr'] = {
			['name'] = "2021 Toyota Land Cruiser 300",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lc300gr.png',
			['page'] = 5
		},
		
		['camry55'] = {
			['name'] = "2004 Toyota Camry",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/camry55.png',
			['page'] = 1
		},
	
		['avalontrd'] = {
			['name'] = "2022 Toyota Avalon TRD",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/avalontrd.png',
			['page'] = 1
		},

		['protoz'] = {
			['name'] = "2017 Toyota Hilux Tonka",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/protoz.png',
			['page'] = 5
		},
		
		
		['2f2fmk4'] = {
			['name'] = "1993 Toyota Supra MK4 2F2F",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/2f2fmk4.png',
			['page'] = 3
		},
		
		['fnfmk4'] = {
			['name'] = "2000 Toyota Supra MK4 FATF",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fnfmk4.png',
			['page'] = 3
		},

		['gt86lb'] = {														
			['name'] = "2013 Toyota GT86 Liberty Walk",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,											
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gt86lb.png',								
			['page'] = 3
		},

		['326p'] = {														
			['name'] = "2012 Toyota GT86 Drift",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,											
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/326p.png',								
			['page'] = 3
		},

		['gt86trust'] = {														
			['name'] = "2018 Toyota GT86 Trust Drift",												
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,											
			['amount_to_owner'] = 0,										
			['max_stock'] = 1500,											
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gt86trust.png',								
			['page'] = 3
		},

		['majsoar'] = {
			['name'] = "2000 Toyota Soarer GT-T Twin Turbo Z30",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/majsoar.png',
			['page'] = 3
		},

		['mk2100'] = {
			['name'] = "2001 Toyota Mark II JZX100",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mk2100.png',
			['page'] = 1
		},

		['cam8tun'] = {
			['name'] = "2018 Toyota Camry XSE Crazy exterior",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cam8tun.png',
			['page'] = 1
		},

		['ae86'] = {
			['name'] = "1986 Toyota AE86",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ae86.png',
			['page'] = 3
		},

		['tsgr20'] = {
			['name'] = "2019 Toyota Supra GR 20",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/tsgr20.png',
			['page'] = 3
		},

		['a80'] = {
			['name'] = "1995 Toyota Supra MK4",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/a80.png',
			['page'] = 3
		},

		['86karma'] = {
			['name'] = "2012 Toyota GT86 KARMA",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/86karma.png',
			['page'] = 3
		},
		---================================= TOYOTA END
		---================================= VOLVO 
		['v242'] = {
			['name'] = "1983 Volvo 242 Turbo",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/v242.png',
			['page'] = 1
		},

		['starone'] = {
			['name'] = "2017 Volvo Polstar One",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/starone.png',
			['page'] = 3
		},
		
		['xc40'] = {
			['name'] = "2022 Volvo XC40 R Desing T5",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/xc40.png',
			['page'] = 5
		},
		
		['volvoxc90'] = {
			['name'] = "2017 Volvo XC90 T8 R Desing",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/volvoxc90.png',
			['page'] = 5
		},

		['s60'] = {
			['name'] = "2022 Volvo S60 Black Edition",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s60.png',
			['page'] = 1
		},
		---================================= VOLVO END
		---================================= VW
		
		['amarok'] = {
			['name'] = "2010 Volkswagen Amarok V6",	
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/amarok.png',
			['page'] = 5
		},
	
		['vwcaddy'] = {
			['name'] = "2003 Volkswagen Caddy",		
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/vwcaddy.png',
			['page'] = 4
		},
	
		['rmodmk7'] = {
			['name'] = "2012 Volkswagen Golf MK7 Pandem",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rmodmk7.png',
			['page'] = 0
		},
		['golf91wideprzemo'] = {
			['name'] = "1989 Volkswagen Golf MK2 Turbo",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/golf91wideprzemo.png',
			['page'] = 0
		},
		
		['vwtdiv6'] = {
			['name'] = "2010 Volkswagen Touareg",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/vwtdiv6.png',
			['page'] = 5
		},
	
		['touaregr50'] = {
			['name'] = "2008 Volkswagen Touareg R50",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/touaregr50.png',
			['page'] = 5
		},
		
		['type258'] = {
			['name'] = "1968 Volkswagen T1",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/type258.png',
			['page'] = 4
		},
		
		['type262'] = { 
			['name'] = "1968 Volkswagen T1",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/type262.png',
			['page'] = 4
		},
		
		['type263'] = { 
			['name'] = "VW Bulli V3",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/type263.png',
			['page'] = 4
		},
		
		['type266'] = { 
			['name'] = "1968 Volkswagen T1",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/type266.png',
			['page'] = 4
		},
		
		['golfgti'] = {
			['name'] = "2005 Volkswagen Golf 5",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/golfgti.png',
			['page'] = 0
		},
		
		['mk1rabbit'] = {
			['name'] = "1983 Volkswagen Golf MK1",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mk1rabbit.png',
			['page'] = 0
		},
		
		['golfmk6'] = {
			['name'] = "2009 Volkswagen Golf R MK6",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/golfmk6.png',
			['page'] = 0
		},
		
		['MK3'] = {
			['name'] = "1997 Volkswagen Golf MK3 GTI",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/MK3.png',
			['page'] = 0
		},
		
		['mk4'] = {
			['name'] = "2002 Volkswagen Golf MK4 R32",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mk4.png',
			['page'] = 0
		},
		
		['golfr18'] = {
			['name'] = "2018 Volkswagen Golf R Mk7",	
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/golfr18.png',
			['page'] = 0
		},

		['fnfjetta'] = {
			['name'] = "1979 Volkswagen Jetta FATF",
			['price_to_customer'] = 100,
			['price_to_owner'] = 9999999999,
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fnfjetta.png',
			['page'] = 1
		},
		
		['golfp'] = {
			['name'] = "2014 Volkswagen Golf R Mk7 Pandem Ukraine",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/golfp.png',
			['page'] = 0
		},

		['gcmgolf8r'] = {
			['name'] = "2021 Volkswagen Golf Mk8 R Armytrix",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gcmgolf8r.png',
			['page'] = 0
		},

		['golmarlboro'] = {
			['name'] = "1981 Volkswagen Scirocco Quadrado Marlboro",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/golmarlboro.png',
			['page'] = 0
		},
		---================================= VW END
		---================================= W MOTORS
		['fenyr'] = {
			['name'] = "2017 W-Motors Fenyr Supersport",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fenyr.png',
			['page'] = 6
		},
		---================================= W MOTORS END
		---================================= ZENVO
		['zn20'] = {
			['name'] = "2017 Zenvo TS1 R",
			['price_to_customer'] = 100,									
			['price_to_owner'] = 9999999999,										
			['price_to_export'] = 0,
			['amount_to_owner'] = 0,
			['max_stock'] = 1500,
			['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/zn20.png',
			['page'] = 6
		},
		---================================= ZENVO END
			
		},
		['pagination'] = {				-- Create pages to your vehicles
			[0] = "Kleinwagen",
			[1] = "Limousine",
			[2] = "Kombi",
			[3] = "Coupé",
			[4] = "Vans",
			[5] = "SUV/Jeep",
			[6] = "Sport/Hypercars",
		},
		['blips'] = {					-- Create the blips on map
			['id'] = 0,				-- Blip ID [Set this value 0 to dont have blip]
			['name'] = "Yarak Motors",	-- Blip Name
			['color'] = 46,				-- Blip Color
			['scale'] = 0.5,			-- Blip Scale
		}
	},

	['marek'] = {								-- Dealership type ID
		['stock_capacity'] = 150,					-- Max stock capacity
		['max_employees'] = 5,						-- Max employees
		['vehicles'] = {
		-- Here you configure the vehicles on this dealership

---================================= CHOPPER/HARLEY
			['avarus'] = {							-- The vehicle ID
				['name'] = "2019 Avarus",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 74000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/avarus.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 0						-- Set on which page this vehicle will appear
			},

			['lectro'] = {							-- The vehicle ID
				['name'] = "1973 BMW R75 Bobber",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 125000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lectro.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 0						-- Set on which page this vehicle will appear
			},

			['saltflat'] = {							-- The vehicle ID
				['name'] = "2000 Custom Saltflat",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 62000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/saltflat.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 0						-- Set on which page this vehicle will appear
			},

			['Daemon'] = {							-- The vehicle ID
				['name'] = "1979 Daemon",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 38000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/daemon.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 0						-- Set on which page this vehicle will appear
			},

			['bluestar'] = {							-- The vehicle ID
				['name'] = "2004 Harley Davidson Bluestar Custom",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 149000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bluestar.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 0						-- Set on which page this vehicle will appear
			},

			['claw'] = {							-- The vehicle ID
				['name'] = "2013 Harley Davidson Breakout",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 180000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/claw.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 0						-- Set on which page this vehicle will appear
			},

			['dagger'] = {							-- The vehicle ID
				['name'] = "2011 Harley Davidson Dagger Custom",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 189000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/dagger.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 0						-- Set on which page this vehicle will appear
			},

			['hvrod'] = {							-- The vehicle ID
				['name'] = "2002 Harley-Davidson Fatboy",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 94000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/hvrod.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 0						-- Set on which page this vehicle will appear
			},

			['fatbadlady'] = {							-- The vehicle ID
				['name'] = "1990 Harley Davidson Fat Boy",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 160000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fatbadlady.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 0						-- Set on which page this vehicle will appear
			},

			['inquisitor'] = {							-- The vehicle ID
				['name'] = "2005 Harley Davidson Inquisitor",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 193000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/inquisitor.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 0						-- Set on which page this vehicle will appear
			},

			['rd'] = {							-- The vehicle ID
				['name'] = "2017 Harley Davidson Redstar Custom",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 149000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rd.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 0						-- Set on which page this vehicle will appear
			},

			['flhxs_streetglide_special18'] = {							-- The vehicle ID
				['name'] = "2007 Harley-Davidson Streetglide",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 118000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/flhxs_streetglide_special18.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 0						-- Set on which page this vehicle will appear
			},

			['na25'] = {							-- The vehicle ID
				['name'] = "1999 Harley-Davidson Road King",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 96000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/na25.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 0						-- Set on which page this vehicle will appear
			},

			['HDIron883'] = {							-- The vehicle ID
				['name'] = "2012 Harley-Davidson Sportster",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 54000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/hdiron883.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 0						-- Set on which page this vehicle will appear
			},

			['opie'] = {							-- The vehicle ID
				['name'] = "2018 Harley Davidson Winston Dyna",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 135000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/opie.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 0						-- Set on which page this vehicle will appear
			},

			['IndianCDH'] = {							-- The vehicle ID
				['name'] = "2009 Indian Chief Dark Horse",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 70000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/IndianCDH.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 0						-- Set on which page this vehicle will appear
			},

			['nightblade'] = {							-- The vehicle ID
				['name'] = "2018 Nightblade",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 38000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/nightblade.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 0						-- Set on which page this vehicle will appear
			},

			['lpbagger'] = {							-- The vehicle ID
				['name'] = "2011 LCC Marabunta",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 26000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lpbagger.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 0						-- Set on which page this vehicle will appear
			},

			['lpchopper2'] = {							-- The vehicle ID
				['name'] = "2009 LCC T-Rod",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 27000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/lpchopper2.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 0						-- Set on which page this vehicle will appear
			},

			['krust'] = {							-- The vehicle ID
				['name'] = "2008 OCC Krust",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 50000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/krust.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 0						-- Set on which page this vehicle will appear
			},

			['ratbike'] = {							-- The vehicle ID
				['name'] = "2002 Ratbike",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 15000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ratbike.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 0						-- Set on which page this vehicle will appear
			},

			['sanctus'] = {							-- The vehicle ID
				['name'] = "2009 Sanctus",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 74000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sanctus.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 0						-- Set on which page this vehicle will appear
			},

			['wolfsbane'] = {							-- The vehicle ID
				['name'] = "1999 Wolfsbane",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 54000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/wolfsbane.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 0						-- Set on which page this vehicle will appear
			},

			['zombieb'] = {							-- The vehicle ID
				['name'] = "1999 Zombie",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 66000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/zombieb.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 0						-- Set on which page this vehicle will appear
			},

---================================= SUPERMOTO

			['bmws'] = {							-- The vehicle ID
				['name'] = "2009 BMW S1000 RR",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 65000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bmws.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 1						-- Set on which page this vehicle will appear
			},

			['s1000rr'] = {							-- The vehicle ID
				['name'] = "2014 BMW S1000 RR",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 74000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/s1000rr.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 1						-- Set on which page this vehicle will appear
			},

			['ddgp20'] = {							-- The vehicle ID
				['name'] = "2020 Ducati desmosedici GP20",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 110000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ddgp20.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 1						-- Set on which page this vehicle will appear
			},

			['v4sp'] = {							-- The vehicle ID
				['name'] = "2018 Ducati Panigale V4 Speciale",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 110000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/v4sp.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 1						-- Set on which page this vehicle will appear
			},

			['ESDUCATI2K22'] = {							-- The vehicle ID
				['name'] = "2022 Ducati V4 Drag",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 140000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ESDUCATI2K22.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 1						-- Set on which page this vehicle will appear
			},

			['cb650r'] = {							-- The vehicle ID
				['name'] = "2014 Honda CB 650",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 68000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cb650r.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 1						-- Set on which page this vehicle will appear
			},

			['cbr1000rrr'] = {							-- The vehicle ID
				['name'] = "2007 Honda CBR 1000 RR",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 120000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cbr1000rrr.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 1						-- Set on which page this vehicle will appear
			},

			['ninjah2'] = {							-- The vehicle ID
				['name'] = "2017 Kawasaki Ninja H2H2R",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 200000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ninjah2.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 1						-- Set on which page this vehicle will appear
			},

			['zx10r'] = {							-- The vehicle ID
				['name'] = "2011 Kawasaki ZX10R",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 106000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/zx10r.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 1						-- Set on which page this vehicle will appear
			},

			['ksd'] = {							-- The vehicle ID
				['name'] = "2013 KTM Superduke",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 58000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ksd.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 1						-- Set on which page this vehicle will appear
			},

			['hakuchou2'] = {							-- The vehicle ID
				['name'] = "2005 Suzuki Hayabusa",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 135000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/hakuchou2.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 1						-- Set on which page this vehicle will appear
			},

			['20r1'] = {							-- The vehicle ID
				['name'] = "2020 Yamaha YZF-R1 RN65",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 72000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/20r1.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 1						-- Set on which page this vehicle will appear
			},

			['r6'] = {							-- The vehicle ID
				['name'] = "2017 Yamaha R6",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 46000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/r6.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 1						-- Set on which page this vehicle will appear
			},

			['yzfr7'] = {							-- The vehicle ID
				['name'] = "2002 Yamaha YZF R7",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 28000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/yzfr7.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 1						-- Set on which page this vehicle will appear
			},

---================================= RALLEY/CROSS

			['bf400'] = {							-- The vehicle ID
				['name'] = "2019 BF 400",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 36000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bf400.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 2						-- Set on which page this vehicle will appear
			},

			['enduro'] = {							-- The vehicle ID
				['name'] = "2015 Enduro",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 32000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/enduro.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 2						-- Set on which page this vehicle will appear
			},

			['cr250'] = {							-- The vehicle ID
				['name'] = "2007 Honda CR 250",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 34000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cr250.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 2						-- Set on which page this vehicle will appear
			},

			['2020exc'] = {							-- The vehicle ID
				['name'] = "2022 KTM EXC500",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 31000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/2020exc.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 2						-- Set on which page this vehicle will appear
			},

			['manchez'] = {							-- The vehicle ID
				['name'] = "2017 Manchez",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 35000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/manchez.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 2						-- Set on which page this vehicle will appear
			},

			['manchez2'] = {							-- The vehicle ID
				['name'] = "1998 Manchez Scout",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 39000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/manchez2.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 2						-- Set on which page this vehicle will appear
			},

			['sanchez'] = {							-- The vehicle ID
				['name'] = "2002 Sanchez",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 34000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sanchez.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 2						-- Set on which page this vehicle will appear
			},

			['2020rmz'] = {							-- The vehicle ID
				['name'] = "2020 Suzuki RMZ450",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 26000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/2020rmz.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 2						-- Set on which page this vehicle will appear
			},

			['2020rmz'] = {							-- The vehicle ID
				['name'] = "2020 Suzuki RMZ450",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 26000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/2020rmz.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 2						-- Set on which page this vehicle will appear
			},
			
---================================= NAKED BIKE

			['mvso'] = {							-- The vehicle ID
				['name'] = "2021 MV Agusta Brutale 1000",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 42000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mvso.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 3						-- Set on which page this vehicle will appear
			},

			['m900'] = {							-- The vehicle ID
				['name'] = "1999 Ducati Monster 900",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 55000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/m900.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 3						-- Set on which page this vehicle will appear
			},

			['v4sf'] = {							-- The vehicle ID
				['name'] = "2013 Ducati Streetfighter",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 58000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/v4sf.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 3						-- Set on which page this vehicle will appear
			},

---================================= QUAD BUGGY

			['blazer4'] = {							-- The vehicle ID
				['name'] = "2013 Blazer",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 35000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/blazer4.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 4						-- Set on which page this vehicle will appear
			},

			['cfmotoz10'] = {							-- The vehicle ID
				['name'] = "2022 CF Moto Z10 UTV",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 62000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cfmotoz10.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 4						-- Set on which page this vehicle will appear
			},

			['bcyfz450'] = {							-- The vehicle ID
				['name'] = "2021 Yamaha YZF 450R",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 28000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bcyfz450.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 4						-- Set on which page this vehicle will appear
			},

			['verus'] = {							-- The vehicle ID
				['name'] = "2011 Verus",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 38000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/verus.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 4						-- Set on which page this vehicle will appear
			},

			['chimera'] = {							-- The vehicle ID
				['name'] = "2001 Chimera",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 42000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/chimera.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 4						-- Set on which page this vehicle will appear
			},

---================================= ROLLER

			['faggio'] = {							-- The vehicle ID
				['name'] = "2005 Faggio 125ccm",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 18000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/faggio.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 5						-- Set on which page this vehicle will appear
			},

			['vespa'] = {							-- The vehicle ID
				['name'] = "1982 Piaggio Vespa 50ccm",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 18000,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 10,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/vespa.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 5						-- Set on which page this vehicle will appear
			},

---================================= BIKES

			['bmx'] = {							-- The vehicle ID
				['name'] = "BMX",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 3800,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 20,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/bmx.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 6						-- Set on which page this vehicle will appear
			},

			['scorcher'] = {							-- The vehicle ID
				['name'] = "Mountainbike",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 4600,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 20,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/scorcher.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 6						-- Set on which page this vehicle will appear
			},

			['fixter'] = {							-- The vehicle ID
				['name'] = "Rennrad",					-- The vehicle display name
				['price_to_customer'] = 9999,		-- Price the customer will pay when buy the product in dealership
				['price_to_owner'] = 3500,			-- Price the dealership owner must pay when importing vehicles to your dealership
				['price_to_export'] = 0,			-- Price the dealership owner will earn when exporting vehicles to your dealership
				['amount_to_owner'] = 20,			-- Max amount of vehicles the owner will get when importing/exporting this vehicle
				['max_stock'] = 150,				-- Max stock amount of this vehicle
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fixter.png',		-- Image file name of this vehicle inside nui/img (it can be a URL too)
				['page'] = 6						-- Set on which page this vehicle will appear
			},

				
		},
		['pagination'] = {				-- Create pages to your vehicles
			[0] = "Chopper",
			[1] = "Super Moto",
			[2] = "Rallye/Cross",
			[3] = "Naked Bike",
			[4] = "Quad Buggy Trikes",
			[5] = "Roller",
			[6] = "Bikes"
		},
		['blips'] = {					-- Create the blips on map
			['id'] = 0,				-- Blip ID [Set this value 0 to dont have blip]
			['name'] = "Marek´s Motorcycles",	-- Blip Name
			['color'] = 43,				-- Blip Color
			['scale'] = 0.5,			-- Blip Scale
		}
	},

	['boote'] = {								-- Dealership type ID
		['stock_capacity'] = 150,					-- Max stock capacity
		['max_employees'] = 5,						-- Max employees
		['vehicles'] = {							-- Here you configure the vehicles on this dealership
		

				['dinghy4'] = {														-- The vehicle ID
					['name'] = "Nagasaki Dinghy",								-- The vehicle display name
					['price_to_customer'] = 70000,									-- Price the customer will pay when buy the product in dealership
					['price_to_owner'] = 68000,									-- Price the dealership owner must pay when importing vehicles to your dealership
					['price_to_export'] = 0,									-- Price the dealership owner will earn when exporting vehicles to your dealership
					['amount_to_owner'] = 1500,										-- Max amount of vehicles the owner will get when importing/exporting this vehicle
					['max_stock'] = 1500,											-- Max stock amount of this vehicle
					['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/dinghy4.png',									-- Image file name of this vehicle inside nui/img (it can be a URL too)
					['type'] = 'boat',
					['page'] = 0													-- Set on which page this vehicle will appear
				},

				['jetmax'] = {														-- The vehicle ID
					['name'] = "Shitzu Jetmax",								-- The vehicle display name
					['price_to_customer'] = 230000,									-- Price the customer will pay when buy the product in dealership
					['price_to_owner'] = 228000,									-- Price the dealership owner must pay when importing vehicles to your dealership
					['price_to_export'] = 0,									-- Price the dealership owner will earn when exporting vehicles to your dealership
					['amount_to_owner'] = 1500,										-- Max amount of vehicles the owner will get when importing/exporting this vehicle
					['max_stock'] = 1500,											-- Max stock amount of this vehicle
					['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/jetmax.png',									-- Image file name of this vehicle inside nui/img (it can be a URL too)
					['type'] = 'boat',
					['page'] = 0													-- Set on which page this vehicle will appear
				},

				['squalo'] = {														-- The vehicle ID
					['name'] = "Shitzu Squalo",								-- The vehicle display name
					['price_to_customer'] = 68000,									-- Price the customer will pay when buy the product in dealership
					['price_to_owner'] = 65000,									-- Price the dealership owner must pay when importing vehicles to your dealership
					['price_to_export'] = 0,									-- Price the dealership owner will earn when exporting vehicles to your dealership
					['amount_to_owner'] = 1500,										-- Max amount of vehicles the owner will get when importing/exporting this vehicle
					['max_stock'] = 1500,											-- Max stock amount of this vehicle
					['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/squalo.png',									-- Image file name of this vehicle inside nui/img (it can be a URL too)
					['type'] = 'boat',
					['page'] = 0													-- Set on which page this vehicle will appear
				},

				['longfin'] = {														-- The vehicle ID
					['name'] = "Shitzu Longfin",								-- The vehicle display name
					['price_to_customer'] = 250000,									-- Price the customer will pay when buy the product in dealership
					['price_to_owner'] = 245000,									-- Price the dealership owner must pay when importing vehicles to your dealership
					['price_to_export'] = 0,									-- Price the dealership owner will earn when exporting vehicles to your dealership
					['amount_to_owner'] = 1500,										-- Max amount of vehicles the owner will get when importing/exporting this vehicle
					['max_stock'] = 1500,											-- Max stock amount of this vehicle
					['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/longfin.png',									-- Image file name of this vehicle inside nui/img (it can be a URL too)
					['type'] = 'boat',
					['page'] = 0													-- Set on which page this vehicle will appear
				},

				['suntrap'] = {														-- The vehicle ID
					['name'] = "Shitzu Suntrap",								-- The vehicle display name
					['price_to_customer'] = 44000,									-- Price the customer will pay when buy the product in dealership
					['price_to_owner'] = 43000,									-- Price the dealership owner must pay when importing vehicles to your dealership
					['price_to_export'] = 0,									-- Price the dealership owner will earn when exporting vehicles to your dealership
					['amount_to_owner'] = 1500,										-- Max amount of vehicles the owner will get when importing/exporting this vehicle
					['max_stock'] = 1500,											-- Max stock amount of this vehicle
					['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/suntrap.png',									-- Image file name of this vehicle inside nui/img (it can be a URL too)
					['type'] = 'boat',
					['page'] = 0													-- Set on which page this vehicle will appear
				},

				['tropic2'] = {														-- The vehicle ID
					['name'] = "Shitzu Tropic",								-- The vehicle display name
					['price_to_customer'] = 200000,									-- Price the customer will pay when buy the product in dealership
					['price_to_owner'] = 198000,									-- Price the dealership owner must pay when importing vehicles to your dealership
					['price_to_export'] = 0,									-- Price the dealership owner will earn when exporting vehicles to your dealership
					['amount_to_owner'] = 1500,										-- Max amount of vehicles the owner will get when importing/exporting this vehicle
					['max_stock'] = 1500,											-- Max stock amount of this vehicle
					['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/tropic2.png',									-- Image file name of this vehicle inside nui/img (it can be a URL too)
					['type'] = 'boat',
					['page'] = 0													-- Set on which page this vehicle will appear
				},

				['seashark3'] = {														-- The vehicle ID
					['name'] = "Speedophile Seashark",								-- The vehicle display name
					['price_to_customer'] = 27000,									-- Price the customer will pay when buy the product in dealership
					['price_to_owner'] = 26000,									-- Price the dealership owner must pay when importing vehicles to your dealership
					['price_to_export'] = 0,									-- Price the dealership owner will earn when exporting vehicles to your dealership
					['amount_to_owner'] = 1500,										-- Max amount of vehicles the owner will get when importing/exporting this vehicle
					['max_stock'] = 1500,											-- Max stock amount of this vehicle
					['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/seashark3.png',									-- Image file name of this vehicle inside nui/img (it can be a URL too)
					['type'] = 'boat',
					['page'] = 0													-- Set on which page this vehicle will appear
				},

				['fxho'] = {														-- The vehicle ID
					['name'] = "2011 Yamaha FX HO Waverunner",								-- The vehicle display name
					['price_to_customer'] = 500000,									-- Price the customer will pay when buy the product in dealership
					['price_to_owner'] = 228000,									-- Price the dealership owner must pay when importing vehicles to your dealership
					['price_to_export'] = 0,									-- Price the dealership owner will earn when exporting vehicles to your dealership
					['amount_to_owner'] = 1500,										-- Max amount of vehicles the owner will get when importing/exporting this vehicle
					['max_stock'] = 1500,											-- Max stock amount of this vehicle
					['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/fxho.png',									-- Image file name of this vehicle inside nui/img (it can be a URL too)
					['type'] = 'boat',
					['page'] = 0													-- Set on which page this vehicle will appear
				},

				['speeder'] = {														-- The vehicle ID
					['name'] = "Pegassi Speeder",								-- The vehicle display name
					['price_to_customer'] = 2000000,									-- Price the customer will pay when buy the product in dealership
					['price_to_owner'] = 1980000,									-- Price the dealership owner must pay when importing vehicles to your dealership
					['price_to_export'] = 0,									-- Price the dealership owner will earn when exporting vehicles to your dealership
					['amount_to_owner'] = 1500,										-- Max amount of vehicles the owner will get when importing/exporting this vehicle
					['max_stock'] = 1500,											-- Max stock amount of this vehicle
					['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/speeder.png',									-- Image file name of this vehicle inside nui/img (it can be a URL too)
					['type'] = 'boat',
					['page'] = 0													-- Set on which page this vehicle will appear
				},

				['1312'] = {														-- The vehicle ID
					['name'] = "2018 Aerob at SV12",								-- The vehicle display name
					['price_to_customer'] = 4000000,									-- Price the customer will pay when buy the product in dealership
					['price_to_owner'] = 2480000,									-- Price the dealership owner must pay when importing vehicles to your dealership
					['price_to_export'] = 0,									-- Price the dealership owner will earn when exporting vehicles to your dealership
					['amount_to_owner'] = 1500,										-- Max amount of vehicles the owner will get when importing/exporting this vehicle
					['max_stock'] = 1500,											-- Max stock amount of this vehicle
					['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/1312.png',									-- Image file name of this vehicle inside nui/img (it can be a URL too)
					['page'] = 0													-- Set on which page this vehicle will appear
				},

				['frauscher16'] = {														-- The vehicle ID
					['name'] = "2016 Frauscher Yacht",								-- The vehicle display name
					['price_to_customer'] = 10000000,									-- Price the customer will pay when buy the product in dealership
					['price_to_owner'] = 13000000,									-- Price the dealership owner must pay when importing vehicles to your dealership
					['price_to_export'] = 0,									-- Price the dealership owner will earn when exporting vehicles to your dealership
					['amount_to_owner'] = 1500,										-- Max amount of vehicles the owner will get when importing/exporting this vehicle
					['max_stock'] = 1500,											-- Max stock amount of this vehicle
					['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/frauscher16.png',									-- Image file name of this vehicle inside nui/img (it can be a URL too)
					['type'] = 'boat',
					['page'] = 0													-- Set on which page this vehicle will appear
				},

				['yacht2'] = {														-- The vehicle ID
					['name'] = "2022 Sea Ray L650 Express Yacht",								-- The vehicle display name
					['price_to_customer'] = 13000000,									-- Price the customer will pay when buy the product in dealership
					['price_to_owner'] = 13000000,									-- Price the dealership owner must pay when importing vehicles to your dealership
					['price_to_export'] = 0,									-- Price the dealership owner will earn when exporting vehicles to your dealership
					['amount_to_owner'] = 1500,										-- Max amount of vehicles the owner will get when importing/exporting this vehicle
					['max_stock'] = 1500,											-- Max stock amount of this vehicle
					['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/yacht2.png',									-- Image file name of this vehicle inside nui/img (it can be a URL too)
					['type'] = 'boat',
					['page'] = 0													-- Set on which page this vehicle will appear
				},

				['sr650fly'] = {														-- The vehicle ID
					['name'] = "2007 Sea Ray L650 Fly",								-- The vehicle display name
					['price_to_customer'] = 15000000,									-- Price the customer will pay when buy the product in dealership
					['price_to_owner'] = 13000000,									-- Price the dealership owner must pay when importing vehicles to your dealership
					['price_to_export'] = 0,									-- Price the dealership owner will earn when exporting vehicles to your dealership
					['amount_to_owner'] = 1500,										-- Max amount of vehicles the owner will get when importing/exporting this vehicle
					['max_stock'] = 1500,											-- Max stock amount of this vehicle
					['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sr650fly.png',									-- Image file name of this vehicle inside nui/img (it can be a URL too)
					['type'] = 'boat',
					['page'] = 0													-- Set on which page this vehicle will appear
				},

	 	},
	 	['pagination'] = {
			[0] = "Boote",
	 	},
	 	['blips'] = {															-- Create the blips on map
				['id'] = 0,														-- Blip ID [Set this value 0 to dont have blip]
				['name'] = "Bootsmarkt",									-- Blip Name
				['color'] = 4,														-- Blip Color
				['scale'] = 0.6,													-- Blip Scale
			}
	},

	['vanilla'] = {								-- Dealership type ID
		['stock_capacity'] = 150,					-- Max stock capacity
		['max_employees'] = 5,						-- Max employees
		['vehicles'] = {							-- Here you configure the vehicles on this dealership


		--------------------------------------------------------------------SUV JEEP
			['kamacho'] = {
				['name'] = "Canis Kamacho",
				['price_to_customer'] = 65000,									
				['price_to_owner'] = 55000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/kamacho.png',
				['page'] = 5
			},

			['granger'] = {
				['name'] = "Declasse Granger",
				['price_to_customer'] = 100000,									
				['price_to_owner'] = 90000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/granger.png',
				['page'] = 5
			},

			['ratloader2'] = {
				['name'] = "Bravado Rat-Truck",
				['price_to_customer'] = 40000,									
				['price_to_owner'] = 30000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ratloader2.png',
				['page'] = 5
			},

			['sandking'] = {
				['name'] = "Vapid Sandking ",
				['price_to_customer'] = 90000,									
				['price_to_owner'] = 80000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sandking.png',
				['page'] = 5
			},
		--------------------------------------------------------------------SUV JEEP END
		--------------------------------------------------------------------KLEINWAGEN
			['futo2'] = {
				['name'] = "Karin Futo GTX",
				['price_to_customer'] = 120000,									
				['price_to_owner'] = 110000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/futo2.png',
				['page'] = 0
			},

			['weevil'] = {
				['name'] = "BF Weevil",
				['price_to_customer'] = 87000,									
				['price_to_owner'] = 77000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/weevil.png',
				['page'] = 0
			},

			['panto'] = {
				['name'] = "Benefactor Panto",
				['price_to_customer'] = 20000,									
				['price_to_owner'] = 10000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/panto.png',
				['page'] = 0
			},

			['brioso'] = {
				['name'] = "Grotti Brioso",
				['price_to_customer'] = 20000,									
				['price_to_owner'] = 10000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/brioso.png',
				['page'] = 0
			},
		--------------------------------------------------------------------KLEINWAGEN END
		--------------------------------------------------------------------COUPE
			['peyote3'] = {
				['name'] = "Vapid Peyote Custom",
				['price_to_customer'] = 70000,									
				['price_to_owner'] = 60000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/peyote3.png',
				['page'] = 3
			},

			['buccaneer'] = {
				['name'] = "Albany Buccaneeer",
				['price_to_customer'] = 51000,									
				['price_to_owner'] = 42000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/buccaneer.png',
				['page'] = 3
			},

			['sultan3'] = {
				['name'] = "Karin Sultan RS",
				['price_to_customer'] = 80000,									
				['price_to_owner'] = 70000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sultan3.png',
				['page'] = 3
			},

			['faction'] = {
				['name'] = "Willard Faction",
				['price_to_customer'] = 46000,									
				['price_to_owner'] = 36000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/faction.png',
				['page'] = 3
			},

			['voodoo'] = {
				['name'] = "Declasse Voodoo Custom",
				['price_to_customer'] = 42000,									
				['price_to_owner'] = 32000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/voodoo.png',
				['page'] = 3
			},

			['faction2'] = {
				['name'] = "Willard Faction Custom",
				['price_to_customer'] = 56000,									
				['price_to_owner'] = 46000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/faction2.png',
				['page'] = 3
			},

			['vigero2'] = {
				['name'] = "Declasse Vigero ZX",
				['price_to_customer'] = 195000,									
				['price_to_owner'] = 185000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/vigero2.png',
				['page'] = 3
			},

			['rt3000'] = {
				['name'] = "Dinka RT3000",
				['price_to_customer'] = 170000,									
				['price_to_owner'] = 160000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rt3000.png',
				['page'] = 3
			},

			['euros'] = {
				['name'] = "Annis Euros",
				['price_to_customer'] = 180000,									
				['price_to_owner'] = 170000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/euros.png',
				['page'] = 3
			},

			['previon'] = {
				['name'] = "Karin Previon",
				['price_to_customer'] = 149000,									
				['price_to_owner'] = 139000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/previon.png',
				['page'] = 3
			},

			['tornado5'] = {
				['name'] = "Declasse Tornado Custom",
				['price_to_customer'] = 63000,									
				['price_to_owner'] = 53000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/tornado5.png',
				['page'] = 3
			},

			['virgo3'] = {
				['name'] = "Dundreary Virgo Classic",
				['price_to_customer'] = 42000,									
				['price_to_owner'] = 32000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/virgo3.png',
				['page'] = 3
			},

			['chino2'] = {
				['name'] = "Vapid Chino Custom",
				['price_to_customer'] = 68000,									
				['price_to_owner'] = 58000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/chino2.png',
				['page'] = 3
			},

			['calico'] = {
				['name'] = "Karin Calico GTF",
				['price_to_customer'] = 199000,									
				['price_to_owner'] = 189000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/calico.png',
				['page'] = 3
			},

			['cypher'] = {
				['name'] = "Ubermacht Cypher",
				['price_to_customer'] = 155000,									
				['price_to_owner'] = 145000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/cypher.png',
				['page'] = 3
			},

			['dominator7'] = {
				['name'] = "Vapid Dominator ASP",
				['price_to_customer'] = 177000,									
				['price_to_owner'] = 167000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/dominator7.png',
				['page'] = 3
			},

			['zr350'] = {
				['name'] = "Annis ZR350",
				['price_to_customer'] = 160000,									
				['price_to_owner'] = 150000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/zr350.png',
				['page'] = 3
			},

			['dominator8'] = {
				['name'] = "Vapid Dominator GTT",
				['price_to_customer'] = 122000,									
				['price_to_owner'] = 112000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/dominator8.png',
				['page'] = 3
			},

			['vectre'] = {
				['name'] = "Emperor Vectre",
				['price_to_customer'] = 178000,									
				['price_to_owner'] = 168000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/vectre.png',
				['page'] = 3
			},

			['sabregt2'] = {
				['name'] = "Declasse Sabre Turbo Custom",
				['price_to_customer'] = 49000,									
				['price_to_owner'] = 39000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/sabregt2.png',
				['page'] = 3
			},

			['tulip'] = {
				['name'] = "Declasse Sabre Turbo Custom",
				['price_to_customer'] = 72000,									
				['price_to_owner'] = 62000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/tulip.png',
				['page'] = 3
			},

			['ztype'] = {
				['name'] = "Truffade Z-Type",
				['price_to_customer'] = 250000,									
				['price_to_owner'] = 240000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/ztype.png',
				['page'] = 3
			},

			['hotknife'] = {
				['name'] = "Vapid Hotknife",
				['price_to_customer'] = 95000,									
				['price_to_owner'] = 85000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/hotknife.png',
				['page'] = 3
			},

			['hermes'] = {
				['name'] = "Albany Hermes",
				['price_to_customer'] = 95000,									
				['price_to_owner'] = 85000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/hermes.png',
				['page'] = 3
			},

			['faction3'] = {
				['name'] = "Willard Faction Custom Donk",
				['price_to_customer'] = 70000,									
				['price_to_owner'] = 60000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/faction3.png',
				['page'] = 3
			},

			['clique'] = {
				['name'] = "Vapid Clique",
				['price_to_customer'] = 90000,									
				['price_to_owner'] = 80000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/clique.png',
				['page'] = 3
			},

		--------------------------------------------------------------------COUPE END
		--------------------------------------------------------------------LIMOUSINE
			['vstr'] = {
				['name'] = "Albany V-STR",
				['price_to_customer'] = 115000,									
				['price_to_owner'] = 105000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/vstr.png',
				['page'] = 1
			},

			['exemplar'] = {
				['name'] = "Dewbauchee Exemplar",
				['price_to_customer'] = 60000,									
				['price_to_owner'] = 50000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/exemplar.png',
				['page'] = 1
			},

			['schafter3'] = {
				['name'] = "Benefactor Schafter V12",
				['price_to_customer'] = 128000,									
				['price_to_owner'] = 118000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/schafter3.png',
				['page'] = 1
			},

			['jugular'] = {
				['name'] = "Ocelot Jugular",
				['price_to_customer'] = 125000,									
				['price_to_owner'] = 115000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/jugular.png',
				['page'] = 1
			},

			['revolter'] = {
				['name'] = "Ubermacht Revolter",
				['price_to_customer'] = 160000,									
				['price_to_owner'] = 150000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/revolter.png',
				['page'] = 1
			},
		--------------------------------------------------------------------LIMOUSINE END
		--------------------------------------------------------------------VANS
			['moonbeam'] = {
				['name'] = "Declasse Moonbeam",
				['price_to_customer'] = 58000,									
				['price_to_owner'] = 48000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/moonbeam.png',
				['page'] = 4
			},

			['moonbeam2'] = {
				['name'] = "Declasse Moonbeam Custom",
				['price_to_customer'] = 68000,									
				['price_to_owner'] = 58000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/moonbeam2.png',
				['page'] = 4
			},

			['gburrito2'] = {
				['name'] = "Declasse Gang Burrito",
				['price_to_customer'] = 92000,									
				['price_to_owner'] = 82000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/gburrito2.png',
				['page'] = 4
			},

			['rumpo3'] = {
				['name'] = "Bravado Rampo Custom",
				['price_to_customer'] = 95000,									
				['price_to_owner'] = 85000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/rumpo3.png',
				['page'] = 4
			},

			['youga3'] = {
				['name'] = "Bravado Youga Classic 4x4",
				['price_to_customer'] = 130000,									
				['price_to_owner'] = 120000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/youga3.png',
				['page'] = 4
			},

			['mule3'] = {
				['name'] = "Maibatsu Mule",
				['price_to_customer'] = 45000,									
				['price_to_owner'] = 35000,										
				['price_to_export'] = 0,
				['amount_to_owner'] = 20,
				['max_stock'] = 150,
				['img'] = 'https://raw.githubusercontent.com/soniXx123/4B_Icons/main/mule3.png',
				['page'] = 4
			},
		--------------------------------------------------------------------VANS END


				

	 	},
	 	['pagination'] = {				-- Create pages to your vehicles
			[0] = "Kleinwagen",
			[1] = "Limousine",
			[2] = "Kombi",
			[3] = "Coupé",
			[4] = "Vans",
			[5] = "SUV/Jeep",
		},
	 	['blips'] = {															-- Create the blips on map
				['id'] = 0,														-- Blip ID [Set this value 0 to dont have blip]
				['name'] = "PDM Autohaus",										-- Blip Name
				['color'] = 4,													-- Blip Color
				['scale'] = 0.6,												-- Blip Scale
			}
	},
}

-- Cargo delivery locations
Config.delivery_locations = {
	[1] = { 1014.62, -3132.29, 5.91 }
}

-- Setting to remove inactive dealerships
Config.clear_dealerships = {
	['active'] = false,				-- Set to false to disable this function
	['min_stock_amount'] = 30,		-- Minimum percentage of stock to consider an inactive dealerships. Dealerships that have been inactive for a long time will be removed
	['min_stock_variety'] = 70,		-- Minimum percentage of variety of products in stock to consider an inactive dealerships. Dealerships that have been inactive for a long time will be removed
	['cooldown'] = 72				-- Time (in hours) that the dealerships needs to be below the minimum amount of stock to be removed
}

Config.hotkeys = {
	['openNui'] = 38,		-- E
	['testDrive'] = 38,		-- E
	['buyVehicle'] = 29,	-- B
	['unlockTruck'] = 182 	-- L
}

Config.createTable = true