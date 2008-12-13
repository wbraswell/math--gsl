package Math::GSL::VectorComplex::Test;
use base q{Test::Class};
use Test::More tests => 23;
use Math::GSL::Test          qw/:all/;
use Math::GSL                qw/:all/;
use Math::GSL::VectorComplex qw/:all/;
use Math::GSL::Complex       qw/:all/;
use Math::GSL::Errno         qw/:all/;
use Math::GSL::Const         qw/:all/;
use Test::Exception;
use Data::Dumper;
use Math::Complex;
use strict;

BEGIN{ gsl_set_error_handler_off(); }

sub make_fixture : Test(setup) {
    my $self = shift;
    my $z = Math::Complex->make(0,3);
    $self->{vector} = Math::GSL::VectorComplex->new([ $z, $z ** 2, 3 ] );
}

sub teardown : Test(teardown) {
    unlink 'vector' if -f 'vectorcomplex';
}

sub GSL_VECTOR_COMPLEX_NEW : Tests(12) {
    my $u = Math::GSL::VectorComplex->new(10);
    isa_ok($u, 'Math::GSL::VectorComplex');
    ok( $u->length ==  10, 'length');
    isa_ok($u->raw, 'Math::GSL::VectorComplex::gsl_vector_complex');

    my $z = Math::Complex->make(0,2);
    my $v = Math::GSL::VectorComplex->new([ $z, $z ** 2 ] );
    isa_ok($v, 'Math::GSL::VectorComplex');

    my @elements = $v->as_list;
    map { isa_ok( $_, 'Math::Complex') } @elements;
    ok_similar( [ map { Re($_) } @elements ], [ 0, -4 ] );
    ok_similar( [ map { Im($_) } @elements ], [ 2, 0  ] );

    my $e0 = gsl_vector_complex_get($v->raw,0);
    ok_similar( gsl_complex_abs($e0), 2, 'first element: new gets abs correct');
    ok_similar( gsl_complex_arg($e0), $M_PI/2, 'first element: new gets arg correct');

    my $e1 = gsl_vector_complex_get($v->raw,1);
    ok_similar( gsl_complex_abs($e1), 4, '2nd element: new get abs correct');
    ok_similar( gsl_complex_arg($e1), $M_PI, '2nd element: new get arg correct');
}

sub GSL_VECTOR_COMPLEX_REVERSE : Tests(5) {
    my $self = shift;
    my $vector = $self->{vector};
    ok_status( gsl_vector_complex_reverse($vector->raw), $GSL_SUCCESS,  'vector_complex_reverse' );
    my @elements = $vector->as_list;
    ok_similar( [ map { Re($_) } @elements ], [ 3, -9, 0 ], 'real parts of vector get reversed');
    ok_similar( [ map { Im($_) } @elements ], [ 0,  0, 3 ], 'imag parts of vector get reversed');

    my @reversed = $vector->reverse->as_list;

    ok_similar( [ map { Re($_) } @reversed ], [ 0, -9, 3 ], 'real parts of vector get reversed');
    ok_similar( [ map { Im($_) } @reversed ], [ 3,  0, 0 ], 'imag parts of vector get reversed');

}

sub GSL_VECTOR_COMPLEX_SWAP : Tests(6) {
    my $self   = shift;
    my $y = Math::Complex->make(1,1);
    my $z = Math::Complex->make(0,3);
    my $v = $self->{vector};
    my $w = Math::GSL::VectorComplex->new([ $y , 1 , 3 ]);

    ok_status( gsl_vector_complex_swap( $v->raw, $w->raw ) );
    ok_similar ( [ map { Re $_ } $v->as_list     ],
                 [ map { Re $_ } $y ,     1 ,  3 ] );
    ok_similar ( [ map { Im $_ } $w->as_list     ],
                 [ map { Im $_ } $z , $z ** 2, 3 ] );

    isa_ok( $v->swap( $w ), 'Math::GSL::VectorComplex' );

    ok_similar ( [ map { Re $_ } $w->as_list     ],
                 [ map { Re $_ } $y ,     1 ,  3 ] );
    ok_similar ( [ map { Im $_ } $v->as_list     ],
                 [ map { Im $_ } $z , $z ** 2, 3 ] );

}

Test::Class->runtests;
