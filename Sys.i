%module Sys
%{
    #include "/usr/local/include/gsl/gsl_sys.h"
%}

%include "/usr/local/include/gsl/gsl_sys.h"


%perlcode %{
@EXPORT_OK = qw/
               gsl_log1p 
               gsl_expm1 
               gsl_hypot 
               gsl_hypot3 
               gsl_acosh 
               gsl_asinh 
               gsl_atanh 
               gsl_isnan 
               gsl_isinf 
               gsl_finite 
               gsl_nan 
               gsl_posinf 
               gsl_neginf 
               gsl_fdiv 
               gsl_coerce_double 
               gsl_coerce_float 
               gsl_coerce_long_double 
               gsl_ldexp 
               gsl_frexp 
               gsl_fcmp 
             /;
%EXPORT_TAGS = ( all => [ @EXPORT_OK ] );
%}
