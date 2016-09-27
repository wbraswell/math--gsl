package Math::GSL::Multilarge::Test;
use base q{Test::Class};
use Test::More;
use Math::GSL           qw/:all/;
use Math::GSL::BLAS     qw/:all/;
use Math::GSL::Test     qw/:all/;
use Math::GSL::Errno    qw/:all/;
use Math::GSL::Matrix   qw/:all/;
use Math::GSL::Vector   qw/:all/;
use Math::GSL::Machine  qw/:all/;
use Math::GSL::Multifit qw/:all/;
use Math::GSL::Multilarge qw/:all/;
use Data::Dumper;
use strict;
use warnings;

BEGIN { gsl_set_error_handler_off() }

sub make_fixture : Test(setup) {
}

sub teardown : Test(teardown) {
}

sub GSL_MULTILARGE_LINEAR_ALLOC : Tests {
    my $type  = Math::GSL::Multilarge::gsl_multilarge_linear_type->new;
    isa_ok($type, 'Math::GSL::Multilarge::gsl_multilarge_linear_type');

    # This coredumps
    # my $multi = Math::GSL::Multilarge::gsl_multilarge_linear_alloc($type,16);
    # isa_ok($multi, 'Math::GSL::Multilarge');
}

Test::Class->runtests;
