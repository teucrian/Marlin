marlingitdiff.txt



git diff upstream/main main-backup > my_changes.patch

git diff upstream/bugfix-2.1.x main-backup > my_changes.patch


@SECTION REVIEW CHANGES

@Configuration.h

< #define DEFAULT_AXIS_STEPS_PER_UNIT   { 80, 80, 400, 500 }
< 
< /**
<  * Enable support for M92. Disable to save at least ~530 bytes of flash.
<  */
< #define EDITABLE_STEPS_PER_UNIT

1482c1404
<  *                and a minimum Z_CLEARANCE_FOR_HOMING of 10.
---
>  *                and a minimum Z_HOMING_HEIGHT of 10.

1719,1720c1616,1617
<  * Example: 'M851 Z-5' with a CLEARANCE of 4  =>  9mm from bed to nozzle.
<  *     But: 'M851 Z+1' with a CLEARANCE of 2  =>  2mm from bed to nozzle.
---
>  * Example: `M851 Z-5` with a CLEARANCE of 4  =>  9mm from bed to nozzle.
>  *     But: `M851 Z+1` with a CLEARANCE of 2  =>  2mm from bed to nozzle.

1722,1736c1619,1628
< #define Z_CLEARANCE_DEPLOY_PROBE   10 // (mm) Z Clearance for Deploy/Stow
< #define Z_CLEARANCE_BETWEEN_PROBES  5 // (mm) Z Clearance between probe points
< #define Z_CLEARANCE_MULTI_PROBE     5 // (mm) Z Clearance between multiple probes
< #define Z_PROBE_ERROR_TOLERANCE     3 // (mm) Tolerance for early trigger (<= -probe.offset.z + ZPET)
< //#define Z_AFTER_PROBING           5 // (mm) Z position after probing is done
< 
< #define Z_PROBE_LOW_POINT          -2 // (mm) Farthest distance below the trigger-point to go before stopping
< 
< // For M851 provide ranges for adjusting the X, Y, and Z probe offsets
< //#define PROBE_OFFSET_XMIN -50   // (mm)
< //#define PROBE_OFFSET_XMAX  50   // (mm)
< //#define PROBE_OFFSET_YMIN -50   // (mm)
< //#define PROBE_OFFSET_YMAX  50   // (mm)
< //#define PROBE_OFFSET_ZMIN -20   // (mm)
< //#define PROBE_OFFSET_ZMAX  20   // (mm)
---
> #define Z_CLEARANCE_DEPLOY_PROBE   10 // Z Clearance for Deploy/Stow
> #define Z_CLEARANCE_BETWEEN_PROBES  5 // Z Clearance between probe points
> #define Z_CLEARANCE_MULTI_PROBE     5 // Z Clearance between multiple probes
> //#define Z_AFTER_PROBING           5 // Z position after probing is done
> 
> #define Z_PROBE_LOW_POINT          -2 // Farthest distance below the trigger-point to go before stopping
> 
> // For M851 give a range for adjusting the Z probe offset
> #define Z_PROBE_OFFSET_RANGE_MIN -20
> #define Z_PROBE_OFFSET_RANGE_MAX 20

1803c1693  @@@@@ Left in
< //#define DISABLE_E               // Disable the extruder when not stepping
---
> #define DISABLE_E false             // Disable the extruder when not stepping


@@@@@@ New variable name

1843,1847c1733,1734
< //#define Z_CLEARANCE_FOR_HOMING  4   // (mm) Minimal Z height before homing (G28) for Z clearance above the bed, clamps, ...
<                                       // You'll need this much clearance above Z_MAX_POS to avoid grinding.' 
< 
< //#define Z_AFTER_HOMING         10   // (mm) Height to move to after homing (if Z was homed)
< //#define XY_AFTER_HOMING { 10, 10 }  // (mm) Move to an XY position after homing (and raising Z)
---
@@@@@@@@@
> //#define Z_HOMING_HEIGHT  4      // (mm) Minimal Z height before homing (G28) for Z clearance above the bed, clamps, ...
>                                   // Be sure to have this much clearance over your Z_MAX_POS to prevent grinding.


@@@@@@@1849c1736
< //#define EVENT_GCODE_AFTER_HOMING "M300 P440 S200"  // Commands to run after G28 (and move to XY_AFTER_HOMING)
---
> //#define Z_AFTER_HOMING  10      // (mm) Height to move to after homing Z



@@@@@@@Addition only


1863,1877d1749
< /**
<  * Safety Stops
<  * If an axis has endstops on both ends the one specified above is used for
<  * homing, while the other can be used for things like SD_ABORT_ON_ENDSTOP_HIT.
<  */
< //#define X_SAFETY_STOP
< //#define Y_SAFETY_STOP
< //#define Z_SAFETY_STOP
< //#define I_SAFETY_STOP
< //#define J_SAFETY_STOP
< //#define K_SAFETY_STOP
< //#define U_SAFETY_STOP
< //#define V_SAFETY_STOP
< //#define W_SAFETY_STOP
< 



@Configuration_adv.h

~~~~~~~~~~~~~~~~ left in
610,611d604
< //#define FAN_KICKSTART_LINEAR     // Set kickstart time linearly based on the speed, e.g., for 20% (51) it will be FAN_KICKSTART_TIME * 0.2.
<                                    // Useful for quick speed up to low speed. Kickstart power must be set to 255.

~~~~~~~~~~~~~~~~ overriding 0.0
2340c2263
<     #define ADVANCE_K 0.22        // (mm) Compression length applying to all extruders
---
>     #define ADVANCE_K 0.00        // (default 0.22) (mm) Compression length applying to all extruders


3313c3187  ~~~~~~~~~~~~~~  overriding comment
<     #define STEALTHCHOP_E
---
>     //#define STEALTHCHOP_E


3391c3265  ~~~~~~~~~~~~~~~~ check / finetume
<   #define Z_HYBRID_THRESHOLD       3
---
>   #define Z_HYBRID_THRESHOLD      15

3474,3475c3348,3350   ~~~~~~~ Let's enable edge stepping
<    */
<   #define EDGE_STEPPING
---
>    * >>check##
>    */ 
>   //#define EDGE_STEPPING




  #define BLOCK_BUFFER_SIZE  8



To review

conf_adv

Pending: Buffer sizes

Pending  #define Z_HYBRID_THRESHOLD       3 to 15 ? 



Done

PID hotend
PID bed
Motor currents
Sensorless homing
Fans
BLTouch
Menu options
Babystepping
Linear advance



To Do:

Fine-tune homing currents (now x, y at 93 mA) and define IMPROVE_HOMING_RELIABILITY