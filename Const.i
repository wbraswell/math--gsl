%module "Math::GSL::Const"
%{
    #include "gsl/gsl_math.h"
    #include "gsl/gsl_const.h"
    #include "gsl/gsl_const_cgs.h"
    #include "gsl/gsl_const_cgsm.h"
    #include "gsl/gsl_const_mks.h"
    #include "gsl/gsl_const_mksa.h"
    #include "gsl/gsl_const_num.h"
%}

%include "gsl/gsl_math.h"
%include "gsl/gsl_const.h"
%include "gsl/gsl_const_cgs.h"
%include "gsl/gsl_const_cgsm.h"
%include "gsl/gsl_const_mks.h"
%include "gsl/gsl_const_mksa.h"
%include "gsl/gsl_const_num.h"


%perlcode %{
@EXPORT_math = qw/
               $M_E 
               $M_LOG2E 
               $M_LOG10E 
               $M_SQRT2 
               $M_SQRT1_2 
               $M_SQRT3 
               $M_PI 
               $M_PI_2 
               $M_PI_4 
               $M_SQRTPI 
               $M_2_SQRTPI 
               $M_1_PI 
               $M_2_PI 
               $M_LN10 
               $M_LN2 
               $M_LNPI 
               $M_EULER 
              /;
@EXPORT_cgs = qw/
               $GSL_CONST_CGS_SPEED_OF_LIGHT 
               $GSL_CONST_CGS_GRAVITATIONAL_CONSTANT 
               $GSL_CONST_CGS_PLANCKS_CONSTANT_H 
               $GSL_CONST_CGS_PLANCKS_CONSTANT_HBAR 
               $GSL_CONST_CGS_ASTRONOMICAL_UNIT 
               $GSL_CONST_CGS_LIGHT_YEAR 
               $GSL_CONST_CGS_PARSEC 
               $GSL_CONST_CGS_GRAV_ACCEL 
               $GSL_CONST_CGS_ELECTRON_VOLT 
               $GSL_CONST_CGS_MASS_ELECTRON 
               $GSL_CONST_CGS_MASS_MUON 
               $GSL_CONST_CGS_MASS_PROTON 
               $GSL_CONST_CGS_MASS_NEUTRON 
               $GSL_CONST_CGS_RYDBERG 
               $GSL_CONST_CGS_BOLTZMANN 
               $GSL_CONST_CGS_BOHR_MAGNETON 
               $GSL_CONST_CGS_NUCLEAR_MAGNETON 
               $GSL_CONST_CGS_ELECTRON_MAGNETIC_MOMENT 
               $GSL_CONST_CGS_PROTON_MAGNETIC_MOMENT 
               $GSL_CONST_CGS_MOLAR_GAS 
               $GSL_CONST_CGS_STANDARD_GAS_VOLUME 
               $GSL_CONST_CGS_MINUTE 
               $GSL_CONST_CGS_HOUR 
               $GSL_CONST_CGS_DAY 
               $GSL_CONST_CGS_WEEK 
               $GSL_CONST_CGS_INCH 
               $GSL_CONST_CGS_FOOT 
               $GSL_CONST_CGS_YARD 
               $GSL_CONST_CGS_MILE 
               $GSL_CONST_CGS_NAUTICAL_MILE 
               $GSL_CONST_CGS_FATHOM 
               $GSL_CONST_CGS_MIL 
               $GSL_CONST_CGS_POINT 
               $GSL_CONST_CGS_TEXPOINT 
               $GSL_CONST_CGS_MICRON 
               $GSL_CONST_CGS_ANGSTROM 
               $GSL_CONST_CGS_HECTARE 
               $GSL_CONST_CGS_ACRE 
               $GSL_CONST_CGS_BARN 
               $GSL_CONST_CGS_LITER 
               $GSL_CONST_CGS_US_GALLON 
               $GSL_CONST_CGS_QUART 
               $GSL_CONST_CGS_PINT 
               $GSL_CONST_CGS_CUP 
               $GSL_CONST_CGS_FLUID_OUNCE 
               $GSL_CONST_CGS_TABLESPOON 
               $GSL_CONST_CGS_TEASPOON 
               $GSL_CONST_CGS_CANADIAN_GALLON 
               $GSL_CONST_CGS_UK_GALLON 
               $GSL_CONST_CGS_MILES_PER_HOUR 
               $GSL_CONST_CGS_KILOMETERS_PER_HOUR 
               $GSL_CONST_CGS_KNOT 
               $GSL_CONST_CGS_POUND_MASS 
               $GSL_CONST_CGS_OUNCE_MASS 
               $GSL_CONST_CGS_TON 
               $GSL_CONST_CGS_METRIC_TON 
               $GSL_CONST_CGS_UK_TON 
               $GSL_CONST_CGS_TROY_OUNCE 
               $GSL_CONST_CGS_CARAT 
               $GSL_CONST_CGS_UNIFIED_ATOMIC_MASS 
               $GSL_CONST_CGS_GRAM_FORCE 
               $GSL_CONST_CGS_POUND_FORCE 
               $GSL_CONST_CGS_KILOPOUND_FORCE 
               $GSL_CONST_CGS_POUNDAL 
               $GSL_CONST_CGS_CALORIE 
               $GSL_CONST_CGS_BTU 
               $GSL_CONST_CGS_THERM 
               $GSL_CONST_CGS_HORSEPOWER 
               $GSL_CONST_CGS_BAR 
               $GSL_CONST_CGS_STD_ATMOSPHERE 
               $GSL_CONST_CGS_TORR 
               $GSL_CONST_CGS_METER_OF_MERCURY 
               $GSL_CONST_CGS_INCH_OF_MERCURY 
               $GSL_CONST_CGS_INCH_OF_WATER 
               $GSL_CONST_CGS_PSI 
               $GSL_CONST_CGS_POISE 
               $GSL_CONST_CGS_STOKES 
               $GSL_CONST_CGS_FARADAY 
               $GSL_CONST_CGS_ELECTRON_CHARGE 
               $GSL_CONST_CGS_GAUSS 
               $GSL_CONST_CGS_STILB 
               $GSL_CONST_CGS_LUMEN 
               $GSL_CONST_CGS_LUX 
               $GSL_CONST_CGS_PHOT 
               $GSL_CONST_CGS_FOOTCANDLE 
               $GSL_CONST_CGS_LAMBERT 
               $GSL_CONST_CGS_FOOTLAMBERT 
               $GSL_CONST_CGS_CURIE 
               $GSL_CONST_CGS_ROENTGEN 
               $GSL_CONST_CGS_RAD 
               $GSL_CONST_CGS_SOLAR_MASS 
               $GSL_CONST_CGS_BOHR_RADIUS 
               $GSL_CONST_CGS_NEWTON 
               $GSL_CONST_CGS_DYNE 
               $GSL_CONST_CGS_JOULE 
               $GSL_CONST_CGS_ERG 
               $GSL_CONST_CGS_STEFAN_BOLTZMANN_CONSTANT 
               $GSL_CONST_CGS_THOMSON_CROSS_SECTION 
               /;
@EXPORT_cgsm = qw/
               $GSL_CONST_CGSM_SPEED_OF_LIGHT 
               $GSL_CONST_CGSM_GRAVITATIONAL_CONSTANT 
               $GSL_CONST_CGSM_PLANCKS_CONSTANT_H 
               $GSL_CONST_CGSM_PLANCKS_CONSTANT_HBAR 
               $GSL_CONST_CGSM_ASTRONOMICAL_UNIT 
               $GSL_CONST_CGSM_LIGHT_YEAR 
               $GSL_CONST_CGSM_PARSEC 
               $GSL_CONST_CGSM_GRAV_ACCEL 
               $GSL_CONST_CGSM_ELECTRON_VOLT 
               $GSL_CONST_CGSM_MASS_ELECTRON 
               $GSL_CONST_CGSM_MASS_MUON 
               $GSL_CONST_CGSM_MASS_PROTON 
               $GSL_CONST_CGSM_MASS_NEUTRON 
               $GSL_CONST_CGSM_RYDBERG 
               $GSL_CONST_CGSM_BOLTZMANN 
               $GSL_CONST_CGSM_BOHR_MAGNETON 
               $GSL_CONST_CGSM_NUCLEAR_MAGNETON 
               $GSL_CONST_CGSM_ELECTRON_MAGNETIC_MOMENT 
               $GSL_CONST_CGSM_PROTON_MAGNETIC_MOMENT 
               $GSL_CONST_CGSM_MOLAR_GAS 
               $GSL_CONST_CGSM_STANDARD_GAS_VOLUME 
               $GSL_CONST_CGSM_MINUTE 
               $GSL_CONST_CGSM_HOUR 
               $GSL_CONST_CGSM_DAY 
               $GSL_CONST_CGSM_WEEK 
               $GSL_CONST_CGSM_INCH 
               $GSL_CONST_CGSM_FOOT 
               $GSL_CONST_CGSM_YARD 
               $GSL_CONST_CGSM_MILE 
               $GSL_CONST_CGSM_NAUTICAL_MILE 
               $GSL_CONST_CGSM_FATHOM 
               $GSL_CONST_CGSM_MIL 
               $GSL_CONST_CGSM_POINT 
               $GSL_CONST_CGSM_TEXPOINT 
               $GSL_CONST_CGSM_MICRON 
               $GSL_CONST_CGSM_ANGSTROM 
               $GSL_CONST_CGSM_HECTARE 
               $GSL_CONST_CGSM_ACRE 
               $GSL_CONST_CGSM_BARN 
               $GSL_CONST_CGSM_LITER 
               $GSL_CONST_CGSM_US_GALLON 
               $GSL_CONST_CGSM_QUART 
               $GSL_CONST_CGSM_PINT 
               $GSL_CONST_CGSM_CUP 
               $GSL_CONST_CGSM_FLUID_OUNCE 
               $GSL_CONST_CGSM_TABLESPOON 
               $GSL_CONST_CGSM_TEASPOON 
               $GSL_CONST_CGSM_CANADIAN_GALLON 
               $GSL_CONST_CGSM_UK_GALLON 
               $GSL_CONST_CGSM_MILES_PER_HOUR 
               $GSL_CONST_CGSM_KILOMETERS_PER_HOUR 
               $GSL_CONST_CGSM_KNOT 
               $GSL_CONST_CGSM_POUND_MASS 
               $GSL_CONST_CGSM_OUNCE_MASS 
               $GSL_CONST_CGSM_TON 
               $GSL_CONST_CGSM_METRIC_TON 
               $GSL_CONST_CGSM_UK_TON 
               $GSL_CONST_CGSM_TROY_OUNCE 
               $GSL_CONST_CGSM_CARAT 
               $GSL_CONST_CGSM_UNIFIED_ATOMIC_MASS 
               $GSL_CONST_CGSM_GRAM_FORCE 
               $GSL_CONST_CGSM_POUND_FORCE 
               $GSL_CONST_CGSM_KILOPOUND_FORCE 
               $GSL_CONST_CGSM_POUNDAL 
               $GSL_CONST_CGSM_CALORIE 
               $GSL_CONST_CGSM_BTU 
               $GSL_CONST_CGSM_THERM 
               $GSL_CONST_CGSM_HORSEPOWER 
               $GSL_CONST_CGSM_BAR 
               $GSL_CONST_CGSM_STD_ATMOSPHERE 
               $GSL_CONST_CGSM_TORR 
               $GSL_CONST_CGSM_METER_OF_MERCURY 
               $GSL_CONST_CGSM_INCH_OF_MERCURY 
               $GSL_CONST_CGSM_INCH_OF_WATER 
               $GSL_CONST_CGSM_PSI 
               $GSL_CONST_CGSM_POISE 
               $GSL_CONST_CGSM_STOKES 
               $GSL_CONST_CGSM_FARADAY 
               $GSL_CONST_CGSM_ELECTRON_CHARGE 
               $GSL_CONST_CGSM_GAUSS 
               $GSL_CONST_CGSM_STILB 
               $GSL_CONST_CGSM_LUMEN 
               $GSL_CONST_CGSM_LUX 
               $GSL_CONST_CGSM_PHOT 
               $GSL_CONST_CGSM_FOOTCANDLE 
               $GSL_CONST_CGSM_LAMBERT 
               $GSL_CONST_CGSM_FOOTLAMBERT 
               $GSL_CONST_CGSM_CURIE 
               $GSL_CONST_CGSM_ROENTGEN 
               $GSL_CONST_CGSM_RAD 
               $GSL_CONST_CGSM_SOLAR_MASS 
               $GSL_CONST_CGSM_BOHR_RADIUS 
               $GSL_CONST_CGSM_NEWTON 
               $GSL_CONST_CGSM_DYNE 
               $GSL_CONST_CGSM_JOULE 
               $GSL_CONST_CGSM_ERG 
               $GSL_CONST_CGSM_STEFAN_BOLTZMANN_CONSTANT 
               $GSL_CONST_CGSM_THOMSON_CROSS_SECTION 
               /;
@EXPORT_mks   = qw/
               $GSL_CONST_MKS_SPEED_OF_LIGHT 
               $GSL_CONST_MKS_GRAVITATIONAL_CONSTANT 
               $GSL_CONST_MKS_PLANCKS_CONSTANT_H 
               $GSL_CONST_MKS_PLANCKS_CONSTANT_HBAR 
               $GSL_CONST_MKS_ASTRONOMICAL_UNIT 
               $GSL_CONST_MKS_LIGHT_YEAR 
               $GSL_CONST_MKS_PARSEC 
               $GSL_CONST_MKS_GRAV_ACCEL 
               $GSL_CONST_MKS_ELECTRON_VOLT 
               $GSL_CONST_MKS_MASS_ELECTRON 
               $GSL_CONST_MKS_MASS_MUON 
               $GSL_CONST_MKS_MASS_PROTON 
               $GSL_CONST_MKS_MASS_NEUTRON 
               $GSL_CONST_MKS_RYDBERG 
               $GSL_CONST_MKS_BOLTZMANN 
               $GSL_CONST_MKS_BOHR_MAGNETON 
               $GSL_CONST_MKS_NUCLEAR_MAGNETON 
               $GSL_CONST_MKS_ELECTRON_MAGNETIC_MOMENT 
               $GSL_CONST_MKS_PROTON_MAGNETIC_MOMENT 
               $GSL_CONST_MKS_MOLAR_GAS 
               $GSL_CONST_MKS_STANDARD_GAS_VOLUME 
               $GSL_CONST_MKS_MINUTE 
               $GSL_CONST_MKS_HOUR 
               $GSL_CONST_MKS_DAY 
               $GSL_CONST_MKS_WEEK 
               $GSL_CONST_MKS_INCH 
               $GSL_CONST_MKS_FOOT 
               $GSL_CONST_MKS_YARD 
               $GSL_CONST_MKS_MILE 
               $GSL_CONST_MKS_NAUTICAL_MILE 
               $GSL_CONST_MKS_FATHOM 
               $GSL_CONST_MKS_MIL 
               $GSL_CONST_MKS_POINT 
               $GSL_CONST_MKS_TEXPOINT 
               $GSL_CONST_MKS_MICRON 
               $GSL_CONST_MKS_ANGSTROM 
               $GSL_CONST_MKS_HECTARE 
               $GSL_CONST_MKS_ACRE 
               $GSL_CONST_MKS_BARN 
               $GSL_CONST_MKS_LITER 
               $GSL_CONST_MKS_US_GALLON 
               $GSL_CONST_MKS_QUART 
               $GSL_CONST_MKS_PINT 
               $GSL_CONST_MKS_CUP 
               $GSL_CONST_MKS_FLUID_OUNCE 
               $GSL_CONST_MKS_TABLESPOON 
               $GSL_CONST_MKS_TEASPOON 
               $GSL_CONST_MKS_CANADIAN_GALLON 
               $GSL_CONST_MKS_UK_GALLON 
               $GSL_CONST_MKS_MILES_PER_HOUR 
               $GSL_CONST_MKS_KILOMETERS_PER_HOUR 
               $GSL_CONST_MKS_KNOT 
               $GSL_CONST_MKS_POUND_MASS 
               $GSL_CONST_MKS_OUNCE_MASS 
               $GSL_CONST_MKS_TON 
               $GSL_CONST_MKS_METRIC_TON 
               $GSL_CONST_MKS_UK_TON 
               $GSL_CONST_MKS_TROY_OUNCE 
               $GSL_CONST_MKS_CARAT 
               $GSL_CONST_MKS_UNIFIED_ATOMIC_MASS 
               $GSL_CONST_MKS_GRAM_FORCE 
               $GSL_CONST_MKS_POUND_FORCE 
               $GSL_CONST_MKS_KILOPOUND_FORCE 
               $GSL_CONST_MKS_POUNDAL 
               $GSL_CONST_MKS_CALORIE 
               $GSL_CONST_MKS_BTU 
               $GSL_CONST_MKS_THERM 
               $GSL_CONST_MKS_HORSEPOWER 
               $GSL_CONST_MKS_BAR 
               $GSL_CONST_MKS_STD_ATMOSPHERE 
               $GSL_CONST_MKS_TORR 
               $GSL_CONST_MKS_METER_OF_MERCURY 
               $GSL_CONST_MKS_INCH_OF_MERCURY 
               $GSL_CONST_MKS_INCH_OF_WATER 
               $GSL_CONST_MKS_PSI 
               $GSL_CONST_MKS_POISE 
               $GSL_CONST_MKS_STOKES 
               $GSL_CONST_MKS_FARADAY 
               $GSL_CONST_MKS_ELECTRON_CHARGE 
               $GSL_CONST_MKS_GAUSS 
               $GSL_CONST_MKS_STILB 
               $GSL_CONST_MKS_LUMEN 
               $GSL_CONST_MKS_LUX 
               $GSL_CONST_MKS_PHOT 
               $GSL_CONST_MKS_FOOTCANDLE 
               $GSL_CONST_MKS_LAMBERT 
               $GSL_CONST_MKS_FOOTLAMBERT 
               $GSL_CONST_MKS_CURIE 
               $GSL_CONST_MKS_ROENTGEN 
               $GSL_CONST_MKS_RAD 
               $GSL_CONST_MKS_SOLAR_MASS 
               $GSL_CONST_MKS_BOHR_RADIUS 
               $GSL_CONST_MKS_NEWTON 
               $GSL_CONST_MKS_DYNE 
               $GSL_CONST_MKS_JOULE 
               $GSL_CONST_MKS_ERG 
               $GSL_CONST_MKS_STEFAN_BOLTZMANN_CONSTANT 
               $GSL_CONST_MKS_THOMSON_CROSS_SECTION 
               $GSL_CONST_MKS_VACUUM_PERMITTIVITY 
               $GSL_CONST_MKS_VACUUM_PERMEABILITY 
               $GSL_CONST_MKS_DEBYE 
               /;
@EXPORT_mksa  = qw/
               $GSL_CONST_MKSA_SPEED_OF_LIGHT 
               $GSL_CONST_MKSA_GRAVITATIONAL_CONSTANT 
               $GSL_CONST_MKSA_PLANCKS_CONSTANT_H 
               $GSL_CONST_MKSA_PLANCKS_CONSTANT_HBAR 
               $GSL_CONST_MKSA_ASTRONOMICAL_UNIT 
               $GSL_CONST_MKSA_LIGHT_YEAR 
               $GSL_CONST_MKSA_PARSEC 
               $GSL_CONST_MKSA_GRAV_ACCEL 
               $GSL_CONST_MKSA_ELECTRON_VOLT 
               $GSL_CONST_MKSA_MASS_ELECTRON 
               $GSL_CONST_MKSA_MASS_MUON 
               $GSL_CONST_MKSA_MASS_PROTON 
               $GSL_CONST_MKSA_MASS_NEUTRON 
               $GSL_CONST_MKSA_RYDBERG 
               $GSL_CONST_MKSA_BOLTZMANN 
               $GSL_CONST_MKSA_BOHR_MAGNETON 
               $GSL_CONST_MKSA_NUCLEAR_MAGNETON 
               $GSL_CONST_MKSA_ELECTRON_MAGNETIC_MOMENT 
               $GSL_CONST_MKSA_PROTON_MAGNETIC_MOMENT 
               $GSL_CONST_MKSA_MOLAR_GAS 
               $GSL_CONST_MKSA_STANDARD_GAS_VOLUME 
               $GSL_CONST_MKSA_MINUTE 
               $GSL_CONST_MKSA_HOUR 
               $GSL_CONST_MKSA_DAY 
               $GSL_CONST_MKSA_WEEK 
               $GSL_CONST_MKSA_INCH 
               $GSL_CONST_MKSA_FOOT 
               $GSL_CONST_MKSA_YARD 
               $GSL_CONST_MKSA_MILE 
               $GSL_CONST_MKSA_NAUTICAL_MILE 
               $GSL_CONST_MKSA_FATHOM 
               $GSL_CONST_MKSA_MIL 
               $GSL_CONST_MKSA_POINT 
               $GSL_CONST_MKSA_TEXPOINT 
               $GSL_CONST_MKSA_MICRON 
               $GSL_CONST_MKSA_ANGSTROM 
               $GSL_CONST_MKSA_HECTARE 
               $GSL_CONST_MKSA_ACRE 
               $GSL_CONST_MKSA_BARN 
               $GSL_CONST_MKSA_LITER 
               $GSL_CONST_MKSA_US_GALLON 
               $GSL_CONST_MKSA_QUART 
               $GSL_CONST_MKSA_PINT 
               $GSL_CONST_MKSA_CUP 
               $GSL_CONST_MKSA_FLUID_OUNCE 
               $GSL_CONST_MKSA_TABLESPOON 
               $GSL_CONST_MKSA_TEASPOON 
               $GSL_CONST_MKSA_CANADIAN_GALLON 
               $GSL_CONST_MKSA_UK_GALLON 
               $GSL_CONST_MKSA_MILES_PER_HOUR 
               $GSL_CONST_MKSA_KILOMETERS_PER_HOUR 
               $GSL_CONST_MKSA_KNOT 
               $GSL_CONST_MKSA_POUND_MASS 
               $GSL_CONST_MKSA_OUNCE_MASS 
               $GSL_CONST_MKSA_TON 
               $GSL_CONST_MKSA_METRIC_TON 
               $GSL_CONST_MKSA_UK_TON 
               $GSL_CONST_MKSA_TROY_OUNCE 
               $GSL_CONST_MKSA_CARAT 
               $GSL_CONST_MKSA_UNIFIED_ATOMIC_MASS 
               $GSL_CONST_MKSA_GRAM_FORCE 
               $GSL_CONST_MKSA_POUND_FORCE 
               $GSL_CONST_MKSA_KILOPOUND_FORCE 
               $GSL_CONST_MKSA_POUNDAL 
               $GSL_CONST_MKSA_CALORIE 
               $GSL_CONST_MKSA_BTU 
               $GSL_CONST_MKSA_THERM 
               $GSL_CONST_MKSA_HORSEPOWER 
               $GSL_CONST_MKSA_BAR 
               $GSL_CONST_MKSA_STD_ATMOSPHERE 
               $GSL_CONST_MKSA_TORR 
               $GSL_CONST_MKSA_METER_OF_MERCURY 
               $GSL_CONST_MKSA_INCH_OF_MERCURY 
               $GSL_CONST_MKSA_INCH_OF_WATER 
               $GSL_CONST_MKSA_PSI 
               $GSL_CONST_MKSA_POISE 
               $GSL_CONST_MKSA_STOKES 
               $GSL_CONST_MKSA_FARADAY 
               $GSL_CONST_MKSA_ELECTRON_CHARGE 
               $GSL_CONST_MKSA_GAUSS 
               $GSL_CONST_MKSA_STILB 
               $GSL_CONST_MKSA_LUMEN 
               $GSL_CONST_MKSA_LUX 
               $GSL_CONST_MKSA_PHOT 
               $GSL_CONST_MKSA_FOOTCANDLE 
               $GSL_CONST_MKSA_LAMBERT 
               $GSL_CONST_MKSA_FOOTLAMBERT 
               $GSL_CONST_MKSA_CURIE 
               $GSL_CONST_MKSA_ROENTGEN 
               $GSL_CONST_MKSA_RAD 
               $GSL_CONST_MKSA_SOLAR_MASS 
               $GSL_CONST_MKSA_BOHR_RADIUS 
               $GSL_CONST_MKSA_NEWTON 
               $GSL_CONST_MKSA_DYNE 
               $GSL_CONST_MKSA_JOULE 
               $GSL_CONST_MKSA_ERG 
               $GSL_CONST_MKSA_STEFAN_BOLTZMANN_CONSTANT 
               $GSL_CONST_MKSA_THOMSON_CROSS_SECTION 
               $GSL_CONST_MKSA_VACUUM_PERMITTIVITY 
               $GSL_CONST_MKSA_VACUUM_PERMEABILITY 
               $GSL_CONST_MKSA_DEBYE 
               /;
@EXPORT_num = qw/
               $GSL_CONST_NUM_FINE_STRUCTURE 
               $GSL_CONST_NUM_AVOGADRO 
               $GSL_CONST_NUM_YOTTA 
               $GSL_CONST_NUM_ZETTA 
               $GSL_CONST_NUM_EXA 
               $GSL_CONST_NUM_PETA 
               $GSL_CONST_NUM_TERA 
               $GSL_CONST_NUM_GIGA 
               $GSL_CONST_NUM_MEGA 
               $GSL_CONST_NUM_KILO 
               $GSL_CONST_NUM_MILLI 
               $GSL_CONST_NUM_MICRO 
               $GSL_CONST_NUM_NANO 
               $GSL_CONST_NUM_PICO 
               $GSL_CONST_NUM_FEMTO 
               $GSL_CONST_NUM_ATTO 
               $GSL_CONST_NUM_ZEPTO 
               $GSL_CONST_NUM_YOCTO 
             /;
@EXPORT_OK = ( @EXPORT_cgs, @EXPORT_cgsm, @EXPORT_mks, @EXPORT_mksa, @EXPORT_num, @EXPORT_math);
%EXPORT_TAGS = ( 
                all     => [ @EXPORT_OK   ],
                cgs     => [ @EXPORT_cgs  ], 
                cgsm    => [ @EXPORT_cgsm ], 
                mks     => [ @EXPORT_mks  ], 
                mksa    => [ @EXPORT_mksa ], 
                num     => [ @EXPORT_num  ], 
                math    => [ @EXPORT_math ],
               );

__END__

=head1 NAME

Math::GSL::Const - Constants coming from various part of GSL

=head1 SYNOPSIS

use Math::GSL::Const qw/:all/;

=head1 DESCRIPTION

Here is a list of all the constants included in this module :

=over

=back

=head1 AUTHORS

Jonathan Leto <jonathan@leto.net> and Thierry Moisan <thierry.moisan@gmail.com>

=head1 COPYRIGHT AND LICENSE

Copyright (C) 2008 Jonathan Leto and Thierry Moisan

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

=cut

%}
