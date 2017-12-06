#! @System EqualForObjects

LoadPackage( "SkeletalGSets" );

#! @Example
# Groups have to be the same with respect to IsIdenticalObj
C6 := CyclicGroup( 6 );
#! <pc group of size 6 with 2 generators>

S3 := SymmetricGroup( 3 );
#! Sym( [ 1 .. 3 ] )

w1 := GSet( C6, [1, 2, 3, 1]);
#! <An object in Skeletal Category of G-Sets>

IsWellDefined( w1 );
#! true

w2 := GSet( S3, [1, 2, 3, 1]);
#! <An object in Skeletal Category of G-Sets>

IsWellDefined( w2 );
#! true

w1 = w2;
#! Error, no method found! For debugging hints type ?Recovery from NoMethodFound
#! Error, no 1st choice method found for `IsEqualForObjects' on 2 arguments

#! @EndExample
