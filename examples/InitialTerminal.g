#! @System InitialTerminal

LoadPackage( "SkeletalGSets" );

#! @Example

S3 := SymmetricGroup( 3 );
#! Sym( [ 1 .. 3 ] )
S := GSet( S3, [ 2, 2, 0, 0 ] );
#! <An object in Skeletal Category of G-Sets>
u := UniversalMorphismFromInitialObject( S );
#! <A morphism in Skeletal Category of G-Sets>
IsWellDefined( u );
#! true

S := GSet( S3, [ 2, 2, 0, 0 ] );
#! <An object in Skeletal Category of G-Sets>
u := UniversalMorphismIntoTerminalObject( S );
#! <A morphism in Skeletal Category of G-Sets>
IsWellDefined( u );
#! true



G := SymmetricGroup( 0 );;
m := GSet( G, [ 8 ] );
#! <An object in Skeletal Category of G-Sets>
i := InitialObject( m );
#! <An object in Skeletal Category of G-Sets>
iota := UniversalMorphismFromInitialObject( m );
#! <A morphism in Skeletal Category of G-Sets>
AsList( i );
#! [ 0 ]
t := TerminalObject( m );
#! <An object in Skeletal Category of G-Sets>
AsList( t );
#! [ 1 ]
pi := UniversalMorphismIntoTerminalObject( m );
#! <A morphism in Skeletal Category of G-Sets>
IsIdenticalObj( Range( pi ), t );
#! true
pi_t := UniversalMorphismIntoTerminalObjectWithGivenTerminalObject( m, t );
#! <A morphism in Skeletal Category of G-Sets>
AsList( pi_t );
#! [ [ [ 1, (), 1 ], [ 1, (), 1 ], [ 1, (), 1 ], [ 1, (), 1 ], 
#!       [ 1, (), 1 ], [ 1, (), 1 ], [ 1, (), 1 ], [ 1, (), 1 ] ] ]
pi = pi_t;
#! true


#! @EndExample