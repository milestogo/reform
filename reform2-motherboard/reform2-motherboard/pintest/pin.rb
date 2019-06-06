require 'csv'

type_map = {
  "OC" => "C",
  "I/O" => "B",
  "O" => "O",
  "I" => "I",
  "PWR_O" => "w",
  "PWR_I" => "W",
  "PWR_IN" => "W",
  "-" => "W",
  "OD" => "E",
  "NC" => "N"
}

y = 0
x = 0

pinrow = "A"

CSV.foreach("imx8m-a.csv") do |row|
  pin=row[0].gsub(" ","")
  if pin[0]!=pinrow
    pinrow=pin[0]
    x += 2000
    y = 0
  end
  signal=row[1].sub("X_","").gsub(" ","")
  signal_type=type_map[row[2].gsub(" ","")]
  puts "X #{signal} #{pin} #{x} #{y} 100 R 50 50 1 1 #{signal_type}"
  y += 100
end
