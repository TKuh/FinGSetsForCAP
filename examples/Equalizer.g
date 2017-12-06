#! @System Equalizer

LoadPackage( "SkeletalGSets" );

#! @Example

S3 := SymmetricGroup( 3 );
#! Sym( [ 1 .. 3 ] )
s := GSet( S3, [ 1, 0, 2, 0 ] );
#! <An object in Skeletal Category of G-Sets>
r := GSet( S3, [ 1, 2, 1, 0 ] );
#! <An object in Skeletal Category of G-Sets>
psi1 := MapOfGSets( s, [ [ [ 1, (1,2), 1 ] ], [], [ [ 1, (), 3 ], [ 1, (1,2,3), 3 ] ], [] ], r );
#! <A morphism in Skeletal Category of G-Sets>
IsWellDefined( psi1 );
#! true
psi2 := MapOfGSets( s, [ [[ 1, (1,2), 3 ]], [], [[ 1, (), 3 ], [ 1, (), 3 ]], [] ], r );
#! <A morphism in Skeletal Category of G-Sets>
IsWellDefined( psi2 );
#! true
Eq := Equalizer( [ psi1, psi2 ] );
#! <An object in Skeletal Category of G-Sets>
AsList( Eq );
#! [ 0, 0, 2, 0 ]

#! @EndExample
