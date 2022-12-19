# Photography Formulas 

## Calculation of Values

The simple calculations that lead to a reading are based on the Wikipedia entry on [exposure value](https://en.wikipedia.org/wiki/Exposure_value).

The [illuminance](https://en.wikipedia.org/wiki/Illuminance) returned by the Pimoroni BH1745 ( $L$ ) is converted to an exposure value ( $E_v$ ) for ISO 100 using

$$E_v=\log _2  {{L} \over {C\}},$$

where $C$ is the light meter [calibration constant](https://en.wikipedia.org/wiki/Light_meter#Calibration_constants).

This exposure value is then adjusted to an Exposure value for the chosen ISO ( $E_{ISO}$ ) using

$$E_\{ISO\}=E_v + \log_2 {{ISO}\over{100\}}.$$

Then, depending on the priority on the light meter, the remaining value is calculated using

$$t = {{N^2} \over {2^{E_{ISO}}}}$$  

or

$$N = \sqrt{t×2^{ E_{ISO}}}$$

where $t$ is shutter speed and $N$ is f-stop. The value is then rounded to the nearest nominal value and displayed on the screen.

