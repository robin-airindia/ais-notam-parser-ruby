require '../lib/notam'
require 'json'

raw_notam_text_message = <<~END
A0860/25 NOTAMN
Q) KZDC/QMRXX////000/999/3851N07702W005
A) KDCA
B) 2503170745
C) 2503180745
E) DCA RWY 04 FICON 5/5/5 100 PCT WET OBS AT 2503170745
END
notam = NOTAM.parse(raw_notam_text_message)
json_output = JSON.pretty_generate(notam.data)

puts json_output