(kicad_sch
	(version 20231120)
	(generator "eeschema")
	(generator_version "8.0")
	(uuid "658b8c62-c531-4b23-b562-83c8e8a733d8")
	(paper "A4")
	(lib_symbols
		(symbol "Connector:Barrel_Jack_Switch"
			(pin_names hide)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "J"
				(at 0 5.334 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Value" "Barrel_Jack_Switch"
				(at 0 -5.08 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Footprint" ""
				(at 1.27 -1.016 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" "~"
				(at 1.27 -1.016 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" "DC Barrel Jack with an internal switch"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_keywords" "DC power barrel jack connector"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_fp_filters" "BarrelJack*"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "Barrel_Jack_Switch_0_1"
				(rectangle
					(start -5.08 3.81)
					(end 5.08 -3.81)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type background)
					)
				)
				(arc
					(start -3.302 3.175)
					(mid -3.9343 2.54)
					(end -3.302 1.905)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(arc
					(start -3.302 3.175)
					(mid -3.9343 2.54)
					(end -3.302 1.905)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type outline)
					)
				)
				(polyline
					(pts
						(xy 1.27 -2.286) (xy 1.905 -1.651)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 5.08 2.54) (xy 3.81 2.54)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 5.08 0) (xy 1.27 0) (xy 1.27 -2.286) (xy 0.635 -1.651)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -3.81 -2.54) (xy -2.54 -2.54) (xy -1.27 -1.27) (xy 0 -2.54) (xy 2.54 -2.54) (xy 5.08 -2.54)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start 3.683 3.175)
					(end -3.302 1.905)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type outline)
					)
				)
			)
			(symbol "Barrel_Jack_Switch_1_1"
				(pin passive line
					(at 7.62 2.54 180)
					(length 2.54)
					(name "~"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at 7.62 -2.54 180)
					(length 2.54)
					(name "~"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at 7.62 0 180)
					(length 2.54)
					(name "~"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "3"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
		)
		(symbol "Connector_Generic:Conn_01x02"
			(pin_names
				(offset 1.016) hide)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "J"
				(at 0 2.54 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Value" "Conn_01x02"
				(at 0 -5.08 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Footprint" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" "~"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" "Generic connector, single row, 01x02, script generated (kicad-library-utils/schlib/autogen/connector/)"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_keywords" "connector"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_fp_filters" "Connector*:*_1x??_*"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "Conn_01x02_1_1"
				(rectangle
					(start -1.27 -2.413)
					(end 0 -2.667)
					(stroke
						(width 0.1524)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start -1.27 0.127)
					(end 0 -0.127)
					(stroke
						(width 0.1524)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start -1.27 1.27)
					(end 1.27 -3.81)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type background)
					)
				)
				(pin passive line
					(at -5.08 0 0)
					(length 3.81)
					(name "Pin_1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at -5.08 -2.54 0)
					(length 3.81)
					(name "Pin_2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
		)
		(symbol "Connector_Generic:Conn_01x04"
			(pin_names
				(offset 1.016) hide)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "J"
				(at 0 5.08 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Value" "Conn_01x04"
				(at 0 -7.62 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Footprint" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" "~"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" "Generic connector, single row, 01x04, script generated (kicad-library-utils/schlib/autogen/connector/)"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_keywords" "connector"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_fp_filters" "Connector*:*_1x??_*"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "Conn_01x04_1_1"
				(rectangle
					(start -1.27 -4.953)
					(end 0 -5.207)
					(stroke
						(width 0.1524)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start -1.27 -2.413)
					(end 0 -2.667)
					(stroke
						(width 0.1524)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start -1.27 0.127)
					(end 0 -0.127)
					(stroke
						(width 0.1524)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start -1.27 2.667)
					(end 0 2.413)
					(stroke
						(width 0.1524)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start -1.27 3.81)
					(end 1.27 -6.35)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type background)
					)
				)
				(pin passive line
					(at -5.08 2.54 0)
					(length 3.81)
					(name "Pin_1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at -5.08 0 0)
					(length 3.81)
					(name "Pin_2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at -5.08 -2.54 0)
					(length 3.81)
					(name "Pin_3"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "3"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at -5.08 -5.08 0)
					(length 3.81)
					(name "Pin_4"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "4"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
		)
		(symbol "DataLoggingBoard:DataLoggingBoard"
			(pin_names
				(offset 1.016)
			)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "U"
				(at 0 -13.97 0)
				(effects
					(font
						(size 0.9906 0.9906)
					)
				)
			)
			(property "Value" "DataLoggingBoard"
				(at -0.3048 -12.192 0)
				(effects
					(font
						(size 0.9906 0.9906)
					)
				)
			)
			(property "Footprint" ""
				(at -6.35 1.524 90)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" ""
				(at -6.35 1.524 90)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "DataLoggingBoard_0_0"
				(rectangle
					(start -4.318 1.524)
					(end -3.048 2.54)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -4.064 1.524) (xy -4.064 1.27)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -4.064 2.54) (xy -4.064 2.794)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -3.81 1.524) (xy -3.81 1.27)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -3.81 2.54) (xy -3.81 2.794)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -3.556 1.524) (xy -3.556 1.27)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -3.556 2.54) (xy -3.556 2.794)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -3.302 1.524) (xy -3.302 1.27)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -3.302 2.54) (xy -3.302 2.794)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -2.032 2.032) (xy -1.778 2.032) (xy -1.778 1.778) (xy 0 1.778) (xy 0 2.54) (xy -1.778 2.54)
						(xy -1.778 2.286) (xy -2.032 2.286)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(text "74hc1250"
					(at -2.2606 -8.3058 0)
					(effects
						(font
							(size 0.2794 0.2794)
						)
					)
				)
				(text "CR1220"
					(at -2.032 6.604 900)
					(effects
						(font
							(size 0.4064 0.4064)
						)
					)
				)
				(text "DS1307"
					(at -4.572 2.032 900)
					(effects
						(font
							(size 0.2032 0.2032)
						)
					)
				)
				(text "MicroSD Card"
					(at -6.35 -3.81 900)
					(effects
						(font
							(size 0.4064 0.4064)
						)
					)
				)
				(text "osc"
					(at 0.254 2.032 900)
					(effects
						(font
							(size 0.3048 0.3048)
						)
					)
				)
				(pin power_in line
					(at 10.16 7.62 180)
					(length 2.5654)
					(name "5V"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin power_in line
					(at 10.16 5.08 180)
					(length 2.5654)
					(name "GND"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "2"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin bidirectional line
					(at 10.16 2.54 180)
					(length 2.5654)
					(name "SDA"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "3"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin input line
					(at 10.16 0 180)
					(length 2.5654)
					(name "SCL"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "4"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin input line
					(at 10.16 -2.54 180)
					(length 2.5654)
					(name "SCK"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "5"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin output line
					(at 10.16 -5.08 180)
					(length 2.5654)
					(name "MISO"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "6"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin input line
					(at 10.16 -7.62 180)
					(length 2.5654)
					(name "MOSI"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "7"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin input line
					(at 10.16 -10.16 180)
					(length 2.5654)
					(name "CS"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "8"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
			)
			(symbol "DataLoggingBoard_0_1"
				(rectangle
					(start -8.89 -11.43)
					(end 7.62 9.906)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type background)
					)
				)
				(rectangle
					(start -7.874 -6.096)
					(end -3.048 -1.016)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(circle
					(center -2.032 6.604)
					(radius 1.8034)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(circle
					(center -2.032 6.604)
					(radius 2.286)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -3.81 -5.588) (xy -3.556 -5.588)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -3.81 -5.334) (xy -3.556 -5.334)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -3.2766 -9.0678) (xy -3.2766 -9.3218)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -3.2766 -7.5438) (xy -3.2766 -7.2898)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -3.0226 -9.0678) (xy -3.0226 -9.3218)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -3.0226 -7.5438) (xy -3.0226 -7.2898)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -2.7686 -9.0678) (xy -2.7686 -9.3218)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -2.7686 -7.5438) (xy -2.7686 -7.2898)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -2.5146 -9.0678) (xy -2.5146 -9.3218)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -2.5146 -7.5438) (xy -2.5146 -7.2898)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -2.2606 -9.0678) (xy -2.2606 -9.3218)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -2.2606 -7.5438) (xy -2.2606 -7.2898)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -2.0066 -9.0678) (xy -2.0066 -9.3218)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -2.0066 -7.5438) (xy -2.0066 -7.2898)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -1.7526 -9.0678) (xy -1.7526 -9.3218)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -1.7526 -7.5438) (xy -1.7526 -7.2898)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -1.4986 -9.0678) (xy -1.4986 -9.3218)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -1.4986 -7.5438) (xy -1.4986 -7.2898)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -7.874 -5.588) (xy -7.366 -5.588) (xy -7.366 -6.096)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -5.08 -5.588) (xy -5.08 -5.334) (xy -3.81 -5.334)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -7.366 -1.016) (xy -7.366 -1.524) (xy -5.842 -1.524) (xy -5.842 -1.016)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -5.08 -5.588) (xy -5.08 -5.842) (xy -4.826 -5.842) (xy -4.572 -5.588) (xy -3.81 -5.588)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -3.5306 -8.8138) (xy -1.2446 -8.8138) (xy -1.2446 -7.7978) (xy -3.5306 -7.7978) (xy -3.5306 -8.8138)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -3.302 4.572) (xy -3.81 4.572) (xy -3.81 3.81) (xy -0.254 3.81) (xy -0.254 4.572) (xy -1.016 4.572)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -3.048 -5.08) (xy -3.302 -4.826) (xy -3.302 -2.286) (xy -3.302 -2.032) (xy -3.302 -1.524)
						(xy -3.556 -1.27) (xy -3.556 -1.016)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
			)
		)
		(symbol "Device:Battery_Cell"
			(pin_numbers hide)
			(pin_names
				(offset 0) hide)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "BT"
				(at 2.54 2.54 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(justify left)
				)
			)
			(property "Value" "Battery_Cell"
				(at 2.54 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(justify left)
				)
			)
			(property "Footprint" ""
				(at 0 1.524 90)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" "~"
				(at 0 1.524 90)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" "Single-cell battery"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_keywords" "battery cell"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "Battery_Cell_0_1"
				(rectangle
					(start -2.286 1.778)
					(end 2.286 1.524)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type outline)
					)
				)
				(rectangle
					(start -1.524 1.016)
					(end 1.524 0.508)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type outline)
					)
				)
				(polyline
					(pts
						(xy 0 0.762) (xy 0 0)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 0 1.778) (xy 0 2.54)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 0.762 3.048) (xy 1.778 3.048)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 1.27 3.556) (xy 1.27 2.54)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
			)
			(symbol "Battery_Cell_1_1"
				(pin passive line
					(at 0 5.08 270)
					(length 2.54)
					(name "+"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at 0 -2.54 90)
					(length 2.54)
					(name "-"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
		)
		(symbol "Device:D_Schottky"
			(pin_numbers hide)
			(pin_names
				(offset 1.016) hide)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "D"
				(at 0 2.54 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Value" "D_Schottky"
				(at 0 -2.54 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Footprint" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" "~"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" "Schottky diode"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_keywords" "diode Schottky"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_fp_filters" "TO-???* *_Diode_* *SingleDiode* D_*"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "D_Schottky_0_1"
				(polyline
					(pts
						(xy 1.27 0) (xy -1.27 0)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 1.27 1.27) (xy 1.27 -1.27) (xy -1.27 0) (xy 1.27 1.27)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -1.905 0.635) (xy -1.905 1.27) (xy -1.27 1.27) (xy -1.27 -1.27) (xy -0.635 -1.27) (xy -0.635 -0.635)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
			)
			(symbol "D_Schottky_1_1"
				(pin passive line
					(at -3.81 0 0)
					(length 2.54)
					(name "K"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at 3.81 0 180)
					(length 2.54)
					(name "A"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
		)
		(symbol "Device:R"
			(pin_numbers hide)
			(pin_names
				(offset 0)
			)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "R"
				(at 2.032 0 90)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Value" "R"
				(at 0 0 90)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Footprint" ""
				(at -1.778 0 90)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" "~"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" "Resistor"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_keywords" "R res resistor"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_fp_filters" "R_*"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "R_0_1"
				(rectangle
					(start -1.016 -2.54)
					(end 1.016 2.54)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
			)
			(symbol "R_1_1"
				(pin passive line
					(at 0 3.81 270)
					(length 1.27)
					(name "~"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at 0 -3.81 90)
					(length 1.27)
					(name "~"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
		)
		(symbol "ESP WROOM32 DEV-BOARD:ESPWROOM32"
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "U"
				(at 0 33.02 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Value" "ESPWROOM32"
				(at 0 30.48 0)
				(effects
					(font
						(size 0.9906 0.9906)
					)
				)
			)
			(property "Footprint" ""
				(at 0 -19.05 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" ""
				(at 0 -19.05 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "ESPWROOM32_0_0"
				(rectangle
					(start -10.16 -25.4)
					(end -6.35 -27.94)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start -5.08 -22.86)
					(end 5.08 -30.48)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type outline)
					)
				)
				(rectangle
					(start 6.35 -25.4)
					(end 10.16 -27.94)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(text "BOOT"
					(at 7.62 -24.13 0)
					(effects
						(font
							(size 1.27 1.27)
						)
					)
				)
				(text "EN"
					(at -7.62 -24.13 0)
					(effects
						(font
							(size 1.27 1.27)
						)
					)
				)
				(text "ESP WROOM 32"
					(at 0 26.67 0)
					(effects
						(font
							(size 1.27 1.27)
						)
					)
				)
				(pin input line
					(at -16.51 21.59 0)
					(length 2.54)
					(name "EN/RST"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "2"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
			)
			(symbol "ESPWROOM32_0_1"
				(rectangle
					(start -13.97 29.21)
					(end 13.97 -29.21)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type background)
					)
				)
			)
			(symbol "ESPWROOM32_1_1"
				(pin power_out line
					(at -16.51 24.13 0)
					(length 2.54)
					(name "3V3"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin bidirectional line
					(at -16.51 1.27 0)
					(length 2.54)
					(name "26/DIO"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "10"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin bidirectional line
					(at -16.51 -1.27 0)
					(length 2.54)
					(name "27/DIO"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "11"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin bidirectional line
					(at -16.51 -3.81 0)
					(length 2.54)
					(name "14/DIO"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "12"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin bidirectional line
					(at -16.51 -6.35 0)
					(length 2.54)
					(name "12/DIO"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "13"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin power_in line
					(at -16.51 -8.89 0)
					(length 2.54)
					(name "GND"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "14"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin bidirectional line
					(at -16.51 -11.43 0)
					(length 2.54)
					(name "13/DIO"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "15"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin input line
					(at -16.51 -13.97 0)
					(length 2.54)
					(name "9/RXD1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "16"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin output line
					(at -16.51 -16.51 0)
					(length 2.54)
					(name "10/TXD1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "17"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin no_connect line
					(at -16.51 -19.05 0)
					(length 2.54)
					(name "11/CSC/CMD"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "18"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin power_in line
					(at -16.51 -21.59 0)
					(length 2.54)
					(name "VIN"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "19"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin no_connect line
					(at 16.51 -21.59 180)
					(length 2.54)
					(name "SCK/CLK/6"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "20"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin no_connect line
					(at 16.51 -19.05 180)
					(length 2.54)
					(name "SD0/7"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "21"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin no_connect line
					(at 16.51 -16.51 180)
					(length 2.54)
					(name "SD1/8"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "22"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin bidirectional line
					(at 16.51 -13.97 180)
					(length 2.54)
					(name "DIO/15"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "23"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin bidirectional line
					(at 16.51 -11.43 180)
					(length 2.54)
					(name "DIO/2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "24"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin bidirectional line
					(at 16.51 -8.89 180)
					(length 2.54)
					(name "DIO/0"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "25"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin bidirectional line
					(at 16.51 -6.35 180)
					(length 2.54)
					(name "DIO/4"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "26"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin input line
					(at 16.51 -3.81 180)
					(length 2.54)
					(name "DIO/RXD2/16"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "27"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin output line
					(at 16.51 -1.27 180)
					(length 2.54)
					(name "DIO/TXD2/17"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "28"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin bidirectional line
					(at 16.51 1.27 180)
					(length 2.54)
					(name "DIO/5"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "29"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin input line
					(at -16.51 19.05 0)
					(length 2.54)
					(name "36/ADC0"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "3"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin output line
					(at 16.51 3.81 180)
					(length 2.54)
					(name "SCK/18"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "30"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin input line
					(at 16.51 6.35 180)
					(length 2.54)
					(name "MISO/19"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "31"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin power_in line
					(at 16.51 8.89 180)
					(length 2.54)
					(name "GND"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "32"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin bidirectional line
					(at 16.51 11.43 180)
					(length 2.54)
					(name "SDA/21"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "33"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin input line
					(at 16.51 13.97 180)
					(length 2.54)
					(name "RXD0/3"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "34"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin output line
					(at 16.51 16.51 180)
					(length 2.54)
					(name "TXD0/1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "35"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin output line
					(at 16.51 19.05 180)
					(length 2.54)
					(name "SCL/22"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "36"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin output line
					(at 16.51 21.59 180)
					(length 2.54)
					(name "MOSI/23"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "37"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin power_in line
					(at 16.51 24.13 180)
					(length 2.54)
					(name "GND"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "38"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin input line
					(at -16.51 16.51 0)
					(length 2.54)
					(name "39/ADC3"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "4"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin input line
					(at -16.51 13.97 0)
					(length 2.54)
					(name "34/ADC6"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "5"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin input line
					(at -16.51 11.43 0)
					(length 2.54)
					(name "35/ADC7"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "6"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin bidirectional line
					(at -16.51 8.89 0)
					(length 2.54)
					(name "32/DIO"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "7"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin bidirectional line
					(at -16.51 6.35 0)
					(length 2.54)
					(name "33/DIO"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "8"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin bidirectional line
					(at -16.51 3.81 0)
					(length 2.54)
					(name "25/DIO"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "9"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
			)
		)
		(symbol "Step Up DC to 5V USB:StepUpTo5V"
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "U"
				(at 0 17.78 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Value" "StepUpTo5V"
				(at 0 15.24 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Footprint" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "StepUpTo5V_0_1"
				(rectangle
					(start -6.35 10.16)
					(end 6.35 -5.08)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type background)
					)
				)
				(rectangle
					(start -3.81 12.7)
					(end 3.81 5.08)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start -2.032 5.08)
					(end -1.778 4.064)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type outline)
					)
				)
				(rectangle
					(start -0.762 5.08)
					(end -0.508 4.064)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type outline)
					)
				)
				(polyline
					(pts
						(xy -2.54 11.43) (xy -2.54 7.62) (xy -1.905 10.795) (xy -1.27 10.795) (xy -0.635 7.62) (xy -0.635 11.43)
						(xy -2.54 11.43)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type outline)
					)
				)
				(polyline
					(pts
						(xy 0.635 11.43) (xy 0.635 7.62) (xy 1.27 10.795) (xy 1.905 10.795) (xy 2.54 7.62) (xy 2.54 11.43)
						(xy 0.635 11.43)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type outline)
					)
				)
				(rectangle
					(start 0.508 5.08)
					(end 0.762 4.064)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type outline)
					)
				)
				(rectangle
					(start 1.778 5.08)
					(end 2.032 4.064)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type outline)
					)
				)
			)
			(symbol "StepUpTo5V_1_1"
				(pin input line
					(at -5.08 -7.62 90)
					(length 2.5654)
					(name "IN+"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin power_in line
					(at -2.54 -7.62 90)
					(length 2.5654)
					(name "GND"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
					(number "2"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin power_out line
					(at 2.54 -7.62 90)
					(length 2.5654)
					(name "OUT_5V"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
					(number "3"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin power_in line
					(at 5.08 -7.62 90)
					(length 2.5654)
					(name "GND"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
					(number "4"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
			)
		)
		(symbol "Switch:SW_Push"
			(pin_numbers hide)
			(pin_names
				(offset 1.016) hide)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "SW"
				(at 1.27 2.54 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(justify left)
				)
			)
			(property "Value" "SW_Push"
				(at 0 -1.524 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Footprint" ""
				(at 0 5.08 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" "~"
				(at 0 5.08 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" "Push button switch, generic, two pins"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_keywords" "switch normally-open pushbutton push-button"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "SW_Push_0_1"
				(circle
					(center -2.032 0)
					(radius 0.508)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 0 1.27) (xy 0 3.048)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 2.54 1.27) (xy -2.54 1.27)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(circle
					(center 2.032 0)
					(radius 0.508)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(pin passive line
					(at -5.08 0 0)
					(length 2.54)
					(name "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at 5.08 0 180)
					(length 2.54)
					(name "2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
		)
		(symbol "TP4056:TP-4056"
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "U"
				(at -3.81 30.48 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Value" "TP-4056"
				(at 0 29.21 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Footprint" ""
				(at 8.89 3.81 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" ""
				(at 8.89 3.81 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "TP-4056_0_1"
				(rectangle
					(start -7.62 19.05)
					(end 7.62 0)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type background)
					)
				)
				(rectangle
					(start -2.54 3.81)
					(end 2.54 -1.27)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type outline)
					)
				)
			)
			(symbol "TP-4056_1_1"
				(pin output line
					(at -5.08 21.59 270)
					(length 2.5654)
					(name "OUT+"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin bidirectional line
					(at -2.54 21.59 270)
					(length 2.5654)
					(name "B+"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
					(number "2"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin power_in line
					(at 2.54 21.59 270)
					(length 2.5654)
					(name "B-"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
					(number "3"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin power_in line
					(at 5.08 21.59 270)
					(length 2.5654)
					(name "OUT-"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
					(number "4"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin power_out line
					(at -10.16 2.54 0)
					(length 2.5654)
					(name "GND"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
					(number "5"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin power_out line
					(at -10.16 5.08 0)
					(length 2.5654)
					(name "5V"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
					(number "6"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin output line
					(at -10.16 8.89 0)
					(length 2.5654)
					(name "~{STDBY}"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
					(number "7"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
				(pin output line
					(at -10.16 11.43 0)
					(length 2.5654)
					(name "~{CHRG}"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
					(number "8"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
				)
			)
		)
		(symbol "Transistor_FET:BSS138"
			(pin_names hide)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "Q"
				(at 5.08 1.905 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(justify left)
				)
			)
			(property "Value" "BSS138"
				(at 5.08 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(justify left)
				)
			)
			(property "Footprint" "Package_TO_SOT_SMD:SOT-23"
				(at 5.08 -1.905 0)
				(effects
					(font
						(size 1.27 1.27)
						(italic yes)
					)
					(justify left)
					(hide yes)
				)
			)
			(property "Datasheet" "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF"
				(at 5.08 -3.81 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(justify left)
					(hide yes)
				)
			)
			(property "Description" "50V Vds, 0.22A Id, N-Channel MOSFET, SOT-23"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_keywords" "N-Channel MOSFET"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_fp_filters" "SOT?23*"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "BSS138_0_1"
				(polyline
					(pts
						(xy 0.254 0) (xy -2.54 0)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 0.254 1.905) (xy 0.254 -1.905)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 0.762 -1.27) (xy 0.762 -2.286)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 0.762 0.508) (xy 0.762 -0.508)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 0.762 2.286) (xy 0.762 1.27)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 2.54 2.54) (xy 2.54 1.778)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 2.54 -2.54) (xy 2.54 0) (xy 0.762 0)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 0.762 -1.778) (xy 3.302 -1.778) (xy 3.302 1.778) (xy 0.762 1.778)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 1.016 0) (xy 2.032 0.381) (xy 2.032 -0.381) (xy 1.016 0)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type outline)
					)
				)
				(polyline
					(pts
						(xy 2.794 0.508) (xy 2.921 0.381) (xy 3.683 0.381) (xy 3.81 0.254)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 3.302 0.381) (xy 2.921 -0.254) (xy 3.683 -0.254) (xy 3.302 0.381)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(circle
					(center 1.651 0)
					(radius 2.794)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(circle
					(center 2.54 -1.778)
					(radius 0.254)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type outline)
					)
				)
				(circle
					(center 2.54 1.778)
					(radius 0.254)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type outline)
					)
				)
			)
			(symbol "BSS138_1_1"
				(pin input line
					(at -5.08 0 0)
					(length 2.54)
					(name "G"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at 2.54 -5.08 90)
					(length 2.54)
					(name "S"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at 2.54 5.08 270)
					(length 2.54)
					(name "D"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "3"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
		)
		(symbol "Transistor_FET:Si4542DY"
			(pin_names hide)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "Q"
				(at 5.08 1.905 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(justify left)
				)
			)
			(property "Value" "Si4542DY"
				(at 5.08 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(justify left)
				)
			)
			(property "Footprint" "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm"
				(at 5.08 -1.905 0)
				(effects
					(font
						(size 1.27 1.27)
						(italic yes)
					)
					(justify left)
					(hide yes)
				)
			)
			(property "Datasheet" "https://www.onsemi.com/pub/Collateral/SI4542DY-D.PDF"
				(at 5.08 -3.81 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(justify left)
					(hide yes)
				)
			)
			(property "Description" "Dual N and P Channel MOSFET, 6A Id, 30V Vds, 28mOhm Ron, 10V Vgs, SO8L"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_keywords" "Dual N-Channel P-Channel MOSFET"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_fp_filters" "SOIC*3.9x4.9mm*P1.27mm*"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "Si4542DY_0_1"
				(polyline
					(pts
						(xy 0.254 0) (xy -2.54 0)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 0.254 1.905) (xy 0.254 -1.905)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 0.762 -1.27) (xy 0.762 -2.286)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 0.762 0.508) (xy 0.762 -0.508)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 0.762 2.286) (xy 0.762 1.27)
					)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 2.54 2.54) (xy 2.54 1.778)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 2.54 -2.54) (xy 2.54 0) (xy 0.762 0)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 0.762 -1.778) (xy 3.302 -1.778) (xy 3.302 1.778) (xy 0.762 1.778)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(circle
					(center 1.651 0)
					(radius 2.794)
					(stroke
						(width 0.254)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(circle
					(center 2.54 -1.778)
					(radius 0.254)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type outline)
					)
				)
				(circle
					(center 2.54 1.778)
					(radius 0.254)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type outline)
					)
				)
			)
			(symbol "Si4542DY_1_1"
				(polyline
					(pts
						(xy 1.016 0) (xy 2.032 0.381) (xy 2.032 -0.381) (xy 1.016 0)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type outline)
					)
				)
				(polyline
					(pts
						(xy 2.794 0.508) (xy 2.921 0.381) (xy 3.683 0.381) (xy 3.81 0.254)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 3.302 0.381) (xy 2.921 -0.254) (xy 3.683 -0.254) (xy 3.302 0.381)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(pin passive line
					(at 2.54 -5.08 90)
					(length 2.54)
					(name "S"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin input line
					(at -5.08 0 0)
					(length 2.54)
					(name "G"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at 2.54 5.08 270)
					(length 2.54)
					(name "D"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "7"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at 2.54 5.08 270)
					(length 2.54) hide
					(name "D"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "8"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
			(symbol "Si4542DY_2_1"
				(polyline
					(pts
						(xy 2.286 0) (xy 1.27 0.381) (xy 1.27 -0.381) (xy 2.286 0)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type outline)
					)
				)
				(polyline
					(pts
						(xy 2.794 -0.508) (xy 2.921 -0.381) (xy 3.683 -0.381) (xy 3.81 -0.254)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 3.302 -0.381) (xy 2.921 0.254) (xy 3.683 0.254) (xy 3.302 -0.381)
					)
					(stroke
						(width 0)
						(type default)
					)
					(fill
						(type none)
					)
				)
				(pin passive line
					(at 2.54 -5.08 90)
					(length 2.54)
					(name "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "3"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin input line
					(at -5.08 0 0)
					(length 2.54)
					(name "G"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "4"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at 2.54 5.08 270)
					(length 2.54)
					(name "D"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "5"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at 2.54 5.08 270)
					(length 2.54) hide
					(name "D"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "6"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
		)
		(symbol "USB Type C Converter:USB_Type_C"
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "U"
				(at 0 10.16 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Value" "USB_Type_C"
				(at 0 8.255 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Footprint" ""
				(at -10.16 -7.62 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" ""
				(at -10.16 -7.62 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "USB_Type_C_0_1"
				(rectangle
					(start -16.51 3.175)
					(end -11.43 -1.905)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start -15.875 6.35)
					(end 15.24 -5.08)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type background)
					)
				)
				(circle
					(center -14.859 5.334)
					(radius 0.5334)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type outline)
					)
				)
				(polyline
					(pts
						(xy -16.383 3.175) (xy -16.383 -1.905)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -12.7 0) (xy -12.7 -1.27)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -12.7 2.54) (xy -12.7 1.27)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -11.43 0) (xy -11.43 -1.27)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -11.43 1.27) (xy -11.43 2.54)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -11.43 0) (xy -12.065 0) (xy -12.065 -1.27) (xy -11.43 -1.27)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type outline)
					)
				)
				(polyline
					(pts
						(xy -11.43 2.54) (xy -12.065 2.54) (xy -12.065 1.27) (xy -11.43 1.27)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type outline)
					)
				)
			)
			(symbol "USB_Type_C_1_1"
				(circle
					(center -14.859 -4.064)
					(radius 0.5334)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type outline)
					)
				)
				(pin power_in line
					(at -3.81 3.81 0)
					(length 1.27)
					(name "VCC"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 0.508 0.508)
							)
						)
					)
				)
				(pin bidirectional line
					(at 7.62 1.27 180)
					(length 1.27)
					(name "DN2"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
					(number "10"
						(effects
							(font
								(size 0.508 0.508)
							)
						)
					)
				)
				(pin no_connect line
					(at 7.62 2.54 180)
					(length 1.27)
					(name "SBU2"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
					(number "11"
						(effects
							(font
								(size 0.508 0.508)
							)
						)
					)
				)
				(pin power_in line
					(at 7.62 3.81 180)
					(length 1.27)
					(name "VCC"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
					(number "12"
						(effects
							(font
								(size 0.508 0.508)
							)
						)
					)
				)
				(pin no_connect line
					(at -3.81 2.54 0)
					(length 1.27)
					(name "CC1"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
					(number "2"
						(effects
							(font
								(size 0.508 0.508)
							)
						)
					)
				)
				(pin bidirectional line
					(at -3.81 1.27 0)
					(length 1.27)
					(name "DP1"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
					(number "3"
						(effects
							(font
								(size 0.508 0.508)
							)
						)
					)
				)
				(pin bidirectional line
					(at -3.81 0 0)
					(length 1.27)
					(name "DN1"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
					(number "4"
						(effects
							(font
								(size 0.508 0.508)
							)
						)
					)
				)
				(pin no_connect line
					(at -3.81 -1.27 0)
					(length 1.27)
					(name "SBU1"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
					(number "5"
						(effects
							(font
								(size 0.508 0.508)
							)
						)
					)
				)
				(pin power_in line
					(at -3.81 -2.54 0)
					(length 1.27)
					(name "GND"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
					(number "6"
						(effects
							(font
								(size 0.508 0.508)
							)
						)
					)
				)
				(pin power_in line
					(at 7.62 -2.54 180)
					(length 1.27)
					(name "GND"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
					(number "7"
						(effects
							(font
								(size 0.508 0.508)
							)
						)
					)
				)
				(pin no_connect line
					(at 7.62 -1.27 180)
					(length 1.27)
					(name "CC2"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
					(number "8"
						(effects
							(font
								(size 0.508 0.508)
							)
						)
					)
				)
				(pin bidirectional line
					(at 7.62 0 180)
					(length 1.27)
					(name "DP2"
						(effects
							(font
								(size 0.9906 0.9906)
							)
						)
					)
					(number "9"
						(effects
							(font
								(size 0.508 0.508)
							)
						)
					)
				)
			)
		)
		(symbol "WCMCU-ADS1232:WCMCU-ADS1232"
			(pin_names
				(offset 1.016)
			)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "U"
				(at -1.27 19.05 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(justify left)
				)
			)
			(property "Value" "WCMCU-ADS1232"
				(at -7.62 16.51 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(justify left)
				)
			)
			(property "Footprint" ""
				(at 0 -10.16 0)
				(effects
					(font
						(size 1.27 1.27)
						(italic yes)
					)
					(hide yes)
				)
			)
			(property "Datasheet" "http://www.ti.com/lit/ds/symlink/ads1232.pdf"
				(at 0 -10.16 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" "Single Bridge 24bit ADC for Sensors, TSSOP-24"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_keywords" "ADC 24bit Sensors Dual Channel"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_fp_filters" "TSSOP*"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "WCMCU-ADS1232_0_1"
				(rectangle
					(start -13.97 13.97)
					(end 13.97 -13.97)
					(stroke
						(width 0.254)
						(type solid)
					)
					(fill
						(type background)
					)
				)
			)
			(symbol "WCMCU-ADS1232_1_1"
				(pin input line
					(at -17.78 10.16 0)
					(length 3.81)
					(name "19/GAIN0"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin power_in line
					(at 17.78 -10.16 180)
					(length 3.81)
					(name "DVDD/1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "10"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin power_in line
					(at 17.78 -7.62 180)
					(length 3.81)
					(name "DGND/2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "11"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin input line
					(at 17.78 -5.08 180)
					(length 3.81)
					(name "TEMP/7"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "12"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin input line
					(at 17.78 -2.54 180)
					(length 3.81)
					(name "A0/8"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "13"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin input line
					(at 17.78 0 180)
					(length 3.81)
					(name "CLKIN/3"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "14"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin input line
					(at 17.78 2.54 180)
					(length 3.81)
					(name "AINN1/12"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "15"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin input line
					(at 17.78 5.08 180)
					(length 3.81)
					(name "AINP1/11"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "16"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin input line
					(at 17.78 7.62 180)
					(length 3.81)
					(name "AINN2/13"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "17"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin input line
					(at 17.78 10.16 180)
					(length 3.81)
					(name "AINP2/14"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "18"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin input line
					(at -17.78 7.62 0)
					(length 3.81)
					(name "20/GAIN1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin input line
					(at -17.78 5.08 0)
					(length 3.81)
					(name "21/SPEED"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "3"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin input line
					(at -17.78 2.54 0)
					(length 3.81)
					(name "22/~{PWDN}"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "4"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin output line
					(at -17.78 0 0)
					(length 3.81)
					(name "24/~{DRDY}/DOUT"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "5"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin input line
					(at -17.78 -2.54 0)
					(length 3.81)
					(name "23/SCLK"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "6"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin input line
					(at -17.78 -5.08 0)
					(length 3.81)
					(name "16/REFP"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "7"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin power_in line
					(at -17.78 -7.62 0)
					(length 3.81)
					(name "17/AGND"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "8"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin power_in line
					(at -17.78 -10.16 0)
					(length 3.81)
					(name "18/AVDD"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "9"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
		)
		(symbol "kicad-weight-scale-6-ch-rescue:Buzzer-Device"
			(pin_names
				(offset 0.0254) hide)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "BZ"
				(at 3.81 1.27 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(justify left)
				)
			)
			(property "Value" "Device_Buzzer"
				(at 3.81 -1.27 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(justify left)
				)
			)
			(property "Footprint" ""
				(at -0.635 2.54 90)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" ""
				(at -0.635 2.54 90)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_fp_filters" "*Buzzer*"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "Buzzer-Device_0_1"
				(arc
					(start 0 -3.175)
					(mid 3.175 0)
					(end 0 3.175)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -1.651 1.905) (xy -1.143 1.905)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -1.397 2.159) (xy -1.397 1.651)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 0 3.175) (xy 0 -3.175)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
			)
			(symbol "Buzzer-Device_1_1"
				(pin passive line
					(at -2.54 2.54 0)
					(length 2.54)
					(name "-"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at -2.54 -2.54 0)
					(length 2.54)
					(name "+"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
		)
		(symbol "kicad-weight-scale-6-ch-rescue:CP-Device"
			(pin_numbers hide)
			(pin_names
				(offset 0.254)
			)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "C"
				(at 0.635 2.54 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(justify left)
				)
			)
			(property "Value" "Device_CP"
				(at 0.635 -2.54 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(justify left)
				)
			)
			(property "Footprint" ""
				(at 0.9652 -3.81 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "ki_fp_filters" "CP_*"
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "CP-Device_0_1"
				(rectangle
					(start -2.286 0.508)
					(end 2.286 1.016)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -1.778 2.286) (xy -0.762 2.286)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy -1.27 2.794) (xy -1.27 1.778)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(rectangle
					(start 2.286 -0.508)
					(end -2.286 -1.016)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type outline)
					)
				)
			)
			(symbol "CP-Device_1_1"
				(pin passive line
					(at 0 3.81 270)
					(length 2.794)
					(name "~"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
				(pin passive line
					(at 0 -3.81 90)
					(length 2.794)
					(name "~"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "2"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
		)
		(symbol "kicad-weight-scale-6-ch-rescue:GND-power"
			(power)
			(pin_names
				(offset 0)
			)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "#PWR"
				(at 0 -6.35 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Value" "power_GND"
				(at 0 -3.81 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Footprint" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "GND-power_0_1"
				(polyline
					(pts
						(xy 0 0) (xy 0 -1.27) (xy 1.27 -1.27) (xy 0 -2.54) (xy -1.27 -1.27) (xy 0 -1.27)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
			)
			(symbol "GND-power_1_1"
				(pin power_in line
					(at 0 0 270)
					(length 0) hide
					(name "GND"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
		)
		(symbol "kicad-weight-scale-6-ch-rescue:VCC-power"
			(power)
			(pin_names
				(offset 0)
			)
			(exclude_from_sim no)
			(in_bom yes)
			(on_board yes)
			(property "Reference" "#PWR"
				(at 0 -3.81 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Value" "power_VCC"
				(at 0 3.81 0)
				(effects
					(font
						(size 1.27 1.27)
					)
				)
			)
			(property "Footprint" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Datasheet" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(property "Description" ""
				(at 0 0 0)
				(effects
					(font
						(size 1.27 1.27)
					)
					(hide yes)
				)
			)
			(symbol "VCC-power_0_1"
				(polyline
					(pts
						(xy -0.762 1.27) (xy 0 2.54)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 0 0) (xy 0 2.54)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
				(polyline
					(pts
						(xy 0 2.54) (xy 0.762 1.27)
					)
					(stroke
						(width 0)
						(type solid)
					)
					(fill
						(type none)
					)
				)
			)
			(symbol "VCC-power_1_1"
				(pin power_in line
					(at 0 0 90)
					(length 0) hide
					(name "VCC"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
					(number "1"
						(effects
							(font
								(size 1.27 1.27)
							)
						)
					)
				)
			)
		)
	)
	(junction
		(at 89.535 170.18)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "09e17fb9-286b-4f3d-87d9-92d24b998a77")
	)
	(junction
		(at 64.516 51.562)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "0cb0c020-4fba-4371-967f-0c81deae8918")
	)
	(junction
		(at 38.354 95.758)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "1878cd2c-97ab-4176-9d8f-7b9a6ec473ab")
	)
	(junction
		(at 54.483 154.686)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "34c8e7f3-c2a0-4b29-9d88-6b7168e42412")
	)
	(junction
		(at 64.516 70.104)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "3af5f24c-68af-473c-9232-14c5fc7a7104")
	)
	(junction
		(at 58.928 138.176)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "3c8e8c59-04af-4858-8bdb-3a8d1214b449")
	)
	(junction
		(at 40.513 167.386)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "44d67d5a-76c8-4fc1-b593-4d5f392deadb")
	)
	(junction
		(at 57.404 95.758)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "468da1fb-337e-4436-892c-d54eb165f768")
	)
	(junction
		(at 99.06 177.8)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "4ccd4982-35d5-49a6-873e-da04e9771036")
	)
	(junction
		(at 49.403 138.176)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "8d64816a-67bf-4623-b81c-0c2abb383afc")
	)
	(junction
		(at 40.513 154.686)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "a265c462-1647-408a-b053-878f97027535")
	)
	(junction
		(at 48.133 159.766)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "c2d83b80-806d-4d08-b275-a33eb3a1de32")
	)
	(junction
		(at 57.404 91.313)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "ccd21e3e-72a0-441b-8eba-b3928f5aae7f")
	)
	(junction
		(at 44.069 122.555)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "d098fe0d-db16-4c70-ac03-54a2a9bb0e5a")
	)
	(junction
		(at 32.893 138.176)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "e4fa31f3-d8dd-4264-acbb-4e6fa04a43f9")
	)
	(junction
		(at 45.974 87.122)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "eb55e388-c636-453c-a5c2-3951168dd201")
	)
	(junction
		(at 32.893 144.526)
		(diameter 0)
		(color 0 0 0 0)
		(uuid "eb584112-30ce-4679-a9c2-0a1d880aae16")
	)
	(wire
		(pts
			(xy 30.734 95.758) (xy 38.354 95.758)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "008dbad5-a68a-45ba-80aa-a29bff8ae399")
	)
	(wire
		(pts
			(xy 32.893 153.416) (xy 32.893 154.686)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "01552833-03a6-4383-a3f5-bcc20c495be2")
	)
	(wire
		(pts
			(xy 57.404 97.028) (xy 57.404 95.758)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "01cf75e0-c5e4-4613-8568-d4436a69ac59")
	)
	(wire
		(pts
			(xy 48.133 167.386) (xy 40.513 167.386)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "02183825-d42e-4a80-8830-e81ad9b18b55")
	)
	(wire
		(pts
			(xy 64.516 70.104) (xy 64.516 71.12)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "037c127d-9059-4185-8ea1-6e9ce0a0f6dc")
	)
	(wire
		(pts
			(xy 51.308 159.766) (xy 48.133 159.766)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "0752ea1b-6cf2-4ef3-ada4-61f929b90860")
	)
	(wire
		(pts
			(xy 46.101 27.686) (xy 46.101 28.956)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "078d5def-83e7-4647-8596-15eb609c02b7")
	)
	(wire
		(pts
			(xy 56.134 95.758) (xy 57.404 95.758)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "085fc022-a66c-4f9b-bf29-1f13c18d8c23")
	)
	(wire
		(pts
			(xy 62.103 147.066) (xy 54.483 147.066)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "1c62bc1d-e425-4359-a426-f35fedbfa6e3")
	)
	(wire
		(pts
			(xy 56.134 87.122) (xy 57.404 87.122)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "2fabae41-da6d-43b8-8d03-81399e50bb0a")
	)
	(wire
		(pts
			(xy 89.535 177.8) (xy 99.06 177.8)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "31da55c4-7ce3-40b3-9ddf-9184891428f5")
	)
	(wire
		(pts
			(xy 68.58 38.1) (xy 69.85 38.1)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "3269a40b-2d25-4ac3-9422-0a266da301c4")
	)
	(wire
		(pts
			(xy 49.403 138.176) (xy 51.308 138.176)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "32707811-2a95-4adc-8b11-ce628138e35b")
	)
	(wire
		(pts
			(xy 32.893 138.176) (xy 32.893 144.526)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "3911bf68-75b1-4bbb-9e6c-3dd2c0aee0a1")
	)
	(wire
		(pts
			(xy 99.06 177.8) (xy 99.06 179.07)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "3a683be6-b2ec-4002-909d-8a390e28f0d0")
	)
	(wire
		(pts
			(xy 61.468 70.104) (xy 64.516 70.104)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "3b2801ff-e2ac-4e35-afc6-6a7cc6e37e1c")
	)
	(wire
		(pts
			(xy 99.06 163.195) (xy 99.06 165.1)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "3d263ceb-a91c-4f2b-9b9a-9a29ba325a48")
	)
	(wire
		(pts
			(xy 64.516 41.91) (xy 69.85 41.91)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "44d6cad4-b19f-49d8-9297-8a75d42b8099")
	)
	(wire
		(pts
			(xy 64.516 65.024) (xy 61.468 65.024)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "45fa775a-5784-4b59-9561-fae5722f3aee")
	)
	(wire
		(pts
			(xy 44.069 118.745) (xy 46.609 118.745)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "5316e2da-0c89-419f-a259-84bf23ccd4ef")
	)
	(wire
		(pts
			(xy 68.58 35.56) (xy 69.85 35.56)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "56e05a60-0283-4221-b958-7abc81e10d71")
	)
	(wire
		(pts
			(xy 45.974 87.122) (xy 48.514 87.122)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "5d12da3d-31e8-44b7-8acc-975b6eb7dbfa")
	)
	(wire
		(pts
			(xy 54.483 154.686) (xy 49.403 154.686)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "5f07d03c-8913-4d19-8e42-592c908924bf")
	)
	(wire
		(pts
			(xy 59.563 154.686) (xy 54.483 154.686)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "69cc6a8d-4dcd-4efb-a2dc-5d84bb22383a")
	)
	(wire
		(pts
			(xy 60.579 91.313) (xy 57.404 91.313)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "6b06d246-5ce6-46d2-9e9a-4cb2b9a64925")
	)
	(wire
		(pts
			(xy 61.468 67.564) (xy 64.516 67.564)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "6bc9b768-f585-42ee-88e6-04cc006b7e96")
	)
	(wire
		(pts
			(xy 106.045 74.295) (xy 106.045 73.025)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "6c4756cb-c294-4452-8048-1cbfc183b424")
	)
	(wire
		(pts
			(xy 48.514 95.758) (xy 38.354 95.758)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "6e3123b6-e6c4-417a-8f75-e122ad864f56")
	)
	(wire
		(pts
			(xy 38.354 97.028) (xy 38.354 95.758)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "6e3717e9-291d-4866-b8cb-7fb25b2e52c3")
	)
	(wire
		(pts
			(xy 33.02 59.69) (xy 33.02 60.96)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "6e3f33e5-dc10-4b61-bbd6-378347ae6033")
	)
	(wire
		(pts
			(xy 68.58 44.45) (xy 69.85 44.45)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "6ed5227d-d25c-404e-a22f-bacd1c3e331c")
	)
	(wire
		(pts
			(xy 58.928 138.176) (xy 61.468 138.176)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "6f109596-b71b-4d66-a905-3b569403aa2e")
	)
	(wire
		(pts
			(xy 54.61 54.102) (xy 56.388 54.102)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "70618c2c-0fd9-4552-9dc8-d82908e22cf1")
	)
	(wire
		(pts
			(xy 57.404 105.918) (xy 57.404 104.648)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "7442d59f-e18b-4809-a629-b03fc74c3326")
	)
	(wire
		(pts
			(xy 32.893 144.526) (xy 32.893 145.796)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "7738cd7c-b99e-4716-b369-3171e63ec851")
	)
	(wire
		(pts
			(xy 54.61 51.562) (xy 64.516 51.562)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "7a04f313-13d6-4863-ba52-aedabbb0e196")
	)
	(wire
		(pts
			(xy 40.513 167.386) (xy 40.513 168.656)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "7bbf07b6-d4c0-4579-82d8-a297354b27ae")
	)
	(wire
		(pts
			(xy 38.354 105.918) (xy 38.354 104.648)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "7e6f1da3-f9af-4181-af50-14c05cda109c")
	)
	(wire
		(pts
			(xy 38.354 94.742) (xy 38.354 95.758)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "7f6d7a78-6a54-40e8-81a4-d26090d13d8e")
	)
	(wire
		(pts
			(xy 64.516 51.562) (xy 64.516 65.024)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "809a8035-a2b9-4236-b2af-1045a6ef2cc8")
	)
	(wire
		(pts
			(xy 99.06 155.575) (xy 99.06 158.115)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "870a628e-4b44-4103-8908-283ad211fdd2")
	)
	(wire
		(pts
			(xy 33.274 87.122) (xy 31.75 87.122)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "979afefd-b278-46e4-b2a7-efd4b5b17463")
	)
	(wire
		(pts
			(xy 85.09 23.495) (xy 85.09 25.4)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "98708664-aabe-4d1c-b77a-c626fbe62451")
	)
	(wire
		(pts
			(xy 77.47 24.13) (xy 77.47 25.4)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "9b701f61-7d19-46dd-a211-65ecd2d0bc60")
	)
	(wire
		(pts
			(xy 106.045 63.5) (xy 106.045 65.405)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "9cf1f52c-bff1-443b-bc14-6981309cbcc1")
	)
	(wire
		(pts
			(xy 35.433 144.526) (xy 32.893 144.526)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "9d7ba114-6e16-41ff-b66d-9112ceab529e")
	)
	(wire
		(pts
			(xy 37.592 32.512) (xy 37.592 29.972)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "9f853114-a9ad-4946-90ba-d35af2a54881")
	)
	(wire
		(pts
			(xy 57.404 91.313) (xy 57.404 95.758)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "9fb7f1c5-f862-4703-8214-1a49a8bbb684")
	)
	(wire
		(pts
			(xy 46.101 36.576) (xy 46.101 37.846)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "a241ad92-0b40-4bda-81cf-6bbd4678ac6f")
	)
	(wire
		(pts
			(xy 45.974 87.122) (xy 43.434 87.122)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "a4f9a21b-1fe1-4a07-8fdb-658362811dce")
	)
	(wire
		(pts
			(xy 82.55 23.495) (xy 82.55 25.4)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "a8707a76-9b7b-4678-87d6-0c0f15dc48cd")
	)
	(wire
		(pts
			(xy 32.512 32.512) (xy 32.512 28.702)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "af099f78-5f56-46ab-81b3-908f4ccc4a28")
	)
	(wire
		(pts
			(xy 64.516 67.564) (xy 64.516 70.104)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "b35f2ff8-6831-4d9d-857c-54d1f603ace9")
	)
	(wire
		(pts
			(xy 57.404 87.122) (xy 57.404 91.313)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "bd6c479c-3d9b-4e78-9faa-20f268503def")
	)
	(wire
		(pts
			(xy 44.069 122.555) (xy 44.069 118.745)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "c2dd4511-c4df-455f-aaec-bd6148abcca9")
	)
	(wire
		(pts
			(xy 86.995 170.18) (xy 89.535 170.18)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "c51c03af-4ea0-451e-894b-120451dea78c")
	)
	(wire
		(pts
			(xy 42.799 122.555) (xy 44.069 122.555)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "c55d06af-b2e2-42e3-88fe-59fe7b7ebe17")
	)
	(wire
		(pts
			(xy 74.93 24.13) (xy 74.93 25.4)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "c7d1c4ac-bef4-4d01-934e-b4d08924d50b")
	)
	(wire
		(pts
			(xy 58.928 144.526) (xy 58.928 138.176)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "cbd0c05d-23e9-4e56-ac7c-2fb57c284bf1")
	)
	(wire
		(pts
			(xy 40.513 164.846) (xy 40.513 167.386)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "ce99fe18-06ab-4090-88b0-2238299d90b9")
	)
	(wire
		(pts
			(xy 68.58 45.72) (xy 68.58 44.45)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "d00a951e-f3eb-4c39-833b-4bd75f4645c5")
	)
	(wire
		(pts
			(xy 89.535 170.18) (xy 91.44 170.18)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "d0288a1f-2d06-4614-81a4-adc824cabbc1")
	)
	(wire
		(pts
			(xy 40.513 154.686) (xy 32.893 154.686)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "d24ba132-16ed-4858-b85e-75a563f94b50")
	)
	(wire
		(pts
			(xy 40.513 152.146) (xy 40.513 154.686)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "dab32524-9f24-460c-a493-fa94099a7432")
	)
	(wire
		(pts
			(xy 39.37 59.69) (xy 39.37 60.96)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "ddf66934-9cc0-4e91-8f7e-83b337303ca1")
	)
	(wire
		(pts
			(xy 45.974 87.122) (xy 45.974 97.028)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "de92d395-b580-4c0d-a4e2-880a82d943ef")
	)
	(wire
		(pts
			(xy 45.593 144.526) (xy 58.928 144.526)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "e444f846-c622-4488-8bd8-9144715d4efa")
	)
	(wire
		(pts
			(xy 64.516 41.91) (xy 64.516 51.562)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "e8669e42-835d-44bf-98ee-0dab41ab143c")
	)
	(wire
		(pts
			(xy 43.053 138.176) (xy 49.403 138.176)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "ea6f520e-545c-4a43-95c7-92312f8343e7")
	)
	(wire
		(pts
			(xy 44.069 122.555) (xy 45.339 122.555)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "f0f4cbd8-cbbd-4d0d-979b-d9832ff66d6f")
	)
	(wire
		(pts
			(xy 45.974 105.918) (xy 45.974 104.648)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "f2c94ea1-cef8-4a34-af40-a227d1053764")
	)
	(wire
		(pts
			(xy 99.06 175.26) (xy 99.06 177.8)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "f345a124-f7fa-4741-8060-b73bc6e17884")
	)
	(wire
		(pts
			(xy 49.403 147.066) (xy 49.403 138.176)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "f42f0acd-d6e4-49eb-9dc0-66609c650da7")
	)
	(wire
		(pts
			(xy 39.37 68.58) (xy 39.37 71.12)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "f7df9cc9-454e-4648-bd1e-67a9e5ba5812")
	)
	(wire
		(pts
			(xy 33.02 68.58) (xy 33.02 71.12)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "f8968385-0fab-47c9-b094-58217a766f65")
	)
	(wire
		(pts
			(xy 32.893 138.176) (xy 31.623 138.176)
		)
		(stroke
			(width 0)
			(type default)
		)
		(uuid "fc4558e6-fdb1-46a2-aad7-f208d3ab5623")
	)
	(text "add diode, and move vcc sens junction"
		(exclude_from_sim no)
		(at 47.244 143.764 0)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify left bottom)
		)
		(uuid "9dbc068f-8f2e-401f-b34e-f3c9aededbb8")
	)
	(global_label "GND"
		(shape input)
		(at 82.55 23.495 90)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "00a569c4-e2dc-40f9-bb88-ab9d162c54cc")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 82.55 23.495 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "SPEED"
		(shape input)
		(at 115.57 30.48 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "00f92ea2-2d3f-4dd5-a37e-3ec568bbe26b")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 115.57 30.48 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 102.87 118.11 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "018306b9-6184-40e8-a17d-2a0615267256")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 102.87 118.11 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "EN"
		(shape output)
		(at 102.87 91.44 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "02d181c0-7817-4bb8-9ab6-50cbaf2ae4ee")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 102.87 91.44 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC_B_SENSE"
		(shape output)
		(at 46.609 118.745 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "02f47564-b251-43ac-9a38-45d0be46652a")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 46.609 118.745 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 243.84 139.954 180)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify right)
		)
		(uuid "03d44afc-a92b-4cae-b170-1a324c1c2c39")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 243.84 139.954 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 39.37 59.69 90)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "04c51dd2-d64e-47d5-a02d-90faa481d472")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 39.37 59.69 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINP2_1"
		(shape output)
		(at 243.84 93.98 180)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify right)
		)
		(uuid "0505ac7e-2e71-427a-a5fa-ceeefa8527a5")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 243.84 93.98 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 62.103 147.066 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "082ca273-6bda-4eb8-8561-a59dfa269d40")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 62.103 147.066 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 243.84 147.32 180)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify right)
		)
		(uuid "085cfebf-8673-4143-85c2-07b32c691959")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 243.84 147.32 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 102.87 108.585 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "087f17ab-dd1e-4545-bde9-efa8420fd27a")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 102.87 108.585 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "SCK"
		(shape output)
		(at 172.72 111.125 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "0ab37083-29fe-4534-8624-f58dcc6fb20e")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 172.72 111.125 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 102.87 135.255 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "0af64477-825a-4fbb-8a7a-08edb9b63658")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 102.87 135.255 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "MISO"
		(shape input)
		(at 172.72 108.585 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "0df57b8a-485a-49f6-aaa6-d1b8970e93d8")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 172.72 108.585 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 33.02 59.69 90)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "0f1279dd-ab6b-4660-b860-7d93cc9da928")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 33.02 59.69 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "RXD1"
		(shape input)
		(at 102.87 123.19 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "135fb3f3-4c6c-47e2-aef7-6d9187eee99c")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 102.87 123.19 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 45.974 105.918 270)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "14a406d7-7469-4a55-a015-743da04b9665")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 45.974 105.918 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 99.06 179.07 270)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "15e47e39-13cb-4291-bb43-745715d8d1b6")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 99.06 179.07 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "~{STDBY}"
		(shape input)
		(at 139.7 98.425 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "176c1135-4d04-4c72-84df-4a7143e8ed76")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 139.7 98.425 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 205.74 40.64 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "17e5feef-4469-45a7-aa44-fdbb75842f3b")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 205.74 40.64 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 102.87 125.73 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "17f17d39-ed9d-4421-b2df-7675a7bdeee3")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 102.87 125.73 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "CLKIN_2"
		(shape input)
		(at 186.69 59.69 270)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "17fb48d7-6bb9-43fa-b01b-694a5e425afc")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 186.69 59.69 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "EN"
		(shape input)
		(at 139.7 93.345 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "1866633f-8d48-4d5a-9a6f-b9e7c9bc8e44")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 139.7 93.345 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "SCL"
		(shape input)
		(at 198.755 112.395 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "1a8a34de-624b-44ea-b5eb-f6484069da0b")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 198.755 112.395 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC_2"
		(shape output)
		(at 61.468 138.176 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "1b1f93f9-87a9-4d5f-a18c-7e8ac9fe21aa")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 61.468 138.176 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "TXD2"
		(shape output)
		(at 102.87 137.795 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "1c182ebb-670f-47d1-b60d-664737979182")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 102.87 137.795 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINP2_2"
		(shape input)
		(at 205.74 25.4 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "1d79fdc9-6ef2-4a81-92a9-01d633a2a011")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 205.74 25.4 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINP2_3"
		(shape input)
		(at 260.35 25.4 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "1e605d18-5da1-405b-b05c-0c36055aa647")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 260.35 25.4 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "CLKIN_3"
		(shape input)
		(at 260.35 35.56 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "1eb7a10d-44ac-402a-b0f9-a128f1fdb020")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 260.35 35.56 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "3V3"
		(shape output)
		(at 139.7 90.805 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "20ed6c92-1a06-4a62-8b03-320dfd494dc5")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 139.7 90.805 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINN1_3"
		(shape output)
		(at 255.27 136.144 0)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify left)
		)
		(uuid "21777f99-f0bc-465a-96fe-c5e12633ff1c")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 255.27 136.144 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "SCL"
		(shape output)
		(at 172.72 95.885 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "225b75f4-fa61-43ca-a745-47a2ac58d530")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 172.72 95.885 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 115.57 45.72 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "23208ee9-2b4a-421b-aae4-6d52346ef4f9")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 115.57 45.72 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINN1_2"
		(shape output)
		(at 243.84 109.22 180)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify right)
		)
		(uuid "23bc8486-35e5-45f3-bc3b-c68b050f0f4f")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 243.84 109.22 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 52.959 122.555 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "2705079c-85fc-412e-8a4b-54b361979330")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 52.959 122.555 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 255.27 119.38 0)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify left)
		)
		(uuid "2813f2bb-19d2-4433-859f-f94f9440f9d2")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 255.27 119.38 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "A0_1"
		(shape input)
		(at 151.13 38.1 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "28ec60d2-d4fa-404a-8af5-cd7022e84ade")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 151.13 38.1 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 102.87 142.875 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "294da4a8-d8ef-4034-a50d-6a84fade4e0c")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 102.87 142.875 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINP2_2"
		(shape output)
		(at 255.27 123.19 0)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify left)
		)
		(uuid "29ce1df2-50e5-4efd-824c-7f626fa5fabd")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 255.27 123.19 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "TXD0"
		(shape output)
		(at 172.72 98.425 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "2a1d89bf-ba01-4374-8590-552d8f4ab8f1")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 172.72 98.425 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 57.404 105.918 270)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "2a8ffe48-bc52-456b-add6-d639ade7f371")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 57.404 105.918 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 243.84 125.73 180)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify right)
		)
		(uuid "2e98898c-0fa8-469e-ac3a-aeac24fd3149")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 243.84 125.73 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINN1_1"
		(shape output)
		(at 243.84 81.28 180)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify right)
		)
		(uuid "2fb76275-3800-400d-be44-6f999946a8ef")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 243.84 81.28 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 255.27 105.41 0)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify left)
		)
		(uuid "334e584f-a97c-4477-a31b-e2de6303e8bb")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 255.27 105.41 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 243.84 111.76 180)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify right)
		)
		(uuid "34219de0-ca3b-4275-b35e-f08d31b33dc8")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 243.84 111.76 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "DATA_3"
		(shape bidirectional)
		(at 224.79 35.56 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "343ab5f6-4fa1-48f0-bf06-6e0813951153")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 224.79 35.56 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINP2_3"
		(shape output)
		(at 243.84 149.86 180)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify right)
		)
		(uuid "39e70932-07c7-4910-8fb3-701a008466e3")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 243.84 149.86 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC_B_SENSE"
		(shape input)
		(at 139.7 103.505 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "39f5c964-0638-4963-866a-ce95bb4b9ff0")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 139.7 103.505 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "SCLK_2"
		(shape input)
		(at 139.7 108.585 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "3c0477b9-5c64-4709-90fc-c777c7552ebd")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 139.7 108.585 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "SPEED"
		(shape input)
		(at 224.79 30.48 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "3ee44148-d3b8-4395-a7c4-fa61d51533c8")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 224.79 30.48 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "~{CHRG}"
		(shape output)
		(at 68.58 35.56 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "40993247-2a9a-4555-99a5-9c4b37e8c236")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 68.58 35.56 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "~{STDBY}"
		(shape output)
		(at 39.37 71.12 270)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "40f6ff47-b54e-4dcc-8be2-a121b401dced")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 39.37 71.12 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 255.27 111.76 0)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify left)
		)
		(uuid "415f2ef4-b36d-49c3-84c9-4fd69f56ff00")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 255.27 111.76 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 255.27 77.47 0)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify left)
		)
		(uuid "427567a5-2bb4-47ca-a762-8e1c27f3a7e3")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 255.27 77.47 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 243.84 83.82 180)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify right)
		)
		(uuid "4617aaee-2e85-4158-bf94-d07da76e003e")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 243.84 83.82 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC_B1"
		(shape output)
		(at 31.75 87.122 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "4784c262-06d5-4fab-bc27-b71f14ad0643")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 31.75 87.122 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "BUZZ"
		(shape input)
		(at 86.995 170.18 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "479ae6d6-a1f4-446a-ad75-7c6e36dc9f1f")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 86.995 170.18 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "SPEED"
		(shape input)
		(at 170.18 30.48 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "49db45c9-c5bd-44f3-a675-4010d7e1e375")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 170.18 30.48 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "SCLK_2"
		(shape input)
		(at 170.18 38.1 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "49ec88f4-d832-4773-851d-292812a5889c")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 170.18 38.1 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 46.101 37.846 270)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "5100777c-f9a1-4b02-8a1a-42c6c57973b1")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 46.101 37.846 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape output)
		(at 82.55 77.47 270)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "51943771-6b8d-4dc2-be40-452a3be8a9f4")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 82.55 77.47 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC_B"
		(shape bidirectional)
		(at 77.47 24.13 90)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "51fc1974-6644-4296-8bf2-93386a79b3cb")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 77.47 24.13 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "RXD2"
		(shape input)
		(at 172.72 118.745 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "53abe00f-d93c-452b-a71a-c84d5873025e")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 172.72 118.745 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 172.72 106.045 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "5498016a-d7ce-4beb-94ad-3ff238ea5e20")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 172.72 106.045 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINN1_3"
		(shape input)
		(at 260.35 33.02 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "5595033f-6a66-4bba-bdc6-5da9b68fa04e")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 260.35 33.02 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 224.79 43.18 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "570e7c9c-36c4-480c-83e7-9a74c6fd4355")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 224.79 43.18 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "SCLK_3"
		(shape input)
		(at 224.79 38.1 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "596989dc-46f9-4343-8679-0ec053ad690b")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 224.79 38.1 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "MOSI"
		(shape output)
		(at 172.72 93.345 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "59c51428-404c-4824-8017-cbdd8c22513f")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 172.72 93.345 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 243.84 91.44 180)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify right)
		)
		(uuid "5bf0bc9b-a523-462b-b31c-a67c97a05ac4")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 243.84 91.44 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "A0_3"
		(shape output)
		(at 172.72 126.365 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "5f4352ed-0f4f-4921-a42c-6bf6bc777952")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 172.72 126.365 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINP1_1"
		(shape output)
		(at 255.27 81.28 0)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify left)
		)
		(uuid "5fe0bf35-8a45-42b9-baa4-b96804a89bcf")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 255.27 81.28 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 243.84 97.79 180)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify right)
		)
		(uuid "607db171-0e1e-466f-87b3-d734710f0d66")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 243.84 97.79 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 115.57 25.4 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "6177d117-73f7-4eca-9d45-6f4201d4d2f6")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 115.57 25.4 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "A0_2"
		(shape input)
		(at 205.74 38.1 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "61ba9a8a-6b28-484b-a1b8-b607a1063d85")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 205.74 38.1 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINP2_3"
		(shape output)
		(at 255.27 151.13 0)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify left)
		)
		(uuid "6421bf75-943a-4e1b-8790-69df32d02188")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 255.27 151.13 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 255.27 147.32 0)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify left)
		)
		(uuid "665182a3-aa1f-48db-a8bd-86cb240dd33e")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 255.27 147.32 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "3V3"
		(shape input)
		(at 151.13 45.72 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "683ba451-2045-4da4-b94f-facd8222fdc2")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 151.13 45.72 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINN1_1"
		(shape input)
		(at 151.13 33.02 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "68c1c421-900b-4934-8546-2fe7a9a1833e")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 151.13 33.02 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC_1"
		(shape output)
		(at 60.579 91.313 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "68f57993-b21a-4044-ba17-52367c5936c3")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 60.579 91.313 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "A0_1"
		(shape output)
		(at 139.7 121.285 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "6905d98d-529c-4c72-b43c-ef5be34468c9")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 139.7 121.285 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 115.57 43.18 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "6c2f11fb-7003-46ce-bbad-fcb8357a2410")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 115.57 43.18 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINP2_1"
		(shape output)
		(at 255.27 95.25 0)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify left)
		)
		(uuid "6d5da690-3254-46e4-a0b0-50c9fa34972a")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 255.27 95.25 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 77.47 77.47 270)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "6f7a4ae0-3082-4275-baf6-b0f390783d6f")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 77.47 77.47 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINP1_2"
		(shape output)
		(at 243.84 107.95 180)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify right)
		)
		(uuid "724abe2c-4817-473d-b436-3380fc5428fa")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 243.84 107.95 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 243.84 119.38 180)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify right)
		)
		(uuid "727b9fc5-f553-4e86-8955-e6086e72fe67")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 243.84 119.38 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINP2_1"
		(shape input)
		(at 151.13 25.4 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "72bb6313-a19d-4048-b592-2b0f956f2981")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 151.13 25.4 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINN1_1"
		(shape output)
		(at 255.27 80.01 0)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify left)
		)
		(uuid "73ff1d6b-be68-4d26-a6bd-0e68dfac3a4f")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 255.27 80.01 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINP1_3"
		(shape input)
		(at 260.35 30.48 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "750a6619-56b4-48ba-a40d-b59c3175905b")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 260.35 30.48 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 151.13 40.64 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "757ae7ed-eec3-4655-b79c-e7310fb00297")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 151.13 40.64 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape output)
		(at 64.516 71.12 270)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "75e25bf2-542b-426b-a5aa-a4b9e00852f0")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 64.516 71.12 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 224.79 45.72 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "763dde8f-5ef8-4207-b9ae-160d3f1485a0")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 224.79 45.72 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 243.84 59.69 270)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "77cf72d0-22ea-4ec5-9e18-0e0ac768a047")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 243.84 59.69 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 85.09 77.47 270)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "78dfd5fb-006e-48e8-9bc4-cf8322c7c166")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 85.09 77.47 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "SDA"
		(shape bidirectional)
		(at 198.755 109.855 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "7a11b579-e4ff-4f35-9e69-5302b26eac41")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 198.755 109.855 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 255.27 97.79 0)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify left)
		)
		(uuid "7b1138dd-b2d8-47cc-8a16-9af0be884f01")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 255.27 97.79 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 133.985 59.055 270)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "7beaafce-04c8-4c2d-b2e2-6ee79557b04c")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 133.985 59.055 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINP1_3"
		(shape output)
		(at 243.84 136.144 180)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify right)
		)
		(uuid "7da9dfd5-8b50-4fca-9752-7ba039d520ce")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 243.84 136.144 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINN2_1"
		(shape input)
		(at 151.13 27.94 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "7e748760-6e65-476e-bf34-42f7f8609fdd")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 151.13 27.94 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape output)
		(at 32.512 32.512 270)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "821444ff-54e7-4142-9175-cd61ff3807ff")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 32.512 32.512 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC_CNTRL"
		(shape output)
		(at 172.72 123.825 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "842d6c4a-630a-4dc9-adcd-bf2a007e8dce")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 172.72 123.825 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC_B1"
		(shape output)
		(at 74.93 24.13 90)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "842e1906-d94d-40ae-82a5-d830f3ab8d04")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 74.93 24.13 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "~{CHRG}"
		(shape output)
		(at 33.02 71.12 270)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "8570e160-ccfd-4852-bfc6-9fc2645659ae")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 33.02 71.12 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINP2_2"
		(shape output)
		(at 243.84 121.92 180)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify right)
		)
		(uuid "868b5c60-9755-4640-8402-5db564f53cf3")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 243.84 121.92 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINN2_3"
		(shape output)
		(at 255.27 149.86 0)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify left)
		)
		(uuid "86b498c5-38a2-4eea-a49d-459b912e9ad7")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 255.27 149.86 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 38.354 105.918 270)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "86d792cb-481d-48b6-b083-d86c84a00219")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 38.354 105.918 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "DATA_3"
		(shape bidirectional)
		(at 172.72 128.905 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "87681512-21a0-4b9f-af5f-457df0c811fb")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 172.72 128.905 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 170.18 40.64 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "87770019-8db9-4809-b697-81507ffda238")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 170.18 40.64 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 106.045 74.295 270)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "8bdd306f-9dd3-415a-b49f-bd2edf7fa1e3")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 106.045 74.295 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "DATA_2"
		(shape bidirectional)
		(at 170.18 35.56 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "8c0c7451-e1ac-4355-9c4a-6a4bd7218003")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 170.18 35.56 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "SPEED"
		(shape output)
		(at 172.72 121.285 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "8c0dde5f-dd4f-4443-83ce-82bd9f33b3ef")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 172.72 121.285 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 198.755 104.775 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "8c63a32b-b0cf-4ecc-ab7f-5bcaa595c8b9")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 198.755 104.775 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC_B"
		(shape bidirectional)
		(at 46.101 27.686 90)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "8d6445d7-0202-45a9-a67a-22b5cbb3808b")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 46.101 27.686 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC_CNTRL"
		(shape output)
		(at 51.308 159.766 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "8d8d34bd-8b01-484c-a3e7-bbb28222c09d")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 51.308 159.766 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC_SENSE"
		(shape input)
		(at 139.7 100.965 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "90ed0976-b720-4981-9b39-bebf3c426c76")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 139.7 100.965 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINP1_1"
		(shape input)
		(at 151.13 30.48 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "930b23f3-e3e0-4231-8ccb-6a9c7c1ae8c3")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 151.13 30.48 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "~{PWDN}"
		(shape output)
		(at 139.7 106.045 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "93760f18-1a00-45c1-8cd8-ee7ff2800643")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 139.7 106.045 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 115.57 40.64 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "96f761f8-9e70-4009-be14-6f8d72a49667")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 115.57 40.64 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINN2_2"
		(shape output)
		(at 243.84 123.19 180)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify right)
		)
		(uuid "9730e197-9591-40e1-8206-bdb9c6c6e212")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 243.84 123.19 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINN1_3"
		(shape output)
		(at 243.84 137.414 180)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify right)
		)
		(uuid "97578c6c-c5b5-4f6e-85c0-289371012e6f")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 243.84 137.414 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC_SENSE"
		(shape output)
		(at 59.563 154.686 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "97c1d035-0f79-4002-acdf-87fdc13eb166")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 59.563 154.686 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "RXD0"
		(shape input)
		(at 172.72 100.965 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "99c97146-c039-4d32-8a0f-465fdaa3e5ba")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 172.72 100.965 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 139.7 123.825 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "99d673a7-cb15-4f57-ba5d-e7d08c759ed9")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 139.7 123.825 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 260.35 40.64 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "9b23cdad-b5c7-40e7-ad5a-7238ab878568")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 260.35 40.64 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "RXD0"
		(shape input)
		(at 102.87 106.045 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "9c1a0cbb-8c60-4a96-9317-81bd15ed4800")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 102.87 106.045 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 255.27 83.82 0)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify left)
		)
		(uuid "9c948b8e-27bc-42a8-8d50-9c997c1a6f22")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 255.27 83.82 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "5V"
		(shape output)
		(at 30.734 95.758 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "9cbd0d97-5d3d-4e49-8767-5beb9106ca0a")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 30.734 95.758 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape bidirectional)
		(at 106.045 63.5 90)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "9f071932-8de1-4922-8363-37746b4a14db")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 106.045 63.5 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "RXD2"
		(shape input)
		(at 102.87 140.335 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "a1258a94-38af-4bdd-82c9-1af2c215c4c9")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 102.87 140.335 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape output)
		(at 37.592 29.972 90)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "a3e93a7a-63c9-451e-ac05-4c756ee46115")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 37.592 29.972 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "SCLK_3"
		(shape input)
		(at 139.7 126.365 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "a6998507-eedd-48ec-a4cb-7e7dde7c301c")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 139.7 126.365 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 170.18 43.18 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "a780c777-8727-45a0-af5f-20c9fb21884d")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 170.18 43.18 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINN2_3"
		(shape output)
		(at 243.84 151.13 180)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify right)
		)
		(uuid "a7a77872-34bc-43e5-8dfd-717ac373f0dd")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 243.84 151.13 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINP1_3"
		(shape output)
		(at 255.27 137.414 0)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify left)
		)
		(uuid "a7bfd928-29a5-432d-8894-e3cb7e5e81e7")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 255.27 137.414 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINN1_2"
		(shape input)
		(at 205.74 33.02 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "a88e7e52-2d2d-471f-9c8f-2c1c14e1ce5a")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 205.74 33.02 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINN2_1"
		(shape output)
		(at 255.27 93.98 0)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify left)
		)
		(uuid "a8c2d117-34af-42fb-a205-fc385f46e63e")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 255.27 93.98 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "~{PWDN}"
		(shape input)
		(at 115.57 33.02 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "ae055b3c-b53d-40d3-8a4a-8b3d4b43d8fb")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 115.57 33.02 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "3V3"
		(shape input)
		(at 205.74 45.72 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "b1cd06d5-c92a-4bc1-b405-c8ed102fa049")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 205.74 45.72 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "CLKIN_3"
		(shape input)
		(at 241.3 59.69 270)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "b22412d6-38d1-42c6-90cf-2f86cbd7e274")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 241.3 59.69 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "3V3"
		(shape input)
		(at 260.35 45.72 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "b2fecc6d-2c55-4e70-804f-d6ad6e0d1a30")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 260.35 45.72 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "~{CHRG}"
		(shape input)
		(at 139.7 95.885 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "b36966ce-1f3c-4340-8971-51ca384a0a4c")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 139.7 95.885 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "DATA_1"
		(shape bidirectional)
		(at 115.57 35.56 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "b37a23d2-4b37-47aa-8f97-e9557a57aa0f")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 115.57 35.56 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINP1_2"
		(shape output)
		(at 255.27 109.22 0)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify left)
		)
		(uuid "b3b6540a-a026-4a5e-baa9-9cce243cc207")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 255.27 109.22 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 255.27 91.44 0)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify left)
		)
		(uuid "b451ba36-061f-46cc-8bf9-d6a121fcc932")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 255.27 91.44 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 172.72 90.805 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "b4b7dce7-dd33-4b8f-bbe4-b57b649612fd")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 172.72 90.805 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "TXD1"
		(shape output)
		(at 139.7 131.445 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "b52cfc8c-a298-4732-a440-5b7af61a8add")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 139.7 131.445 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC_B"
		(shape bidirectional)
		(at 35.179 122.555 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "b531590d-e245-43c9-b0e7-23c6608813dd")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 35.179 122.555 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "~{PWDN}"
		(shape input)
		(at 224.79 33.02 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "b6738711-87ad-4afe-837b-09fc11bef9f3")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 224.79 33.02 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 40.513 168.656 270)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "b68ef76a-293e-4bec-97a8-9164ea79c38e")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 40.513 168.656 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "5V"
		(shape output)
		(at 56.388 54.102 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "b6a089c2-40c5-4fe9-ae99-3109ef4eb1a7")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 56.388 54.102 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "~{STDBY}"
		(shape output)
		(at 68.58 38.1 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "b6cc1e32-bfe3-4ab7-9ac7-c11c8e869f51")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 68.58 38.1 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 255.27 153.67 0)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify left)
		)
		(uuid "b8fc7164-354e-4cc6-b7cf-0a6ed7541c05")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 255.27 153.67 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 115.57 27.94 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "b9a89df6-cbc5-4e62-a9c7-37ed79f2d96e")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 115.57 27.94 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 255.27 125.73 0)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify left)
		)
		(uuid "b9fd66ee-4627-4bbd-be11-02dca09c12eb")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 255.27 125.73 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 243.84 77.47 180)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify right)
		)
		(uuid "bad31243-b219-4bef-a692-1b8a879025e9")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 243.84 77.47 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 102.87 88.9 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "bb60cf58-3690-47b6-b193-8d8ec1b05366")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 102.87 88.9 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "~{PWDN}"
		(shape input)
		(at 170.18 33.02 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "bb741587-f338-49e2-b7eb-97e5a1af0efd")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 170.18 33.02 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 170.18 27.94 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "bb83cd3e-d581-478e-851f-e44b4cb85d41")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 170.18 27.94 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 85.09 23.495 90)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "bd8d0f82-afa9-4b57-a77a-2e5984167460")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 85.09 23.495 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "SCK"
		(shape input)
		(at 198.755 114.935 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "be059b48-9d68-4190-b364-fd93cf726ff4")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 198.755 114.935 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "CLKIN_1"
		(shape input)
		(at 131.445 59.055 270)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "bf798f48-3853-4fed-a536-9fbf11715776")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 131.445 59.055 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 198.755 122.555 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "c1719cf4-4eb4-431c-8b02-783014a4be50")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 198.755 122.555 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC_2"
		(shape output)
		(at 74.93 77.47 270)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "c18c76f5-1f82-496c-8970-98c2a732d911")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 74.93 77.47 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 260.35 43.18 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "c261c372-ace0-4f7b-8feb-2e5eea92fe79")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 260.35 43.18 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 99.06 155.575 90)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "c5a0d5d2-c482-43d3-a2d6-6d5ef5720977")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 99.06 155.575 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 243.84 105.41 180)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify right)
		)
		(uuid "c6a9cd98-5585-4f4c-b221-63703422516d")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 243.84 105.41 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 243.84 153.67 180)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify right)
		)
		(uuid "c7566e25-c8cc-4a64-acfc-5554358e360e")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 243.84 153.67 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 198.755 107.315 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "cc588d32-307c-4dc4-a673-0ecdafa439bb")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 198.755 107.315 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 243.84 133.604 180)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify right)
		)
		(uuid "cd3001b3-78db-4b69-a68f-0cad0e2b21ff")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 243.84 133.604 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINN2_3"
		(shape input)
		(at 260.35 27.94 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "cd979d53-d9d3-47bc-b257-a8530f2c49f6")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 260.35 27.94 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "A0_2"
		(shape output)
		(at 139.7 113.665 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "cf705fe8-8e49-4988-b02e-7077aff3da67")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 139.7 113.665 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 189.23 59.69 270)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "d0418b24-e0a0-464c-8e7a-7f5904007b24")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 189.23 59.69 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "SCLK_1"
		(shape input)
		(at 139.7 116.205 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "d4597c9a-e084-4c5e-8a3c-7a75f2765af3")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 139.7 116.205 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 170.18 45.72 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "d528047a-6954-4594-a20b-687c16b958b4")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 170.18 45.72 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 255.27 139.954 0)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify left)
		)
		(uuid "d776f4fe-c5a6-45fc-9013-4b4f1ba76bce")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 255.27 139.954 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "DATA_2"
		(shape bidirectional)
		(at 139.7 111.125 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "d7a63228-5342-4751-8fa9-2fed28a09b84")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 139.7 111.125 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 102.87 100.965 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "d92426f2-ed70-4cff-8057-2d7db91b308e")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 102.87 100.965 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC_1"
		(shape input)
		(at 31.623 138.176 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "da20495b-3771-493e-965b-15bd00306159")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 31.623 138.176 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape output)
		(at 68.58 45.72 270)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "db86b068-3572-4c84-a55c-006bc8ab4b25")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 68.58 45.72 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "DATA_1"
		(shape bidirectional)
		(at 139.7 118.745 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "db9a6a02-560c-4b85-b7b3-2c3af300cb5c")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 139.7 118.745 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "CLKIN_1"
		(shape input)
		(at 151.13 35.56 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "dd797e04-414c-4f20-aac4-d15f69b338fb")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 151.13 35.56 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "BUZZ"
		(shape output)
		(at 172.72 113.665 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "de54c749-a1dd-461c-9c80-0d6318025ed0")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 172.72 113.665 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "TXD1"
		(shape output)
		(at 102.87 120.65 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "df9ecb87-ce1f-4adc-92b3-e4cb76de3c25")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 102.87 120.65 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 170.18 25.4 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "e13a4fde-876e-46f3-b406-fd0ab6b12554")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 170.18 25.4 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINP1_1"
		(shape output)
		(at 243.84 80.01 180)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify right)
		)
		(uuid "e29eb25e-445e-48ec-b576-a83833ae24cc")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 243.84 80.01 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "MISO"
		(shape output)
		(at 198.755 117.475 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "e3ba2ec7-b26f-4171-b2ca-d191c02718f8")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 198.755 117.475 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINN2_2"
		(shape output)
		(at 255.27 121.92 0)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify left)
		)
		(uuid "e4672897-b343-4fd6-82e0-f7958b9d56d4")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 255.27 121.92 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 224.79 40.64 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "e4ebaf6e-9160-4d34-9b20-482a9e481f80")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 224.79 40.64 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINN1_2"
		(shape output)
		(at 255.27 107.95 0)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify left)
		)
		(uuid "e5275a8a-cf6c-4681-b423-918ea794d1e1")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 255.27 107.95 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 205.74 43.18 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "e5d1fe80-2f68-4cb3-9989-c9189320286c")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 205.74 43.18 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "TXD0"
		(shape output)
		(at 102.87 103.505 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "e6ac5150-8dac-4acd-9c38-ad9055a836d2")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 102.87 103.505 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "A0_3"
		(shape input)
		(at 260.35 38.1 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "e7af68e6-7e88-41ed-8995-309f28bf1016")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 260.35 38.1 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "TXD2"
		(shape output)
		(at 172.72 116.205 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "ecd0fcb7-1338-48f0-b721-046cb48af812")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 172.72 116.205 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "SDA"
		(shape bidirectional)
		(at 172.72 103.505 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "efcf6300-9f6f-445f-8be1-0b9591dda753")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 172.72 103.505 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "SCLK_1"
		(shape input)
		(at 115.57 38.1 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "f04d1e13-7b1d-4269-aa31-d2a44b7052af")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 115.57 38.1 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 224.79 25.4 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "f28a9ba1-a183-4ed9-b039-3eeaf41bbb2a")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 224.79 25.4 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "CLKIN_2"
		(shape input)
		(at 205.74 35.56 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "f54b5e32-9ae5-42b2-ad74-01f9a91d8214")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 205.74 35.56 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINN2_1"
		(shape output)
		(at 243.84 95.25 180)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify right)
		)
		(uuid "f5b28ec0-b94f-4f33-9b65-3be2351bf2d2")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 243.84 95.25 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 255.27 133.604 0)
		(effects
			(font
				(size 0.508 0.508)
			)
			(justify left)
		)
		(uuid "f73c3c6c-0535-45d9-92da-ab5d6b6bfff7")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 255.27 133.604 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "MOSI"
		(shape input)
		(at 198.755 120.015 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "f92de64d-9bd6-44ae-a9d5-fa1a1b774385")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 198.755 120.015 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINN2_2"
		(shape input)
		(at 205.74 27.94 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "fada2942-4e40-4edd-9108-d8e08c36cfc7")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 205.74 27.94 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 224.79 27.94 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "fb24b2a9-00f7-4f5f-b951-e5f776bd2bf7")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 224.79 27.94 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "VCC"
		(shape input)
		(at 139.7 136.525 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "fb3169e1-d75b-48d7-80d9-2d3ade7d6fa6")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 139.7 136.525 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "GND"
		(shape input)
		(at 151.13 43.18 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "fc07636c-4436-4606-a265-2d1be6492089")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 151.13 43.18 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "RXD1"
		(shape input)
		(at 139.7 128.905 180)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify right)
		)
		(uuid "ff463fc7-da02-4da5-8654-f40121f2e2f1")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 139.7 128.905 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(global_label "AINP1_2"
		(shape input)
		(at 205.74 30.48 0)
		(effects
			(font
				(size 0.9906 0.9906)
			)
			(justify left)
		)
		(uuid "ffd8ad82-ba86-4508-8bb1-36d3bfbce001")
		(property "Intersheetrefs" "${INTERSHEET_REFS}"
			(at 205.74 30.48 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
	)
	(symbol
		(lib_id "kicad-weight-scale-6-ch-rescue:Buzzer-Device")
		(at 101.6 160.655 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-0000606d3770")
		(property "Reference" "BZ1"
			(at 105.4608 159.9184 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Value" "Buzzer"
			(at 105.4608 162.2298 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Footprint" "Buzzer_Beeper:Buzzer_12x9.5RM7.6"
			(at 100.965 158.115 90)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 100.965 158.115 90)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 101.6 160.655 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "2"
			(uuid "0898e651-c3bb-4f67-ab0e-56504bff777a")
		)
		(pin "1"
			(uuid "916077ad-28f6-4ead-9018-510f55eadb13")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "BZ1")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "DataLoggingBoard:DataLoggingBoard")
		(at 208.915 112.395 0)
		(mirror y)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-0000606dbe53")
		(property "Reference" "U6"
			(at 209.55 127 0)
			(effects
				(font
					(size 0.9906 0.9906)
				)
			)
		)
		(property "Value" "DataLoggingBoard"
			(at 209.55 125.095 0)
			(effects
				(font
					(size 0.9906 0.9906)
				)
			)
		)
		(property "Footprint" "DIY-Board:Datalogging board"
			(at 208.915 99.695 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" ""
			(at 208.915 99.695 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 208.915 112.395 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "6"
			(uuid "e65d9b4f-91ac-4b9c-b1cd-6fc7702b9c29")
		)
		(pin "1"
			(uuid "3e293ba7-8a4a-44e3-8cd1-4dfadcebe840")
		)
		(pin "7"
			(uuid "31e0f17d-9746-44aa-9688-2721c4daa71c")
		)
		(pin "3"
			(uuid "c4e73f0b-7942-4ffb-9775-9eb3d3a075eb")
		)
		(pin "4"
			(uuid "9e85a258-73a3-47a4-9e56-9f2e22a60e7a")
		)
		(pin "5"
			(uuid "fa27415d-dc36-453b-9af5-070f97e6692c")
		)
		(pin "2"
			(uuid "ee258b3c-5690-4e47-999e-4a7bf6c25a61")
		)
		(pin "8"
			(uuid "8bec93f6-c5b6-4ff0-8e43-f871ed9198c1")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "U6")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Transistor_FET:Si4542DY")
		(at 43.053 159.766 0)
		(mirror y)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-0000606f125e")
		(property "Reference" "Q1"
			(at 37.846 158.5976 0)
			(effects
				(font
					(size 0.9906 0.9906)
				)
				(justify left)
			)
		)
		(property "Value" "Si4542DY"
			(at 37.846 160.909 0)
			(effects
				(font
					(size 0.6096 0.6096)
				)
				(justify left)
			)
		)
		(property "Footprint" "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm"
			(at 37.973 161.671 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
				(hide yes)
			)
		)
		(property "Datasheet" "https://www.onsemi.com/pub/Collateral/SI4542DY-D.PDF"
			(at 40.513 159.766 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 43.053 159.766 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "1"
			(uuid "8ee3ea22-b926-46f5-b68e-772d34cfbe2c")
		)
		(pin "2"
			(uuid "437a1e04-5eca-4b0e-9961-d1474d2e04e8")
		)
		(pin "8"
			(uuid "72510931-2730-4167-86f4-e5c328a5231c")
		)
		(pin "4"
			(uuid "1d8fe8c4-4702-432a-a292-57b6818e17e0")
		)
		(pin "3"
			(uuid "8c2b9668-522f-41fa-8d14-4572c0378639")
		)
		(pin "5"
			(uuid "ebe57480-2277-477a-a175-8a91b16c9f54")
		)
		(pin "6"
			(uuid "c42e9db3-414d-49c4-8f35-818abff888ee")
		)
		(pin "7"
			(uuid "ae439b75-6dbc-4818-b8c0-2ecaa699f6e7")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "Q1")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Transistor_FET:Si4542DY")
		(at 40.513 147.066 270)
		(mirror x)
		(unit 2)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-0000606f2acf")
		(property "Reference" "Q1"
			(at 44.323 147.066 90)
			(effects
				(font
					(size 0.9906 0.9906)
				)
				(justify left)
			)
		)
		(property "Value" "Si4542DY"
			(at 43.053 148.336 90)
			(effects
				(font
					(size 0.6096 0.6096)
				)
				(justify left)
			)
		)
		(property "Footprint" "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm"
			(at 38.608 141.986 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
				(hide yes)
			)
		)
		(property "Datasheet" "https://www.onsemi.com/pub/Collateral/SI4542DY-D.PDF"
			(at 40.513 144.526 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 40.513 147.066 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "4"
			(uuid "5ed382ac-cfc7-4c3f-af87-b82fe3f14cd6")
		)
		(pin "6"
			(uuid "b2198f60-04a6-47ec-bc62-a717abbb2741")
		)
		(pin "5"
			(uuid "4d088a47-0bee-47ec-b2c0-89ccc4a4e5c3")
		)
		(pin "8"
			(uuid "1919bf12-8a8e-43c5-b090-d59c6f77dc3f")
		)
		(pin "2"
			(uuid "348673ce-db6c-43d7-9b82-ca967817a2a9")
		)
		(pin "7"
			(uuid "c3c711f4-af78-4122-9cfa-81adc065d650")
		)
		(pin "3"
			(uuid "7f12d631-2da4-40e1-bdaa-8d5310480cda")
		)
		(pin "1"
			(uuid "5e77f275-37e7-418a-9e1d-aa9012e5cabd")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "Q1")
					(unit 2)
				)
			)
		)
	)
	(symbol
		(lib_id "Device:Battery_Cell")
		(at 46.101 34.036 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-000060706077")
		(property "Reference" "BT1"
			(at 46.736 34.671 0)
			(effects
				(font
					(size 0.9906 0.9906)
				)
				(justify left)
			)
		)
		(property "Value" "18650 Li-ion"
			(at 46.736 35.941 0)
			(effects
				(font
					(size 0.9906 0.9906)
				)
				(justify left)
			)
		)
		(property "Footprint" "TerminalBlock:TerminalBlock_bornier-2_P5.08mm"
			(at 46.101 32.512 90)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 46.101 32.512 90)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 46.101 34.036 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "2"
			(uuid "43a238bb-057c-4b5e-b4cd-c3d0958048b3")
		)
		(pin "1"
			(uuid "ec19826b-64ad-453d-9c69-674790bbb16e")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "BT1")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Device:R")
		(at 38.354 100.838 180)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00006071cdb3")
		(property "Reference" "R5"
			(at 42.164 100.838 0)
			(effects
				(font
					(size 0.9906 0.9906)
				)
				(justify left)
			)
		)
		(property "Value" "1M"
			(at 42.164 99.568 0)
			(effects
				(font
					(size 0.6096 0.6096)
				)
				(justify left)
			)
		)
		(property "Footprint" "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder"
			(at 40.132 100.838 90)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 38.354 100.838 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 38.354 100.838 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "1"
			(uuid "f1720f7d-ace0-4f37-95a1-492d0ac4989e")
		)
		(pin "2"
			(uuid "520366e9-7544-48d4-80b5-2593e05f94cf")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "R5")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Switch:SW_Push")
		(at 37.973 138.176 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-000060720789")
		(property "Reference" "SW1"
			(at 37.973 140.716 0)
			(effects
				(font
					(size 0.9906 0.9906)
				)
			)
		)
		(property "Value" "SW_Push"
			(at 37.973 139.446 0)
			(effects
				(font
					(size 0.6096 0.6096)
				)
			)
		)
		(property "Footprint" "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical"
			(at 37.973 133.096 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 37.973 133.096 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 37.973 138.176 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "1"
			(uuid "406146d8-ddf4-42cc-bffb-201894fb8db4")
		)
		(pin "2"
			(uuid "bd4ace22-dfcc-4a62-a526-4d293a34b586")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "SW1")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Device:R")
		(at 32.893 149.606 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-0000607362f6")
		(property "Reference" "R2"
			(at 29.083 149.606 0)
			(effects
				(font
					(size 0.9906 0.9906)
				)
				(justify left)
			)
		)
		(property "Value" "10k"
			(at 29.083 150.876 0)
			(effects
				(font
					(size 0.6096 0.6096)
				)
				(justify left)
			)
		)
		(property "Footprint" "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder"
			(at 31.115 149.606 90)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 32.893 149.606 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 32.893 149.606 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "2"
			(uuid "132a5d14-238b-472a-a468-51ead0253acc")
		)
		(pin "1"
			(uuid "cef10d0a-2a3a-4017-afd6-1fa7bfaacee8")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "R2")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Device:R")
		(at 38.989 122.555 90)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-000060741981")
		(property "Reference" "R4"
			(at 39.624 125.095 90)
			(effects
				(font
					(size 0.9906 0.9906)
				)
				(justify left)
			)
		)
		(property "Value" "27k"
			(at 38.989 122.555 90)
			(effects
				(font
					(size 0.6096 0.6096)
				)
				(justify left)
			)
		)
		(property "Footprint" "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder"
			(at 38.989 124.333 90)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 38.989 122.555 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 38.989 122.555 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "2"
			(uuid "27e8ac59-53d8-4f92-9aea-0455e8f91e79")
		)
		(pin "1"
			(uuid "97e4e944-b006-4f65-9b6b-02e88ee44586")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "R4")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Device:R")
		(at 49.149 122.555 90)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-000060742133")
		(property "Reference" "R8"
			(at 49.784 125.095 90)
			(effects
				(font
					(size 0.9906 0.9906)
				)
				(justify left)
			)
		)
		(property "Value" "100k"
			(at 49.784 122.555 90)
			(effects
				(font
					(size 0.6096 0.6096)
				)
				(justify left)
			)
		)
		(property "Footprint" "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder"
			(at 49.149 124.333 90)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 49.149 122.555 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 49.149 122.555 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "2"
			(uuid "dbb7bfb5-b730-4040-b20d-ea9a8d6d6868")
		)
		(pin "1"
			(uuid "aae15e43-dc9c-4013-9322-739b89c4a019")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "R8")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Device:R")
		(at 48.133 163.576 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-000060743ef1")
		(property "Reference" "R7"
			(at 44.323 163.576 0)
			(effects
				(font
					(size 0.9906 0.9906)
				)
				(justify left)
			)
		)
		(property "Value" "1M"
			(at 44.323 164.846 0)
			(effects
				(font
					(size 0.6096 0.6096)
				)
				(justify left)
			)
		)
		(property "Footprint" "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder"
			(at 46.355 163.576 90)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 48.133 163.576 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 48.133 163.576 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "1"
			(uuid "f9e61911-bcaf-44e5-812a-fd282483977b")
		)
		(pin "2"
			(uuid "8f8763e7-6fc7-4084-b90e-f62f52fe9cc4")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "R7")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Step Up DC to 5V USB:StepUpTo5V")
		(at 80.01 69.85 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-0000607526ce")
		(property "Reference" "U2"
			(at 87.0712 66.3448 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Value" "StepUpTo5V"
			(at 87.0712 68.6562 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Footprint" "DIY-Board:Step up 5V"
			(at 80.01 69.85 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" ""
			(at 80.01 69.85 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 80.01 69.85 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "2"
			(uuid "ac27d8dd-0b8b-4955-b39c-b866af7f533e")
		)
		(pin "1"
			(uuid "74acb920-d65f-4a1a-bc32-89bd91a02279")
		)
		(pin "4"
			(uuid "c9dfc779-2e8f-421a-b4d0-d73d901a1c84")
		)
		(pin "3"
			(uuid "901bd691-0c71-4c25-bae8-ef6c8976338a")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "U2")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Device:R")
		(at 89.535 173.99 180)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-000060754142")
		(property "Reference" "R11"
			(at 93.345 173.99 0)
			(effects
				(font
					(size 0.9906 0.9906)
				)
				(justify left)
			)
		)
		(property "Value" "1M"
			(at 93.345 172.72 0)
			(effects
				(font
					(size 0.6096 0.6096)
				)
				(justify left)
			)
		)
		(property "Footprint" "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder"
			(at 91.313 173.99 90)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 89.535 173.99 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 89.535 173.99 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "1"
			(uuid "e2ffde40-1e36-4a6f-92f9-66cd93405114")
		)
		(pin "2"
			(uuid "ad23b60e-cc3f-42d9-8c6f-919f86463eca")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "R11")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Device:D_Schottky")
		(at 52.324 87.122 180)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-000060756907")
		(property "Reference" "D1"
			(at 52.324 83.312 0)
			(effects
				(font
					(size 0.9906 0.9906)
				)
			)
		)
		(property "Value" "D_Schottky"
			(at 52.324 84.582 0)
			(effects
				(font
					(size 0.6096 0.6096)
				)
			)
		)
		(property "Footprint" "Diode_SMD:D_SMA-SMB_Universal_Handsoldering"
			(at 52.324 87.122 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 52.324 87.122 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 52.324 87.122 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "2"
			(uuid "0235d8ae-d364-43a8-a252-26294ef87351")
		)
		(pin "1"
			(uuid "8e3d4869-bf59-40f5-beaa-4275734d184e")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "D1")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Device:D_Schottky")
		(at 52.324 95.758 180)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-000060757499")
		(property "Reference" "D2"
			(at 52.324 91.948 0)
			(effects
				(font
					(size 0.9906 0.9906)
				)
			)
		)
		(property "Value" "D_Schottky"
			(at 52.324 93.218 0)
			(effects
				(font
					(size 0.6096 0.6096)
				)
			)
		)
		(property "Footprint" "Diode_SMD:D_SMA-SMB_Universal_Handsoldering"
			(at 52.324 95.758 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 52.324 95.758 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 52.324 95.758 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "1"
			(uuid "390457ef-40f4-42da-9676-a1dea568edb3")
		)
		(pin "2"
			(uuid "30faea2b-933a-41e7-a1f4-0cf34d4ded7c")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "D2")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Device:D_Schottky")
		(at 55.118 138.176 180)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-000060757886")
		(property "Reference" "D3"
			(at 55.118 134.366 0)
			(effects
				(font
					(size 0.9906 0.9906)
				)
			)
		)
		(property "Value" "D_Schottky"
			(at 55.118 135.636 0)
			(effects
				(font
					(size 0.6096 0.6096)
				)
			)
		)
		(property "Footprint" "Diode_SMD:D_SMA-SMB_Universal_Handsoldering"
			(at 55.118 138.176 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 55.118 138.176 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 55.118 138.176 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "2"
			(uuid "00b3b6c5-698f-4c36-b8bd-527ba8f1d3f8")
		)
		(pin "1"
			(uuid "4dd4e085-eb8f-40c3-9722-c85bffdad47a")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "D3")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Device:R")
		(at 45.974 100.838 180)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-0000607627ef")
		(property "Reference" "R6"
			(at 49.784 100.838 0)
			(effects
				(font
					(size 0.9906 0.9906)
				)
				(justify left)
			)
		)
		(property "Value" "1M"
			(at 49.784 99.568 0)
			(effects
				(font
					(size 0.6096 0.6096)
				)
				(justify left)
			)
		)
		(property "Footprint" "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder"
			(at 47.752 100.838 90)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 45.974 100.838 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 45.974 100.838 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "2"
			(uuid "c24343e5-a480-415d-aaea-34d0c43baafc")
		)
		(pin "1"
			(uuid "fbfa437a-b839-4278-825c-6537781fe31b")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "R6")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "kicad-weight-scale-6-ch-rescue:CP-Device")
		(at 57.404 100.838 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00006076bdf2")
		(property "Reference" "C1"
			(at 60.4012 100.203 0)
			(effects
				(font
					(size 0.9906 0.9906)
				)
				(justify left)
			)
		)
		(property "Value" "220u"
			(at 60.4012 101.8032 0)
			(effects
				(font
					(size 0.6096 0.6096)
				)
				(justify left)
			)
		)
		(property "Footprint" "Capacitor_THT:CP_Radial_D7.5mm_P2.50mm"
			(at 58.3692 104.648 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 57.404 100.838 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 57.404 100.838 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "1"
			(uuid "3dc43dc4-b222-400a-8940-f6cc93c7a9df")
		)
		(pin "2"
			(uuid "f7c8c91c-d840-45ac-beba-5ac27b4cf873")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "C1")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "kicad-weight-scale-6-ch-rescue:VCC-power")
		(at 32.512 28.702 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-000060781c35")
		(property "Reference" "#PWR03"
			(at 32.512 32.512 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Value" "VCC"
			(at 32.893 24.3078 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" ""
			(at 32.512 28.702 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" ""
			(at 32.512 28.702 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 32.512 28.702 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "1"
			(uuid "5569d1de-a83e-45f1-b697-d0525a7678cd")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "#PWR03")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "kicad-weight-scale-6-ch-rescue:GND-power")
		(at 37.592 32.512 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00006078208e")
		(property "Reference" "#PWR04"
			(at 37.592 38.862 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Value" "GND"
			(at 37.719 36.9062 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" ""
			(at 37.592 32.512 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" ""
			(at 37.592 32.512 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 37.592 32.512 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "1"
			(uuid "8cd62d43-065b-4878-b0de-1cd664b390ee")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "#PWR04")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Device:R")
		(at 49.403 150.876 180)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-000060787fe0")
		(property "Reference" "R9"
			(at 53.213 150.876 0)
			(effects
				(font
					(size 0.9906 0.9906)
				)
				(justify left)
			)
		)
		(property "Value" "1k"
			(at 53.213 149.606 0)
			(effects
				(font
					(size 0.6096 0.6096)
				)
				(justify left)
			)
		)
		(property "Footprint" "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder"
			(at 51.181 150.876 90)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 49.403 150.876 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 49.403 150.876 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "2"
			(uuid "a350beaa-9368-41a4-b7d7-1493c0a4445f")
		)
		(pin "1"
			(uuid "7524d3a6-586e-4ca9-abf7-93623a9edc00")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "R9")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Device:R")
		(at 54.483 150.876 180)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00006078ab48")
		(property "Reference" "R10"
			(at 58.293 150.876 0)
			(effects
				(font
					(size 0.9906 0.9906)
				)
				(justify left)
			)
		)
		(property "Value" "1M"
			(at 58.293 149.606 0)
			(effects
				(font
					(size 0.6096 0.6096)
				)
				(justify left)
			)
		)
		(property "Footprint" "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder"
			(at 56.261 150.876 90)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 54.483 150.876 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 54.483 150.876 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "2"
			(uuid "f46cd542-4555-4567-8566-20acb7759a7a")
		)
		(pin "1"
			(uuid "9c15a61d-e4f7-4102-8f68-083e20f9ad1f")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "R10")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Device:R")
		(at 33.02 64.77 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-0000607a0d71")
		(property "Reference" "R1"
			(at 29.21 64.77 0)
			(effects
				(font
					(size 0.9906 0.9906)
				)
				(justify left)
			)
		)
		(property "Value" "10k"
			(at 29.21 66.04 0)
			(effects
				(font
					(size 0.6096 0.6096)
				)
				(justify left)
			)
		)
		(property "Footprint" "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder"
			(at 31.242 64.77 90)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 33.02 64.77 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 33.02 64.77 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "2"
			(uuid "d7695a01-46af-4d5b-a0d0-70b1231cd3ad")
		)
		(pin "1"
			(uuid "957548ce-3382-43ac-a76b-ef33435ebda1")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "R1")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Device:R")
		(at 39.37 64.77 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-0000607a1bef")
		(property "Reference" "R3"
			(at 35.56 64.77 0)
			(effects
				(font
					(size 0.9906 0.9906)
				)
				(justify left)
			)
		)
		(property "Value" "10k"
			(at 35.56 66.04 0)
			(effects
				(font
					(size 0.6096 0.6096)
				)
				(justify left)
			)
		)
		(property "Footprint" "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder"
			(at 37.592 64.77 90)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 39.37 64.77 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 39.37 64.77 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "1"
			(uuid "8b15915c-ee2f-435d-a6e6-0697ebaf88fb")
		)
		(pin "2"
			(uuid "382b7472-7fac-4776-83bd-e03daa740564")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "R3")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "ESP WROOM32 DEV-BOARD:ESPWROOM32")
		(at 156.21 114.935 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-0000607a3c64")
		(property "Reference" "U4"
			(at 156.21 81.9404 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Value" "ESPWROOM32"
			(at 156.21 84.0486 0)
			(effects
				(font
					(size 0.9906 0.9906)
				)
			)
		)
		(property "Footprint" "DIY-Board:esp wroom 32 board"
			(at 156.21 133.985 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" ""
			(at 156.21 133.985 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 156.21 114.935 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "2"
			(uuid "3e449b53-5910-49c7-b336-bda47d1edf4f")
		)
		(pin "1"
			(uuid "8277203f-60e9-42e7-b084-dbe94e4719b7")
		)
		(pin "10"
			(uuid "b57893fd-9a9a-4e28-9bc9-1f339349d587")
		)
		(pin "18"
			(uuid "eeebb1dc-a846-4b96-93f7-20baf4e039cf")
		)
		(pin "27"
			(uuid "1620b675-b217-453e-b4aa-6c925d298291")
		)
		(pin "24"
			(uuid "f4a161a5-5f0d-422e-9c5e-6b6e6c2eb8a0")
		)
		(pin "31"
			(uuid "d8e15f6c-5c94-411c-84cc-a43905234d1e")
		)
		(pin "7"
			(uuid "67f1a107-aa81-4cc7-a1a2-eca5e3650933")
		)
		(pin "26"
			(uuid "c8878f21-8d29-4920-8c7e-8ff806720a62")
		)
		(pin "28"
			(uuid "fa9e6daa-bb23-4ce1-80eb-6767f1093fbf")
		)
		(pin "16"
			(uuid "5c152f90-748f-471b-b7c3-3434fd62cd22")
		)
		(pin "34"
			(uuid "c1d4e376-90ad-47d7-8bbe-54c3c5fcff16")
		)
		(pin "6"
			(uuid "edc4e177-d7ba-418d-a7bc-54465bd5912a")
		)
		(pin "17"
			(uuid "c3baac79-fd98-42c4-a188-bdfa253af08c")
		)
		(pin "38"
			(uuid "925a4e29-01ae-49fb-89a1-0ea461614572")
		)
		(pin "15"
			(uuid "118f9bd7-fa6b-4c3c-9b98-5c987cfba03b")
		)
		(pin "33"
			(uuid "7b9e1332-e48d-4f68-bbfa-5da5be0b2fe5")
		)
		(pin "4"
			(uuid "69250eb1-0680-465a-9e22-574f04b061a8")
		)
		(pin "12"
			(uuid "9fdc0846-f9d0-4b41-9c16-f8721da28be1")
		)
		(pin "36"
			(uuid "0b0d6211-5148-493e-9bb8-7be7ad8747a5")
		)
		(pin "3"
			(uuid "90938fc8-67b0-47df-a812-32c92c08a31f")
		)
		(pin "32"
			(uuid "b7c13776-fbe9-4bd5-a2ba-896f0076158a")
		)
		(pin "30"
			(uuid "579fd991-a85c-46ea-88f2-a1b3a7926c91")
		)
		(pin "37"
			(uuid "997b3e76-ef32-4cdd-8553-a2f70b6c142f")
		)
		(pin "29"
			(uuid "64800b8d-5312-41b6-8e88-229dabea4992")
		)
		(pin "21"
			(uuid "fd1c8bb0-f5ef-4783-adac-aff24b94742d")
		)
		(pin "8"
			(uuid "7f463122-af59-4cad-8f90-eaf8de5b43be")
		)
		(pin "14"
			(uuid "aded52c2-6e60-4f50-b721-04fec8f20946")
		)
		(pin "22"
			(uuid "14b4749d-2a2e-47cd-aa47-7333087993b1")
		)
		(pin "23"
			(uuid "9d224f81-4df3-44d8-ac32-5a1971ec1ad0")
		)
		(pin "25"
			(uuid "46be5bc6-86b1-4c46-bde3-b3e5987d9514")
		)
		(pin "11"
			(uuid "f75a085e-078f-4d70-b356-4b13a7290f9c")
		)
		(pin "19"
			(uuid "8fbb3172-f592-440a-b696-d09882336121")
		)
		(pin "20"
			(uuid "f441d39b-0e8b-4f2a-b24f-b33f17120277")
		)
		(pin "13"
			(uuid "da1c80f2-6630-4855-9e37-d932889febd5")
		)
		(pin "5"
			(uuid "a9d89f46-5901-48b0-ac8e-07d80429e75f")
		)
		(pin "9"
			(uuid "2a0315d3-63b4-4aa7-9d5b-0b6031a4ec0d")
		)
		(pin "35"
			(uuid "3099a1b1-8511-4be8-ae15-d25eb8921b93")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "U4")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Connector_Generic:Conn_01x04")
		(at 97.79 123.19 180)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-0000607c50b5")
		(property "Reference" "J4"
			(at 99.8728 112.395 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Value" "Conn_01x04"
			(at 99.8728 114.7064 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical"
			(at 97.79 123.19 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 97.79 123.19 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 97.79 123.19 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "4"
			(uuid "48bd781f-799c-442b-a2e8-1da7afd72b26")
		)
		(pin "1"
			(uuid "3601ca17-587a-4ffc-ab2e-2699c07894a3")
		)
		(pin "3"
			(uuid "0713bfdf-cb05-47d5-8c25-e66dccf5f4d5")
		)
		(pin "2"
			(uuid "00a1b8af-f0a5-4191-b950-8d167e98e89b")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "J4")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Connector_Generic:Conn_01x04")
		(at 97.79 140.335 180)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-0000607cca81")
		(property "Reference" "J5"
			(at 99.8728 129.54 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Value" "Conn_01x04"
			(at 99.8728 131.8514 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical"
			(at 97.79 140.335 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 97.79 140.335 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 97.79 140.335 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "1"
			(uuid "3de40532-82c2-4bdd-8770-a31fc7163d18")
		)
		(pin "3"
			(uuid "a0c6dd30-8e16-466c-be95-8b60760ea2ab")
		)
		(pin "2"
			(uuid "ad8b61b9-044e-47bb-ad04-27a88f87cd01")
		)
		(pin "4"
			(uuid "b4c50fe4-3636-4b41-b20d-a86b0eb43879")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "J5")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "WCMCU-ADS1232:WCMCU-ADS1232")
		(at 133.35 35.56 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00006082a8c3")
		(property "Reference" "U3"
			(at 133.35 17.3482 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Value" "WCMCU-ADS1232"
			(at 133.35 19.6596 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" "DIY-Board:wcmcu-ads1232"
			(at 133.35 45.72 0)
			(effects
				(font
					(size 1.27 1.27)
					(italic yes)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "http://www.ti.com/lit/ds/symlink/ads1232.pdf"
			(at 133.35 45.72 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 133.35 35.56 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "15"
			(uuid "ef61d5e4-2cfd-4db7-adf2-dafeeae75da4")
		)
		(pin "8"
			(uuid "83c3018d-6e13-4897-807b-a0b7912fdbbf")
		)
		(pin "9"
			(uuid "5e217414-6141-4e74-9e81-7d686b1fe9f0")
		)
		(pin "13"
			(uuid "a3a01d1c-411f-464d-89b6-80aeca9d7030")
		)
		(pin "10"
			(uuid "e72520ff-c0bb-48d4-9953-d60db5b42cf8")
		)
		(pin "3"
			(uuid "3a844b22-127e-47bb-8a5e-93ab6d107a6f")
		)
		(pin "4"
			(uuid "df123133-6cfb-459d-92f8-77cee1b6658d")
		)
		(pin "18"
			(uuid "3186d56f-b90f-45ba-88fa-9cf4fc3099f2")
		)
		(pin "1"
			(uuid "0358aab1-d040-4f3a-b048-9cf5169bafc4")
		)
		(pin "11"
			(uuid "f4db66d6-cd18-413f-b626-18c2a4a10eb5")
		)
		(pin "16"
			(uuid "ff976607-dfb2-46b9-bb10-e3cea7d3f079")
		)
		(pin "2"
			(uuid "d56aa516-880e-431c-ad0b-f723104768f8")
		)
		(pin "6"
			(uuid "c859a7a8-00ce-4969-91f9-59f3fd285a73")
		)
		(pin "7"
			(uuid "8538c6ca-cc97-488b-9747-14bc5b32b728")
		)
		(pin "14"
			(uuid "3442ce85-de9b-4563-a70b-48c6bd159c72")
		)
		(pin "17"
			(uuid "4eb4ba46-7ee8-41c9-a380-b720681899a1")
		)
		(pin "5"
			(uuid "742f9203-1e36-4871-b11a-88b0e04ebbb6")
		)
		(pin "12"
			(uuid "ec271edc-d57f-4910-a7f7-2c1d5c717977")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "U3")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "WCMCU-ADS1232:WCMCU-ADS1232")
		(at 187.96 35.56 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-000060853325")
		(property "Reference" "U5"
			(at 187.96 17.3482 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Value" "WCMCU-ADS1232"
			(at 187.96 19.6596 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" "DIY-Board:wcmcu-ads1232"
			(at 187.96 45.72 0)
			(effects
				(font
					(size 1.27 1.27)
					(italic yes)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "http://www.ti.com/lit/ds/symlink/ads1232.pdf"
			(at 187.96 45.72 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 187.96 35.56 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "2"
			(uuid "37e1c898-5b7b-4ca6-851f-644adee2befc")
		)
		(pin "18"
			(uuid "146ed929-706e-497f-a930-c5cfb7819ad4")
		)
		(pin "11"
			(uuid "2789a1e9-07b3-41c3-abf7-275871730146")
		)
		(pin "4"
			(uuid "c042dcea-41fd-49a7-95f2-fdf51f1f0ead")
		)
		(pin "14"
			(uuid "bfa2e4c0-5079-42ad-b616-6999569f07e5")
		)
		(pin "1"
			(uuid "aa70d493-405f-4b08-9939-64a49cd04877")
		)
		(pin "5"
			(uuid "ca0d1443-5e01-4082-9ecc-dcfa2b49f3c1")
		)
		(pin "13"
			(uuid "dfc3bfa0-960d-4695-941c-86e44166d8bc")
		)
		(pin "15"
			(uuid "a5a5f5ba-cff8-47af-8308-d5b989ba4690")
		)
		(pin "17"
			(uuid "94d5a4c5-bf0d-458f-ab4a-8071b9f3740b")
		)
		(pin "6"
			(uuid "1a8ae89e-a15a-4202-8df5-10a0a4cf7d55")
		)
		(pin "7"
			(uuid "e0fcf4f3-5eca-4505-94e0-eeb3f1207ab0")
		)
		(pin "8"
			(uuid "ce9a46ec-f900-4bcd-833b-c23f06fd3f0e")
		)
		(pin "10"
			(uuid "779439a5-ccce-445e-85e3-a65ead0ca47a")
		)
		(pin "9"
			(uuid "24378424-63ff-4b26-a2f5-a5aac516012a")
		)
		(pin "3"
			(uuid "233d2703-d488-42fa-a320-5091ad163bd0")
		)
		(pin "12"
			(uuid "4ff2350d-1914-4086-b2c2-78b5f0d71988")
		)
		(pin "16"
			(uuid "baf46585-a998-4801-88ed-11569325d86f")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "U5")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "WCMCU-ADS1232:WCMCU-ADS1232")
		(at 242.57 35.56 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00006085691d")
		(property "Reference" "U7"
			(at 242.57 17.3482 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Value" "WCMCU-ADS1232"
			(at 242.57 19.6596 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" "DIY-Board:wcmcu-ads1232"
			(at 242.57 45.72 0)
			(effects
				(font
					(size 1.27 1.27)
					(italic yes)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "http://www.ti.com/lit/ds/symlink/ads1232.pdf"
			(at 242.57 45.72 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 242.57 35.56 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "10"
			(uuid "b29a5ab0-aa85-4fb2-8b8a-6b8263eb8337")
		)
		(pin "12"
			(uuid "903991a8-398f-456b-8614-26ffb40874be")
		)
		(pin "8"
			(uuid "968387ce-dd98-4a15-8238-1eab2513858e")
		)
		(pin "17"
			(uuid "5c412411-930d-4e91-a7fd-5c207c18f7c3")
		)
		(pin "15"
			(uuid "c51b442f-7407-44d4-b9e0-c650c86782c5")
		)
		(pin "3"
			(uuid "a1b66205-35ad-4ad3-8e98-6cb7dcecc9b4")
		)
		(pin "13"
			(uuid "96b6b1bc-c1b0-44c7-9f58-eb0e60ad135a")
		)
		(pin "16"
			(uuid "56216743-f634-4e5b-b9ab-9743ce6ca67d")
		)
		(pin "18"
			(uuid "14952062-f10e-424e-b3ef-938c773f7f33")
		)
		(pin "4"
			(uuid "3f6e28c9-798b-41a0-85c8-3a8c52b813a9")
		)
		(pin "5"
			(uuid "2014a972-195e-45e8-a887-ae009f6b4bef")
		)
		(pin "14"
			(uuid "19eb1579-5a73-4b4e-a7f0-52ef44661752")
		)
		(pin "2"
			(uuid "9ed003c8-6267-42f0-b442-9c08ec5dfce2")
		)
		(pin "6"
			(uuid "341affc0-8a00-4485-863f-7ea9395a8c4f")
		)
		(pin "7"
			(uuid "e7a50354-05fc-42c7-b8a1-161ed261f49a")
		)
		(pin "11"
			(uuid "5bb74231-87cb-483a-9ebd-2927c039e2dd")
		)
		(pin "1"
			(uuid "b626af7e-e299-459a-909a-4f8382b4c34f")
		)
		(pin "9"
			(uuid "76480200-2d2f-47d8-87e1-bdb5312bacfa")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "U7")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Connector_Generic:Conn_01x02")
		(at 131.445 53.975 90)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00006085da90")
		(property "Reference" "J6"
			(at 137.795 53.975 90)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Value" "Conn_01x02"
			(at 139.065 51.435 90)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Footprint" "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical"
			(at 131.445 53.975 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 131.445 53.975 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 131.445 53.975 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "1"
			(uuid "ac1f6d97-626d-4050-9453-57af25bd982d")
		)
		(pin "2"
			(uuid "a2e852c1-552e-466b-8eef-c4d47df0f0d7")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "J6")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Connector_Generic:Conn_01x02")
		(at 186.69 54.61 90)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-000060860db7")
		(property "Reference" "J7"
			(at 193.04 54.61 90)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Value" "Conn_01x02"
			(at 193.675 52.07 90)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Footprint" "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical"
			(at 186.69 54.61 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 186.69 54.61 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 186.69 54.61 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "1"
			(uuid "c27b9f20-7e3f-4703-bc3b-6ed4dd0b56a0")
		)
		(pin "2"
			(uuid "ba34ab64-ff68-470d-8927-baba80273616")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "J7")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Connector_Generic:Conn_01x02")
		(at 241.3 54.61 90)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-0000608627e9")
		(property "Reference" "J8"
			(at 247.65 54.61 90)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Value" "Conn_01x02"
			(at 248.285 52.07 90)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Footprint" "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical"
			(at 241.3 54.61 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 241.3 54.61 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 241.3 54.61 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "1"
			(uuid "144e1c9d-06ea-4af4-96d7-4e4816c537ed")
		)
		(pin "2"
			(uuid "ebbd246a-e76f-453c-b950-dcf6f767ec9b")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "J8")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "kicad-weight-scale-6-ch-rescue:CP-Device")
		(at 106.045 69.215 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-0000608694fa")
		(property "Reference" "C2"
			(at 109.0422 68.58 0)
			(effects
				(font
					(size 0.9906 0.9906)
				)
				(justify left)
			)
		)
		(property "Value" "100U"
			(at 109.0422 70.1802 0)
			(effects
				(font
					(size 0.6096 0.6096)
				)
				(justify left)
			)
		)
		(property "Footprint" "Capacitor_THT:CP_Radial_D7.5mm_P2.50mm"
			(at 107.0102 73.025 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 106.045 69.215 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 106.045 69.215 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "1"
			(uuid "eb7ecaa5-4204-4236-9b35-fcb1a2db3410")
		)
		(pin "2"
			(uuid "4bb42080-f0b8-4c2a-b477-ee01483784ed")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "C2")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Connector_Generic:Conn_01x02")
		(at 97.79 91.44 180)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00006086ded2")
		(property "Reference" "J2"
			(at 100.965 83.82 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Value" "Conn_01x02"
			(at 106.045 86.36 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Footprint" "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical"
			(at 97.79 91.44 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 97.79 91.44 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 97.79 91.44 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "2"
			(uuid "73e8676f-14ba-481c-944d-f69f7a3664eb")
		)
		(pin "1"
			(uuid "ed8a83d3-8ddc-4967-9309-91853fd2683f")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "J2")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Transistor_FET:Si4542DY")
		(at 38.354 89.662 270)
		(mirror x)
		(unit 2)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00006087827c")
		(property "Reference" "Q2"
			(at 42.164 89.662 90)
			(effects
				(font
					(size 0.9906 0.9906)
				)
				(justify left)
			)
		)
		(property "Value" "Si4542DY"
			(at 40.894 90.932 90)
			(effects
				(font
					(size 0.6096 0.6096)
				)
				(justify left)
			)
		)
		(property "Footprint" "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm"
			(at 36.449 84.582 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
				(hide yes)
			)
		)
		(property "Datasheet" "https://www.onsemi.com/pub/Collateral/SI4542DY-D.PDF"
			(at 38.354 87.122 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 38.354 89.662 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "6"
			(uuid "9966a5f4-635e-4849-81c2-8e087b3e6a43")
		)
		(pin "7"
			(uuid "aa6811aa-9676-4de7-be26-ee761a3490d3")
		)
		(pin "5"
			(uuid "7e3b4d4e-204f-4a31-a4fc-cc92ec00cb00")
		)
		(pin "8"
			(uuid "2caaf87b-00fd-46d6-bccc-32a7cfe5ad15")
		)
		(pin "1"
			(uuid "49d63930-2a63-4beb-b39d-4ac8e8c66244")
		)
		(pin "2"
			(uuid "bc016dfa-ba91-4ae9-bdea-74ae8545d863")
		)
		(pin "4"
			(uuid "a1d1cf76-ba37-4130-b84e-f1bf8cd79c80")
		)
		(pin "3"
			(uuid "2d3dfd6e-c5f9-44ef-b46f-31d87cb3dbe0")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "Q2")
					(unit 2)
				)
			)
		)
	)
	(symbol
		(lib_id "TP4056:TP-4056")
		(at 80.01 46.99 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-0000608df217")
		(property "Reference" "U1"
			(at 88.3412 35.4584 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Value" "TP-4056"
			(at 88.3412 37.7698 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Footprint" "DIY-Board:Li-ion ic charger"
			(at 88.9 43.18 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" ""
			(at 88.9 43.18 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 80.01 46.99 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "3"
			(uuid "181c45ec-4883-4481-83eb-0da271580238")
		)
		(pin "4"
			(uuid "4ef931a5-1eb1-414c-ae38-b9a97269c329")
		)
		(pin "5"
			(uuid "95b1ee69-43ff-4890-b132-4ccab7c87da7")
		)
		(pin "1"
			(uuid "d04a24cf-33f3-48eb-9713-91873a7613bc")
		)
		(pin "6"
			(uuid "f8055712-f3ce-4098-9654-7f92e66de63b")
		)
		(pin "7"
			(uuid "bdb4657a-0a04-4527-9363-56c8b3d4e8dc")
		)
		(pin "2"
			(uuid "485d9932-b306-4540-9b3f-b4779e72167c")
		)
		(pin "8"
			(uuid "8db74d0c-091d-4407-87da-f171e4eeedd7")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "U1")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Connector:Barrel_Jack_Switch")
		(at 53.848 67.564 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-0000608e14b4")
		(property "Reference" "J1"
			(at 55.2958 59.5122 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Value" "Barrel_Jack_Switch"
			(at 55.2958 61.8236 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" "Connector_BarrelJack:BarrelJack_Horizontal"
			(at 55.118 68.58 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 55.118 68.58 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 53.848 67.564 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "3"
			(uuid "b8b2697a-3567-40da-9585-55c267f5ff4a")
		)
		(pin "1"
			(uuid "9e08255c-2e00-4df6-b412-361804ddf0ff")
		)
		(pin "2"
			(uuid "549e5adc-9706-4d7d-8ad3-6a7bf2afa51c")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "J1")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Connector_Generic:Conn_01x04")
		(at 97.79 106.045 180)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-0000608fcb1d")
		(property "Reference" "J3"
			(at 99.8728 95.25 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Value" "Conn_01x04"
			(at 99.8728 97.5614 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical"
			(at 97.79 106.045 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 97.79 106.045 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 97.79 106.045 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "2"
			(uuid "16e6e87b-448b-4ebb-8934-5d635f6fc719")
		)
		(pin "1"
			(uuid "ba8e15b2-8450-4fb5-bfeb-5c77c753b0b0")
		)
		(pin "4"
			(uuid "f21c308c-a12e-4750-94b7-4478b9c082d6")
		)
		(pin "3"
			(uuid "876878f5-6352-4867-80f3-0ebaefafb725")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "J3")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "USB Type C Converter:USB_Type_C")
		(at 247.65 81.28 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00006091572d")
		(property "Reference" "U8"
			(at 264.414 75.692 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Value" "USB_Type_C"
			(at 268.732 77.978 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" "DIY-Board:Type C Converter"
			(at 237.49 88.9 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" ""
			(at 237.49 88.9 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 247.65 81.28 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "4"
			(uuid "9108ce0e-a421-41f5-86fb-21add4cdad02")
		)
		(pin "6"
			(uuid "96ce06fe-7d27-460f-b000-ad4afdec4a0e")
		)
		(pin "8"
			(uuid "bd6e143c-9be6-4757-8107-c50aba7c04d2")
		)
		(pin "2"
			(uuid "687e7eff-cf4b-4357-9918-e9ec7bd21536")
		)
		(pin "12"
			(uuid "99ee40d2-0df1-42b5-a1fd-82a5dd7bc4c8")
		)
		(pin "1"
			(uuid "6bc2e6e7-a985-4103-ab35-76e16c48420e")
		)
		(pin "10"
			(uuid "71f7af4c-24c1-4e96-925d-6c6680e796f4")
		)
		(pin "11"
			(uuid "ef8259f9-d983-4bf7-93f8-1e73eff43919")
		)
		(pin "5"
			(uuid "2bda8e9e-c2a2-4ee5-8ee5-44f043fd0e77")
		)
		(pin "9"
			(uuid "2b10bbfa-5f31-4960-a03b-ed666fe24780")
		)
		(pin "7"
			(uuid "e5267df9-24e7-434f-a6a3-81cd82049aa2")
		)
		(pin "3"
			(uuid "a8eeaa4b-d6b0-420a-acd3-5faafb68008d")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "U8")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Transistor_FET:BSS138")
		(at 96.52 170.18 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-000060917343")
		(property "Reference" "Q3"
			(at 101.7016 169.0116 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Value" "BSS138"
			(at 101.7016 171.323 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Footprint" "Package_TO_SOT_SMD:SOT-23"
			(at 101.6 172.085 0)
			(effects
				(font
					(size 1.27 1.27)
					(italic yes)
				)
				(justify left)
				(hide yes)
			)
		)
		(property "Datasheet" "https://www.onsemi.com/pub/Collateral/BSS138-D.PDF"
			(at 96.52 170.18 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 96.52 170.18 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "1"
			(uuid "79c3e07c-958a-42ac-9db1-cebbdd682ee2")
		)
		(pin "2"
			(uuid "ba4612fe-7e4f-401f-950f-f21b25ee1c77")
		)
		(pin "3"
			(uuid "ef0e5458-3b93-4888-91f1-1f0b33aa56dc")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "Q3")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "USB Type C Converter:USB_Type_C")
		(at 247.65 95.25 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00006091991d")
		(property "Reference" "U9"
			(at 264.414 89.662 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Value" "USB_Type_C"
			(at 268.732 91.694 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" "DIY-Board:Type C Converter"
			(at 237.49 102.87 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" ""
			(at 237.49 102.87 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 247.65 95.25 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "3"
			(uuid "ab37accd-c1ea-4fb8-a003-dddcd5e18244")
		)
		(pin "5"
			(uuid "5df1d88c-4ed6-4d8e-ad29-1092806ea218")
		)
		(pin "10"
			(uuid "2fa5bea3-51b0-42e4-bd1a-01837798b764")
		)
		(pin "7"
			(uuid "307ab8e0-6176-40c8-83c0-89114d22de2e")
		)
		(pin "12"
			(uuid "d4c45b35-8187-4eee-82b8-cf6e2c271fbd")
		)
		(pin "2"
			(uuid "2d66fdc6-0553-4fbb-b6ae-97b27d0f256f")
		)
		(pin "9"
			(uuid "3c31fd93-a983-4679-931b-a804dbfeac49")
		)
		(pin "1"
			(uuid "f7ce9521-e1cc-456a-b425-6f24ada5465f")
		)
		(pin "4"
			(uuid "9dc8b29b-8f30-4b86-9e21-8b8cd40aaf55")
		)
		(pin "6"
			(uuid "b6160137-d3eb-4284-ab66-3359c00617d1")
		)
		(pin "11"
			(uuid "bfeead9f-3536-46f1-898d-e7015f6a7d69")
		)
		(pin "8"
			(uuid "bb1ce60a-72a8-4467-8515-aebbba11d34c")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "U9")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "USB Type C Converter:USB_Type_C")
		(at 247.65 109.22 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00006091c2c6")
		(property "Reference" "U10"
			(at 265.176 103.632 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Value" "USB_Type_C"
			(at 268.986 105.664 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" "DIY-Board:Type C Converter"
			(at 237.49 116.84 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" ""
			(at 237.49 116.84 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 247.65 109.22 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "2"
			(uuid "5583bac2-28c2-436e-9514-c0518fd969e3")
		)
		(pin "10"
			(uuid "31873906-0726-499f-9b2c-515b098a24bc")
		)
		(pin "1"
			(uuid "8e9be2e5-e3df-45a5-9141-18a7c1465e19")
		)
		(pin "8"
			(uuid "0ae0fb55-da80-430e-b4b1-76f5565c141f")
		)
		(pin "11"
			(uuid "cd086f6f-4498-4534-bd04-d90a689ae91d")
		)
		(pin "4"
			(uuid "5d77eaf5-1e86-4acf-ab19-78461c0de6d9")
		)
		(pin "5"
			(uuid "8735381b-556a-4cbe-9ee6-6b245d906ab7")
		)
		(pin "12"
			(uuid "c51d5cec-ad16-4887-bc4c-f95bb7a0a45d")
		)
		(pin "3"
			(uuid "fdf117c9-9a85-4b62-94dc-fc6747e544fc")
		)
		(pin "6"
			(uuid "1443822a-d970-4b28-a334-2bf871de53a7")
		)
		(pin "7"
			(uuid "7c7c86d8-1676-4e92-939e-ac2b400bc46e")
		)
		(pin "9"
			(uuid "ce717581-e6a6-44ae-9753-248ab50f2b02")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "U10")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "USB Type C Converter:USB_Type_C")
		(at 247.65 123.19 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00006091d75a")
		(property "Reference" "U11"
			(at 264.922 117.602 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Value" "USB_Type_C"
			(at 268.732 120.142 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" "DIY-Board:Type C Converter"
			(at 237.49 130.81 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" ""
			(at 237.49 130.81 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 247.65 123.19 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "4"
			(uuid "1df484bc-9864-4bdb-9ac0-a1038bd10a43")
		)
		(pin "5"
			(uuid "bb6c8d1f-0051-4118-96c1-c230149c48f7")
		)
		(pin "6"
			(uuid "788cd246-2f89-46a2-a5ea-2a44d2f5a047")
		)
		(pin "3"
			(uuid "8b737e93-5930-4e9b-9007-22a907587342")
		)
		(pin "7"
			(uuid "4147adcb-8f72-40a1-a4e4-728f37a01c69")
		)
		(pin "8"
			(uuid "1a6a71c5-22be-4461-84b7-42934c61b000")
		)
		(pin "1"
			(uuid "e2285d9b-d462-4321-ac32-87b1aa4277ac")
		)
		(pin "9"
			(uuid "1fb5b52d-6d45-4375-85c4-2205edfc6c6f")
		)
		(pin "10"
			(uuid "b3475a15-aea2-4f79-bcb4-ecfdf7e2ef50")
		)
		(pin "11"
			(uuid "83a2be19-9f65-495e-9a35-e0dc1f9125cd")
		)
		(pin "12"
			(uuid "1b1758d7-24f4-445a-8fb1-0bcaff4de754")
		)
		(pin "2"
			(uuid "7c2dbac9-d16f-4776-94d1-1d23dc2f8b20")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "U11")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "USB Type C Converter:USB_Type_C")
		(at 247.65 137.414 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00006091e248")
		(property "Reference" "U12"
			(at 264.922 131.826 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Value" "USB_Type_C"
			(at 268.732 134.112 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" "DIY-Board:Type C Converter"
			(at 237.49 145.034 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" ""
			(at 237.49 145.034 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 247.65 137.414 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "1"
			(uuid "e9f01894-dc7f-4597-adc9-4b12b3585a55")
		)
		(pin "10"
			(uuid "7438d6a6-d4e3-44b5-b9dd-007a660485bf")
		)
		(pin "11"
			(uuid "5f8b28eb-0dcf-4e33-adcf-04c99a46cbf3")
		)
		(pin "12"
			(uuid "d02702cf-9fa4-43a6-a824-0621979da205")
		)
		(pin "5"
			(uuid "039b4db9-d13e-405e-a8a2-3eb8e8a15e28")
		)
		(pin "2"
			(uuid "a0d3705c-aac6-42ee-a576-4155bf54c9ec")
		)
		(pin "6"
			(uuid "d3678236-02a1-4c15-992b-31b166c409f4")
		)
		(pin "9"
			(uuid "21c49870-958b-4c30-8469-ffcb5024146d")
		)
		(pin "8"
			(uuid "147e7475-dff1-40e5-9c51-c0ff25b42000")
		)
		(pin "4"
			(uuid "91f267ee-265b-4256-bf31-09eb47f50731")
		)
		(pin "3"
			(uuid "0198ea8c-82a6-446e-8b8c-4580caf3f00a")
		)
		(pin "7"
			(uuid "6da1f79e-a3e3-4bd6-b7ca-407b5c6aaee7")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "U12")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "USB Type C Converter:USB_Type_C")
		(at 247.65 151.13 0)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-00006091f152")
		(property "Reference" "U13"
			(at 264.922 145.542 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Value" "USB_Type_C"
			(at 268.732 148.082 0)
			(effects
				(font
					(size 1.27 1.27)
				)
			)
		)
		(property "Footprint" "DIY-Board:Type C Converter"
			(at 237.49 158.75 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" ""
			(at 237.49 158.75 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 247.65 151.13 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "12"
			(uuid "baa232e8-79a7-44ef-a7aa-5222a6958038")
		)
		(pin "2"
			(uuid "cd1de569-0f13-4811-8885-3efd9fc68037")
		)
		(pin "4"
			(uuid "ac72533a-4108-4d90-8e0f-6b18ac6929de")
		)
		(pin "6"
			(uuid "b8b90ece-597e-4d7b-a449-92f3154641ae")
		)
		(pin "10"
			(uuid "5c3f7156-f277-4f4e-8cd6-4ca2b3472806")
		)
		(pin "11"
			(uuid "3d1a1609-4b63-41db-a013-35c600f80ed4")
		)
		(pin "3"
			(uuid "b303c971-40c6-47b9-9538-57f7ce2b3fd4")
		)
		(pin "9"
			(uuid "15e450a1-82eb-4a52-9ab7-c9f983754fed")
		)
		(pin "7"
			(uuid "4e0d250f-d750-45c7-9e42-7bd15c0e7665")
		)
		(pin "1"
			(uuid "26bf2a4c-551b-4593-b150-2ce2dcf7d693")
		)
		(pin "5"
			(uuid "a6f442f3-f023-4b42-b768-47c9d1d9a153")
		)
		(pin "8"
			(uuid "146315b9-8bfa-4d56-b0aa-d659d9c33ed5")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "U13")
					(unit 1)
				)
			)
		)
	)
	(symbol
		(lib_id "Connector_Generic:Conn_01x02")
		(at 49.53 54.102 180)
		(unit 1)
		(exclude_from_sim no)
		(in_bom yes)
		(on_board yes)
		(dnp no)
		(uuid "00000000-0000-0000-0000-000060b2498e")
		(property "Reference" "J9"
			(at 49.53 47.752 90)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Value" "Conn_01x02"
			(at 46.99 46.482 90)
			(effects
				(font
					(size 1.27 1.27)
				)
				(justify left)
			)
		)
		(property "Footprint" "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical"
			(at 49.53 54.102 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Datasheet" "~"
			(at 49.53 54.102 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(property "Description" ""
			(at 49.53 54.102 0)
			(effects
				(font
					(size 1.27 1.27)
				)
				(hide yes)
			)
		)
		(pin "1"
			(uuid "2616c116-ff5c-425f-8ffb-309a62626542")
		)
		(pin "2"
			(uuid "3ec470f4-2ecb-402f-81bb-c6afe2a45a9e")
		)
		(instances
			(project "kicad-weight-scale-6-ch"
				(path "/658b8c62-c531-4b23-b562-83c8e8a733d8"
					(reference "J9")
					(unit 1)
				)
			)
		)
	)
	(sheet_instances
		(path "/"
			(page "1")
		)
	)
)