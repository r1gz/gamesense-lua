slot1 = {
	function ()
		return _G[uv0({
			7,
			1452,
			1453,
			1451,
			1442,
			1447,
			1440
		})]
	end,
	function ()
		return _G[uv0({
			7,
			1452,
			1453,
			1451,
			1442,
			1447,
			1440
		})]
	end
}
slot2 = {
	function ()
		return _G[uv0({
			6,
			1438,
			1451,
			1451,
			1448,
			1451
		})]
	end,
	function ()
		return _G[uv0({
			6,
			1438,
			1451,
			1451,
			1448,
			1451
		})]
	end
}
slot4 = require("surface")
slot5 = require("ffi")

slot5.cdef([[
    typedef void*(__thiscall* get_client_entity_t)(void*, int); // 3
    typedef void*(__thiscall* get_client_networkable_t)(void*, int); // 0
    typedef void*(__thiscall* get_client_unknown_t)(void*); // 0
    typedef void*(__thiscall* get_client_renderable_t)(void*); // 2
    typedef const void*(__thiscall* get_model_t)(void*); // 8
    typedef void*(__thiscall* get_studio_model_t)(void*, const void*); // 32
    typedef int(__fastcall* get_sequence_activity_t)(void*, void*, int);

    struct animation_layer_t {
        char pad20[24];
        uint32_t m_nSequence;
        float m_flPrevCycle;
        float m_flWeight;
        char pad20[8];
        float m_flCycle;
        void *m_pOwner;
        char pad_0038[ 4 ];
    };

    struct ccsweaponinfo_t
    {
        char    pad_0008[17];
        int	    m_max_clip;
    };
    typedef struct ccsweaponinfo_t*(__thiscall* get_ccs_weapon_info_t)(void*);
]])

slot6 = slot5.typeof("void***")
slot8 = slot5.cast(slot6, client.create_interface("client_panorama.dll", function (slot0)
	for slot5 = 2, slot0[1], 1 do
		slot1 = "" .. string.char(slot0[slot5] - 1337)
	end

	return slot1
end({
	21,
	1423,
	1404,
	1445,
	1442,
	1438,
	1447,
	1453,
	1406,
	1447,
	1453,
	1442,
	1453,
	1458,
	1413,
	1442,
	1452,
	1453,
	1385,
	1385,
	1388
})) or slot2[1]()(slot0({
	33,
	1423,
	1404,
	1445,
	1442,
	1438,
	1447,
	1453,
	1406,
	1447,
	1453,
	1442,
	1453,
	1458,
	1413,
	1442,
	1452,
	1453,
	1385,
	1385,
	1388,
	1369,
	1456,
	1434,
	1452,
	1447,
	1453,
	1369,
	1439,
	1448,
	1454,
	1447,
	1437
}), 2)) or slot2[1]()(slot0({
	22,
	1451,
	1434,
	1456,
	1442,
	1438,
	1447,
	1453,
	1442,
	1453,
	1458,
	1445,
	1442,
	1452,
	1453,
	1369,
	1442,
	1452,
	1369,
	1447,
	1442,
	1445
}), 2)
slot9 = slot5.cast(slot0({
	25,
	1440,
	1438,
	1453,
	1432,
	1436,
	1445,
	1442,
	1438,
	1447,
	1453,
	1432,
	1447,
	1438,
	1453,
	1456,
	1448,
	1451,
	1444,
	1434,
	1435,
	1445,
	1438,
	1432,
	1453
}), slot8[0][0]) or slot2[1]()(slot0({
	32,
	1440,
	1438,
	1453,
	1432,
	1436,
	1445,
	1442,
	1438,
	1447,
	1453,
	1432,
	1447,
	1438,
	1453,
	1456,
	1448,
	1451,
	1444,
	1434,
	1435,
	1445,
	1438,
	1432,
	1453,
	1369,
	1442,
	1452,
	1369,
	1447,
	1442,
	1445
}), 2)
slot10 = slot5.cast(slot0({
	20,
	1440,
	1438,
	1453,
	1432,
	1436,
	1445,
	1442,
	1438,
	1447,
	1453,
	1432,
	1438,
	1447,
	1453,
	1442,
	1453,
	1458,
	1432,
	1453
}), slot8[0][3]) or slot2[1]()(slot0({
	25,
	1440,
	1438,
	1453,
	1432,
	1436,
	1445,
	1442,
	1438,
	1447,
	1453,
	1432,
	1438,
	1447,
	1453,
	1442,
	1453,
	1458,
	1369,
	1442,
	1452,
	1369,
	1447,
	1442,
	1445
}), 2)
slot13 = slot5.cast(slot0({
	19,
	1440,
	1438,
	1453,
	1432,
	1452,
	1453,
	1454,
	1437,
	1442,
	1448,
	1432,
	1446,
	1448,
	1437,
	1438,
	1445,
	1432,
	1453
}), slot5.cast(slot6, client.create_interface("engine.dll", slot0({
	20,
	1423,
	1414,
	1448,
	1437,
	1438,
	1445,
	1410,
	1447,
	1439,
	1448,
	1404,
	1445,
	1442,
	1438,
	1447,
	1453,
	1385,
	1385,
	1389
}))) or slot2[1]()(slot0({
	22,
	1451,
	1434,
	1456,
	1442,
	1455,
	1446,
	1448,
	1437,
	1438,
	1445,
	1442,
	1447,
	1439,
	1448,
	1369,
	1442,
	1452,
	1369,
	1447,
	1442,
	1445
}), 2)[0][32])
slot14 = client.find_signature("client_panorama.dll", "U\\x8b\\xecS\\x8b]V\\x8b\\xf1\\x83") or slot2[1]()(slot0({
	27,
	1438,
	1451,
	1451,
	1448,
	1451,
	1369,
	1440,
	1438,
	1453,
	1453,
	1442,
	1447,
	1440,
	1369,
	1452,
	1438,
	1450,
	1432,
	1434,
	1436,
	1453,
	1442,
	1455,
	1442,
	1453,
	1458
}))

function slot15(slot0)
	if slot0 then
		slot0 = uv0.cast(uv1, slot0)

		if uv0.cast(uv2({
			21,
			1440,
			1438,
			1453,
			1432,
			1436,
			1445,
			1442,
			1438,
			1447,
			1453,
			1432,
			1454,
			1447,
			1444,
			1447,
			1448,
			1456,
			1447,
			1432,
			1453
		}), slot0[0][0])(slot0) or uv3[1]()(uv2({
			29,
			1438,
			1451,
			1451,
			1448,
			1451,
			1369,
			1440,
			1438,
			1453,
			1453,
			1442,
			1447,
			1440,
			1369,
			1436,
			1445,
			1442,
			1438,
			1447,
			1453,
			1369,
			1454,
			1447,
			1444,
			1447,
			1448,
			1456,
			1447
		}), 2) then
			slot2 = uv0.cast(uv1, slot2)

			if uv0.cast(uv2({
				24,
				1440,
				1438,
				1453,
				1432,
				1436,
				1445,
				1442,
				1438,
				1447,
				1453,
				1432,
				1451,
				1438,
				1447,
				1437,
				1438,
				1451,
				1434,
				1435,
				1445,
				1438,
				1432,
				1453
			}), slot2[0][5])(slot2) or uv3[1]()(uv2({
				32,
				1438,
				1451,
				1451,
				1448,
				1451,
				1369,
				1440,
				1438,
				1453,
				1453,
				1442,
				1447,
				1440,
				1369,
				1436,
				1445,
				1442,
				1438,
				1447,
				1453,
				1369,
				1451,
				1438,
				1447,
				1437,
				1438,
				1451,
				1434,
				1435,
				1445,
				1438
			}), 2) then
				slot3 = uv0.cast(uv1, slot3)

				return uv0.cast(uv2({
					12,
					1440,
					1438,
					1453,
					1432,
					1446,
					1448,
					1437,
					1438,
					1445,
					1432,
					1453
				}), slot3[0][8])(slot3) or uv3[1]()(uv2({
					22,
					1438,
					1451,
					1451,
					1448,
					1451,
					1369,
					1440,
					1438,
					1453,
					1453,
					1442,
					1447,
					1440,
					1369,
					1446,
					1448,
					1437,
					1438,
					1445,
					1432,
					1453
				}), 2)
			end
		end
	end
end

function slot16(slot0, slot1, slot2)
	slot0 = uv0.cast(uv1, slot0)

	if uv2(uv3, uv4(slot1)) == nil then
		return -1
	end

	return uv0.cast(uv5({
		24,
		1440,
		1438,
		1453,
		1432,
		1452,
		1438,
		1450,
		1454,
		1438,
		1447,
		1436,
		1438,
		1432,
		1434,
		1436,
		1453,
		1442,
		1455,
		1442,
		1453,
		1458,
		1432,
		1453
	}), uv6)(slot0, slot3, slot2)
end

function slot17(slot0, slot1)
	return uv0.cast("struct animation_layer_t**", uv0.cast("char*", uv0.cast(uv1, slot0)) + 10624)[0][slot1 or 1]
end

slot18 = ui.get
slot19 = ui.set
slot20 = entity.get_local_player
slot21 = entity.get_bounding_box
slot22 = entity.get_prop
slot23 = entity.get_all
slot24 = entity.get_player_name
slot25 = entity.get_player_weapon
slot26 = {
	menu = {
		slot0({
			8,
			1423,
			1442,
			1452,
			1454,
			1434,
			1445,
			1452
		}),
		slot0({
			11,
			1417,
			1445,
			1434,
			1458,
			1438,
			1451,
			1369,
			1406,
			1420,
			1417
		})
	},
	call = function (slot0, slot1, slot2, ...)
		if slot1 == nil then
			return
		end

		slot3 = slot2[2] or ""

		if slot2[1] ~= nil then
			if slot3 ~= "" then
				slot3 = slot3 .. uv0({
					2,
					1369
				}) or slot3
			end

			slot3 = slot3 .. "\n " .. slot2[1]
		end

		return slot1(slot0.menu[1], slot0.menu[2], slot3, ...)
	end
}
slot27[MULTRES] = slot0()
slot27, slot28 = ui.reference(slot26.menu[1], slot26.menu[2], slot0({
	13,
	1403,
	1448,
	1454,
	1447,
	1437,
	1442,
	1447,
	1440,
	1369,
	1435,
	1448,
	1457
}))
slot29 = ui.reference(slot26.menu[1], slot26.menu[2], slot0({
	11,
	1409,
	1438,
	1434,
	1445,
	1453,
	1441,
	1369,
	1435,
	1434,
	1451
}))
slot30, slot31 = ui.reference(slot26.menu[1], slot26.menu[2], slot0({
	5,
	1415,
	1434,
	1446,
	1438
}))
slot32 = ui.reference(slot26.menu[1], slot26.menu[2], slot0({
	12,
	1424,
	1438,
	1434,
	1449,
	1448,
	1447,
	1369,
	1453,
	1438,
	1457,
	1453
}))
slot33 = ui.reference(slot26.menu[1], slot26.menu[2], slot0({
	12,
	1424,
	1438,
	1434,
	1449,
	1448,
	1447,
	1369,
	1442,
	1436,
	1448,
	1447
}))
slot34, slot35 = ui.reference(slot26.menu[1], slot26.menu[2], slot0({
	5,
	1402,
	1446,
	1446,
	1448
}))
slot36 = ui.reference(slot26.menu[1], slot26.menu[2], slot0({
	6,
	1407,
	1445,
	1434,
	1440,
	1452
}))
slot37 = ui.new_checkbox(slot26.menu[1], slot26.menu[2], slot0({
	18,
	1406,
	1447,
	1434,
	1435,
	1445,
	1438,
	1369,
	1436,
	1454,
	1452,
	1453,
	1448,
	1446,
	1369,
	1438,
	1452,
	1449
}))
slot38 = {
	bounding_box = slot26:call(ui.new_checkbox, {
		slot0({
			17,
			1438,
			1452,
			1449,
			1432,
			1435,
			1448,
			1454,
			1447,
			1437,
			1442,
			1447,
			1440,
			1432,
			1435,
			1448,
			1457
		}),
		slot0({
			13,
			1403,
			1448,
			1454,
			1447,
			1437,
			1442,
			1447,
			1440,
			1369,
			1435,
			1448,
			1457
		})
	}),
	bounding_box_picker = slot26:call(ui.new_color_picker, {
		slot0({
			24,
			1438,
			1452,
			1449,
			1432,
			1435,
			1448,
			1454,
			1447,
			1437,
			1442,
			1447,
			1440,
			1432,
			1435,
			1448,
			1457,
			1432,
			1449,
			1442,
			1436,
			1444,
			1438,
			1451
		}),
		slot0({
			24,
			1438,
			1452,
			1449,
			1432,
			1435,
			1448,
			1454,
			1447,
			1437,
			1442,
			1447,
			1440,
			1432,
			1435,
			1448,
			1457,
			1432,
			1449,
			1442,
			1436,
			1444,
			1438,
			1451
		})
	}, 130, 156, 212, 255),
	c_bounding_box = slot26:call(ui.new_checkbox, {
		slot0({
			19,
			1438,
			1452,
			1449,
			1432,
			1436,
			1432,
			1435,
			1448,
			1454,
			1447,
			1437,
			1442,
			1447,
			1440,
			1432,
			1435,
			1448,
			1457
		}),
		slot0({
			11,
			1404,
			1448,
			1451,
			1447,
			1438,
			1451,
			1369,
			1435,
			1448,
			1457
		})
	}),
	corner_width = slot26:call(ui.new_slider, {
		nil,
		"Corner Width / Height"
	}, 0, 100, 25, true, "%"),
	corner_height = slot26:call(ui.new_slider, {
		slot0({
			33,
			1438,
			1452,
			1449,
			1432,
			1436,
			1432,
			1435,
			1448,
			1454,
			1447,
			1437,
			1442,
			1447,
			1440,
			1432,
			1435,
			1448,
			1457,
			1432,
			1436,
			1448,
			1451,
			1447,
			1438,
			1451,
			1432,
			1441,
			1438,
			1442,
			1440,
			1441,
			1453
		})
	}, 0, 100, 13, true, "%"),
	health_bar = slot26:call(ui.new_checkbox, {
		slot0({
			15,
			1438,
			1452,
			1449,
			1432,
			1441,
			1438,
			1434,
			1445,
			1453,
			1441,
			1432,
			1435,
			1434,
			1451
		}),
		slot0({
			11,
			1409,
			1438,
			1434,
			1445,
			1453,
			1441,
			1369,
			1435,
			1434,
			1451
		})
	}),
	c_health_bar = slot26:call(ui.new_checkbox, {
		slot0({
			17,
			1438,
			1452,
			1449,
			1432,
			1436,
			1432,
			1441,
			1438,
			1434,
			1445,
			1453,
			1441,
			1432,
			1435,
			1434,
			1451
		}),
		slot0({
			18,
			1404,
			1454,
			1452,
			1453,
			1448,
			1446,
			1369,
			1441,
			1438,
			1434,
			1445,
			1453,
			1441,
			1369,
			1435,
			1434,
			1451
		})
	}),
	name = slot26:call(ui.new_checkbox, {
		slot0({
			9,
			1438,
			1452,
			1449,
			1432,
			1447,
			1434,
			1446,
			1438
		}),
		slot0({
			5,
			1415,
			1434,
			1446,
			1438
		})
	}),
	name_picker = slot26:call(ui.new_color_picker, {
		slot0({
			16,
			1438,
			1452,
			1449,
			1432,
			1447,
			1434,
			1446,
			1438,
			1432,
			1449,
			1442,
			1436,
			1444,
			1438,
			1451
		}),
		slot0({
			16,
			1438,
			1452,
			1449,
			1432,
			1447,
			1434,
			1446,
			1438,
			1432,
			1449,
			1442,
			1436,
			1444,
			1438,
			1451
		})
	}, 130, 156, 212, 255),
	c_name = slot26:call(ui.new_checkbox, {
		slot0({
			11,
			1438,
			1452,
			1449,
			1432,
			1436,
			1432,
			1447,
			1434,
			1446,
			1438
		}),
		slot0({
			12,
			1404,
			1454,
			1452,
			1453,
			1448,
			1446,
			1369,
			1447,
			1434,
			1446,
			1438
		})
	}),
	weapon_text = slot26:call(ui.new_checkbox, {
		slot0({
			16,
			1438,
			1452,
			1449,
			1432,
			1456,
			1438,
			1434,
			1449,
			1448,
			1447,
			1432,
			1453,
			1438,
			1457,
			1453
		}),
		slot0({
			12,
			1424,
			1438,
			1434,
			1449,
			1448,
			1447,
			1369,
			1453,
			1438,
			1457,
			1453
		})
	}),
	c_weapon_text = slot26:call(ui.new_checkbox, {
		slot0({
			18,
			1438,
			1452,
			1449,
			1432,
			1436,
			1432,
			1456,
			1438,
			1434,
			1449,
			1448,
			1447,
			1432,
			1453,
			1438,
			1457,
			1453
		}),
		slot0({
			19,
			1404,
			1454,
			1452,
			1453,
			1448,
			1446,
			1369,
			1456,
			1438,
			1434,
			1449,
			1448,
			1447,
			1369,
			1453,
			1438,
			1457,
			1453
		})
	}),
	weapon_text_picker = slot26:call(ui.new_color_picker, {
		slot0({
			23,
			1438,
			1452,
			1449,
			1432,
			1456,
			1438,
			1434,
			1449,
			1448,
			1447,
			1432,
			1453,
			1438,
			1457,
			1453,
			1432,
			1449,
			1442,
			1436,
			1444,
			1438,
			1451
		}),
		slot0({
			23,
			1438,
			1452,
			1449,
			1432,
			1456,
			1438,
			1434,
			1449,
			1448,
			1447,
			1432,
			1453,
			1438,
			1457,
			1453,
			1432,
			1449,
			1442,
			1436,
			1444,
			1438,
			1451
		})
	}, 130, 156, 212, 255),
	ammo = slot26:call(ui.new_checkbox, {
		slot0({
			9,
			1438,
			1452,
			1449,
			1432,
			1434,
			1446,
			1446,
			1448
		}),
		slot0({
			5,
			1402,
			1446,
			1446,
			1448
		})
	}),
	ammo_picker = slot26:call(ui.new_color_picker, {
		slot0({
			16,
			1438,
			1452,
			1449,
			1432,
			1434,
			1446,
			1446,
			1448,
			1432,
			1449,
			1442,
			1436,
			1444,
			1438,
			1451
		}),
		slot0({
			16,
			1438,
			1452,
			1449,
			1432,
			1434,
			1446,
			1446,
			1448,
			1432,
			1449,
			1442,
			1436,
			1444,
			1438,
			1451
		})
	}, 130, 156, 212, 255),
	c_ammo = slot26:call(ui.new_checkbox, {
		slot0({
			11,
			1438,
			1452,
			1449,
			1432,
			1436,
			1432,
			1434,
			1446,
			1446,
			1448
		}),
		slot0({
			12,
			1404,
			1454,
			1452,
			1453,
			1448,
			1446,
			1369,
			1434,
			1446,
			1446,
			1448
		})
	}),
	flags = slot26:call(ui.new_checkbox, {
		slot0({
			10,
			1438,
			1452,
			1449,
			1432,
			1439,
			1445,
			1434,
			1440,
			1452
		}),
		slot0({
			6,
			1407,
			1445,
			1434,
			1440,
			1452
		})
	}),
	c_flags = slot26:call(ui.new_checkbox, {
		slot0({
			10,
			1438,
			1452,
			1449,
			1432,
			1439,
			1445,
			1434,
			1440,
			1452
		}),
		slot0({
			13,
			1404,
			1454,
			1452,
			1453,
			1448,
			1446,
			1369,
			1439,
			1445,
			1434,
			1440,
			1452
		})
	})
}
slot42[MULTRES] = slot0()
slot42[MULTRES] = slot0()
slot42[MULTRES] = slot0()
slot42[1] = slot0({
	32,
	1438,
	1452,
	1449,
	1432,
	1436,
	1432,
	1435,
	1448,
	1454,
	1447,
	1437,
	1442,
	1447,
	1440,
	1432,
	1435,
	1448,
	1457,
	1432,
	1436,
	1448,
	1451,
	1447,
	1438,
	1451,
	1432,
	1456,
	1442,
	1437,
	1453,
	1441
})
slot42[MULTRES] = slot0()
slot42[MULTRES] = slot0()
slot42[MULTRES] = slot0()
slot42[MULTRES] = slot0()
slot42[MULTRES] = slot0()
slot42[MULTRES] = slot0()
slot42[MULTRES] = slot0()
slot42[MULTRES] = slot0()
slot42[MULTRES] = slot0()
slot42[MULTRES] = slot0()
slot42[MULTRES] = slot0()
slot42[MULTRES] = slot0()
slot42[MULTRES] = slot0()

for slot44, slot45 in ({
	function ()
		return _G[uv0({
			6,
			1449,
			1434,
			1442,
			1451,
			1452
		})]
	end,
	function ()
		return _G[uv0({
			6,
			1449,
			1434,
			1442,
			1451,
			1452
		})]
	end
})[1]()({
	["Smallest Pixel-7"] = "Smallest Pixel-7",
	[slot0({
		8,
		1423,
		1438,
		1451,
		1437,
		1434,
		1447,
		1434
	})] = slot0({
		8,
		1423,
		1438,
		1451,
		1437,
		1434,
		1447,
		1434
	}),
	[slot0({
		10,
		1409,
		1438,
		1445,
		1455,
		1438,
		1453,
		1442,
		1436,
		1434
	})] = slot0({
		27,
		1409,
		1438,
		1445,
		1455,
		1438,
		1453,
		1442,
		1436,
		1434,
		1369,
		1404,
		1458,
		1451,
		1442,
		1445,
		1445,
		1442,
		1436,
		1369,
		1416,
		1435,
		1445,
		1442,
		1450,
		1454,
		1438
	}),
	[slot0({
		11,
		1415,
		1442,
		1451,
		1446,
		1434,
		1445,
		1434,
		1369,
		1422,
		1410
	})] = slot0({
		11,
		1415,
		1442,
		1451,
		1446,
		1434,
		1445,
		1434,
		1369,
		1422,
		1410
	}),
	[slot0({
		7,
		1422,
		1435,
		1454,
		1447,
		1453,
		1454
	})] = slot0({
		7,
		1422,
		1435,
		1454,
		1447,
		1453,
		1454
	}),
	[slot0({
		8,
		1417,
		1421,
		1369,
		1420,
		1434,
		1447,
		1452
	})] = slot0({
		8,
		1417,
		1421,
		1369,
		1420,
		1434,
		1447,
		1452
	})
}) do
	table.insert({}, slot44)
end

table.sort(slot40)

for slot46, slot47 in slot3[1]()({
	[slot0({
		5,
		1421,
		1409,
		1410,
		1415
	})] = 100,
	[slot0({
		11,
		1406,
		1425,
		1421,
		1419,
		1402,
		1413,
		1410,
		1408,
		1409,
		1421
	})] = 200,
	[slot0({
		6,
		1413,
		1410,
		1408,
		1409,
		1421
	})] = 300,
	[slot0({
		7,
		1415,
		1416,
		1419,
		1414,
		1402,
		1413
	})] = 400,
	[slot0({
		7,
		1414,
		1406,
		1405,
		1410,
		1422,
		1414
	})] = 500,
	[slot0({
		9,
		1420,
		1406,
		1414,
		1410,
		1403,
		1416,
		1413,
		1405
	})] = 600,
	[slot0({
		5,
		1403,
		1416,
		1413,
		1405
	})] = 700,
	[slot0({
		10,
		1406,
		1425,
		1421,
		1419,
		1402,
		1403,
		1416,
		1413,
		1405
	})] = 800,
	[slot0({
		6,
		1409,
		1406,
		1402,
		1423,
		1426
	})] = 900
}) do
	table.insert({}, slot46)
end

table.sort(slot42)

slot43 = ui.new_combobox(slot26.menu[1], slot26.menu[2], slot0({
	6,
	1407,
	1448,
	1447,
	1453,
	1452
}), slot40)
slot44 = ui.new_combobox(slot26.menu[1], slot26.menu[2], slot0({
	13,
	1407,
	1448,
	1447,
	1453,
	1369,
	1456,
	1438,
	1442,
	1440,
	1441,
	1453,
	1452
}), slot42)

ui.set(slot43, "Smallest Pixel-7")
ui.set(slot44, slot0({
	5,
	1421,
	1409,
	1410,
	1415
}))

slot46 = {
	nil,
	nil,
	"Five-SeveN",
	"Glock-18",
	nil,
	nil,
	"AK-47",
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	nil,
	"MAC-10",
	nil,
	nil,
	nil,
	nil,
	nil,
	"MP5-SD",
	"UMP-45",
	nil,
	"PP-Bizon",
	"MAG-7",
	nil,
	"Sawed-Off",
	"Tec-9",
	slot0({
		6,
		1421,
		1434,
		1452,
		1438,
		1451
	}),
	slot0({
		6,
		1417,
		1387,
		1385,
		1385,
		1385
	}),
	slot0({
		4,
		1414,
		1417,
		1392
	}),
	slot0({
		4,
		1414,
		1417,
		1394
	}),
	slot0({
		5,
		1415,
		1448,
		1455,
		1434
	}),
	slot0({
		5,
		1417,
		1387,
		1390,
		1385
	}),
	[38.0] = "SCAR-20",
	[60.0] = "M4A1-S",
	[61.0] = "USP-S",
	[63.0] = "CZ75-Auto",
	[39] = slot0({
		7,
		1420,
		1408,
		1369,
		1390,
		1390,
		1388
	}),
	[40] = slot0({
		7,
		1420,
		1420,
		1408,
		1369,
		1385,
		1393
	}),
	[41] = slot0({
		6,
		1412,
		1447,
		1442,
		1439,
		1438
	}),
	[42] = slot0({
		6,
		1412,
		1447,
		1442,
		1439,
		1438
	}),
	[43] = slot0({
		10,
		1407,
		1445,
		1434,
		1452,
		1441,
		1435,
		1434,
		1447,
		1440
	}),
	[44] = slot0({
		11,
		1409,
		1406,
		1369,
		1408,
		1451,
		1438,
		1447,
		1434,
		1437,
		1438
	}),
	[45] = slot0({
		6,
		1420,
		1446,
		1448,
		1444,
		1438
	}),
	[46] = slot0({
		8,
		1414,
		1448,
		1445,
		1448,
		1453,
		1448,
		1455
	}),
	[47] = slot0({
		6,
		1405,
		1438,
		1436,
		1448,
		1458
	}),
	[48] = slot0({
		11,
		1410,
		1447,
		1436,
		1438,
		1447,
		1437,
		1442,
		1434,
		1451,
		1458
	}),
	[49] = slot0({
		3,
		1404,
		1389
	}),
	[59] = slot0({
		6,
		1412,
		1447,
		1442,
		1439,
		1438
	}),
	[64] = slot0({
		12,
		1419,
		1393,
		1369,
		1419,
		1438,
		1455,
		1448,
		1445,
		1455,
		1438,
		1451
	}),
	[500] = slot0({
		8,
		1403,
		1434,
		1458,
		1448,
		1447,
		1438,
		1453
	}),
	[505] = slot0({
		11,
		1407,
		1445,
		1442,
		1449,
		1369,
		1412,
		1447,
		1442,
		1439,
		1438
	}),
	[506] = slot0({
		10,
		1408,
		1454,
		1453,
		1369,
		1412,
		1447,
		1442,
		1439,
		1438
	}),
	[507] = slot0({
		9,
		1412,
		1434,
		1451,
		1434,
		1446,
		1435,
		1442,
		1453
	}),
	[508] = slot0({
		11,
		1414,
		1394,
		1369,
		1403,
		1434,
		1458,
		1448,
		1447,
		1438,
		1453
	}),
	[509] = slot0({
		15,
		1409,
		1454,
		1447,
		1453,
		1452,
		1446,
		1434,
		1447,
		1369,
		1412,
		1447,
		1442,
		1439,
		1438
	}),
	[512] = slot0({
		15,
		1407,
		1434,
		1445,
		1436,
		1441,
		1442,
		1448,
		1447,
		1369,
		1412,
		1447,
		1442,
		1439,
		1438
	}),
	[514] = slot0({
		12,
		1403,
		1448,
		1456,
		1442,
		1438,
		1369,
		1412,
		1447,
		1442,
		1439,
		1438
	}),
	[515] = slot0({
		16,
		1403,
		1454,
		1453,
		1453,
		1438,
		1451,
		1439,
		1445,
		1458,
		1369,
		1412,
		1447,
		1442,
		1439,
		1438
	}),
	[516] = slot0({
		15,
		1420,
		1441,
		1434,
		1437,
		1448,
		1456,
		1369,
		1405,
		1434,
		1440,
		1440,
		1438,
		1451,
		1452
	}),
	[519] = slot0({
		12,
		1422,
		1451,
		1452,
		1454,
		1452,
		1369,
		1412,
		1447,
		1442,
		1439,
		1438
	}),
	[520] = slot0({
		13,
		1415,
		1434,
		1455,
		1434,
		1443,
		1434,
		1369,
		1412,
		1447,
		1442,
		1439,
		1438
	}),
	[522] = slot0({
		14,
		1420,
		1442,
		1445,
		1438,
		1453,
		1453,
		1448,
		1369,
		1412,
		1447,
		1442,
		1439,
		1438
	}),
	[523] = slot0({
		12,
		1421,
		1434,
		1445,
		1448,
		1447,
		1369,
		1412,
		1447,
		1442,
		1439,
		1438
	}),
	[524] = slot0({
		14,
		1404,
		1445,
		1434,
		1452,
		1452,
		1442,
		1436,
		1369,
		1412,
		1447,
		1442,
		1439,
		1438
	})
}
slot46[1] = slot0({
	13,
	1405,
	1438,
	1452,
	1438,
	1451,
	1453,
	1369,
	1406,
	1434,
	1440,
	1445,
	1438
})
slot46[2] = slot0({
	14,
	1405,
	1454,
	1434,
	1445,
	1369,
	1403,
	1438,
	1451,
	1438,
	1453,
	1453,
	1434,
	1452
})
slot46[8] = slot0({
	4,
	1402,
	1422,
	1408
})
slot46[9] = slot0({
	4,
	1402,
	1424,
	1417
})
slot46[10] = slot0({
	6,
	1407,
	1402,
	1414,
	1402,
	1420
})
slot46[11] = slot0({
	6,
	1408,
	1388,
	1420,
	1408,
	1386
})
slot46[13] = slot0({
	9,
	1408,
	1434,
	1445,
	1442,
	1445,
	1369,
	1402,
	1419
})
slot46[14] = slot0({
	5,
	1414,
	1387,
	1389,
	1394
})
slot46[16] = slot0({
	5,
	1414,
	1389,
	1402,
	1389
})
slot46[19] = slot0({
	4,
	1417,
	1394,
	1385
})
slot46[25] = slot0({
	7,
	1425,
	1414,
	1386,
	1385,
	1386,
	1389
})
slot46[28] = slot0({
	6,
	1415,
	1438,
	1440,
	1438,
	1455
})
slot47 = {
	[49.0] = true,
	[508.0] = true,
	[42.0] = true,
	[506.0] = true,
	[507.0] = true,
	[46.0] = true,
	[505.0] = true,
	[509.0] = true,
	[514.0] = true,
	[500.0] = true,
	[43.0] = true,
	[47.0] = true,
	[515.0] = true,
	[516.0] = true,
	[520.0] = true,
	[522.0] = true,
	[59.0] = true,
	[523.0] = true,
	[44.0] = true,
	[48.0] = true,
	[41.0] = true,
	[45.0] = true,
	[519.0] = true,
	[31.0] = true,
	[512.0] = true
}

function slot48(slot0, slot1)
	if slot0 == nil then
		return
	end

	for slot5, slot6 in uv0[1]()(slot1) do
		slot0(slot5, slot6)
	end
end

function slot49(slot0, slot1)
	slot3 = slot1 ~= nil and slot1 or true
	slot4 = {}

	for slot9 = 1, globals.maxplayers(), 1 do
		if uv2(uv0(uv1({
			18,
			1404,
			1404,
			1420,
			1417,
			1445,
			1434,
			1458,
			1438,
			1451,
			1419,
			1438,
			1452,
			1448,
			1454,
			1451,
			1436,
			1438
		}))[1], uv1({
			13,
			1446,
			1432,
			1435,
			1404,
			1448,
			1447,
			1447,
			1438,
			1436,
			1453,
			1438,
			1437
		}), slot9) == 1 then
			slot10 = nil

			if slot0 ~= nil and slot0 or false then
				slot10 = uv2(uv3(), uv1({
					11,
					1446,
					1432,
					1442,
					1421,
					1438,
					1434,
					1446,
					1415,
					1454,
					1446
				}))
			end

			slot11 = true

			if slot2 and uv2(slot9, uv1({
				11,
				1446,
				1432,
				1442,
				1421,
				1438,
				1434,
				1446,
				1415,
				1454,
				1446
			})) == slot10 then
				slot11 = false
			end

			if slot9 == uv3() then
				slot11 = false
			end

			if slot11 then
				slot12 = true

				if slot3 and not entity.is_alive(slot9) then
					slot12 = false
				end

				if slot12 then
					table.insert(slot4, slot9)
				end
			end
		end
	end

	return slot4
end

slot50 = nil

function slot51()
	uv3 = renderer.create_font(uv4[uv0(uv1)], uv0(uv5), uv6[uv0(uv2)], {
		128,
		0
	})
end

ui.set_callback(slot43, slot51)
ui.set_callback(slot44, slot51)
ui.set_callback(ui.new_slider(slot26.menu[1], slot26.menu[2], "Tall / Font size", 0, 20, 11, true, slot0({
	3,
	1449,
	1457
})), slot51)
slot51()

function slot52(slot0)
	if uv0(uv0(slot0, uv1({
		16,
		1446,
		1432,
		1441,
		1402,
		1436,
		1453,
		1442,
		1455,
		1438,
		1424,
		1438,
		1434,
		1449,
		1448,
		1447
	})), uv1({
		23,
		1446,
		1432,
		1442,
		1410,
		1453,
		1438,
		1446,
		1405,
		1438,
		1439,
		1442,
		1447,
		1442,
		1453,
		1442,
		1448,
		1447,
		1410,
		1447,
		1437,
		1438,
		1457
	})) ~= nil then
		return uv2[bit.band(uv0(slot1, uv1({
			23,
			1446,
			1432,
			1442,
			1410,
			1453,
			1438,
			1446,
			1405,
			1438,
			1439,
			1442,
			1447,
			1442,
			1453,
			1442,
			1448,
			1447,
			1410,
			1447,
			1437,
			1438,
			1457
		})), 65535)]
	end

	return 0
end

function slot53(slot0)
	if uv0(uv0(slot0, uv1({
		16,
		1446,
		1432,
		1441,
		1402,
		1436,
		1453,
		1442,
		1455,
		1438,
		1424,
		1438,
		1434,
		1449,
		1448,
		1447
	})), uv1({
		23,
		1446,
		1432,
		1442,
		1410,
		1453,
		1438,
		1446,
		1405,
		1438,
		1439,
		1442,
		1447,
		1442,
		1453,
		1442,
		1448,
		1447,
		1410,
		1447,
		1437,
		1438,
		1457
	})) ~= nil then
		return uv2[bit.band(uv0(slot1, uv1({
			23,
			1446,
			1432,
			1442,
			1410,
			1453,
			1438,
			1446,
			1405,
			1438,
			1439,
			1442,
			1447,
			1442,
			1453,
			1442,
			1448,
			1447,
			1410,
			1447,
			1437,
			1438,
			1457
		})), 65535)]
	end

	return 0
end

function slot54(slot0)
	slot1 = {}

	while slot0 > 0 do
		rest = math.fmod(slot0, 2)
		slot1[#slot1 + 1] = rest
		slot0 = (slot0 - rest) / 2
	end

	return slot1
end

function slot55(slot0, slot1, slot2)
	return slot2 / (slot1 / (slot1 < slot0 and slot1 or slot0)) >= 0 and math.floor(slot5 + 0.5) or math.ceil(slot5 - 0.5)
end

function slot56(slot0, slot1)
	return slot2[uv0(slot0, slot1, #{
		{
			255,
			0,
			0
		},
		{
			237,
			27,
			3
		},
		{
			235,
			63,
			6
		},
		{
			229,
			104,
			8
		},
		{
			228,
			126,
			10
		},
		{
			220,
			169,
			16
		},
		{
			213,
			201,
			19
		},
		{
			176,
			205,
			10
		},
		{
			124,
			195,
			13
		}
	}) <= 1 and 1 or slot3][1], slot2[slot3 <= 1 and 1 or slot3][2], slot2[slot3 <= 1 and 1 or slot3][3]
end

function slot57(slot0, slot1, slot2)
	if slot1 < slot2 then
		slot2 = slot1
	elseif slot2 < slot0 then
		slot2 = slot0
	end

	return math.floor(slot2)
end

function slot58(slot0)
	slot1, slot2, slot3, slot4, slot5 = uv0(slot0)

	if slot1 == nil or slot2 == nil or slot3 == nil or slot4 == nil or slot5 == nil or slot5 == 0 then
		return
	end

	slot6 = slot3 - slot1
	slot7 = slot4 - slot2
	slot8 = (slot1 - slot3) / 2
	slot9 = (slot2 - slot4) / 2
	slot11 = uv1(uv2.corner_height) / 200
	slot12, slot13, slot14, slot15 = uv1(uv2.bounding_box_picker)
	slot15 = slot15 * slot5
	slot16 = 150 * slot5

	if uv1(uv2.corner_width) / 200 > 0 then
		renderer.line(slot1 + slot6 * slot10, slot2 + 1, slot1 + 1, slot2 + 1, 0, 0, 0, slot16)
		renderer.line(slot1 + slot6 * slot10, slot2, slot1, slot2, slot12, slot13, slot14, slot15)
		renderer.line(slot1 + slot6 * slot10, slot2 - 1, slot1 - 1, slot2 - 1, 0, 0, 0, slot16)
		renderer.line(slot3 - slot6 * slot10, slot2 + 1, slot3 - 2, slot2 + 1, 0, 0, 0, slot16)
		renderer.line(slot3 - slot6 * slot10, slot2, slot3 - 1, slot2, slot12, slot13, slot14, slot15)
		renderer.line(slot3 - slot6 * slot10, slot2 - 1, slot3, slot2 - 1, 0, 0, 0, slot16)
		renderer.line(slot1 + slot6 * slot10, slot4 - 2, slot1 + 1, slot4 - 2, 0, 0, 0, slot16)
		renderer.line(slot1 + slot6 * slot10, slot4 - 1, slot1, slot4 - 1, slot12, slot13, slot14, slot15)
		renderer.line(slot1 + slot6 * slot10, slot4, slot1 - 1, slot4, 0, 0, 0, slot16)
		renderer.line(slot3 - slot6 * slot10, slot4 - 2, slot3 - 2, slot4 - 2, 0, 0, 0, slot16)
		renderer.line(slot3 - slot6 * slot10, slot4 - 1, slot3 - 1, slot4 - 1, slot12, slot13, slot14, slot15)
		renderer.line(slot3 - slot6 * slot10, slot4, slot3, slot4, 0, 0, 0, slot16)
	end

	if slot11 > 0 then
		renderer.line(slot1 + 1, slot2 + slot7 * slot11, slot1 + 1, slot2 + 1, 0, 0, 0, slot16)
		renderer.line(slot1, slot2 + slot7 * slot11, slot1, slot2, slot12, slot13, slot14, slot15)
		renderer.line(slot1 - 1, slot2 + slot7 * slot11, slot1 - 1, slot2 - 1, 0, 0, 0, slot16)
		renderer.line(slot3 - 2, slot2 + slot7 * slot11, slot3 - 2, slot2 + 1, 0, 0, 0, slot16)
		renderer.line(slot3 - 1, slot2 + slot7 * slot11, slot3 - 1, slot2, slot12, slot13, slot14, slot15)
		renderer.line(slot3, slot2 + slot7 * slot11, slot3, slot2 - 1, 0, 0, 0, slot16)
		renderer.line(slot1 + 1, slot4 - slot7 * slot11, slot1 + 1, slot4 - 2, 0, 0, 0, slot16)
		renderer.line(slot1, slot4 - slot7 * slot11, slot1, slot4 - 1, slot12, slot13, slot14, slot15)
		renderer.line(slot1 - 1, slot4 - slot7 * slot11, slot1 - 1, slot4, 0, 0, 0, slot16)
		renderer.line(slot3 - 2, slot4 - 2, slot3 - 2, slot4 - slot7 * slot11, 0, 0, 0, slot16)
		renderer.line(slot3 - 1, slot4 - 1, slot3 - 1, slot4 - slot7 * slot11, slot12, slot13, slot14, slot15)
		renderer.line(slot3, slot4, slot3, slot4 - slot7 * slot11, 0, 0, 0, slot16)
	end
end

function slot59(slot0)
	slot1, slot2, slot3, slot4, slot5 = uv0(slot0)

	if slot1 == nil or slot2 == nil or slot3 == nil or slot4 == nil or slot5 == nil or slot5 == 0 then
		return
	end

	slot6 = slot3 - slot1
	slot7 = slot4 - slot2
	slot8 = (slot1 - slot3) / 2
	slot9 = (slot2 - slot4) / 2

	if uv1(0, 100, uv2(slot0, uv3({
		10,
		1446,
		1432,
		1442,
		1409,
		1438,
		1434,
		1445,
		1453,
		1441
	}))) == 0 then
		return
	end

	slot11, slot12, slot13 = uv4(slot10, 100)
	slot15 = 255 * slot5
	slot16 = slot6 * slot10 / 100

	for slot21 = 0, 1, 1 do
		renderer.line(slot3 - slot6 - 6 + slot21 + 1, slot4 - slot7 * slot10 / 100 + 3 - slot21, slot3 - slot6 - 6 + slot21 + 1, slot4 + 3 - slot21, slot11, slot12, 0, 150 * slot5)
	end

	renderer.line(slot3 - slot6 - 3, slot4 - slot17, slot3 - slot6 - 3, slot4 + 1, 0, 0, 0, slot15)
	renderer.line(slot3 - slot6 - 6, slot4 - slot17 + 2, slot3 - slot6 - 6, slot4 + 4, 0, 0, 0, slot15)
	renderer.line(slot3 - slot6 - 6, slot4 - slot17 + 2, slot3 - slot6 - 3, slot4 - slot17, 0, 0, 0, slot15)
	renderer.line(slot3 - slot6 - 6, slot4 + 3, slot3 - slot6 - 3, slot4 + 1, 0, 0, 0, slot15)

	if slot10 < 90 then
		slot18, slot19 = renderer.get_text_size(uv5, to_slot2[1]()(slot10))

		renderer.draw_text(slot3 - slot6 - slot18 - 7, slot4 - slot17 - 4, 255, 255, 255, slot14, uv5, slot10)
	end
end

function slot60(slot0)
	slot1, slot2, slot3, slot4, slot5 = uv0(slot0)

	if slot1 == nil or slot2 == nil or slot3 == nil or slot4 == nil or slot5 == nil or slot5 == 0 then
		return
	end

	slot6 = slot3 - slot1
	slot7 = slot4 - slot2
	slot8 = (slot1 - slot3) / 2
	slot9 = (slot2 - slot4) / 2
	slot10 = uv1(slot0)
	slot11 = slot10

	if slot10:len() > 20 then
		slot11 = string.sub(slot10, 0, 20)
	end

	slot22, slot23, slot24, slot15 = uv2(uv3.name_picker)
	slot16 = 255 * slot5
	slot17, slot18 = renderer.get_text_size(uv4, string.upper(slot11))

	renderer.draw_text(slot3 - slot6 - slot8 - slot17 / 2, slot2 - 6 - slot18 / 2, slot12, slot13, slot14, slot15 * slot5, uv4, string.upper(slot11))
end

function slot61(slot0)
	if not uv0(uv1, slot0) or not uv2(uv1, slot0) then
		return
	end

	for slot6 = 1, 12, 1 do
		if uv3(slot1, slot6).m_pOwner == nil then
			return
		end

		slot9 = slot7.m_nSequence
		slot11 = slot7.m_flCycle

		if uv4(slot1, slot2, slot7.m_nSequence) == 967 and slot7.m_flWeight ~= 0 then
			return true
		end
	end

	return false
end

function slot62(slot0)
	slot1, slot2, slot3, slot4, slot5 = uv0(slot0)

	if slot1 == nil or slot2 == nil or slot3 == nil or slot4 == nil or slot5 == nil or slot5 == 0 then
		return
	end

	slot6 = slot3 - slot1
	slot7 = slot4 - slot2
	slot8 = (slot1 - slot3) / 2
	slot9 = (slot2 - slot4) / 2
	slot11 = uv1(uv1(slot0, uv2({
		16,
		1446,
		1432,
		1441,
		1402,
		1436,
		1453,
		1442,
		1455,
		1438,
		1424,
		1438,
		1434,
		1449,
		1448,
		1447
	})), uv2({
		23,
		1446,
		1432,
		1442,
		1410,
		1453,
		1438,
		1446,
		1405,
		1438,
		1439,
		1442,
		1447,
		1442,
		1453,
		1442,
		1448,
		1447,
		1410,
		1447,
		1437,
		1438,
		1457
	}))
	slot12 = uv3(slot0)

	if uv4(slot0) == nil then
		return
	end

	slot14 = uv5(uv6, slot13)
	slot18 = uv9(slot0)

	if slot10 == nil or slot11 == nil or uv1(slot13, uv2({
		9,
		1446,
		1432,
		1442,
		1404,
		1445,
		1442,
		1449,
		1386
	})) == nil or uv7.cast(uv2({
		22,
		1440,
		1438,
		1453,
		1432,
		1436,
		1436,
		1452,
		1432,
		1456,
		1438,
		1434,
		1449,
		1448,
		1447,
		1432,
		1442,
		1447,
		1439,
		1448,
		1432,
		1453
	}), uv7.cast(uv8, slot14)[0][460])(slot14).m_max_clip == nil or slot12 == nil or slot12 == 0 then
		return
	end

	if uv10(slot0) then
		return
	end

	slot19, slot20, slot21, slot22 = uv11(uv12.ammo_picker)
	slot23 = 255 * slot5
	slot25 = slot16 < 10 and not slot18

	for slot29 = 0, 1, 1 do
		renderer.line(slot3 - slot6 - 2 - slot29, slot4 + slot29 + 3, slot1 + (slot18 and slot6 * 1 / 1 or slot6 * slot16 / slot17) - slot29 + 2, slot4 + slot29 + 3, slot19, slot20, slot21, slot22 * slot5)
	end

	renderer.line(slot3 - slot6 - 1, slot4 + 2, slot1 + slot6 + 3, slot4 + 2, 0, 0, 0, slot23)
	renderer.line(slot3 - slot6 - 5, slot4 + 5, slot1 + slot6, slot4 + 5, 0, 0, 0, slot23)
	renderer.line(slot3 - slot6 - 5, slot4 + 5, slot3 - slot6 - 1, slot4 + 2, 0, 0, 0, slot23)
	renderer.line(slot1 + slot6, slot4 + 5, slot1 + slot6 + 3, slot4 + 2, 0, 0, 0, slot23)

	if slot25 then
		slot26, slot27 = renderer.get_text_size(uv13, to_slot2[1]()(slot16))

		renderer.draw_text(slot1 + slot24 + slot26 / 2, slot4 - 1, 255, 255, 255, 255, uv13, slot16)
	end
end

function slot63(slot0)
	slot1, slot2, slot3, slot4, slot5 = uv0(slot0)

	if slot1 == nil or slot2 == nil or slot3 == nil or slot4 == nil or slot5 == nil or slot5 == 0 then
		return
	end

	slot6 = slot3 - slot1
	slot7 = slot4 - slot2
	slot8 = (slot1 - slot3) / 2
	slot9 = (slot2 - slot4) / 2
	slot10 = uv1(slot0)
	slot11, slot12 = renderer.get_text_size(uv2, string.upper(to_slot2[1]()(slot10)))
	slot13 = 11 - slot12

	if slot10 == 0 or slot10 == nil then
		return
	end

	if uv3(slot0) then
		slot13 = 11 - slot12 - 6
	end

	slot22, slot23, slot24, slot17 = uv4(uv5.weapon_text_picker)
	slot18 = 255 * slot5

	renderer.draw_text(slot3 - slot6 - slot8 - slot11 / 2, slot4 + slot12 / 2 + slot13, slot14, slot15, slot16, slot17 * slot5, uv2, string.upper(slot10))
end

slot64 = 0
slot65 = {}
slot66 = {}
slot67 = {}
slot68 = entity.get_esp_data

function slot69(slot0)
	slot1, slot2, slot3, slot4, slot5 = uv0(slot0)

	if slot1 == nil or slot2 == nil or slot3 == nil or slot4 == nil or slot5 == nil or slot5 == 0 then
		return
	end

	slot6 = slot3 - slot1
	slot7 = slot4 - slot2
	slot8 = (slot1 - slot3) / 2
	slot9 = (slot2 - slot4) / 2
	slot10 = 0
	slot11 = uv1(slot0, uv2({
		12,
		1446,
		1432,
		1435,
		1410,
		1452,
		1420,
		1436,
		1448,
		1449,
		1438,
		1437
	}))
	slot12 = uv1(slot0, uv2({
		14,
		1446,
		1432,
		1435,
		1409,
		1434,
		1452,
		1405,
		1438,
		1439,
		1454,
		1452,
		1438,
		1451
	}))
	slot13 = uv1(slot0, uv2({
		13,
		1446,
		1432,
		1402,
		1451,
		1446,
		1448,
		1451,
		1423,
		1434,
		1445,
		1454,
		1438
	}))
	slot14 = uv1(slot0, uv2({
		13,
		1446,
		1432,
		1435,
		1409,
		1434,
		1452,
		1409,
		1438,
		1445,
		1446,
		1438,
		1453
	}))
	slot15 = uv1(slot0, uv2({
		14,
		1446,
		1432,
		1435,
		1410,
		1452,
		1405,
		1438,
		1439,
		1454,
		1452,
		1442,
		1447,
		1440
	}))
	slot16 = uv1(slot0, uv2({
		11,
		1446,
		1432,
		1442,
		1402,
		1436,
		1436,
		1448,
		1454,
		1447,
		1453
	}))
	slot17 = uv1(slot0, uv2({
		18,
		1446,
		1432,
		1439,
		1445,
		1407,
		1445,
		1434,
		1452,
		1441,
		1405,
		1454,
		1451,
		1434,
		1453,
		1442,
		1448,
		1447
	}))
	slot18 = uv1(slot0, uv2({
		15,
		1446,
		1432,
		1439,
		1445,
		1405,
		1454,
		1436,
		1444,
		1402,
		1446,
		1448,
		1454,
		1447,
		1453
	}))
	slot19 = uv1(slot0, uv2({
		14,
		1446,
		1432,
		1439,
		1445,
		1405,
		1454,
		1436,
		1444,
		1420,
		1449,
		1438,
		1438,
		1437
	}))
	slot20 = uv1(slot0, uv2({
		9,
		1446,
		1432,
		1439,
		1407,
		1445,
		1434,
		1440,
		1452
	}))
	slot21 = uv3(slot0)
	slot23 = uv4(slot0)

	if uv1(slot0, uv2({
		18,
		1446,
		1432,
		1439,
		1445,
		1407,
		1445,
		1434,
		1452,
		1441,
		1405,
		1454,
		1451,
		1434,
		1453,
		1442,
		1448,
		1447
	})) > 0 then
		if slot22 ~= uv5[slot0] then
			uv6[slot0] = globals.curtime()
			uv5[slot0] = slot22
		end
	else
		uv6[slot0] = nil
		uv5[slot0] = nil
	end

	slot24, slot25 = renderer.get_text_size(uv7, uv2({
		5,
		1421,
		1406,
		1425,
		1421
	}))

	if uv8[slot0] == nil then
		uv8[slot0] = 0
	end

	if slot15 == 1 then
		renderer.draw_text(slot3 + 3, slot2 - 1 - slot10, 255, 255, 255, 255 * slot5, uv7, uv2({
			7,
			1405,
			1406,
			1407,
			1422,
			1420,
			1406
		}))

		slot10 = slot10 - slot25 + 4
	end

	if slot22 ~= nil and slot22 > 0 and uv6[slot0] ~= nil and uv6[slot0] + slot22 - globals.curtime() > 0 then
		slot29 = 0
		slot30 = slot22 < 1.8

		if slot22 > 0.1 and slot22 - slot28 < 0.1 then
			slot29 = math.min(1, (slot22 - slot28) / 0.1 * 1.25)
		elseif slot28 > 3 then
			slot29 = 1
		elseif not slot30 and slot28 > 1 then
			slot29 = (slot28 - 1) / 2
		elseif slot30 then
			slot29 = slot28 / 30
		end

		if slot29 > 0 then
			renderer.draw_text(slot3 + 3, slot2 - 1 - slot10, 130, 156, 255, slot26, uv7, uv2({
				6,
				1403,
				1413,
				1410,
				1415,
				1405
			}))

			slot10 = slot10 - slot25 + 4
		end
	end

	if slot11 == 1 then
		renderer.draw_text(slot3 + 3, slot2 - 1 - slot10, 130, 156, 255, slot26, uv7, uv2({
			5,
			1427,
			1416,
			1416,
			1414
		}))

		slot10 = slot10 - slot25 + 4
	end

	if slot12 == 1 then
		renderer.draw_text(slot3 + 3, slot2 - 1 - slot10, 255, 255, 255, slot26, uv7, uv2({
			4,
			1412,
			1410,
			1421
		}))

		slot10 = slot10 - slot25 + 4
	end

	if slot19 ~= nil and slot18 ~= nil then
		if slot19 == 8 and slot18 <= 0.9 and slot18 > 0.01 and uv9(slot20)[1] == 1 then
			if uv10 ~= globals.tickcount() then
				uv8[slot0] = uv8[slot0] + 1
				uv10 = globals.tickcount()
			end

			if uv8[slot0] >= 17 then
				slot27, slot28, slot29 = uv11(uv8[slot0], 32)

				renderer.draw_text(slot3 + 3, slot2 - 1 - slot10, 255, 0, 0, slot26, uv7, uv2({
					3,
					1407,
					1405
				}))

				slot10 = slot10 - slot25 + 4
			end
		else
			uv8[slot0] = 0
		end
	end

	if slot13 > 0 and slot14 == 0 then
		renderer.draw_text(slot3 + 3, slot2 - 1 - slot10, 255, 255, 255, slot26, uv7, uv2({
			2,
			1412
		}))

		slot10 = slot10 - slot25 + 4
	elseif slot13 > 0 and slot14 == 1 then
		renderer.draw_text(slot3 + 3, slot2 - 1 - slot10, 255, 255, 255, slot26, uv7, uv2({
			3,
			1409,
			1412
		}))

		slot10 = slot10 - slot25 + 4
	end

	if slot23 then
		renderer.draw_text(slot3 + 3, slot2 - 1 - slot10, 255, 0, 0, slot26, uv7, uv2({
			2,
			1419
		}))

		slot10 = slot10 - slot25 + 4
	end
end

client.set_event_callback(slot0({
	6,
	1449,
	1434,
	1442,
	1447,
	1453
}), function ()
	for slot4 = 1, #uv0(true, true), 1 do
		if slot0[slot4] ~= (uv1(uv2(), uv3({
			16,
			1446,
			1432,
			1442,
			1416,
			1435,
			1452,
			1438,
			1451,
			1455,
			1438,
			1451,
			1414,
			1448,
			1437,
			1438
		})) == 5 and uv1(uv2(), uv3({
			18,
			1446,
			1432,
			1441,
			1416,
			1435,
			1452,
			1438,
			1451,
			1455,
			1438,
			1451,
			1421,
			1434,
			1451,
			1440,
			1438,
			1453
		})) or nil) and uv4(uv5) then
			if uv1(uv2(), uv3({
				10,
				1446,
				1432,
				1442,
				1409,
				1438,
				1434,
				1445,
				1453,
				1441
			})) == 0 then
				return
			end

			if uv4(uv6.c_bounding_box) and not uv4(uv7) then
				uv8(slot5)
			end

			if uv4(uv6.c_health_bar) and not uv4(uv9) then
				uv10(slot5)
			end

			if uv4(uv6.c_name) and not uv4(uv11) then
				uv12(slot5)
			end

			if uv4(uv6.c_ammo) and not uv4(uv13) then
				uv14(slot5)
			end

			if uv4(uv6.c_weapon_text) and not uv4(uv15) then
				uv16(slot5)
			end

			if uv4(uv6.c_flags) and not uv4(uv17) then
				uv18(slot5)
			end
		end
	end
end)

function slot70()
	slot0 = not uv0(uv1)

	uv2(ui.set_visible, {
		[uv3.bounding_box] = not slot0,
		[uv3.bounding_box_picker] = not slot0,
		[uv3.c_bounding_box] = not slot0 and uv0(uv3.bounding_box),
		[uv3.corner_width] = not slot0 and uv0(uv3.c_bounding_box),
		[uv3.corner_height] = not slot0 and uv0(uv3.c_bounding_box),
		[uv3.health_bar] = not slot0,
		[uv3.c_health_bar] = not slot0 and uv0(uv3.health_bar),
		[uv3.name] = not slot0,
		[uv3.name_picker] = not slot0,
		[uv3.c_name] = not slot0 and uv0(uv3.name),
		[uv3.weapon_text] = not slot0,
		[uv3.c_weapon_text] = not slot0 and uv0(uv3.weapon_text),
		[uv3.weapon_text_picker] = not slot0 and uv0(uv3.weapon_text),
		[uv3.ammo] = not slot0,
		[uv3.ammo_picker] = not slot0,
		[uv3.c_ammo] = not slot0 and uv0(uv3.ammo),
		[uv3.flags] = not slot0,
		[uv3.c_flags] = not slot0 and uv0(uv3.flags),
		[uv4] = not slot0,
		[uv5] = not slot0,
		[uv6] = not slot0
	})
	uv2(ui.set_visible, {
		[uv7] = slot0,
		[uv8] = slot0,
		[uv9] = slot0,
		[uv10] = slot0,
		[uv11] = slot0,
		[uv12] = slot0,
		[uv13] = slot0,
		[uv14] = slot0,
		[uv15] = slot0
	})
	uv2(ui.set, {
		[uv7] = uv0(uv3.bounding_box) and not uv0(uv3.c_bounding_box),
		[uv9] = uv0(uv3.health_bar) and not uv0(uv3.c_health_bar),
		[uv10] = uv0(uv3.name) and not uv0(uv3.c_name),
		[uv12] = uv0(uv3.weapon_text) and not uv0(uv3.c_weapon_text),
		[uv13] = uv0(uv3.ammo) and not uv0(uv3.c_ammo),
		[uv15] = uv0(uv3.flags) and not uv0(uv3.c_flags)
	})
	ui.set(uv8, uv0(uv3.bounding_box_picker))
	ui.set(uv11, uv0(uv3.name_picker))
	ui.set(uv14, uv0(uv3.ammo_picker))
end

ui.set_callback(slot37, slot70)
ui.set_callback(slot38.bounding_box, slot70)
ui.set_callback(slot38.c_bounding_box, slot70)
ui.set_callback(slot38.bounding_box_picker, slot70)
ui.set_callback(slot38.name_picker, slot70)
ui.set_callback(slot38.health_bar, slot70)
ui.set_callback(slot38.c_health_bar, slot70)
ui.set_callback(slot38.name, slot70)
ui.set_callback(slot38.c_name, slot70)
ui.set_callback(slot38.weapon_text, slot70)
ui.set_callback(slot38.c_weapon_text, slot70)
ui.set_callback(slot38.ammo, slot70)
ui.set_callback(slot38.c_ammo, slot70)
ui.set_callback(slot38.ammo_picker, slot70)
ui.set_callback(slot38.flags, slot70)
ui.set_callback(slot38.c_flags, slot70)
slot70()
