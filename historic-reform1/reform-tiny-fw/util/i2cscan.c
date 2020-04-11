// I2C scanner utility

void scan() {
  byte error, address;
  int nDevices;
  
  nDevices = 0;
  for (address = 1; address < 127; address++ )
  {
    error = !i2c_start((address<<1)|I2C_WRITE);
    i2c_stop();
    if (!error)
    {
      if (address < 127) {
        softSerial.print(" ++");
        nDevices++;
      }
    } else {
      softSerial.print(" --");
    }
    softSerial.print(address, HEX);
  }
  softSerial.println("");
  if (nDevices == 0) {
    softSerial.println(":(");
  }
  else
  {
    softSerial.println(":)");
  }
}
