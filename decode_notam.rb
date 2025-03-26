require '../lib/notam'
require 'json'

raw_notam_text_message = <<~END
  W0902/22 NOTAMN
  Q) LSAS/QRRCA/V/BO/W/000/148/4624N00702E004
  A) LSAS PART 2 OF 3 B) 2204110900 C) 2205131400 EST
  D) APR 11 SR MINUS15-1900, 20-21 26-28 MAY 03-05 10-12 0530-2100, APR
  14 22 29 MAY 06 13 0530-1400, APR 19 25 MAY 02 09 0800-2100
  E) R-AREA LS-R7 HONGRIN ACT DUE TO FRNG.
  F) GND
  G) 14800FT AMSL
  END PART 2 OF 3
  CREATED: 11 Apr 2022 06:10:00
  SOURCE: LSSNYNYX
END

notam = NOTAM.parse(raw_notam_text_message)
json_output = JSON.pretty_generate(notam.data)

puts json_output