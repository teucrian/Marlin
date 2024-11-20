<h1 align="center">Marlin 3D Printer Firmware</h1>

<p align="center"><a href="https://marlinfw.org/"><img src="https://github.com/MarlinFirmware/Marlin/blob/bugfix-2.1.x/buildroot/share/pixmaps/logo/marlin-old.svg" height="250" alt="MarlinFirmware's logo" /></p>

# Marlin 2.1 for Annette A8 custom printer
Source: [Marlin Home Page](https://marlinfw.org/), [Marlin upstream repo](https://github.com/MarlinFirmware/Marlin)

## Annette hardware

  Element|Version
  --------|-------
  Board|atmega2560<br>[Makerbase MKS GenL v1.0](https://github.com/makerbase-mks/MKS-GEN_L)<br>([Schematic](https://github.com/makerbase-mks/MKS-GEN_L/blob/master/hardware/MKS%20Gen_L%20V1.0_008/MKS%20Gen_L%20V1.0_008%20SCH.pdf))
  Stepper drivers|[FYSETC](https://wiki.fysetc.com/TMC2130/) TMC2130<br>[Sensorless homing and spi-mode wiring](https://cdn.thingiverse.com/assets/a6/03/31/95/98/MKS_Gen-L_TMC2130_SPI_Sensor-less_Homing_Wiring_Diagram.pdf)<br>[SKR example](https://github.com/bigtreetech/BIGTREETECH-TMC2130-V3.0/blob/master/TMC2130-V3.0RM.pdf)<br>[Wattertrott FAQ](https://learn.watterott.com/silentstepstick/faq/)
  Stepper Motors|Anet 42SHDC3025-24B<br>(https://3dprint.wiki/reprap/anet/a8/steppermotor)<br> (https://shop.anet3d.com/products/42-stepper-motor)
  LCD Display|RepRap Discount Full Graphics LCD ([Schematic](https://reprap.org/mediawiki/images/5/51/RRD_FULL_GRAPHIC_SMART_CONTROLER_SCHEMATIC.pdf))
  Updates2023
  Board|[SKR Mini E3 V3.0](https://github.com/bigtreetech/BIGTREETECH-SKR-mini-E3/tree/master)<br>[Pinout](https://github.com/bigtreetech/BIGTREETECH-SKR-mini-E3/blob/master/hardware/BTT%20SKR%20MINI%20E3%20V3.0/Hardware/BTT%20E3%20SKR%20MINI%20V3.0_PIN.pdf)<br>[User Manual](file:///home/joe/Downloads/BTT%20SKR%20MINI%20E3%20V3.0%20user%20manual.pdf)
  Display|[MKS Mini12864 V3](https://github.com/makerbase-mks/MKS-MINI12864-V3)<br>[FYSETC Mini12864 Info](https://wiki.fysetc.com/Mini12864_Panel/)
  Bed Probe|Type: inductive<br>CHE12-4NA-A710<br>LJ12A 3-4-Z/BX<br>M12 thread L:51.80mm, Probe tip:10.36mm dia<br>6-36V 0.3A<br>10k resistor needed<br>brown 12V B GND K 10K - 5V input

## License

Marlin is published under the [GPL license](/LICENSE)



----
##### updated: 2024-10-30