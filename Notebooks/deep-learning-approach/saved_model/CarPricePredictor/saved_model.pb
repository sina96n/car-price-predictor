??&
??
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
p
GatherNd
params"Tparams
indices"Tindices
output"Tparams"
Tparamstype"
Tindicestype:
2	
?
HashTableV2
table_handle"
	containerstring "
shared_namestring "!
use_node_name_sharingbool( "
	key_dtypetype"
value_dtypetype?
.
Identity

input"T
output"T"	
Ttype
w
LookupTableFindV2
table_handle
keys"Tin
default_value"Tout
values"Tout"
Tintype"
Touttype?
b
LookupTableImportV2
table_handle
keys"Tin
values"Tout"
Tintype"
Touttype?
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
>
Maximum
x"T
y"T
z"T"
Ttype:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?

NoOp
U
NotEqual
x"T
y"T
z
"	
Ttype"$
incompatible_shape_errorbool(?
?
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint?????????"	
Ttype"
TItype0	:
2	
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype?
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
?
SparseToDense
sparse_indices"Tindices
output_shape"Tindices
sparse_values"T
default_value"T

dense"T"
validate_indicesbool("	
Ttype"
Tindicestype:
2	
-
Sqrt
x"T
y"T"
Ttype:

2
?
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
<
Sub
x"T
y"T
z"T"
Ttype:
2	
?
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?
E
Where

input"T	
index	"%
Ttype0
:
2	
"serve*2.8.02v2.8.0-0-g3f878cff5b68??#
?
&CAR_PRICE_PREDICTOR/normalization/meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:?	*7
shared_name(&CAR_PRICE_PREDICTOR/normalization/mean
?
:CAR_PRICE_PREDICTOR/normalization/mean/Read/ReadVariableOpReadVariableOp&CAR_PRICE_PREDICTOR/normalization/mean*
_output_shapes	
:?	*
dtype0
?
*CAR_PRICE_PREDICTOR/normalization/varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:?	*;
shared_name,*CAR_PRICE_PREDICTOR/normalization/variance
?
>CAR_PRICE_PREDICTOR/normalization/variance/Read/ReadVariableOpReadVariableOp*CAR_PRICE_PREDICTOR/normalization/variance*
_output_shapes	
:?	*
dtype0
?
'CAR_PRICE_PREDICTOR/normalization/countVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *8
shared_name)'CAR_PRICE_PREDICTOR/normalization/count
?
;CAR_PRICE_PREDICTOR/normalization/count/Read/ReadVariableOpReadVariableOp'CAR_PRICE_PREDICTOR/normalization/count*
_output_shapes
: *
dtype0	
?
CAR_PRICE_PREDICTOR/FC_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?	@*0
shared_name!CAR_PRICE_PREDICTOR/FC_1/kernel
?
3CAR_PRICE_PREDICTOR/FC_1/kernel/Read/ReadVariableOpReadVariableOpCAR_PRICE_PREDICTOR/FC_1/kernel*
_output_shapes
:	?	@*
dtype0
?
CAR_PRICE_PREDICTOR/FC_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*.
shared_nameCAR_PRICE_PREDICTOR/FC_1/bias
?
1CAR_PRICE_PREDICTOR/FC_1/bias/Read/ReadVariableOpReadVariableOpCAR_PRICE_PREDICTOR/FC_1/bias*
_output_shapes
:@*
dtype0
?
CAR_PRICE_PREDICTOR/FC_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *0
shared_name!CAR_PRICE_PREDICTOR/FC_2/kernel
?
3CAR_PRICE_PREDICTOR/FC_2/kernel/Read/ReadVariableOpReadVariableOpCAR_PRICE_PREDICTOR/FC_2/kernel*
_output_shapes

:@ *
dtype0
?
CAR_PRICE_PREDICTOR/FC_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *.
shared_nameCAR_PRICE_PREDICTOR/FC_2/bias
?
1CAR_PRICE_PREDICTOR/FC_2/bias/Read/ReadVariableOpReadVariableOpCAR_PRICE_PREDICTOR/FC_2/bias*
_output_shapes
: *
dtype0
?
CAR_PRICE_PREDICTOR/FC_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 
*0
shared_name!CAR_PRICE_PREDICTOR/FC_3/kernel
?
3CAR_PRICE_PREDICTOR/FC_3/kernel/Read/ReadVariableOpReadVariableOpCAR_PRICE_PREDICTOR/FC_3/kernel*
_output_shapes

: 
*
dtype0
?
CAR_PRICE_PREDICTOR/FC_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*.
shared_nameCAR_PRICE_PREDICTOR/FC_3/bias
?
1CAR_PRICE_PREDICTOR/FC_3/bias/Read/ReadVariableOpReadVariableOpCAR_PRICE_PREDICTOR/FC_3/bias*
_output_shapes
:
*
dtype0
?
!CAR_PRICE_PREDICTOR/Output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*2
shared_name#!CAR_PRICE_PREDICTOR/Output/kernel
?
5CAR_PRICE_PREDICTOR/Output/kernel/Read/ReadVariableOpReadVariableOp!CAR_PRICE_PREDICTOR/Output/kernel*
_output_shapes

:
*
dtype0
?
CAR_PRICE_PREDICTOR/Output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!CAR_PRICE_PREDICTOR/Output/bias
?
3CAR_PRICE_PREDICTOR/Output/bias/Read/ReadVariableOpReadVariableOpCAR_PRICE_PREDICTOR/Output/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
k

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name180*
value_dtype0	
m
hash_table_1HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name226*
value_dtype0	
m
hash_table_2HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name262*
value_dtype0	
m
hash_table_3HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name298*
value_dtype0	
m
hash_table_4HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name345*
value_dtype0	
m
hash_table_5HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name381*
value_dtype0	
m
hash_table_6HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name428*
value_dtype0	
m
hash_table_7HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name464*
value_dtype0	
m
hash_table_8HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name522*
value_dtype0	
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
&Adam/CAR_PRICE_PREDICTOR/FC_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?	@*7
shared_name(&Adam/CAR_PRICE_PREDICTOR/FC_1/kernel/m
?
:Adam/CAR_PRICE_PREDICTOR/FC_1/kernel/m/Read/ReadVariableOpReadVariableOp&Adam/CAR_PRICE_PREDICTOR/FC_1/kernel/m*
_output_shapes
:	?	@*
dtype0
?
$Adam/CAR_PRICE_PREDICTOR/FC_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$Adam/CAR_PRICE_PREDICTOR/FC_1/bias/m
?
8Adam/CAR_PRICE_PREDICTOR/FC_1/bias/m/Read/ReadVariableOpReadVariableOp$Adam/CAR_PRICE_PREDICTOR/FC_1/bias/m*
_output_shapes
:@*
dtype0
?
&Adam/CAR_PRICE_PREDICTOR/FC_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *7
shared_name(&Adam/CAR_PRICE_PREDICTOR/FC_2/kernel/m
?
:Adam/CAR_PRICE_PREDICTOR/FC_2/kernel/m/Read/ReadVariableOpReadVariableOp&Adam/CAR_PRICE_PREDICTOR/FC_2/kernel/m*
_output_shapes

:@ *
dtype0
?
$Adam/CAR_PRICE_PREDICTOR/FC_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adam/CAR_PRICE_PREDICTOR/FC_2/bias/m
?
8Adam/CAR_PRICE_PREDICTOR/FC_2/bias/m/Read/ReadVariableOpReadVariableOp$Adam/CAR_PRICE_PREDICTOR/FC_2/bias/m*
_output_shapes
: *
dtype0
?
&Adam/CAR_PRICE_PREDICTOR/FC_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 
*7
shared_name(&Adam/CAR_PRICE_PREDICTOR/FC_3/kernel/m
?
:Adam/CAR_PRICE_PREDICTOR/FC_3/kernel/m/Read/ReadVariableOpReadVariableOp&Adam/CAR_PRICE_PREDICTOR/FC_3/kernel/m*
_output_shapes

: 
*
dtype0
?
$Adam/CAR_PRICE_PREDICTOR/FC_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*5
shared_name&$Adam/CAR_PRICE_PREDICTOR/FC_3/bias/m
?
8Adam/CAR_PRICE_PREDICTOR/FC_3/bias/m/Read/ReadVariableOpReadVariableOp$Adam/CAR_PRICE_PREDICTOR/FC_3/bias/m*
_output_shapes
:
*
dtype0
?
(Adam/CAR_PRICE_PREDICTOR/Output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*9
shared_name*(Adam/CAR_PRICE_PREDICTOR/Output/kernel/m
?
<Adam/CAR_PRICE_PREDICTOR/Output/kernel/m/Read/ReadVariableOpReadVariableOp(Adam/CAR_PRICE_PREDICTOR/Output/kernel/m*
_output_shapes

:
*
dtype0
?
&Adam/CAR_PRICE_PREDICTOR/Output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&Adam/CAR_PRICE_PREDICTOR/Output/bias/m
?
:Adam/CAR_PRICE_PREDICTOR/Output/bias/m/Read/ReadVariableOpReadVariableOp&Adam/CAR_PRICE_PREDICTOR/Output/bias/m*
_output_shapes
:*
dtype0
?
&Adam/CAR_PRICE_PREDICTOR/FC_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?	@*7
shared_name(&Adam/CAR_PRICE_PREDICTOR/FC_1/kernel/v
?
:Adam/CAR_PRICE_PREDICTOR/FC_1/kernel/v/Read/ReadVariableOpReadVariableOp&Adam/CAR_PRICE_PREDICTOR/FC_1/kernel/v*
_output_shapes
:	?	@*
dtype0
?
$Adam/CAR_PRICE_PREDICTOR/FC_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*5
shared_name&$Adam/CAR_PRICE_PREDICTOR/FC_1/bias/v
?
8Adam/CAR_PRICE_PREDICTOR/FC_1/bias/v/Read/ReadVariableOpReadVariableOp$Adam/CAR_PRICE_PREDICTOR/FC_1/bias/v*
_output_shapes
:@*
dtype0
?
&Adam/CAR_PRICE_PREDICTOR/FC_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *7
shared_name(&Adam/CAR_PRICE_PREDICTOR/FC_2/kernel/v
?
:Adam/CAR_PRICE_PREDICTOR/FC_2/kernel/v/Read/ReadVariableOpReadVariableOp&Adam/CAR_PRICE_PREDICTOR/FC_2/kernel/v*
_output_shapes

:@ *
dtype0
?
$Adam/CAR_PRICE_PREDICTOR/FC_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: *5
shared_name&$Adam/CAR_PRICE_PREDICTOR/FC_2/bias/v
?
8Adam/CAR_PRICE_PREDICTOR/FC_2/bias/v/Read/ReadVariableOpReadVariableOp$Adam/CAR_PRICE_PREDICTOR/FC_2/bias/v*
_output_shapes
: *
dtype0
?
&Adam/CAR_PRICE_PREDICTOR/FC_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
: 
*7
shared_name(&Adam/CAR_PRICE_PREDICTOR/FC_3/kernel/v
?
:Adam/CAR_PRICE_PREDICTOR/FC_3/kernel/v/Read/ReadVariableOpReadVariableOp&Adam/CAR_PRICE_PREDICTOR/FC_3/kernel/v*
_output_shapes

: 
*
dtype0
?
$Adam/CAR_PRICE_PREDICTOR/FC_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*5
shared_name&$Adam/CAR_PRICE_PREDICTOR/FC_3/bias/v
?
8Adam/CAR_PRICE_PREDICTOR/FC_3/bias/v/Read/ReadVariableOpReadVariableOp$Adam/CAR_PRICE_PREDICTOR/FC_3/bias/v*
_output_shapes
:
*
dtype0
?
(Adam/CAR_PRICE_PREDICTOR/Output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*9
shared_name*(Adam/CAR_PRICE_PREDICTOR/Output/kernel/v
?
<Adam/CAR_PRICE_PREDICTOR/Output/kernel/v/Read/ReadVariableOpReadVariableOp(Adam/CAR_PRICE_PREDICTOR/Output/kernel/v*
_output_shapes

:
*
dtype0
?
&Adam/CAR_PRICE_PREDICTOR/Output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*7
shared_name(&Adam/CAR_PRICE_PREDICTOR/Output/bias/v
?
:Adam/CAR_PRICE_PREDICTOR/Output/bias/v/Read/ReadVariableOpReadVariableOp&Adam/CAR_PRICE_PREDICTOR/Output/bias/v*
_output_shapes
:*
dtype0
P
ConstConst*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
R
Const_1Const*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
R
Const_2Const*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
R
Const_3Const*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
R
Const_4Const*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
R
Const_5Const*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
R
Const_6Const*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
R
Const_7Const*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
R
Const_8Const*
_output_shapes
: *
dtype0	*
valueB	 R
?????????
^
Const_9Const*
_output_shapes
:	?	*
dtype0*
valueB	?	*    
_
Const_10Const*
_output_shapes
:	?	*
dtype0*
valueB	?	*  ??
?
Const_11Const*
_output_shapes
:+*
dtype0*?
value?B?+BToyotaB	ChevroletBFordBJeepBNissanBHondaBMercedesBDodgeBLexusBHyundaiBKiaBAudiBBMWBGenesisBGMCBMazdaBLincolnBChryslerB
VolkswagenBVolvoB
MitsubishiBLandBINFINITIBScionBCadillacBsmartBBuickBRamBSubaruBAcuraBPorscheBPontiacBFIATBMercuryBMaybachBBentleyBMINIBSaabBSaturnBJaguarBAstonBHUMMERBIsuzu
?
Const_12Const*
_output_shapes
:+*
dtype0	*?
value?B?	+"?                                                                	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       
?
Const_13Const*
_output_shapes
:*
dtype0*?
value?B?BInline-4 GasBV-8 GasBV-6 GasBInline-4 Gas TurbochargedBV-6 Gas TurbochargedBV-4 Gas TurbochargedBInline-8 Gas TurbochargedBInline-6 GasB*Inline-4 Gas Supercharged and TurbochargedBInline-6 Gas TurbochargedBInline-3 Gas TurbochargedBV-8 Gas Twin-TurboBInline-4 HybridBV-8 Gas TurbochargedBInline-5 GasB
Flat-4 GasBV-6 Diesel TurbochargedB
Flat-6 GasBInline-3 GasB
V-8 HybridBFlat-4 Gas TurbochargedBV-12 Gas TurbochargedBW-12 Gas TurbochargedBInline-4 Diesel TurbochargedBV-10 GasBV-4 GasBInline-5 Gas TurbochargedBInline-6 Diesel TurbochargedBV-12 GasBV-8 Gas Supercharged
?
Const_14Const*
_output_shapes
:*
dtype0	*?
value?B?	"?                                                                	       
                                                                                                                                            
?P
Const_15Const*
_output_shapes	
:?*
dtype0*?P
value?PB?P?BSuper WhiteBBlackBTanBDiamond Black Crystal PearlcoatBSuper BlackBOoh La La Rouge MicaBLunar Silver MetallicBSuperBShadow BlackBIconic Silver MetallicBMosaic Black MetallicBPolar WhiteBPitch Black ClearcoatBOxford WhiteBNebula Gray PearlBOctane Red PearlcoatBSummit WhiteB White Platinum Metallic Tri-CoatBObsidianBCapri Blue MetallicBBrilliant Silver MetallicBIridescent Pearl TricoatBMolten Lava PearlBAgate BlackB Billet Silver Metallic ClearcoatBIndigo NightBWhiteBMagnetic MetallicBSnow White PearlBFresh PowderBBright White ClearcoatBCaviarBTungsten MetallicBWalnut Brown Metallic ClearcoatBCrystal Black PearlBDesigno Diamond White MetallicBBlueBGrayBIngot Silver MetallicBMonsoon Gray MetallicBJazz Blue PearlcoatBChampagne Frost PearlBMagnetic Gray MetallicBBlack VelvetBLightning Blue MetallicBBlack Sapphire MetallicBCaspian BlackBMagneticBPlatinum White PearlBSilverBDiamond Silver MetallicBMidnight Black MetallicB	BlueprintB
Black MicaBRace RedBSelenite Grey MetallicBBlack AmethystBPacific Blue MetallicBClassic Silver MetallicBCrystal White Pearl MetallicBBlack ClearcoatBPlatinum Gray MetallicBWhite Frost TricoatB"Granite Crystal Metallic ClearcoatBMagnetic BlackBGun MetallicBImperial Blue MetallicBAgate Black MetallicBShadow Gray MetallicBMineral Gray MetallicBNightfall Gray MetallicBMajestic WhiteBEminent White PearlBWhite.BMineral White MetallicBBrilliant BlackBRedBTuxedo Black MetallicB"Ruby Red Metallic Tinted ClearcoatBGuard MetallicBIngot SilverBPredawn Gray MicaBSilver Ice MetallicB
Black OnyxBDeep Ocean Blue MetallicBBlue Jeans MetallicBWhite DiamondBTitanium Silver MetallicB)Burgundy Velvet Metallic Tinted ClearcoatBBlack Sand PearlBBarcelona Red MetallicB
Storm BlueBChief ClearcoatBVelvet Red PearlcoatB*Bright Silver Metallic With Black Hard TopBCode Red MetallicBSedona SunsetBBlizzard PearlBWhite Diamond PearlBQuartz White PearlBAlabaster Silver MetallicB	Black UniBBurgundyBNorthsky Blue MetallicBGlacier WhiteBBrilliant SilverBMagma Red MetallicBPhantom BlackBBlack ObsidianBAegean Blue MetallicBGranite PearlcoatBOlympus SilverBWhite Orchid PearlB
Onyx BlackBSilver Sky MetallicB
Rallye RedBPlatinum GraphiteBObsidian Black MetallicBBillet Silver MetallicBSilver Gray MetallicBRed HotBSonic Gray PearlB	Jet BlackBSilver/GrayBVictory RedBGlacier Silver MetallicBBright Silver MetallicBRedline PearlcoatBStellar SilverBShale Gray MetallicBSmoked Pearl MetallicBCayenne RedBBlue MetallicBGalactic Aqua MicaBMagnetic Black PearlBCinnamon Glaze MetallicBBlack DiamondBModern Steel MetallicBBasque Red Pearl IiBWhite Silver MetallicBRadiant Silver MetallicBAtomic SilverB White Platinum Tri-Coat MetallicBDiamond WhiteBTuxedo BlackBUnknownBBlack Granite MetallicBWhite Knuckle ClearcoatBIvory 3-CoatBCrimson Red TintcoatBPearl WhiteBScarlet EmberBDeep Blue PearlBRuby RedBEbony BlackBFalcon Gray MetallicB
Pure WhiteBPatagonia Red MetallicBLunar Blue MetallicBSupersonic RedBMagnetite Gray MetallicBMagno Polar SilverBDazzling WhiteBGraphite MetallicBMachine Gray MetallicBSiren Red TintcoatBIce Silver MetallicB!Brilliant Black Crystal PearlcoatBFirecracker Red ClearcoatBScarlet Ember TintcoatBWind Chill PearlBMercury Gray MetallicBCelestial Silver MetallicBSan Marino RedBAshen Gray MetallicBSatin Steel MetallicBGravity GrayBHorizon BlueB
White OpalBTaffeta WhiteBWhite Satin PearlBCosmic Blue MetallicBStar White Metallic Tri-CoatBDark Graphite MetallicBSatin Cashmere MetallicBOyster Gray MetallicBRoyal Blue PearlB
Vice WhiteBEbony Twilight MetallicB
White GoldB
Stormy SeaBAlpine WhiteBSilver Lining MetallicBClear WhiteBObsidian Blue PearlBCajun Red TintcoatBSilky SilverBSparkling SilverBBillet ClearcoatBVelocity Blue MetallicBWhite ClearcoatBRuby Red Tinted ClearcoatBCaspian BlueBMagnetic Black MetallicBOcean Blue Metallic ClearcoatBJet Black MetallicBSilver Moss MetallicB#Oxford White With Magnetic MetallicBMojave Silver MetallicBDark Sky MetallicBSolid WhiteBStone Blue MetallicB!Deep Cherry Red Crystal PearlcoatBMineral SilverBFortana Red MetallicBOlympus Silver MetallicBAttitude Black MetallicBRedline Red Tricoat PearlBJet Black MicaB
Stone GrayB@Mineral Gray Metallic Clearcoat/Bright Silver Metallic ClearcoatBColorado RedBBlack Onyx Crystal PearlcoatBDesigno Cardinal Red MetallicBWhite Gold CrystalBElectric BlueBSting-Gray ClearcoatBUrban Titanium MetallicBBright SilverBRhino ClearcoatBSparkling RubyBPassion RedBSterling Gray MetallicBWhite Gold MetallicBDesigner WhiteBCool Liquid Silver MetallicBTwilight BlackBAmethyst GrayBBrilliant Blue MetallicBDeep Sea BlueBGraphite Gray MetallicB
Satin GrayB	Lead FootB
Deep BlackBSpace Gray MetallicBLightning BlueBBrownBGold Leaf MetallicBStone Gray MetallicBQuicksilver MetallicB	CelestiteBBlack CherryBWhite SuedeBAspen WhiteBCrystal White MetallicBJerez Black MetallicBSummit GrayBSilk Blue MetallicBSonic Silver MetallicBAtlantic BlueBDeep Black PearlBColiseum GreyBDesigno Diamond WhiteBMythos Black MetallicBBillet Argento (Silver)BSlate MetallicBStarlight SilverBStorm Blue MetallicBBlue Flame MetallicBGeranium RedBCayenne Red MetallicBAbsolutely RedBMaximum Steel MetallicBArctic Blue MetallicBDark Slate MetallicBCitrin Black MetallicBIndigo Ink PearlBScarlet RedBDeep Black Pearl MetallicBSteel Gray MetallicBSnowflake White Pearl MicaBIridium Silver MetallicBRadiant Red MetallicB	Dark BlueBCementBPolished Metal MetallicBGraphite ShadowBNighthawk Black PearlBCrystal White PearlBTrue Blue PearlcoatBSterling GrayBGravity GreyBElectric Storm BlueBMonaco WhiteBTitanium GrayBHydro Blue PearlcoatBAbyss Gray MetallicBDark Gray MetallicBLakeside BlueBStarfire PearlBIridium MetallicBOrange Burst MetallicBAntigua White MetallicBSilver Spruce MetallicBCrystal Black SilicaBPearl White TricoatBMaroonBBlizzard Pearl W/Black RoofBWhite PlatinumBBright WhiteBPolar Silver MetallicB(Wind Chill Pearl/Midnight Black MetallicBBlack Diamond PearlBVenetian RedB
Ibis WhiteBDesigno Diamond White BrightBRuby Flare PearlBArctic WhiteBMercury MetallicBSymphony SilverBSlate Grey MetallicBBrilliant Black Crystal PearlBGoldBOcean Blue MetallicBDeep Impact Blue MetallicBFrost White PearlBDestroyer Gray ClearcoatBMillennium Silver MetallicBBlack Currant MetallicBDeep Black Pearl EffectBTornado Gray MetallicBRed Quartz TintcoatB17/BlackBMidnight BlackBPhantom Black MetallicBCurrant RedBCentury WhiteBMountain Gray MetallicBOnyx Black MetallicBDb Black ClearcoatBAttitude BlackBMachine GrayBMineral BeigeBYellowBRedline 2 Coat PearlBAnvil ClearcoatBBlue Velvet MetallicBDeep Impact BlueB Maximum Steel Metallic ClearcoatBCharcoalBNautical Blue MetallicBGalactic Aqua MetallicBPlatinum Silver MetallicBGreenBCaspian Blue MetallicBChili Pepper Red Pearl CoatBCherry BlackBVivid Blue PearlcoatBAlabaster WhiteBSilver Shadow PearlB
Blue FlameBMars RedBBlue Steel MetallicBBeigeBCalypso RedBIcebergBQuartz WhiteBCeramic Grey ClearcoatBBlack RavenBColiseum GrayBPearl White PearlcoatBLithium GrayB#Alto Blue Metallic Tinted ClearcoatBAurora BlackBSmokey BlueBSoul Red Crystal MetallicBArctic Silver MetallicBArctic Gray MetallicBBlue Streak MetallicBSpace White MetallicBBlue Ray MetallicBLight Silver MetallicBFord Performance Blue MetallicBDark Cordovan PearlcoatBNight BlackBAtlantis Blue MetallicBNatural WhiteB#Rapid Red Metallic Tinted ClearcoatBStellar Black MetallicBAtlas Blue MetallicBCyber Gray MetallicBStone WhiteBCandy WhiteBDark Blue MetallicBPyrite Silver MetallicBInferno RedBTornado RedBPearl White Tri-CoatBMolten SilverBSingapore Gray MetallicBLava RedBInfinite Black MetallicBPacific Blue PearlBBlue Silk MetallicBSlate Blue PearlcoatB#Super White W/Black Sand Pearl RoofBLiquid PlatinumBCarbon Black MetallicBRed Passion TintcoatBWinterberry Red MetallicBGreen Gem MetallicBVibrant WhiteBShimmering SilverBDark Granite MetallicBGunmetal MetallicBMeteor Gray MicaBBlack Cherry MetallicBKinetic Blue MetallicBSantorini Black MetallicBSilver MetallicBDk. GrayBStormBInferno Red Crystal PearlBRuby Black MetallicBCosmos Black MetallicB
Garnet RedBCirrus WhiteBGuardBWindy Sea BlueBShimmering Air SilverBCelestite Gray MetallicBLaser Blue PearlcoatBCayenne Red/Super BlackB'Smoked Quartz Metallic Tinted ClearcoatBIndigo BlueBNouveau BlueBCaspian Lanzarot BlackBOlive Green PearlcoatBTuscan Sun MetallicBCosmic Gray MicaBVermillion RedBDesigno SilverBGalactic GrayBGarnet Red TintcoatBManhattan Gray MetallicB
White OnyxBMontego Blue MetallicBDark Side MetallicBTaupe Gray MetallicBNight Blue PearlBDiamond White PearlBSonic Blue MetallicBHarbor Gray MetallicBSable Brown MetallicBAspen White PearlBCalla Lily WhiteBEstoril Blue MetallicBCool Gray KhakiBDark Moss Green MetallicBCrimson Red PearlBHyper Blue MetallicBAlloy Silver MetallicBCavalry BlueBHellayella ClearcoatBCactus GrayBSatin MetalBBruiser Gray ClearcoatBSilver Streak MetalBYulong WhiteB	Magma RedBGloss BlackB(Hot Pepper Red Metallic Tinted ClearcoatBShimmering WhiteBHot Pepper RedBStill Night PearlBSangria Metallic ClearcoatBOxford White ClearcoatBJava MetallicBMediterranean Blue MetallicBStargazer BlackBGobi ClearcoatBButte Red MetallicBCardinal RedBBlue Shale MicaBTectonicBPalatial RubyBTrue Blue PearlB
Java BlackBGreyBBlack Noir PearlBRavenBBluestone MetallicBBlue Topaz MetallicBTorred ClearcoatBSandy Beach MetallicBSpitfire Orange ClearcoatBShadow Black/MagneticBAlien IiBSpectrum White PearlBGraphite Grey MetallicBBlue Crush MetallicBEverlasting SilverBMatador Red MicaBLabrador Black MetallicBSandy Ridge MetallicBBright BlueBPlatinum Ice TricoatBSunset MetallicBTriathlon Gray MetallicB	Ice WhiteBSilver Birch MetallicBHydro Blue Pearl CoatBWhite Diamond TricoatBBreakwater Blue MetallicBGlacier PearlBSangriaBModern Blue PearlBBlue Candy Tinted ClearcoatBCrimson PearlBFathom BlueBZermatt SilverBCrystal White TricoatB	AvalancheBCanyon Ridge MetallicBAlbaster WhiteBRadiant Silver
?!
Const_16Const*
_output_shapes	
:?*
dtype0	*?!
value? B? 	?"?                                                                 	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      1      2      3      4      5      6      7      8      9      :      ;      <      =      >      ?      @      A      B      C      D      E      F      G      H      I      J      K      L      M      N      O      P      Q      R      S      T      U      V      W      X      Y      Z      [      \      ]      ^      _      `      a      b      c      d      e      f      g      h      i      j      k      l      m      n      o      p      q      r      s      t      u      v      w      x      y      z      {      |      }      ~            ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?      ?                                                             	      
                        
d
Const_17Const*
_output_shapes
:*
dtype0*(
valueBBGasBHybridBDiesel
i
Const_18Const*
_output_shapes
:*
dtype0	*-
value$B"	"                      
?
Const_19Const*
_output_shapes	
:?*
dtype0*?
value?B??BCorollaB	SilveradoBFusionBCherokeeBAltimaBCompassB
HighlanderBCR-VBArmadaBF-150BMustangBRAV4BMalibuBEscapeBMercedes-Benz C-ClassBJourneyBISBGrand CaravanBExplorerBGSBMercedes-Benz M-ClassB
PathfinderBEquinoxBElantraBOptimaBVersaBRXBWranglerBGrand CherokeeBAccordBEdgeBMercedes-Benz GLCBQ5B3 SeriesBG80BFocusBCivicBEnvoyBMazda3B	BlackwoodB200BCamryBRogue SelectBAtlasBSentraBXC90BEclipseBJettaBYukonBMark LTBPacificaBRover Range Rover EvoqueBRogueB5 SeriesBChargerBRover Range Rover SportBQX50BX5BA3BFrontierBQX60BCruzeB
ExpeditionBTacomaB4RunnerBESBxBBSoulBMercedes-Benz GLSBSCBEscalade EXTBfortwoBOdysseyBTucsonBPatriotBMercedes-Benz GLEBMercedes-Benz SLBC-HRBFiestaBSonataBSierraB300BSilverado 2500HDBTundraBTahoeBFitB	GladiatorBAccentBTraxBSorentoBGBX3BLeSabreBImpalaBPark AvenueBZ4BImpala Limited PoliceBAvengerBMercedes-Benz GLAB
Corolla iMBTerrainBRegal TourXBEcoSportB7 SeriesBPilotBXT5BPassatBCruze LimitedBClassicBMercedes-Benz CLSBDurangoBAcadiaBMercedes-Benz GLBBMercedes-Benz E-ClassBImprezaBMercedes-Benz CLABTSXBCX-5B	CrosstrekBBlazerBRangerB	OutlanderBDartBLaCrosseBSiennaBGenesisBA8BCamaroBEncoreB
ChallengerBSanta FeBForteBMuranoBTiguanBRenegadeBMacanBTraverseBQX80BSportageBTitanBSuburbanBRamBTaurusBEnclaveBBoxsterBSSRBTown & CountryBCity Express Cargo VanBSolsticeBHHRBAvalonBSilverado LDB	AvalancheBRDXBPolice InterceptorBXC60BPriusBM3B500BMirageBColoradoBSanta Fe SportBTLBYaris iABX2BMontereyBMKZB911B
FJ CruiserB4 SeriesBRegalBCorvetteBLegacyBForesterB57SBMDXBThunderbirdBX1BA4BLSBQ50BMercedes-Benz S-ClassBA6BMKXBVelosterBMaximaBFlying SpurBSeltosBCadenzaB	CrossfireBSRXBKicksBX5 MBHardtopB9-5BS6BSedonaBBeetle CoupeBLand CruiserBFlexBLibertyBImpala PoliceBBronco SportBMalibu LimitedBAscentBRogue SportBRioBM5BGolfBMKCBGXBTrailblazerBCenturyBEconoline Cargo VanBFreestar Cargo VanBQX4BCaravanBMazda6BHR-VBXG350BEscaladeBOutlander SportB	CrosstourBS60B6 SeriesB57BInsightBTTBV70BQ60B	TellurideBVUEBSLXBCCBGolf GTIBX6 MBCooperBMKSBS-TYPEBYarisBXLRBMartin RapideBZephyrBZDXBRoutanBMercedes-Benz Metris Cargo VanBGrand MarquisBH3BCamry SolaraBxABMatrixBC70B
BonnevilleBPrius vBNXBMercedes-Benz A-ClassBRover Range RoverBEosBFR-SBImpala LimitedBPolice Interceptor UtilityBILXB	EntourageBS5BDTSBBeetleBTrooperBStratus
?
Const_20Const*
_output_shapes	
:?*
dtype0	*?
value?B?	?"?                                                                	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
            
b
Const_21Const*
_output_shapes
:*
dtype0*&
valueBB	AutomaticBManual
a
Const_22Const*
_output_shapes
:*
dtype0	*%
valueB	"               
c
Const_23Const*
_output_shapes
:*
dtype0*'
valueBBFWDB4WDBAWDBRWD
q
Const_24Const*
_output_shapes
:*
dtype0	*5
value,B*	"                              
?'
Const_25Const*
_output_shapes	
:?*
dtype0*?'
value?'B?'?BUnknownB	Jet BlackBBlackB
Light GrayBCharcoalBMedium Earth GrayBCharcoal BlackB
Cocoa/DuneBMedium Stone/Med Lt StoneBCabernetBBeigeBGrayBEbony BlackB	ParchmentBEbonyBIvoryBMedium Light StoneBDark Earth GrayB	MacadamiaBTanBMidnight BlackBAshB
Steel GrayBTitan BlackBMedium Light CamelBDuneB	Dove GrayBBlack/AlloyBEbony/Pimento/EbonyBCanberra Beige/BlackBCoral Red/BlackBGreyBMedium Ash GrayBGraphiteBSteelBHigh Contrast WheatBNutmegBMedium StoneBBlack GraphiteB	MoonstoneBUnspecifiedBSaddle Brown/BlackB(Dark Ash With Jet Black Interior AccentsBMedium Earth Gray ClothB	ChampagneBRuby Red/BlackBBlack Cloth InteriorBDark Slate GrayBGinger Beige/EspressoBGraphite W/Gun MetalBDark CharcoalBMochaBBlack InteriorBNoble BrownBChr/CharcoalBMedium GrayBMedium Soft CeramicBBlack LeatherBLt Frost Beige/BlackB	Navy PierBDark Atmosphere/Medium Ash GrayBBlack/BlackB2-Tone Black/CeramiqueBCirrusBBlack Sport ClothBTan LeatherBMesaBDiesel Gray/BlackBRedBCocoa/ Light Ash GrayBMacchiato BeigeB
Magma GreyBParchment W/Birds EyeBXltBLt. GrayBLight Tungsten/BlackBSelectBTitaniumBJet Black/Dark TitaniumBCashmereBGideon/Very Dark AtmosphereBBlack ClothBDk. GrayBAlabaster WhiteBDark Saddle/BlackBMedium Earth Gray, ClothBBlack Mb-TexBSilk Beige/BlackBCement GrayBCharcoal SportBBrownBBlack/Iceland GrayBCornsilk BeigeBDark MarsalaBBlack/GraphiteBCementBNut Brown / BlackB	Rioja RedBDark Ash/Jet BlackBDark GalvanizedBSaddle Brown LeatherBJet Black/Dark AshBShaleBStone BeigeBTitan Blk/Palladium GrayBBlack/Light GraystoneBMedium PewterB	Bei/BeigeBBlack/Lt Frost BeigeBSilk Beige/Espresso BrownBWhiteBBlack/CaramelBStone Leather InsertBBlack W/Medium Dark SlateBBlack/Light Diesel GrayBFlaxenBStratus GrayBCamelBMaroon BrownB
AnthraciteBBlack/IvoryBFox RedBSepia/BlackBLight Titanium/Jet BlackBSatin BlackB
Pale AdobeBDesigno Black/TitaniumBBlack / GrayBCanberra BeigeBNero (Black)BSeBDark CashmereBBrunelloBMedium TitaniumBSilverBDark Graystone/Medium GraystoneB	Magma RedBSaddleBOrange ZestBOysterB	Black/RedBLt Pebble Beige/Dk SlateBCockpit RedBJet Black/Dark GalvanizedBMedium Stone/StoneB
Dark BeigeBMayan Gray/UmberBBlk SenatecBMed Gray Cloth 40/Console/40BBlack W/ContrastB.Dark Ash Seats With Jet Black Interior AccentsBLight TitaniumBEbony/ PinkBAspen WhiteBLight PuttyBSport InteriorBBlack/Gray LeatheretteBNo ColorBBeige/BlackBCrystal Grey/BlackBDark CeramicBAlmondBBlack/Black/BlackBCeramicBPro-4xBBlack Seat TrimBVenetian BeigeBMacchiato/MagmagreyBAmg Cranberry RedB Dark Atmosphere/ Medium Ash GrayBEx-LBDark Galvanized/Light ShaleB.Jet Black/Medium Ash Gray Piping And StitchingBStandard InteriorB
Stone GrayBMojaveB
Misty GrayB	Blk/BlackB
Earth GrayBBlack / Medium Earth GrayBTaupeBLight Graphite Leather InteriorB
Sand BeigeBEbony With Ebony AccentsBEbony Black W/Fire OrangeB
Blk FabricBJet Black/TitaniumBDk Frost Beige/Med BeigeBLight Frost/BrownBCognacBSilverstone IiBGraphite GreyBCarbon BlackBDark/Medium Slate GrayBSilver LeatherBShetland BeigeBBlack W/Linear WoodBCoffeeBOtherB	SandstoneBDk Khaki/Lt GraystoneB
Gray ClothBBeige/GreenB	Red/BlackB
Silk BeigeBNeutral ClothBBlack/OrangeBSlate BlackB	Tan ClothBRedwoodBBlack/Gun MetalB	CamelbackB
CappuccinoBAlmond/Mocha LeatherBWheatBLight Titanium/Dark TitaniumBJet Black/UmberBCrystal GreyBBlack LeatheretteBGray 2-ToneBLight NeutralBSahara BeigeBFlintBMedium Slate GrayBParchment W/Matte BambooBBlack/CarbonBLight Platinum/TaupeBBlack/Dark OysterBJade/GraystoneB!Dark Atmosphere/Medium AtmosphereBVenetian Beige/BlackBDrk/Lt Slate GrayBBlack/Heritage TanBBlack/BeigeBWheat/BlackBSilk Beige Mb-TexBStoneBSki Gray/BlackBHazelnutBBlack W/Red StitchingBCamel BeigeBChateau RedBCalifornia BeigeBBlack/Mojave BeigeBMoonrock Gray W/QuartzBNougat BrownBBlueBCocoa/Dark SandBBlack, ClothB	Ash/BlackBCall For ColorBOyster/BlackBSaddle BrownBCharcoal LeatherB
Storm GrayBPlatinumBHickoryBChromite Gray/Chrcl BlackBJet Black/Medium TitaniumB	Beige/TanBCeylon BeigeBSahara Beige/BlackBGaryBCharcoal Black W/RedBMedium Light Camel, ClothBBrazen Gold/BlackBCreamB
Warm IvoryBGinger Beige/BlackBCognac/Dark BrownB(Black W/Heated Leather 40/Console/40 FroB%Chateau W/Linear Dark Mocha Wood TrimBBlack Leather InteriorBJet Black With Kalahari AccentsBSaddle Brown/Excl. StitchBMedium FlintBDark PewterBToffee/Cognac/AlloyB
Saddle TanBMed Lt Stone/Chrcl BlackBMesa W/EbonyBCocoa/Light NeutralBTitan Black W/Clark PlaidBLt.GrayBGray, LeatherBBlack W/Red Hi/StitchBDk Gray/Lt GrayBDark TitaniumBSport LeatherBBlack W/Linear Espresso TrimBBlack W/Red Accent StitchingBBlkBMacchiato Beige/EspressoBSaddle Up/Jet BlackB Shale W/Brownstone Upper AccentsBPro-4x GraphiteB
Soft BeigeBDark Saddle BlackB	Off WhiteBPebble Beige/CreamBEspresso Brown/Silk BeigeBShale With Jet Black AccentsBCranberry Red/BlackBIvory WhiteBCarbon
?
Const_26Const*
_output_shapes	
:?*
dtype0	*?
value?B?	?"?                                                                	       
                                                                                                                                                                  !       "       #       $       %       &       '       (       )       *       +       ,       -       .       /       0       1       2       3       4       5       6       7       8       9       :       ;       <       =       >       ?       @       A       B       C       D       E       F       G       H       I       J       K       L       M       N       O       P       Q       R       S       T       U       V       W       X       Y       Z       [       \       ]       ^       _       `       a       b       c       d       e       f       g       h       i       j       k       l       m       n       o       p       q       r       s       t       u       v       w       x       y       z       {       |       }       ~              ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?       ?                                                              	      
                                                                                                                                           !      "      #      $      %      &      '      (      )      *      +      ,      -      .      /      0      
?
Const_27Const*
_output_shapes
:	*
dtype0*g
value^B\	BSedanBPickup TruckBSUVBCoupeBMinivanBConvertibleBWagonB	HatchbackB	Cargo Van
?
Const_28Const*
_output_shapes
:	*
dtype0	*]
valueTBR		"H                                                                
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_11Const_12*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *$
fR
__inference_<lambda>_824254
?
StatefulPartitionedCall_1StatefulPartitionedCallhash_table_1Const_13Const_14*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *$
fR
__inference_<lambda>_824262
?
StatefulPartitionedCall_2StatefulPartitionedCallhash_table_2Const_15Const_16*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *$
fR
__inference_<lambda>_824270
?
StatefulPartitionedCall_3StatefulPartitionedCallhash_table_3Const_17Const_18*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *$
fR
__inference_<lambda>_824278
?
StatefulPartitionedCall_4StatefulPartitionedCallhash_table_4Const_19Const_20*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *$
fR
__inference_<lambda>_824286
?
StatefulPartitionedCall_5StatefulPartitionedCallhash_table_5Const_21Const_22*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *$
fR
__inference_<lambda>_824294
?
StatefulPartitionedCall_6StatefulPartitionedCallhash_table_6Const_23Const_24*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *$
fR
__inference_<lambda>_824302
?
StatefulPartitionedCall_7StatefulPartitionedCallhash_table_7Const_25Const_26*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *$
fR
__inference_<lambda>_824310
?
StatefulPartitionedCall_8StatefulPartitionedCallhash_table_8Const_27Const_28*
Tin
2	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *$
fR
__inference_<lambda>_824318
?
NoOpNoOp^StatefulPartitionedCall^StatefulPartitionedCall_1^StatefulPartitionedCall_2^StatefulPartitionedCall_3^StatefulPartitionedCall_4^StatefulPartitionedCall_5^StatefulPartitionedCall_6^StatefulPartitionedCall_7^StatefulPartitionedCall_8
?N
Const_29Const"/device:CPU:0*
_output_shapes
: *
dtype0*?N
value?MB?M B?M
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
	optimizer
_build_input_shape
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
?
_feature_columns

_resources
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
?

_keep_axis
_reduce_axis
_reduce_axis_mask
_broadcast_shape
mean

adapt_mean
variance
adapt_variance
	count
 	keras_api*
?

!kernel
"bias
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses*
?

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses*
?

1kernel
2bias
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses*
?

9kernel
:bias
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses*
?
Aiter

Bbeta_1

Cbeta_2
	Ddecay
Elearning_rate!m?"m?)m?*m?1m?2m?9m?:m?!v?"v?)v?*v?1v?2v?9v?:v?*
* 
R
0
1
2
!3
"4
)5
*6
17
28
99
:10*
<
!0
"1
)2
*3
14
25
96
:7*
* 
?
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

Kserving_default* 
* 
?
	LBrand

MEngine
NExterior_color
O	Fuel_Type
PName
QTransmission
R
drive_type
Sinterior_color
	Tstyle* 
* 
* 
* 
?
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
* 
tn
VARIABLE_VALUE&CAR_PRICE_PREDICTOR/normalization/mean4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE*CAR_PRICE_PREDICTOR/normalization/variance8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE'CAR_PRICE_PREDICTOR/normalization/count5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
oi
VARIABLE_VALUECAR_PRICE_PREDICTOR/FC_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUECAR_PRICE_PREDICTOR/FC_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

!0
"1*

!0
"1*
* 
?
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses*
* 
* 
oi
VARIABLE_VALUECAR_PRICE_PREDICTOR/FC_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUECAR_PRICE_PREDICTOR/FC_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

)0
*1*

)0
*1*
* 
?
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses*
* 
* 
oi
VARIABLE_VALUECAR_PRICE_PREDICTOR/FC_3/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUECAR_PRICE_PREDICTOR/FC_3/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

10
21*

10
21*
* 
?
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*
* 
* 
qk
VARIABLE_VALUE!CAR_PRICE_PREDICTOR/Output/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
mg
VARIABLE_VALUECAR_PRICE_PREDICTOR/Output/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

90
:1*

90
:1*
* 
?
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*

0
1
2*
.
0
1
2
3
4
5*

n0
o1*
* 
* 
* 

pBrand_lookup* 

qEngine_lookup* 

rExterior_color_lookup* 

sFuel_Type_lookup* 

tName_lookup* 

uTransmission_lookup* 

vdrive_type_lookup* 

winterior_color_lookup* 

xstyle_lookup* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
8
	ytotal
	zcount
{	variables
|	keras_api*
J
	}total
	~count

_fn_kwargs
?	variables
?	keras_api*
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 
V
?_initializer
?_create_resource
?_initialize
?_destroy_resource* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

y0
z1*

{	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

}0
~1*

?	variables*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
??
VARIABLE_VALUE&Adam/CAR_PRICE_PREDICTOR/FC_1/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE$Adam/CAR_PRICE_PREDICTOR/FC_1/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE&Adam/CAR_PRICE_PREDICTOR/FC_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE$Adam/CAR_PRICE_PREDICTOR/FC_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE&Adam/CAR_PRICE_PREDICTOR/FC_3/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE$Adam/CAR_PRICE_PREDICTOR/FC_3/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE(Adam/CAR_PRICE_PREDICTOR/Output/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE&Adam/CAR_PRICE_PREDICTOR/Output/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE&Adam/CAR_PRICE_PREDICTOR/FC_1/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE$Adam/CAR_PRICE_PREDICTOR/FC_1/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE&Adam/CAR_PRICE_PREDICTOR/FC_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE$Adam/CAR_PRICE_PREDICTOR/FC_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE&Adam/CAR_PRICE_PREDICTOR/FC_3/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE$Adam/CAR_PRICE_PREDICTOR/FC_3/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE(Adam/CAR_PRICE_PREDICTOR/Output/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE&Adam/CAR_PRICE_PREDICTOR/Output/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
p
serving_default_BrandPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
q
serving_default_EnginePlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
s
serving_default_Engine_VPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
y
serving_default_Exterior_colorPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
t
serving_default_Fuel_TypePlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
r
serving_default_MileagePlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
o
serving_default_NamePlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
w
serving_default_TransmissionPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
o
serving_default_YearPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
u
serving_default_drive_typePlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
y
serving_default_interior_colorPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
s
serving_default_mpg_cityPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
v
serving_default_mpg_highwayPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
p
serving_default_stylePlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
?	
StatefulPartitionedCall_9StatefulPartitionedCallserving_default_Brandserving_default_Engineserving_default_Engine_Vserving_default_Exterior_colorserving_default_Fuel_Typeserving_default_Mileageserving_default_Nameserving_default_Transmissionserving_default_Yearserving_default_drive_typeserving_default_interior_colorserving_default_mpg_cityserving_default_mpg_highwayserving_default_style
hash_tableConsthash_table_1Const_1hash_table_2Const_2hash_table_3Const_3hash_table_4Const_4hash_table_5Const_5hash_table_6Const_6hash_table_7Const_7hash_table_8Const_8Const_9Const_10CAR_PRICE_PREDICTOR/FC_1/kernelCAR_PRICE_PREDICTOR/FC_1/biasCAR_PRICE_PREDICTOR/FC_2/kernelCAR_PRICE_PREDICTOR/FC_2/biasCAR_PRICE_PREDICTOR/FC_3/kernelCAR_PRICE_PREDICTOR/FC_3/bias!CAR_PRICE_PREDICTOR/Output/kernelCAR_PRICE_PREDICTOR/Output/bias*5
Tin.
,2*									*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

"#$%&'()*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_823283
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_10StatefulPartitionedCallsaver_filename:CAR_PRICE_PREDICTOR/normalization/mean/Read/ReadVariableOp>CAR_PRICE_PREDICTOR/normalization/variance/Read/ReadVariableOp;CAR_PRICE_PREDICTOR/normalization/count/Read/ReadVariableOp3CAR_PRICE_PREDICTOR/FC_1/kernel/Read/ReadVariableOp1CAR_PRICE_PREDICTOR/FC_1/bias/Read/ReadVariableOp3CAR_PRICE_PREDICTOR/FC_2/kernel/Read/ReadVariableOp1CAR_PRICE_PREDICTOR/FC_2/bias/Read/ReadVariableOp3CAR_PRICE_PREDICTOR/FC_3/kernel/Read/ReadVariableOp1CAR_PRICE_PREDICTOR/FC_3/bias/Read/ReadVariableOp5CAR_PRICE_PREDICTOR/Output/kernel/Read/ReadVariableOp3CAR_PRICE_PREDICTOR/Output/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp:Adam/CAR_PRICE_PREDICTOR/FC_1/kernel/m/Read/ReadVariableOp8Adam/CAR_PRICE_PREDICTOR/FC_1/bias/m/Read/ReadVariableOp:Adam/CAR_PRICE_PREDICTOR/FC_2/kernel/m/Read/ReadVariableOp8Adam/CAR_PRICE_PREDICTOR/FC_2/bias/m/Read/ReadVariableOp:Adam/CAR_PRICE_PREDICTOR/FC_3/kernel/m/Read/ReadVariableOp8Adam/CAR_PRICE_PREDICTOR/FC_3/bias/m/Read/ReadVariableOp<Adam/CAR_PRICE_PREDICTOR/Output/kernel/m/Read/ReadVariableOp:Adam/CAR_PRICE_PREDICTOR/Output/bias/m/Read/ReadVariableOp:Adam/CAR_PRICE_PREDICTOR/FC_1/kernel/v/Read/ReadVariableOp8Adam/CAR_PRICE_PREDICTOR/FC_1/bias/v/Read/ReadVariableOp:Adam/CAR_PRICE_PREDICTOR/FC_2/kernel/v/Read/ReadVariableOp8Adam/CAR_PRICE_PREDICTOR/FC_2/bias/v/Read/ReadVariableOp:Adam/CAR_PRICE_PREDICTOR/FC_3/kernel/v/Read/ReadVariableOp8Adam/CAR_PRICE_PREDICTOR/FC_3/bias/v/Read/ReadVariableOp<Adam/CAR_PRICE_PREDICTOR/Output/kernel/v/Read/ReadVariableOp:Adam/CAR_PRICE_PREDICTOR/Output/bias/v/Read/ReadVariableOpConst_29*1
Tin*
(2&		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *(
f#R!
__inference__traced_save_824509
?
StatefulPartitionedCall_11StatefulPartitionedCallsaver_filename&CAR_PRICE_PREDICTOR/normalization/mean*CAR_PRICE_PREDICTOR/normalization/variance'CAR_PRICE_PREDICTOR/normalization/countCAR_PRICE_PREDICTOR/FC_1/kernelCAR_PRICE_PREDICTOR/FC_1/biasCAR_PRICE_PREDICTOR/FC_2/kernelCAR_PRICE_PREDICTOR/FC_2/biasCAR_PRICE_PREDICTOR/FC_3/kernelCAR_PRICE_PREDICTOR/FC_3/bias!CAR_PRICE_PREDICTOR/Output/kernelCAR_PRICE_PREDICTOR/Output/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1&Adam/CAR_PRICE_PREDICTOR/FC_1/kernel/m$Adam/CAR_PRICE_PREDICTOR/FC_1/bias/m&Adam/CAR_PRICE_PREDICTOR/FC_2/kernel/m$Adam/CAR_PRICE_PREDICTOR/FC_2/bias/m&Adam/CAR_PRICE_PREDICTOR/FC_3/kernel/m$Adam/CAR_PRICE_PREDICTOR/FC_3/bias/m(Adam/CAR_PRICE_PREDICTOR/Output/kernel/m&Adam/CAR_PRICE_PREDICTOR/Output/bias/m&Adam/CAR_PRICE_PREDICTOR/FC_1/kernel/v$Adam/CAR_PRICE_PREDICTOR/FC_1/bias/v&Adam/CAR_PRICE_PREDICTOR/FC_2/kernel/v$Adam/CAR_PRICE_PREDICTOR/FC_2/bias/v&Adam/CAR_PRICE_PREDICTOR/FC_3/kernel/v$Adam/CAR_PRICE_PREDICTOR/FC_3/bias/v(Adam/CAR_PRICE_PREDICTOR/Output/kernel/v&Adam/CAR_PRICE_PREDICTOR/Output/bias/v*0
Tin)
'2%*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *+
f&R$
"__inference__traced_restore_824627?? 
?
?
__inference__initializer_8241152
.table_init225_lookuptableimportv2_table_handle*
&table_init225_lookuptableimportv2_keys,
(table_init225_lookuptableimportv2_values	
identity??!table_init225/LookupTableImportV2?
!table_init225/LookupTableImportV2LookupTableImportV2.table_init225_lookuptableimportv2_table_handle&table_init225_lookuptableimportv2_keys(table_init225_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init225/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init225/LookupTableImportV2!table_init225/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
__inference__initializer_8242052
.table_init427_lookuptableimportv2_table_handle*
&table_init427_lookuptableimportv2_keys,
(table_init427_lookuptableimportv2_values	
identity??!table_init427/LookupTableImportV2?
!table_init427/LookupTableImportV2LookupTableImportV2.table_init427_lookuptableimportv2_table_handle&table_init427_lookuptableimportv2_keys(table_init427_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init427/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init427/LookupTableImportV2!table_init427/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
-
__inference__destroyer_824192
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?5
?	
O__inference_CAR_PRICE_PREDICTOR_layer_call_and_return_conditional_losses_822290	
brand

engine
engine_v
exterior_color
	fuel_type
mileage
name
transmission
year

drive_type
interior_color
mpg_city
mpg_highway	
style
dense_features_822225
dense_features_822227	
dense_features_822229
dense_features_822231	
dense_features_822233
dense_features_822235	
dense_features_822237
dense_features_822239	
dense_features_822241
dense_features_822243	
dense_features_822245
dense_features_822247	
dense_features_822249
dense_features_822251	
dense_features_822253
dense_features_822255	
dense_features_822257
dense_features_822259	
normalization_sub_y
normalization_sqrt_x
fc_1_822269:	?	@
fc_1_822271:@
fc_2_822274:@ 
fc_2_822276: 
fc_3_822279: 

fc_3_822281:

output_822284:

output_822286:
identity??FC_1/StatefulPartitionedCall?FC_2/StatefulPartitionedCall?FC_3/StatefulPartitionedCall?Output/StatefulPartitionedCall?&dense_features/StatefulPartitionedCall?
&dense_features/StatefulPartitionedCallStatefulPartitionedCallbrandengineengine_vexterior_color	fuel_typemileagenametransmissionyear
drive_typeinterior_colormpg_citympg_highwaystyledense_features_822225dense_features_822227dense_features_822229dense_features_822231dense_features_822233dense_features_822235dense_features_822237dense_features_822239dense_features_822241dense_features_822243dense_features_822245dense_features_822247dense_features_822249dense_features_822251dense_features_822253dense_features_822255dense_features_822257dense_features_822259*+
Tin$
"2 									*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_821278?
normalization/subSub/dense_features/StatefulPartitionedCall:output:0normalization_sub_y*
T0*(
_output_shapes
:??????????	Z
normalization/SqrtSqrtnormalization_sqrt_x*
T0*
_output_shapes
:	?	\
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*
_output_shapes
:	?	?
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*(
_output_shapes
:??????????	?
FC_1/StatefulPartitionedCallStatefulPartitionedCallnormalization/truediv:z:0fc_1_822269fc_1_822271*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_FC_1_layer_call_and_return_conditional_losses_821334?
FC_2/StatefulPartitionedCallStatefulPartitionedCall%FC_1/StatefulPartitionedCall:output:0fc_2_822274fc_2_822276*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_FC_2_layer_call_and_return_conditional_losses_821351?
FC_3/StatefulPartitionedCallStatefulPartitionedCall%FC_2/StatefulPartitionedCall:output:0fc_3_822279fc_3_822281*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_FC_3_layer_call_and_return_conditional_losses_821368?
Output/StatefulPartitionedCallStatefulPartitionedCall%FC_3/StatefulPartitionedCall:output:0output_822284output_822286*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_Output_layer_call_and_return_conditional_losses_821384v
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^FC_1/StatefulPartitionedCall^FC_2/StatefulPartitionedCall^FC_3/StatefulPartitionedCall^Output/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : :	?	:	?	: : : : : : : : 2<
FC_1/StatefulPartitionedCallFC_1/StatefulPartitionedCall2<
FC_2/StatefulPartitionedCallFC_2/StatefulPartitionedCall2<
FC_3/StatefulPartitionedCallFC_3/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall:J F
#
_output_shapes
:?????????

_user_specified_nameBrand:KG
#
_output_shapes
:?????????
 
_user_specified_nameEngine:MI
#
_output_shapes
:?????????
"
_user_specified_name
Engine_V:SO
#
_output_shapes
:?????????
(
_user_specified_nameExterior_color:NJ
#
_output_shapes
:?????????
#
_user_specified_name	Fuel_Type:LH
#
_output_shapes
:?????????
!
_user_specified_name	Mileage:IE
#
_output_shapes
:?????????

_user_specified_nameName:QM
#
_output_shapes
:?????????
&
_user_specified_nameTransmission:IE
#
_output_shapes
:?????????

_user_specified_nameYear:O	K
#
_output_shapes
:?????????
$
_user_specified_name
drive_type:S
O
#
_output_shapes
:?????????
(
_user_specified_nameinterior_color:MI
#
_output_shapes
:?????????
"
_user_specified_name
mpg_city:PL
#
_output_shapes
:?????????
%
_user_specified_namempg_highway:JF
#
_output_shapes
:?????????

_user_specified_namestyle:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :% !

_output_shapes
:	?	:%!!

_output_shapes
:	?	
?
?
'__inference_Output_layer_call_fn_824074

inputs
unknown:

	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_Output_layer_call_and_return_conditional_losses_821384o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
?
/__inference_dense_features_layer_call_fn_823337
features_brand
features_engine
features_engine_v
features_exterior_color
features_fuel_type
features_mileage
features_name
features_transmission
features_year
features_drive_type
features_interior_color
features_mpg_city
features_mpg_highway
features_style
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9

unknown_10	

unknown_11

unknown_12	

unknown_13

unknown_14	

unknown_15

unknown_16	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfeatures_brandfeatures_enginefeatures_engine_vfeatures_exterior_colorfeatures_fuel_typefeatures_mileagefeatures_namefeatures_transmissionfeatures_yearfeatures_drive_typefeatures_interior_colorfeatures_mpg_cityfeatures_mpg_highwayfeatures_styleunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*+
Tin$
"2 									*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_821278p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
#
_output_shapes
:?????????
(
_user_specified_namefeatures/Brand:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/Engine:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Engine_V:\X
#
_output_shapes
:?????????
1
_user_specified_namefeatures/Exterior_color:WS
#
_output_shapes
:?????????
,
_user_specified_namefeatures/Fuel_Type:UQ
#
_output_shapes
:?????????
*
_user_specified_namefeatures/Mileage:RN
#
_output_shapes
:?????????
'
_user_specified_namefeatures/Name:ZV
#
_output_shapes
:?????????
/
_user_specified_namefeatures/Transmission:RN
#
_output_shapes
:?????????
'
_user_specified_namefeatures/Year:X	T
#
_output_shapes
:?????????
-
_user_specified_namefeatures/drive_type:\
X
#
_output_shapes
:?????????
1
_user_specified_namefeatures/interior_color:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/mpg_city:YU
#
_output_shapes
:?????????
.
_user_specified_namefeatures/mpg_highway:SO
#
_output_shapes
:?????????
(
_user_specified_namefeatures/style:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
?
__inference__initializer_8240972
.table_init179_lookuptableimportv2_table_handle*
&table_init179_lookuptableimportv2_keys,
(table_init179_lookuptableimportv2_values	
identity??!table_init179/LookupTableImportV2?
!table_init179/LookupTableImportV2LookupTableImportV2.table_init179_lookuptableimportv2_table_handle&table_init179_lookuptableimportv2_keys(table_init179_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init179/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :+:+2F
!table_init179/LookupTableImportV2!table_init179/LookupTableImportV2: 

_output_shapes
:+: 

_output_shapes
:+
?
-
__inference__destroyer_824156
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
ł
?
J__inference_dense_features_layer_call_and_return_conditional_losses_824005
features_brand
features_engine
features_engine_v
features_exterior_color
features_fuel_type
features_mileage
features_name
features_transmission
features_year
features_drive_type
features_interior_color
features_mpg_city
features_mpg_highway
features_styleD
@brand_indicator_hash_table_lookup_lookuptablefindv2_table_handleE
Abrand_indicator_hash_table_lookup_lookuptablefindv2_default_value	E
Aengine_indicator_hash_table_lookup_lookuptablefindv2_table_handleF
Bengine_indicator_hash_table_lookup_lookuptablefindv2_default_value	M
Iexterior_color_indicator_hash_table_lookup_lookuptablefindv2_table_handleN
Jexterior_color_indicator_hash_table_lookup_lookuptablefindv2_default_value	H
Dfuel_type_indicator_hash_table_lookup_lookuptablefindv2_table_handleI
Efuel_type_indicator_hash_table_lookup_lookuptablefindv2_default_value	C
?name_indicator_hash_table_lookup_lookuptablefindv2_table_handleD
@name_indicator_hash_table_lookup_lookuptablefindv2_default_value	K
Gtransmission_indicator_hash_table_lookup_lookuptablefindv2_table_handleL
Htransmission_indicator_hash_table_lookup_lookuptablefindv2_default_value	I
Edrive_type_indicator_hash_table_lookup_lookuptablefindv2_table_handleJ
Fdrive_type_indicator_hash_table_lookup_lookuptablefindv2_default_value	M
Iinterior_color_indicator_hash_table_lookup_lookuptablefindv2_table_handleN
Jinterior_color_indicator_hash_table_lookup_lookuptablefindv2_default_value	D
@style_indicator_hash_table_lookup_lookuptablefindv2_table_handleE
Astyle_indicator_hash_table_lookup_lookuptablefindv2_default_value	
identity??3Brand_indicator/hash_table_Lookup/LookupTableFindV2?4Engine_indicator/hash_table_Lookup/LookupTableFindV2?<Exterior_color_indicator/hash_table_Lookup/LookupTableFindV2?7Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV2?2Name_indicator/hash_table_Lookup/LookupTableFindV2?:Transmission_indicator/hash_table_Lookup/LookupTableFindV2?8drive_type_indicator/hash_table_Lookup/LookupTableFindV2?<interior_color_indicator/hash_table_Lookup/LookupTableFindV2?3style_indicator/hash_table_Lookup/LookupTableFindV2i
Brand_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Brand_indicator/ExpandDims
ExpandDimsfeatures_brand'Brand_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????o
.Brand_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
(Brand_indicator/to_sparse_input/NotEqualNotEqual#Brand_indicator/ExpandDims:output:07Brand_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
'Brand_indicator/to_sparse_input/indicesWhere,Brand_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
&Brand_indicator/to_sparse_input/valuesGatherNd#Brand_indicator/ExpandDims:output:0/Brand_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
+Brand_indicator/to_sparse_input/dense_shapeShape#Brand_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
3Brand_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2@brand_indicator_hash_table_lookup_lookuptablefindv2_table_handle/Brand_indicator/to_sparse_input/values:output:0Abrand_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????v
+Brand_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Brand_indicator/SparseToDenseSparseToDense/Brand_indicator/to_sparse_input/indices:index:04Brand_indicator/to_sparse_input/dense_shape:output:0<Brand_indicator/hash_table_Lookup/LookupTableFindV2:values:04Brand_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????b
Brand_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
Brand_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    _
Brand_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :+?
Brand_indicator/one_hotOneHot%Brand_indicator/SparseToDense:dense:0&Brand_indicator/one_hot/depth:output:0&Brand_indicator/one_hot/Const:output:0(Brand_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????+x
%Brand_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Brand_indicator/SumSum Brand_indicator/one_hot:output:0.Brand_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????+a
Brand_indicator/ShapeShapeBrand_indicator/Sum:output:0*
T0*
_output_shapes
:m
#Brand_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%Brand_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%Brand_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Brand_indicator/strided_sliceStridedSliceBrand_indicator/Shape:output:0,Brand_indicator/strided_slice/stack:output:0.Brand_indicator/strided_slice/stack_1:output:0.Brand_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
Brand_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :+?
Brand_indicator/Reshape/shapePack&Brand_indicator/strided_slice:output:0(Brand_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Brand_indicator/ReshapeReshapeBrand_indicator/Sum:output:0&Brand_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????+b
Engine_V/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Engine_V/ExpandDims
ExpandDimsfeatures_engine_v Engine_V/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????Z
Engine_V/ShapeShapeEngine_V/ExpandDims:output:0*
T0*
_output_shapes
:f
Engine_V/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
Engine_V/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
Engine_V/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Engine_V/strided_sliceStridedSliceEngine_V/Shape:output:0%Engine_V/strided_slice/stack:output:0'Engine_V/strided_slice/stack_1:output:0'Engine_V/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
Engine_V/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Engine_V/Reshape/shapePackEngine_V/strided_slice:output:0!Engine_V/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Engine_V/ReshapeReshapeEngine_V/ExpandDims:output:0Engine_V/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????j
Engine_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Engine_indicator/ExpandDims
ExpandDimsfeatures_engine(Engine_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????p
/Engine_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
)Engine_indicator/to_sparse_input/NotEqualNotEqual$Engine_indicator/ExpandDims:output:08Engine_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
(Engine_indicator/to_sparse_input/indicesWhere-Engine_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
'Engine_indicator/to_sparse_input/valuesGatherNd$Engine_indicator/ExpandDims:output:00Engine_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
,Engine_indicator/to_sparse_input/dense_shapeShape$Engine_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
4Engine_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Aengine_indicator_hash_table_lookup_lookuptablefindv2_table_handle0Engine_indicator/to_sparse_input/values:output:0Bengine_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????w
,Engine_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Engine_indicator/SparseToDenseSparseToDense0Engine_indicator/to_sparse_input/indices:index:05Engine_indicator/to_sparse_input/dense_shape:output:0=Engine_indicator/hash_table_Lookup/LookupTableFindV2:values:05Engine_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????c
Engine_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
 Engine_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    `
Engine_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
Engine_indicator/one_hotOneHot&Engine_indicator/SparseToDense:dense:0'Engine_indicator/one_hot/depth:output:0'Engine_indicator/one_hot/Const:output:0)Engine_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????y
&Engine_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Engine_indicator/SumSum!Engine_indicator/one_hot:output:0/Engine_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????c
Engine_indicator/ShapeShapeEngine_indicator/Sum:output:0*
T0*
_output_shapes
:n
$Engine_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&Engine_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&Engine_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Engine_indicator/strided_sliceStridedSliceEngine_indicator/Shape:output:0-Engine_indicator/strided_slice/stack:output:0/Engine_indicator/strided_slice/stack_1:output:0/Engine_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 Engine_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Engine_indicator/Reshape/shapePack'Engine_indicator/strided_slice:output:0)Engine_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Engine_indicator/ReshapeReshapeEngine_indicator/Sum:output:0'Engine_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????r
'Exterior_color_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
#Exterior_color_indicator/ExpandDims
ExpandDimsfeatures_exterior_color0Exterior_color_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????x
7Exterior_color_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
1Exterior_color_indicator/to_sparse_input/NotEqualNotEqual,Exterior_color_indicator/ExpandDims:output:0@Exterior_color_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
0Exterior_color_indicator/to_sparse_input/indicesWhere5Exterior_color_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
/Exterior_color_indicator/to_sparse_input/valuesGatherNd,Exterior_color_indicator/ExpandDims:output:08Exterior_color_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
4Exterior_color_indicator/to_sparse_input/dense_shapeShape,Exterior_color_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
<Exterior_color_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Iexterior_color_indicator_hash_table_lookup_lookuptablefindv2_table_handle8Exterior_color_indicator/to_sparse_input/values:output:0Jexterior_color_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????
4Exterior_color_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
&Exterior_color_indicator/SparseToDenseSparseToDense8Exterior_color_indicator/to_sparse_input/indices:index:0=Exterior_color_indicator/to_sparse_input/dense_shape:output:0EExterior_color_indicator/hash_table_Lookup/LookupTableFindV2:values:0=Exterior_color_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????k
&Exterior_color_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??m
(Exterior_color_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    i
&Exterior_color_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
 Exterior_color_indicator/one_hotOneHot.Exterior_color_indicator/SparseToDense:dense:0/Exterior_color_indicator/one_hot/depth:output:0/Exterior_color_indicator/one_hot/Const:output:01Exterior_color_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:???????????
.Exterior_color_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Exterior_color_indicator/SumSum)Exterior_color_indicator/one_hot:output:07Exterior_color_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:??????????s
Exterior_color_indicator/ShapeShape%Exterior_color_indicator/Sum:output:0*
T0*
_output_shapes
:v
,Exterior_color_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.Exterior_color_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.Exterior_color_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&Exterior_color_indicator/strided_sliceStridedSlice'Exterior_color_indicator/Shape:output:05Exterior_color_indicator/strided_slice/stack:output:07Exterior_color_indicator/strided_slice/stack_1:output:07Exterior_color_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
(Exterior_color_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
&Exterior_color_indicator/Reshape/shapePack/Exterior_color_indicator/strided_slice:output:01Exterior_color_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
 Exterior_color_indicator/ReshapeReshape%Exterior_color_indicator/Sum:output:0/Exterior_color_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????m
"Fuel_Type_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Fuel_Type_indicator/ExpandDims
ExpandDimsfeatures_fuel_type+Fuel_Type_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????s
2Fuel_Type_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
,Fuel_Type_indicator/to_sparse_input/NotEqualNotEqual'Fuel_Type_indicator/ExpandDims:output:0;Fuel_Type_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
+Fuel_Type_indicator/to_sparse_input/indicesWhere0Fuel_Type_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
*Fuel_Type_indicator/to_sparse_input/valuesGatherNd'Fuel_Type_indicator/ExpandDims:output:03Fuel_Type_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
/Fuel_Type_indicator/to_sparse_input/dense_shapeShape'Fuel_Type_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
7Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Dfuel_type_indicator_hash_table_lookup_lookuptablefindv2_table_handle3Fuel_Type_indicator/to_sparse_input/values:output:0Efuel_type_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????z
/Fuel_Type_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
!Fuel_Type_indicator/SparseToDenseSparseToDense3Fuel_Type_indicator/to_sparse_input/indices:index:08Fuel_Type_indicator/to_sparse_input/dense_shape:output:0@Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV2:values:08Fuel_Type_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????f
!Fuel_Type_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??h
#Fuel_Type_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    c
!Fuel_Type_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
Fuel_Type_indicator/one_hotOneHot)Fuel_Type_indicator/SparseToDense:dense:0*Fuel_Type_indicator/one_hot/depth:output:0*Fuel_Type_indicator/one_hot/Const:output:0,Fuel_Type_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????|
)Fuel_Type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Fuel_Type_indicator/SumSum$Fuel_Type_indicator/one_hot:output:02Fuel_Type_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????i
Fuel_Type_indicator/ShapeShape Fuel_Type_indicator/Sum:output:0*
T0*
_output_shapes
:q
'Fuel_Type_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)Fuel_Type_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)Fuel_Type_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!Fuel_Type_indicator/strided_sliceStridedSlice"Fuel_Type_indicator/Shape:output:00Fuel_Type_indicator/strided_slice/stack:output:02Fuel_Type_indicator/strided_slice/stack_1:output:02Fuel_Type_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#Fuel_Type_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
!Fuel_Type_indicator/Reshape/shapePack*Fuel_Type_indicator/strided_slice:output:0,Fuel_Type_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Fuel_Type_indicator/ReshapeReshape Fuel_Type_indicator/Sum:output:0*Fuel_Type_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????a
Mileage/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Mileage/ExpandDims
ExpandDimsfeatures_mileageMileage/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????r
Mileage/CastCastMileage/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????M
Mileage/ShapeShapeMileage/Cast:y:0*
T0*
_output_shapes
:e
Mileage/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
Mileage/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
Mileage/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Mileage/strided_sliceStridedSliceMileage/Shape:output:0$Mileage/strided_slice/stack:output:0&Mileage/strided_slice/stack_1:output:0&Mileage/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
Mileage/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Mileage/Reshape/shapePackMileage/strided_slice:output:0 Mileage/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:~
Mileage/ReshapeReshapeMileage/Cast:y:0Mileage/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????h
Name_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Name_indicator/ExpandDims
ExpandDimsfeatures_name&Name_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????n
-Name_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
'Name_indicator/to_sparse_input/NotEqualNotEqual"Name_indicator/ExpandDims:output:06Name_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
&Name_indicator/to_sparse_input/indicesWhere+Name_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
%Name_indicator/to_sparse_input/valuesGatherNd"Name_indicator/ExpandDims:output:0.Name_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
*Name_indicator/to_sparse_input/dense_shapeShape"Name_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
2Name_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2?name_indicator_hash_table_lookup_lookuptablefindv2_table_handle.Name_indicator/to_sparse_input/values:output:0@name_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????u
*Name_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Name_indicator/SparseToDenseSparseToDense.Name_indicator/to_sparse_input/indices:index:03Name_indicator/to_sparse_input/dense_shape:output:0;Name_indicator/hash_table_Lookup/LookupTableFindV2:values:03Name_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????a
Name_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??c
Name_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    _
Name_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
Name_indicator/one_hotOneHot$Name_indicator/SparseToDense:dense:0%Name_indicator/one_hot/depth:output:0%Name_indicator/one_hot/Const:output:0'Name_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:??????????w
$Name_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Name_indicator/SumSumName_indicator/one_hot:output:0-Name_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:??????????_
Name_indicator/ShapeShapeName_indicator/Sum:output:0*
T0*
_output_shapes
:l
"Name_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$Name_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$Name_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Name_indicator/strided_sliceStridedSliceName_indicator/Shape:output:0+Name_indicator/strided_slice/stack:output:0-Name_indicator/strided_slice/stack_1:output:0-Name_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
Name_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
Name_indicator/Reshape/shapePack%Name_indicator/strided_slice:output:0'Name_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Name_indicator/ReshapeReshapeName_indicator/Sum:output:0%Name_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????p
%Transmission_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
!Transmission_indicator/ExpandDims
ExpandDimsfeatures_transmission.Transmission_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????v
5Transmission_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
/Transmission_indicator/to_sparse_input/NotEqualNotEqual*Transmission_indicator/ExpandDims:output:0>Transmission_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
.Transmission_indicator/to_sparse_input/indicesWhere3Transmission_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
-Transmission_indicator/to_sparse_input/valuesGatherNd*Transmission_indicator/ExpandDims:output:06Transmission_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
2Transmission_indicator/to_sparse_input/dense_shapeShape*Transmission_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
:Transmission_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Gtransmission_indicator_hash_table_lookup_lookuptablefindv2_table_handle6Transmission_indicator/to_sparse_input/values:output:0Htransmission_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????}
2Transmission_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
$Transmission_indicator/SparseToDenseSparseToDense6Transmission_indicator/to_sparse_input/indices:index:0;Transmission_indicator/to_sparse_input/dense_shape:output:0CTransmission_indicator/hash_table_Lookup/LookupTableFindV2:values:0;Transmission_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????i
$Transmission_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??k
&Transmission_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    f
$Transmission_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
Transmission_indicator/one_hotOneHot,Transmission_indicator/SparseToDense:dense:0-Transmission_indicator/one_hot/depth:output:0-Transmission_indicator/one_hot/Const:output:0/Transmission_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????
,Transmission_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Transmission_indicator/SumSum'Transmission_indicator/one_hot:output:05Transmission_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????o
Transmission_indicator/ShapeShape#Transmission_indicator/Sum:output:0*
T0*
_output_shapes
:t
*Transmission_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,Transmission_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,Transmission_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$Transmission_indicator/strided_sliceStridedSlice%Transmission_indicator/Shape:output:03Transmission_indicator/strided_slice/stack:output:05Transmission_indicator/strided_slice/stack_1:output:05Transmission_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&Transmission_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
$Transmission_indicator/Reshape/shapePack-Transmission_indicator/strided_slice:output:0/Transmission_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Transmission_indicator/ReshapeReshape#Transmission_indicator/Sum:output:0-Transmission_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????^
Year/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????|
Year/ExpandDims
ExpandDimsfeatures_yearYear/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????l
	Year/CastCastYear/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????G

Year/ShapeShapeYear/Cast:y:0*
T0*
_output_shapes
:b
Year/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
Year/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
Year/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Year/strided_sliceStridedSliceYear/Shape:output:0!Year/strided_slice/stack:output:0#Year/strided_slice/stack_1:output:0#Year/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
Year/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Year/Reshape/shapePackYear/strided_slice:output:0Year/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:u
Year/ReshapeReshapeYear/Cast:y:0Year/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????n
#drive_type_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
drive_type_indicator/ExpandDims
ExpandDimsfeatures_drive_type,drive_type_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????t
3drive_type_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
-drive_type_indicator/to_sparse_input/NotEqualNotEqual(drive_type_indicator/ExpandDims:output:0<drive_type_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
,drive_type_indicator/to_sparse_input/indicesWhere1drive_type_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
+drive_type_indicator/to_sparse_input/valuesGatherNd(drive_type_indicator/ExpandDims:output:04drive_type_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
0drive_type_indicator/to_sparse_input/dense_shapeShape(drive_type_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
8drive_type_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Edrive_type_indicator_hash_table_lookup_lookuptablefindv2_table_handle4drive_type_indicator/to_sparse_input/values:output:0Fdrive_type_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????{
0drive_type_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
"drive_type_indicator/SparseToDenseSparseToDense4drive_type_indicator/to_sparse_input/indices:index:09drive_type_indicator/to_sparse_input/dense_shape:output:0Adrive_type_indicator/hash_table_Lookup/LookupTableFindV2:values:09drive_type_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????g
"drive_type_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??i
$drive_type_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    d
"drive_type_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
drive_type_indicator/one_hotOneHot*drive_type_indicator/SparseToDense:dense:0+drive_type_indicator/one_hot/depth:output:0+drive_type_indicator/one_hot/Const:output:0-drive_type_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????}
*drive_type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
drive_type_indicator/SumSum%drive_type_indicator/one_hot:output:03drive_type_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????k
drive_type_indicator/ShapeShape!drive_type_indicator/Sum:output:0*
T0*
_output_shapes
:r
(drive_type_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*drive_type_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*drive_type_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"drive_type_indicator/strided_sliceStridedSlice#drive_type_indicator/Shape:output:01drive_type_indicator/strided_slice/stack:output:03drive_type_indicator/strided_slice/stack_1:output:03drive_type_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$drive_type_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
"drive_type_indicator/Reshape/shapePack+drive_type_indicator/strided_slice:output:0-drive_type_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
drive_type_indicator/ReshapeReshape!drive_type_indicator/Sum:output:0+drive_type_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????r
'interior_color_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
#interior_color_indicator/ExpandDims
ExpandDimsfeatures_interior_color0interior_color_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????x
7interior_color_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
1interior_color_indicator/to_sparse_input/NotEqualNotEqual,interior_color_indicator/ExpandDims:output:0@interior_color_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
0interior_color_indicator/to_sparse_input/indicesWhere5interior_color_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
/interior_color_indicator/to_sparse_input/valuesGatherNd,interior_color_indicator/ExpandDims:output:08interior_color_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
4interior_color_indicator/to_sparse_input/dense_shapeShape,interior_color_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
<interior_color_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Iinterior_color_indicator_hash_table_lookup_lookuptablefindv2_table_handle8interior_color_indicator/to_sparse_input/values:output:0Jinterior_color_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????
4interior_color_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
&interior_color_indicator/SparseToDenseSparseToDense8interior_color_indicator/to_sparse_input/indices:index:0=interior_color_indicator/to_sparse_input/dense_shape:output:0Einterior_color_indicator/hash_table_Lookup/LookupTableFindV2:values:0=interior_color_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????k
&interior_color_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??m
(interior_color_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    i
&interior_color_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
 interior_color_indicator/one_hotOneHot.interior_color_indicator/SparseToDense:dense:0/interior_color_indicator/one_hot/depth:output:0/interior_color_indicator/one_hot/Const:output:01interior_color_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:???????????
.interior_color_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
interior_color_indicator/SumSum)interior_color_indicator/one_hot:output:07interior_color_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:??????????s
interior_color_indicator/ShapeShape%interior_color_indicator/Sum:output:0*
T0*
_output_shapes
:v
,interior_color_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.interior_color_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.interior_color_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&interior_color_indicator/strided_sliceStridedSlice'interior_color_indicator/Shape:output:05interior_color_indicator/strided_slice/stack:output:07interior_color_indicator/strided_slice/stack_1:output:07interior_color_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
(interior_color_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
&interior_color_indicator/Reshape/shapePack/interior_color_indicator/strided_slice:output:01interior_color_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
 interior_color_indicator/ReshapeReshape%interior_color_indicator/Sum:output:0/interior_color_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????b
mpg_city/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
mpg_city/ExpandDims
ExpandDimsfeatures_mpg_city mpg_city/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????t
mpg_city/CastCastmpg_city/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????O
mpg_city/ShapeShapempg_city/Cast:y:0*
T0*
_output_shapes
:f
mpg_city/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
mpg_city/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
mpg_city/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
mpg_city/strided_sliceStridedSlicempg_city/Shape:output:0%mpg_city/strided_slice/stack:output:0'mpg_city/strided_slice/stack_1:output:0'mpg_city/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
mpg_city/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
mpg_city/Reshape/shapePackmpg_city/strided_slice:output:0!mpg_city/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
mpg_city/ReshapeReshapempg_city/Cast:y:0mpg_city/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????e
mpg_highway/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
mpg_highway/ExpandDims
ExpandDimsfeatures_mpg_highway#mpg_highway/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????z
mpg_highway/CastCastmpg_highway/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????U
mpg_highway/ShapeShapempg_highway/Cast:y:0*
T0*
_output_shapes
:i
mpg_highway/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!mpg_highway/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!mpg_highway/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
mpg_highway/strided_sliceStridedSlicempg_highway/Shape:output:0(mpg_highway/strided_slice/stack:output:0*mpg_highway/strided_slice/stack_1:output:0*mpg_highway/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
mpg_highway/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
mpg_highway/Reshape/shapePack"mpg_highway/strided_slice:output:0$mpg_highway/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
mpg_highway/ReshapeReshapempg_highway/Cast:y:0"mpg_highway/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????i
style_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
style_indicator/ExpandDims
ExpandDimsfeatures_style'style_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????o
.style_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
(style_indicator/to_sparse_input/NotEqualNotEqual#style_indicator/ExpandDims:output:07style_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
'style_indicator/to_sparse_input/indicesWhere,style_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
&style_indicator/to_sparse_input/valuesGatherNd#style_indicator/ExpandDims:output:0/style_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
+style_indicator/to_sparse_input/dense_shapeShape#style_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
3style_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2@style_indicator_hash_table_lookup_lookuptablefindv2_table_handle/style_indicator/to_sparse_input/values:output:0Astyle_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????v
+style_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
style_indicator/SparseToDenseSparseToDense/style_indicator/to_sparse_input/indices:index:04style_indicator/to_sparse_input/dense_shape:output:0<style_indicator/hash_table_Lookup/LookupTableFindV2:values:04style_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????b
style_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
style_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    _
style_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :	?
style_indicator/one_hotOneHot%style_indicator/SparseToDense:dense:0&style_indicator/one_hot/depth:output:0&style_indicator/one_hot/Const:output:0(style_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????	x
%style_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
style_indicator/SumSum style_indicator/one_hot:output:0.style_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????	a
style_indicator/ShapeShapestyle_indicator/Sum:output:0*
T0*
_output_shapes
:m
#style_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%style_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%style_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
style_indicator/strided_sliceStridedSlicestyle_indicator/Shape:output:0,style_indicator/strided_slice/stack:output:0.style_indicator/strided_slice/stack_1:output:0.style_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
style_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :	?
style_indicator/Reshape/shapePack&style_indicator/strided_slice:output:0(style_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
style_indicator/ReshapeReshapestyle_indicator/Sum:output:0&style_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????	V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
concatConcatV2 Brand_indicator/Reshape:output:0Engine_V/Reshape:output:0!Engine_indicator/Reshape:output:0)Exterior_color_indicator/Reshape:output:0$Fuel_Type_indicator/Reshape:output:0Mileage/Reshape:output:0Name_indicator/Reshape:output:0'Transmission_indicator/Reshape:output:0Year/Reshape:output:0%drive_type_indicator/Reshape:output:0)interior_color_indicator/Reshape:output:0mpg_city/Reshape:output:0mpg_highway/Reshape:output:0 style_indicator/Reshape:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????	_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:??????????	?
NoOpNoOp4^Brand_indicator/hash_table_Lookup/LookupTableFindV25^Engine_indicator/hash_table_Lookup/LookupTableFindV2=^Exterior_color_indicator/hash_table_Lookup/LookupTableFindV28^Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV23^Name_indicator/hash_table_Lookup/LookupTableFindV2;^Transmission_indicator/hash_table_Lookup/LookupTableFindV29^drive_type_indicator/hash_table_Lookup/LookupTableFindV2=^interior_color_indicator/hash_table_Lookup/LookupTableFindV24^style_indicator/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : 2j
3Brand_indicator/hash_table_Lookup/LookupTableFindV23Brand_indicator/hash_table_Lookup/LookupTableFindV22l
4Engine_indicator/hash_table_Lookup/LookupTableFindV24Engine_indicator/hash_table_Lookup/LookupTableFindV22|
<Exterior_color_indicator/hash_table_Lookup/LookupTableFindV2<Exterior_color_indicator/hash_table_Lookup/LookupTableFindV22r
7Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV27Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV22h
2Name_indicator/hash_table_Lookup/LookupTableFindV22Name_indicator/hash_table_Lookup/LookupTableFindV22x
:Transmission_indicator/hash_table_Lookup/LookupTableFindV2:Transmission_indicator/hash_table_Lookup/LookupTableFindV22t
8drive_type_indicator/hash_table_Lookup/LookupTableFindV28drive_type_indicator/hash_table_Lookup/LookupTableFindV22|
<interior_color_indicator/hash_table_Lookup/LookupTableFindV2<interior_color_indicator/hash_table_Lookup/LookupTableFindV22j
3style_indicator/hash_table_Lookup/LookupTableFindV23style_indicator/hash_table_Lookup/LookupTableFindV2:S O
#
_output_shapes
:?????????
(
_user_specified_namefeatures/Brand:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/Engine:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Engine_V:\X
#
_output_shapes
:?????????
1
_user_specified_namefeatures/Exterior_color:WS
#
_output_shapes
:?????????
,
_user_specified_namefeatures/Fuel_Type:UQ
#
_output_shapes
:?????????
*
_user_specified_namefeatures/Mileage:RN
#
_output_shapes
:?????????
'
_user_specified_namefeatures/Name:ZV
#
_output_shapes
:?????????
/
_user_specified_namefeatures/Transmission:RN
#
_output_shapes
:?????????
'
_user_specified_namefeatures/Year:X	T
#
_output_shapes
:?????????
-
_user_specified_namefeatures/drive_type:\
X
#
_output_shapes
:?????????
1
_user_specified_namefeatures/interior_color:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/mpg_city:YU
#
_output_shapes
:?????????
.
_user_specified_namefeatures/mpg_highway:SO
#
_output_shapes
:?????????
(
_user_specified_namefeatures/style:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?	
?
B__inference_Output_layer_call_and_return_conditional_losses_821384

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs
?
;
__inference__creator_824197
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name428*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
;
__inference__creator_824107
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name226*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
;
__inference__creator_824143
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name298*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
;
__inference__creator_824215
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name464*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
;
__inference__creator_824233
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name522*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?5
?	
O__inference_CAR_PRICE_PREDICTOR_layer_call_and_return_conditional_losses_821391

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
	inputs_13
dense_features_821279
dense_features_821281	
dense_features_821283
dense_features_821285	
dense_features_821287
dense_features_821289	
dense_features_821291
dense_features_821293	
dense_features_821295
dense_features_821297	
dense_features_821299
dense_features_821301	
dense_features_821303
dense_features_821305	
dense_features_821307
dense_features_821309	
dense_features_821311
dense_features_821313	
normalization_sub_y
normalization_sqrt_x
fc_1_821335:	?	@
fc_1_821337:@
fc_2_821352:@ 
fc_2_821354: 
fc_3_821369: 

fc_3_821371:

output_821385:

output_821387:
identity??FC_1/StatefulPartitionedCall?FC_2/StatefulPartitionedCall?FC_3/StatefulPartitionedCall?Output/StatefulPartitionedCall?&dense_features/StatefulPartitionedCall?
&dense_features/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13dense_features_821279dense_features_821281dense_features_821283dense_features_821285dense_features_821287dense_features_821289dense_features_821291dense_features_821293dense_features_821295dense_features_821297dense_features_821299dense_features_821301dense_features_821303dense_features_821305dense_features_821307dense_features_821309dense_features_821311dense_features_821313*+
Tin$
"2 									*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_821278?
normalization/subSub/dense_features/StatefulPartitionedCall:output:0normalization_sub_y*
T0*(
_output_shapes
:??????????	Z
normalization/SqrtSqrtnormalization_sqrt_x*
T0*
_output_shapes
:	?	\
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*
_output_shapes
:	?	?
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*(
_output_shapes
:??????????	?
FC_1/StatefulPartitionedCallStatefulPartitionedCallnormalization/truediv:z:0fc_1_821335fc_1_821337*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_FC_1_layer_call_and_return_conditional_losses_821334?
FC_2/StatefulPartitionedCallStatefulPartitionedCall%FC_1/StatefulPartitionedCall:output:0fc_2_821352fc_2_821354*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_FC_2_layer_call_and_return_conditional_losses_821351?
FC_3/StatefulPartitionedCallStatefulPartitionedCall%FC_2/StatefulPartitionedCall:output:0fc_3_821369fc_3_821371*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_FC_3_layer_call_and_return_conditional_losses_821368?
Output/StatefulPartitionedCallStatefulPartitionedCall%FC_3/StatefulPartitionedCall:output:0output_821385output_821387*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_Output_layer_call_and_return_conditional_losses_821384v
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^FC_1/StatefulPartitionedCall^FC_2/StatefulPartitionedCall^FC_3/StatefulPartitionedCall^Output/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : :	?	:	?	: : : : : : : : 2<
FC_1/StatefulPartitionedCallFC_1/StatefulPartitionedCall2<
FC_2/StatefulPartitionedCallFC_2/StatefulPartitionedCall2<
FC_3/StatefulPartitionedCallFC_3/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:K	G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:K
G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :% !

_output_shapes
:	?	:%!!

_output_shapes
:	?	
?
?
__inference__initializer_8241512
.table_init297_lookuptableimportv2_table_handle*
&table_init297_lookuptableimportv2_keys,
(table_init297_lookuptableimportv2_values	
identity??!table_init297/LookupTableImportV2?
!table_init297/LookupTableImportV2LookupTableImportV2.table_init297_lookuptableimportv2_table_handle&table_init297_lookuptableimportv2_keys(table_init297_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init297/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init297/LookupTableImportV2!table_init297/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
__inference__initializer_8242412
.table_init521_lookuptableimportv2_table_handle*
&table_init521_lookuptableimportv2_keys,
(table_init521_lookuptableimportv2_values	
identity??!table_init521/LookupTableImportV2?
!table_init521/LookupTableImportV2LookupTableImportV2.table_init521_lookuptableimportv2_table_handle&table_init521_lookuptableimportv2_keys(table_init521_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init521/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :	:	2F
!table_init521/LookupTableImportV2!table_init521/LookupTableImportV2: 

_output_shapes
:	: 

_output_shapes
:	
?
?
__inference_<lambda>_8242782
.table_init297_lookuptableimportv2_table_handle*
&table_init297_lookuptableimportv2_keys,
(table_init297_lookuptableimportv2_values	
identity??!table_init297/LookupTableImportV2?
!table_init297/LookupTableImportV2LookupTableImportV2.table_init297_lookuptableimportv2_table_handle&table_init297_lookuptableimportv2_keys(table_init297_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init297/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init297/LookupTableImportV2!table_init297/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
??
?
J__inference_dense_features_layer_call_and_return_conditional_losses_821278
features

features_1

features_2

features_3

features_4

features_5

features_6

features_7

features_8

features_9
features_10
features_11
features_12
features_13D
@brand_indicator_hash_table_lookup_lookuptablefindv2_table_handleE
Abrand_indicator_hash_table_lookup_lookuptablefindv2_default_value	E
Aengine_indicator_hash_table_lookup_lookuptablefindv2_table_handleF
Bengine_indicator_hash_table_lookup_lookuptablefindv2_default_value	M
Iexterior_color_indicator_hash_table_lookup_lookuptablefindv2_table_handleN
Jexterior_color_indicator_hash_table_lookup_lookuptablefindv2_default_value	H
Dfuel_type_indicator_hash_table_lookup_lookuptablefindv2_table_handleI
Efuel_type_indicator_hash_table_lookup_lookuptablefindv2_default_value	C
?name_indicator_hash_table_lookup_lookuptablefindv2_table_handleD
@name_indicator_hash_table_lookup_lookuptablefindv2_default_value	K
Gtransmission_indicator_hash_table_lookup_lookuptablefindv2_table_handleL
Htransmission_indicator_hash_table_lookup_lookuptablefindv2_default_value	I
Edrive_type_indicator_hash_table_lookup_lookuptablefindv2_table_handleJ
Fdrive_type_indicator_hash_table_lookup_lookuptablefindv2_default_value	M
Iinterior_color_indicator_hash_table_lookup_lookuptablefindv2_table_handleN
Jinterior_color_indicator_hash_table_lookup_lookuptablefindv2_default_value	D
@style_indicator_hash_table_lookup_lookuptablefindv2_table_handleE
Astyle_indicator_hash_table_lookup_lookuptablefindv2_default_value	
identity??3Brand_indicator/hash_table_Lookup/LookupTableFindV2?4Engine_indicator/hash_table_Lookup/LookupTableFindV2?<Exterior_color_indicator/hash_table_Lookup/LookupTableFindV2?7Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV2?2Name_indicator/hash_table_Lookup/LookupTableFindV2?:Transmission_indicator/hash_table_Lookup/LookupTableFindV2?8drive_type_indicator/hash_table_Lookup/LookupTableFindV2?<interior_color_indicator/hash_table_Lookup/LookupTableFindV2?3style_indicator/hash_table_Lookup/LookupTableFindV2i
Brand_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Brand_indicator/ExpandDims
ExpandDimsfeatures'Brand_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????o
.Brand_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
(Brand_indicator/to_sparse_input/NotEqualNotEqual#Brand_indicator/ExpandDims:output:07Brand_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
'Brand_indicator/to_sparse_input/indicesWhere,Brand_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
&Brand_indicator/to_sparse_input/valuesGatherNd#Brand_indicator/ExpandDims:output:0/Brand_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
+Brand_indicator/to_sparse_input/dense_shapeShape#Brand_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
3Brand_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2@brand_indicator_hash_table_lookup_lookuptablefindv2_table_handle/Brand_indicator/to_sparse_input/values:output:0Abrand_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????v
+Brand_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Brand_indicator/SparseToDenseSparseToDense/Brand_indicator/to_sparse_input/indices:index:04Brand_indicator/to_sparse_input/dense_shape:output:0<Brand_indicator/hash_table_Lookup/LookupTableFindV2:values:04Brand_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????b
Brand_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
Brand_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    _
Brand_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :+?
Brand_indicator/one_hotOneHot%Brand_indicator/SparseToDense:dense:0&Brand_indicator/one_hot/depth:output:0&Brand_indicator/one_hot/Const:output:0(Brand_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????+x
%Brand_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Brand_indicator/SumSum Brand_indicator/one_hot:output:0.Brand_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????+a
Brand_indicator/ShapeShapeBrand_indicator/Sum:output:0*
T0*
_output_shapes
:m
#Brand_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%Brand_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%Brand_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Brand_indicator/strided_sliceStridedSliceBrand_indicator/Shape:output:0,Brand_indicator/strided_slice/stack:output:0.Brand_indicator/strided_slice/stack_1:output:0.Brand_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
Brand_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :+?
Brand_indicator/Reshape/shapePack&Brand_indicator/strided_slice:output:0(Brand_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Brand_indicator/ReshapeReshapeBrand_indicator/Sum:output:0&Brand_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????+b
Engine_V/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Engine_V/ExpandDims
ExpandDims
features_2 Engine_V/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????Z
Engine_V/ShapeShapeEngine_V/ExpandDims:output:0*
T0*
_output_shapes
:f
Engine_V/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
Engine_V/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
Engine_V/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Engine_V/strided_sliceStridedSliceEngine_V/Shape:output:0%Engine_V/strided_slice/stack:output:0'Engine_V/strided_slice/stack_1:output:0'Engine_V/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
Engine_V/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Engine_V/Reshape/shapePackEngine_V/strided_slice:output:0!Engine_V/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Engine_V/ReshapeReshapeEngine_V/ExpandDims:output:0Engine_V/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????j
Engine_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Engine_indicator/ExpandDims
ExpandDims
features_1(Engine_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????p
/Engine_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
)Engine_indicator/to_sparse_input/NotEqualNotEqual$Engine_indicator/ExpandDims:output:08Engine_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
(Engine_indicator/to_sparse_input/indicesWhere-Engine_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
'Engine_indicator/to_sparse_input/valuesGatherNd$Engine_indicator/ExpandDims:output:00Engine_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
,Engine_indicator/to_sparse_input/dense_shapeShape$Engine_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
4Engine_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Aengine_indicator_hash_table_lookup_lookuptablefindv2_table_handle0Engine_indicator/to_sparse_input/values:output:0Bengine_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????w
,Engine_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Engine_indicator/SparseToDenseSparseToDense0Engine_indicator/to_sparse_input/indices:index:05Engine_indicator/to_sparse_input/dense_shape:output:0=Engine_indicator/hash_table_Lookup/LookupTableFindV2:values:05Engine_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????c
Engine_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
 Engine_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    `
Engine_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
Engine_indicator/one_hotOneHot&Engine_indicator/SparseToDense:dense:0'Engine_indicator/one_hot/depth:output:0'Engine_indicator/one_hot/Const:output:0)Engine_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????y
&Engine_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Engine_indicator/SumSum!Engine_indicator/one_hot:output:0/Engine_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????c
Engine_indicator/ShapeShapeEngine_indicator/Sum:output:0*
T0*
_output_shapes
:n
$Engine_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&Engine_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&Engine_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Engine_indicator/strided_sliceStridedSliceEngine_indicator/Shape:output:0-Engine_indicator/strided_slice/stack:output:0/Engine_indicator/strided_slice/stack_1:output:0/Engine_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 Engine_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Engine_indicator/Reshape/shapePack'Engine_indicator/strided_slice:output:0)Engine_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Engine_indicator/ReshapeReshapeEngine_indicator/Sum:output:0'Engine_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????r
'Exterior_color_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
#Exterior_color_indicator/ExpandDims
ExpandDims
features_30Exterior_color_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????x
7Exterior_color_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
1Exterior_color_indicator/to_sparse_input/NotEqualNotEqual,Exterior_color_indicator/ExpandDims:output:0@Exterior_color_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
0Exterior_color_indicator/to_sparse_input/indicesWhere5Exterior_color_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
/Exterior_color_indicator/to_sparse_input/valuesGatherNd,Exterior_color_indicator/ExpandDims:output:08Exterior_color_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
4Exterior_color_indicator/to_sparse_input/dense_shapeShape,Exterior_color_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
<Exterior_color_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Iexterior_color_indicator_hash_table_lookup_lookuptablefindv2_table_handle8Exterior_color_indicator/to_sparse_input/values:output:0Jexterior_color_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????
4Exterior_color_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
&Exterior_color_indicator/SparseToDenseSparseToDense8Exterior_color_indicator/to_sparse_input/indices:index:0=Exterior_color_indicator/to_sparse_input/dense_shape:output:0EExterior_color_indicator/hash_table_Lookup/LookupTableFindV2:values:0=Exterior_color_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????k
&Exterior_color_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??m
(Exterior_color_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    i
&Exterior_color_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
 Exterior_color_indicator/one_hotOneHot.Exterior_color_indicator/SparseToDense:dense:0/Exterior_color_indicator/one_hot/depth:output:0/Exterior_color_indicator/one_hot/Const:output:01Exterior_color_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:???????????
.Exterior_color_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Exterior_color_indicator/SumSum)Exterior_color_indicator/one_hot:output:07Exterior_color_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:??????????s
Exterior_color_indicator/ShapeShape%Exterior_color_indicator/Sum:output:0*
T0*
_output_shapes
:v
,Exterior_color_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.Exterior_color_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.Exterior_color_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&Exterior_color_indicator/strided_sliceStridedSlice'Exterior_color_indicator/Shape:output:05Exterior_color_indicator/strided_slice/stack:output:07Exterior_color_indicator/strided_slice/stack_1:output:07Exterior_color_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
(Exterior_color_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
&Exterior_color_indicator/Reshape/shapePack/Exterior_color_indicator/strided_slice:output:01Exterior_color_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
 Exterior_color_indicator/ReshapeReshape%Exterior_color_indicator/Sum:output:0/Exterior_color_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????m
"Fuel_Type_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Fuel_Type_indicator/ExpandDims
ExpandDims
features_4+Fuel_Type_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????s
2Fuel_Type_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
,Fuel_Type_indicator/to_sparse_input/NotEqualNotEqual'Fuel_Type_indicator/ExpandDims:output:0;Fuel_Type_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
+Fuel_Type_indicator/to_sparse_input/indicesWhere0Fuel_Type_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
*Fuel_Type_indicator/to_sparse_input/valuesGatherNd'Fuel_Type_indicator/ExpandDims:output:03Fuel_Type_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
/Fuel_Type_indicator/to_sparse_input/dense_shapeShape'Fuel_Type_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
7Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Dfuel_type_indicator_hash_table_lookup_lookuptablefindv2_table_handle3Fuel_Type_indicator/to_sparse_input/values:output:0Efuel_type_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????z
/Fuel_Type_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
!Fuel_Type_indicator/SparseToDenseSparseToDense3Fuel_Type_indicator/to_sparse_input/indices:index:08Fuel_Type_indicator/to_sparse_input/dense_shape:output:0@Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV2:values:08Fuel_Type_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????f
!Fuel_Type_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??h
#Fuel_Type_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    c
!Fuel_Type_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
Fuel_Type_indicator/one_hotOneHot)Fuel_Type_indicator/SparseToDense:dense:0*Fuel_Type_indicator/one_hot/depth:output:0*Fuel_Type_indicator/one_hot/Const:output:0,Fuel_Type_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????|
)Fuel_Type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Fuel_Type_indicator/SumSum$Fuel_Type_indicator/one_hot:output:02Fuel_Type_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????i
Fuel_Type_indicator/ShapeShape Fuel_Type_indicator/Sum:output:0*
T0*
_output_shapes
:q
'Fuel_Type_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)Fuel_Type_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)Fuel_Type_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!Fuel_Type_indicator/strided_sliceStridedSlice"Fuel_Type_indicator/Shape:output:00Fuel_Type_indicator/strided_slice/stack:output:02Fuel_Type_indicator/strided_slice/stack_1:output:02Fuel_Type_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#Fuel_Type_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
!Fuel_Type_indicator/Reshape/shapePack*Fuel_Type_indicator/strided_slice:output:0,Fuel_Type_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Fuel_Type_indicator/ReshapeReshape Fuel_Type_indicator/Sum:output:0*Fuel_Type_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????a
Mileage/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
Mileage/ExpandDims
ExpandDims
features_5Mileage/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????r
Mileage/CastCastMileage/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????M
Mileage/ShapeShapeMileage/Cast:y:0*
T0*
_output_shapes
:e
Mileage/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
Mileage/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
Mileage/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Mileage/strided_sliceStridedSliceMileage/Shape:output:0$Mileage/strided_slice/stack:output:0&Mileage/strided_slice/stack_1:output:0&Mileage/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
Mileage/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Mileage/Reshape/shapePackMileage/strided_slice:output:0 Mileage/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:~
Mileage/ReshapeReshapeMileage/Cast:y:0Mileage/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????h
Name_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Name_indicator/ExpandDims
ExpandDims
features_6&Name_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????n
-Name_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
'Name_indicator/to_sparse_input/NotEqualNotEqual"Name_indicator/ExpandDims:output:06Name_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
&Name_indicator/to_sparse_input/indicesWhere+Name_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
%Name_indicator/to_sparse_input/valuesGatherNd"Name_indicator/ExpandDims:output:0.Name_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
*Name_indicator/to_sparse_input/dense_shapeShape"Name_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
2Name_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2?name_indicator_hash_table_lookup_lookuptablefindv2_table_handle.Name_indicator/to_sparse_input/values:output:0@name_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????u
*Name_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Name_indicator/SparseToDenseSparseToDense.Name_indicator/to_sparse_input/indices:index:03Name_indicator/to_sparse_input/dense_shape:output:0;Name_indicator/hash_table_Lookup/LookupTableFindV2:values:03Name_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????a
Name_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??c
Name_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    _
Name_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
Name_indicator/one_hotOneHot$Name_indicator/SparseToDense:dense:0%Name_indicator/one_hot/depth:output:0%Name_indicator/one_hot/Const:output:0'Name_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:??????????w
$Name_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Name_indicator/SumSumName_indicator/one_hot:output:0-Name_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:??????????_
Name_indicator/ShapeShapeName_indicator/Sum:output:0*
T0*
_output_shapes
:l
"Name_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$Name_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$Name_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Name_indicator/strided_sliceStridedSliceName_indicator/Shape:output:0+Name_indicator/strided_slice/stack:output:0-Name_indicator/strided_slice/stack_1:output:0-Name_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
Name_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
Name_indicator/Reshape/shapePack%Name_indicator/strided_slice:output:0'Name_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Name_indicator/ReshapeReshapeName_indicator/Sum:output:0%Name_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????p
%Transmission_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
!Transmission_indicator/ExpandDims
ExpandDims
features_7.Transmission_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????v
5Transmission_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
/Transmission_indicator/to_sparse_input/NotEqualNotEqual*Transmission_indicator/ExpandDims:output:0>Transmission_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
.Transmission_indicator/to_sparse_input/indicesWhere3Transmission_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
-Transmission_indicator/to_sparse_input/valuesGatherNd*Transmission_indicator/ExpandDims:output:06Transmission_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
2Transmission_indicator/to_sparse_input/dense_shapeShape*Transmission_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
:Transmission_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Gtransmission_indicator_hash_table_lookup_lookuptablefindv2_table_handle6Transmission_indicator/to_sparse_input/values:output:0Htransmission_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????}
2Transmission_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
$Transmission_indicator/SparseToDenseSparseToDense6Transmission_indicator/to_sparse_input/indices:index:0;Transmission_indicator/to_sparse_input/dense_shape:output:0CTransmission_indicator/hash_table_Lookup/LookupTableFindV2:values:0;Transmission_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????i
$Transmission_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??k
&Transmission_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    f
$Transmission_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
Transmission_indicator/one_hotOneHot,Transmission_indicator/SparseToDense:dense:0-Transmission_indicator/one_hot/depth:output:0-Transmission_indicator/one_hot/Const:output:0/Transmission_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????
,Transmission_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Transmission_indicator/SumSum'Transmission_indicator/one_hot:output:05Transmission_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????o
Transmission_indicator/ShapeShape#Transmission_indicator/Sum:output:0*
T0*
_output_shapes
:t
*Transmission_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,Transmission_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,Transmission_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$Transmission_indicator/strided_sliceStridedSlice%Transmission_indicator/Shape:output:03Transmission_indicator/strided_slice/stack:output:05Transmission_indicator/strided_slice/stack_1:output:05Transmission_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&Transmission_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
$Transmission_indicator/Reshape/shapePack-Transmission_indicator/strided_slice:output:0/Transmission_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Transmission_indicator/ReshapeReshape#Transmission_indicator/Sum:output:0-Transmission_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????^
Year/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????y
Year/ExpandDims
ExpandDims
features_8Year/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????l
	Year/CastCastYear/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????G

Year/ShapeShapeYear/Cast:y:0*
T0*
_output_shapes
:b
Year/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
Year/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
Year/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Year/strided_sliceStridedSliceYear/Shape:output:0!Year/strided_slice/stack:output:0#Year/strided_slice/stack_1:output:0#Year/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
Year/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Year/Reshape/shapePackYear/strided_slice:output:0Year/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:u
Year/ReshapeReshapeYear/Cast:y:0Year/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????n
#drive_type_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
drive_type_indicator/ExpandDims
ExpandDims
features_9,drive_type_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????t
3drive_type_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
-drive_type_indicator/to_sparse_input/NotEqualNotEqual(drive_type_indicator/ExpandDims:output:0<drive_type_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
,drive_type_indicator/to_sparse_input/indicesWhere1drive_type_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
+drive_type_indicator/to_sparse_input/valuesGatherNd(drive_type_indicator/ExpandDims:output:04drive_type_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
0drive_type_indicator/to_sparse_input/dense_shapeShape(drive_type_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
8drive_type_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Edrive_type_indicator_hash_table_lookup_lookuptablefindv2_table_handle4drive_type_indicator/to_sparse_input/values:output:0Fdrive_type_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????{
0drive_type_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
"drive_type_indicator/SparseToDenseSparseToDense4drive_type_indicator/to_sparse_input/indices:index:09drive_type_indicator/to_sparse_input/dense_shape:output:0Adrive_type_indicator/hash_table_Lookup/LookupTableFindV2:values:09drive_type_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????g
"drive_type_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??i
$drive_type_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    d
"drive_type_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
drive_type_indicator/one_hotOneHot*drive_type_indicator/SparseToDense:dense:0+drive_type_indicator/one_hot/depth:output:0+drive_type_indicator/one_hot/Const:output:0-drive_type_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????}
*drive_type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
drive_type_indicator/SumSum%drive_type_indicator/one_hot:output:03drive_type_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????k
drive_type_indicator/ShapeShape!drive_type_indicator/Sum:output:0*
T0*
_output_shapes
:r
(drive_type_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*drive_type_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*drive_type_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"drive_type_indicator/strided_sliceStridedSlice#drive_type_indicator/Shape:output:01drive_type_indicator/strided_slice/stack:output:03drive_type_indicator/strided_slice/stack_1:output:03drive_type_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$drive_type_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
"drive_type_indicator/Reshape/shapePack+drive_type_indicator/strided_slice:output:0-drive_type_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
drive_type_indicator/ReshapeReshape!drive_type_indicator/Sum:output:0+drive_type_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????r
'interior_color_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
#interior_color_indicator/ExpandDims
ExpandDimsfeatures_100interior_color_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????x
7interior_color_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
1interior_color_indicator/to_sparse_input/NotEqualNotEqual,interior_color_indicator/ExpandDims:output:0@interior_color_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
0interior_color_indicator/to_sparse_input/indicesWhere5interior_color_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
/interior_color_indicator/to_sparse_input/valuesGatherNd,interior_color_indicator/ExpandDims:output:08interior_color_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
4interior_color_indicator/to_sparse_input/dense_shapeShape,interior_color_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
<interior_color_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Iinterior_color_indicator_hash_table_lookup_lookuptablefindv2_table_handle8interior_color_indicator/to_sparse_input/values:output:0Jinterior_color_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????
4interior_color_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
&interior_color_indicator/SparseToDenseSparseToDense8interior_color_indicator/to_sparse_input/indices:index:0=interior_color_indicator/to_sparse_input/dense_shape:output:0Einterior_color_indicator/hash_table_Lookup/LookupTableFindV2:values:0=interior_color_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????k
&interior_color_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??m
(interior_color_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    i
&interior_color_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
 interior_color_indicator/one_hotOneHot.interior_color_indicator/SparseToDense:dense:0/interior_color_indicator/one_hot/depth:output:0/interior_color_indicator/one_hot/Const:output:01interior_color_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:???????????
.interior_color_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
interior_color_indicator/SumSum)interior_color_indicator/one_hot:output:07interior_color_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:??????????s
interior_color_indicator/ShapeShape%interior_color_indicator/Sum:output:0*
T0*
_output_shapes
:v
,interior_color_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.interior_color_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.interior_color_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&interior_color_indicator/strided_sliceStridedSlice'interior_color_indicator/Shape:output:05interior_color_indicator/strided_slice/stack:output:07interior_color_indicator/strided_slice/stack_1:output:07interior_color_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
(interior_color_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
&interior_color_indicator/Reshape/shapePack/interior_color_indicator/strided_slice:output:01interior_color_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
 interior_color_indicator/ReshapeReshape%interior_color_indicator/Sum:output:0/interior_color_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????b
mpg_city/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
mpg_city/ExpandDims
ExpandDimsfeatures_11 mpg_city/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????t
mpg_city/CastCastmpg_city/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????O
mpg_city/ShapeShapempg_city/Cast:y:0*
T0*
_output_shapes
:f
mpg_city/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
mpg_city/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
mpg_city/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
mpg_city/strided_sliceStridedSlicempg_city/Shape:output:0%mpg_city/strided_slice/stack:output:0'mpg_city/strided_slice/stack_1:output:0'mpg_city/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
mpg_city/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
mpg_city/Reshape/shapePackmpg_city/strided_slice:output:0!mpg_city/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
mpg_city/ReshapeReshapempg_city/Cast:y:0mpg_city/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????e
mpg_highway/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
mpg_highway/ExpandDims
ExpandDimsfeatures_12#mpg_highway/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????z
mpg_highway/CastCastmpg_highway/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????U
mpg_highway/ShapeShapempg_highway/Cast:y:0*
T0*
_output_shapes
:i
mpg_highway/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!mpg_highway/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!mpg_highway/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
mpg_highway/strided_sliceStridedSlicempg_highway/Shape:output:0(mpg_highway/strided_slice/stack:output:0*mpg_highway/strided_slice/stack_1:output:0*mpg_highway/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
mpg_highway/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
mpg_highway/Reshape/shapePack"mpg_highway/strided_slice:output:0$mpg_highway/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
mpg_highway/ReshapeReshapempg_highway/Cast:y:0"mpg_highway/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????i
style_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
style_indicator/ExpandDims
ExpandDimsfeatures_13'style_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????o
.style_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
(style_indicator/to_sparse_input/NotEqualNotEqual#style_indicator/ExpandDims:output:07style_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
'style_indicator/to_sparse_input/indicesWhere,style_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
&style_indicator/to_sparse_input/valuesGatherNd#style_indicator/ExpandDims:output:0/style_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
+style_indicator/to_sparse_input/dense_shapeShape#style_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
3style_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2@style_indicator_hash_table_lookup_lookuptablefindv2_table_handle/style_indicator/to_sparse_input/values:output:0Astyle_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????v
+style_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
style_indicator/SparseToDenseSparseToDense/style_indicator/to_sparse_input/indices:index:04style_indicator/to_sparse_input/dense_shape:output:0<style_indicator/hash_table_Lookup/LookupTableFindV2:values:04style_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????b
style_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
style_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    _
style_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :	?
style_indicator/one_hotOneHot%style_indicator/SparseToDense:dense:0&style_indicator/one_hot/depth:output:0&style_indicator/one_hot/Const:output:0(style_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????	x
%style_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
style_indicator/SumSum style_indicator/one_hot:output:0.style_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????	a
style_indicator/ShapeShapestyle_indicator/Sum:output:0*
T0*
_output_shapes
:m
#style_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%style_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%style_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
style_indicator/strided_sliceStridedSlicestyle_indicator/Shape:output:0,style_indicator/strided_slice/stack:output:0.style_indicator/strided_slice/stack_1:output:0.style_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
style_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :	?
style_indicator/Reshape/shapePack&style_indicator/strided_slice:output:0(style_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
style_indicator/ReshapeReshapestyle_indicator/Sum:output:0&style_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????	V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
concatConcatV2 Brand_indicator/Reshape:output:0Engine_V/Reshape:output:0!Engine_indicator/Reshape:output:0)Exterior_color_indicator/Reshape:output:0$Fuel_Type_indicator/Reshape:output:0Mileage/Reshape:output:0Name_indicator/Reshape:output:0'Transmission_indicator/Reshape:output:0Year/Reshape:output:0%drive_type_indicator/Reshape:output:0)interior_color_indicator/Reshape:output:0mpg_city/Reshape:output:0mpg_highway/Reshape:output:0 style_indicator/Reshape:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????	_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:??????????	?
NoOpNoOp4^Brand_indicator/hash_table_Lookup/LookupTableFindV25^Engine_indicator/hash_table_Lookup/LookupTableFindV2=^Exterior_color_indicator/hash_table_Lookup/LookupTableFindV28^Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV23^Name_indicator/hash_table_Lookup/LookupTableFindV2;^Transmission_indicator/hash_table_Lookup/LookupTableFindV29^drive_type_indicator/hash_table_Lookup/LookupTableFindV2=^interior_color_indicator/hash_table_Lookup/LookupTableFindV24^style_indicator/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : 2j
3Brand_indicator/hash_table_Lookup/LookupTableFindV23Brand_indicator/hash_table_Lookup/LookupTableFindV22l
4Engine_indicator/hash_table_Lookup/LookupTableFindV24Engine_indicator/hash_table_Lookup/LookupTableFindV22|
<Exterior_color_indicator/hash_table_Lookup/LookupTableFindV2<Exterior_color_indicator/hash_table_Lookup/LookupTableFindV22r
7Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV27Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV22h
2Name_indicator/hash_table_Lookup/LookupTableFindV22Name_indicator/hash_table_Lookup/LookupTableFindV22x
:Transmission_indicator/hash_table_Lookup/LookupTableFindV2:Transmission_indicator/hash_table_Lookup/LookupTableFindV22t
8drive_type_indicator/hash_table_Lookup/LookupTableFindV28drive_type_indicator/hash_table_Lookup/LookupTableFindV22|
<interior_color_indicator/hash_table_Lookup/LookupTableFindV2<interior_color_indicator/hash_table_Lookup/LookupTableFindV22j
3style_indicator/hash_table_Lookup/LookupTableFindV23style_indicator/hash_table_Lookup/LookupTableFindV2:M I
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:M	I
#
_output_shapes
:?????????
"
_user_specified_name
features:M
I
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
Ö
?
"__inference__traced_restore_824627
file_prefixF
7assignvariableop_car_price_predictor_normalization_mean:	?	L
=assignvariableop_1_car_price_predictor_normalization_variance:	?	D
:assignvariableop_2_car_price_predictor_normalization_count:	 E
2assignvariableop_3_car_price_predictor_fc_1_kernel:	?	@>
0assignvariableop_4_car_price_predictor_fc_1_bias:@D
2assignvariableop_5_car_price_predictor_fc_2_kernel:@ >
0assignvariableop_6_car_price_predictor_fc_2_bias: D
2assignvariableop_7_car_price_predictor_fc_3_kernel: 
>
0assignvariableop_8_car_price_predictor_fc_3_bias:
F
4assignvariableop_9_car_price_predictor_output_kernel:
A
3assignvariableop_10_car_price_predictor_output_bias:'
assignvariableop_11_adam_iter:	 )
assignvariableop_12_adam_beta_1: )
assignvariableop_13_adam_beta_2: (
assignvariableop_14_adam_decay: 0
&assignvariableop_15_adam_learning_rate: #
assignvariableop_16_total: #
assignvariableop_17_count: %
assignvariableop_18_total_1: %
assignvariableop_19_count_1: M
:assignvariableop_20_adam_car_price_predictor_fc_1_kernel_m:	?	@F
8assignvariableop_21_adam_car_price_predictor_fc_1_bias_m:@L
:assignvariableop_22_adam_car_price_predictor_fc_2_kernel_m:@ F
8assignvariableop_23_adam_car_price_predictor_fc_2_bias_m: L
:assignvariableop_24_adam_car_price_predictor_fc_3_kernel_m: 
F
8assignvariableop_25_adam_car_price_predictor_fc_3_bias_m:
N
<assignvariableop_26_adam_car_price_predictor_output_kernel_m:
H
:assignvariableop_27_adam_car_price_predictor_output_bias_m:M
:assignvariableop_28_adam_car_price_predictor_fc_1_kernel_v:	?	@F
8assignvariableop_29_adam_car_price_predictor_fc_1_bias_v:@L
:assignvariableop_30_adam_car_price_predictor_fc_2_kernel_v:@ F
8assignvariableop_31_adam_car_price_predictor_fc_2_bias_v: L
:assignvariableop_32_adam_car_price_predictor_fc_3_kernel_v: 
F
8assignvariableop_33_adam_car_price_predictor_fc_3_bias_v:
N
<assignvariableop_34_adam_car_price_predictor_output_kernel_v:
H
:assignvariableop_35_adam_car_price_predictor_output_bias_v:
identity_37??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*?
value?B?%B4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::*3
dtypes)
'2%		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp7assignvariableop_car_price_predictor_normalization_meanIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp=assignvariableop_1_car_price_predictor_normalization_varianceIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_2AssignVariableOp:assignvariableop_2_car_price_predictor_normalization_countIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOp2assignvariableop_3_car_price_predictor_fc_1_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOp0assignvariableop_4_car_price_predictor_fc_1_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOp2assignvariableop_5_car_price_predictor_fc_2_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp0assignvariableop_6_car_price_predictor_fc_2_biasIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOp2assignvariableop_7_car_price_predictor_fc_3_kernelIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOp0assignvariableop_8_car_price_predictor_fc_3_biasIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp4assignvariableop_9_car_price_predictor_output_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp3assignvariableop_10_car_price_predictor_output_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_iterIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpassignvariableop_12_adam_beta_1Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpassignvariableop_13_adam_beta_2Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_decayIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOp&assignvariableop_15_adam_learning_rateIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOpassignvariableop_16_totalIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOpassignvariableop_17_countIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOp:assignvariableop_20_adam_car_price_predictor_fc_1_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOp8assignvariableop_21_adam_car_price_predictor_fc_1_bias_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOp:assignvariableop_22_adam_car_price_predictor_fc_2_kernel_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOp8assignvariableop_23_adam_car_price_predictor_fc_2_bias_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOp:assignvariableop_24_adam_car_price_predictor_fc_3_kernel_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOp8assignvariableop_25_adam_car_price_predictor_fc_3_bias_mIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOp<assignvariableop_26_adam_car_price_predictor_output_kernel_mIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOp:assignvariableop_27_adam_car_price_predictor_output_bias_mIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp:assignvariableop_28_adam_car_price_predictor_fc_1_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp8assignvariableop_29_adam_car_price_predictor_fc_1_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOp:assignvariableop_30_adam_car_price_predictor_fc_2_kernel_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOp8assignvariableop_31_adam_car_price_predictor_fc_2_bias_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOp:assignvariableop_32_adam_car_price_predictor_fc_3_kernel_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOp8assignvariableop_33_adam_car_price_predictor_fc_3_bias_vIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOp<assignvariableop_34_adam_car_price_predictor_output_kernel_vIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOp:assignvariableop_35_adam_car_price_predictor_output_bias_vIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_36Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_37IdentityIdentity_36:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_37Identity_37:output:0*]
_input_shapesL
J: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
%__inference_FC_3_layer_call_fn_824054

inputs
unknown: 

	unknown_0:

identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_FC_3_layer_call_and_return_conditional_losses_821368o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
__inference_<lambda>_8242862
.table_init344_lookuptableimportv2_table_handle*
&table_init344_lookuptableimportv2_keys,
(table_init344_lookuptableimportv2_values	
identity??!table_init344/LookupTableImportV2?
!table_init344/LookupTableImportV2LookupTableImportV2.table_init344_lookuptableimportv2_table_handle&table_init344_lookuptableimportv2_keys(table_init344_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init344/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?:?2F
!table_init344/LookupTableImportV2!table_init344/LookupTableImportV2:!

_output_shapes	
:?:!

_output_shapes	
:?
?
?
__inference_<lambda>_8242622
.table_init225_lookuptableimportv2_table_handle*
&table_init225_lookuptableimportv2_keys,
(table_init225_lookuptableimportv2_values	
identity??!table_init225/LookupTableImportV2?
!table_init225/LookupTableImportV2LookupTableImportV2.table_init225_lookuptableimportv2_table_handle&table_init225_lookuptableimportv2_keys(table_init225_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init225/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init225/LookupTableImportV2!table_init225/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
4__inference_CAR_PRICE_PREDICTOR_layer_call_fn_822451
inputs_brand
inputs_engine
inputs_engine_v
inputs_exterior_color
inputs_fuel_type
inputs_mileage
inputs_name
inputs_transmission
inputs_year
inputs_drive_type
inputs_interior_color
inputs_mpg_city
inputs_mpg_highway
inputs_style
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9

unknown_10	

unknown_11

unknown_12	

unknown_13

unknown_14	

unknown_15

unknown_16	

unknown_17

unknown_18

unknown_19:	?	@

unknown_20:@

unknown_21:@ 

unknown_22: 

unknown_23: 


unknown_24:


unknown_25:


unknown_26:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_brandinputs_engineinputs_engine_vinputs_exterior_colorinputs_fuel_typeinputs_mileageinputs_nameinputs_transmissioninputs_yearinputs_drive_typeinputs_interior_colorinputs_mpg_cityinputs_mpg_highwayinputs_styleunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*5
Tin.
,2*									*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

"#$%&'()*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_CAR_PRICE_PREDICTOR_layer_call_and_return_conditional_losses_821391o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : :	?	:	?	: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
#
_output_shapes
:?????????
&
_user_specified_nameinputs/Brand:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/Engine:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Engine_V:ZV
#
_output_shapes
:?????????
/
_user_specified_nameinputs/Exterior_color:UQ
#
_output_shapes
:?????????
*
_user_specified_nameinputs/Fuel_Type:SO
#
_output_shapes
:?????????
(
_user_specified_nameinputs/Mileage:PL
#
_output_shapes
:?????????
%
_user_specified_nameinputs/Name:XT
#
_output_shapes
:?????????
-
_user_specified_nameinputs/Transmission:PL
#
_output_shapes
:?????????
%
_user_specified_nameinputs/Year:V	R
#
_output_shapes
:?????????
+
_user_specified_nameinputs/drive_type:Z
V
#
_output_shapes
:?????????
/
_user_specified_nameinputs/interior_color:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/mpg_city:WS
#
_output_shapes
:?????????
,
_user_specified_nameinputs/mpg_highway:QM
#
_output_shapes
:?????????
&
_user_specified_nameinputs/style:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :% !

_output_shapes
:	?	:%!!

_output_shapes
:	?	
?
?
__inference_<lambda>_8242942
.table_init380_lookuptableimportv2_table_handle*
&table_init380_lookuptableimportv2_keys,
(table_init380_lookuptableimportv2_values	
identity??!table_init380/LookupTableImportV2?
!table_init380/LookupTableImportV2LookupTableImportV2.table_init380_lookuptableimportv2_table_handle&table_init380_lookuptableimportv2_keys(table_init380_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init380/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init380/LookupTableImportV2!table_init380/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
4__inference_CAR_PRICE_PREDICTOR_layer_call_fn_822525
inputs_brand
inputs_engine
inputs_engine_v
inputs_exterior_color
inputs_fuel_type
inputs_mileage
inputs_name
inputs_transmission
inputs_year
inputs_drive_type
inputs_interior_color
inputs_mpg_city
inputs_mpg_highway
inputs_style
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9

unknown_10	

unknown_11

unknown_12	

unknown_13

unknown_14	

unknown_15

unknown_16	

unknown_17

unknown_18

unknown_19:	?	@

unknown_20:@

unknown_21:@ 

unknown_22: 

unknown_23: 


unknown_24:


unknown_25:


unknown_26:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_brandinputs_engineinputs_engine_vinputs_exterior_colorinputs_fuel_typeinputs_mileageinputs_nameinputs_transmissioninputs_yearinputs_drive_typeinputs_interior_colorinputs_mpg_cityinputs_mpg_highwayinputs_styleunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*5
Tin.
,2*									*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

"#$%&'()*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_CAR_PRICE_PREDICTOR_layer_call_and_return_conditional_losses_822076o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : :	?	:	?	: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
#
_output_shapes
:?????????
&
_user_specified_nameinputs/Brand:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/Engine:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Engine_V:ZV
#
_output_shapes
:?????????
/
_user_specified_nameinputs/Exterior_color:UQ
#
_output_shapes
:?????????
*
_user_specified_nameinputs/Fuel_Type:SO
#
_output_shapes
:?????????
(
_user_specified_nameinputs/Mileage:PL
#
_output_shapes
:?????????
%
_user_specified_nameinputs/Name:XT
#
_output_shapes
:?????????
-
_user_specified_nameinputs/Transmission:PL
#
_output_shapes
:?????????
%
_user_specified_nameinputs/Year:V	R
#
_output_shapes
:?????????
+
_user_specified_nameinputs/drive_type:Z
V
#
_output_shapes
:?????????
/
_user_specified_nameinputs/interior_color:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/mpg_city:WS
#
_output_shapes
:?????????
,
_user_specified_nameinputs/mpg_highway:QM
#
_output_shapes
:?????????
&
_user_specified_nameinputs/style:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :% !

_output_shapes
:	?	:%!!

_output_shapes
:	?	
?

?
@__inference_FC_3_layer_call_and_return_conditional_losses_821368

inputs0
matmul_readvariableop_resource: 
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: 
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????
a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
__inference__initializer_8241332
.table_init261_lookuptableimportv2_table_handle*
&table_init261_lookuptableimportv2_keys,
(table_init261_lookuptableimportv2_values	
identity??!table_init261/LookupTableImportV2?
!table_init261/LookupTableImportV2LookupTableImportV2.table_init261_lookuptableimportv2_table_handle&table_init261_lookuptableimportv2_keys(table_init261_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init261/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?:?2F
!table_init261/LookupTableImportV2!table_init261/LookupTableImportV2:!

_output_shapes	
:?:!

_output_shapes	
:?
?5
?	
O__inference_CAR_PRICE_PREDICTOR_layer_call_and_return_conditional_losses_822076

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
inputs_8
inputs_9
	inputs_10
	inputs_11
	inputs_12
	inputs_13
dense_features_822011
dense_features_822013	
dense_features_822015
dense_features_822017	
dense_features_822019
dense_features_822021	
dense_features_822023
dense_features_822025	
dense_features_822027
dense_features_822029	
dense_features_822031
dense_features_822033	
dense_features_822035
dense_features_822037	
dense_features_822039
dense_features_822041	
dense_features_822043
dense_features_822045	
normalization_sub_y
normalization_sqrt_x
fc_1_822055:	?	@
fc_1_822057:@
fc_2_822060:@ 
fc_2_822062: 
fc_3_822065: 

fc_3_822067:

output_822070:

output_822072:
identity??FC_1/StatefulPartitionedCall?FC_2/StatefulPartitionedCall?FC_3/StatefulPartitionedCall?Output/StatefulPartitionedCall?&dense_features/StatefulPartitionedCall?
&dense_features/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12	inputs_13dense_features_822011dense_features_822013dense_features_822015dense_features_822017dense_features_822019dense_features_822021dense_features_822023dense_features_822025dense_features_822027dense_features_822029dense_features_822031dense_features_822033dense_features_822035dense_features_822037dense_features_822039dense_features_822041dense_features_822043dense_features_822045*+
Tin$
"2 									*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_821867?
normalization/subSub/dense_features/StatefulPartitionedCall:output:0normalization_sub_y*
T0*(
_output_shapes
:??????????	Z
normalization/SqrtSqrtnormalization_sqrt_x*
T0*
_output_shapes
:	?	\
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*
_output_shapes
:	?	?
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*(
_output_shapes
:??????????	?
FC_1/StatefulPartitionedCallStatefulPartitionedCallnormalization/truediv:z:0fc_1_822055fc_1_822057*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_FC_1_layer_call_and_return_conditional_losses_821334?
FC_2/StatefulPartitionedCallStatefulPartitionedCall%FC_1/StatefulPartitionedCall:output:0fc_2_822060fc_2_822062*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_FC_2_layer_call_and_return_conditional_losses_821351?
FC_3/StatefulPartitionedCallStatefulPartitionedCall%FC_2/StatefulPartitionedCall:output:0fc_3_822065fc_3_822067*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_FC_3_layer_call_and_return_conditional_losses_821368?
Output/StatefulPartitionedCallStatefulPartitionedCall%FC_3/StatefulPartitionedCall:output:0output_822070output_822072*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_Output_layer_call_and_return_conditional_losses_821384v
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^FC_1/StatefulPartitionedCall^FC_2/StatefulPartitionedCall^FC_3/StatefulPartitionedCall^Output/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : :	?	:	?	: : : : : : : : 2<
FC_1/StatefulPartitionedCallFC_1/StatefulPartitionedCall2<
FC_2/StatefulPartitionedCallFC_2/StatefulPartitionedCall2<
FC_3/StatefulPartitionedCallFC_3/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall:K G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:K	G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:K
G
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:KG
#
_output_shapes
:?????????
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :% !

_output_shapes
:	?	:%!!

_output_shapes
:	?	
?

?
@__inference_FC_2_layer_call_and_return_conditional_losses_824045

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
__inference_<lambda>_8243182
.table_init521_lookuptableimportv2_table_handle*
&table_init521_lookuptableimportv2_keys,
(table_init521_lookuptableimportv2_values	
identity??!table_init521/LookupTableImportV2?
!table_init521/LookupTableImportV2LookupTableImportV2.table_init521_lookuptableimportv2_table_handle&table_init521_lookuptableimportv2_keys(table_init521_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init521/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :	:	2F
!table_init521/LookupTableImportV2!table_init521/LookupTableImportV2: 

_output_shapes
:	: 

_output_shapes
:	
ł
?
J__inference_dense_features_layer_call_and_return_conditional_losses_823698
features_brand
features_engine
features_engine_v
features_exterior_color
features_fuel_type
features_mileage
features_name
features_transmission
features_year
features_drive_type
features_interior_color
features_mpg_city
features_mpg_highway
features_styleD
@brand_indicator_hash_table_lookup_lookuptablefindv2_table_handleE
Abrand_indicator_hash_table_lookup_lookuptablefindv2_default_value	E
Aengine_indicator_hash_table_lookup_lookuptablefindv2_table_handleF
Bengine_indicator_hash_table_lookup_lookuptablefindv2_default_value	M
Iexterior_color_indicator_hash_table_lookup_lookuptablefindv2_table_handleN
Jexterior_color_indicator_hash_table_lookup_lookuptablefindv2_default_value	H
Dfuel_type_indicator_hash_table_lookup_lookuptablefindv2_table_handleI
Efuel_type_indicator_hash_table_lookup_lookuptablefindv2_default_value	C
?name_indicator_hash_table_lookup_lookuptablefindv2_table_handleD
@name_indicator_hash_table_lookup_lookuptablefindv2_default_value	K
Gtransmission_indicator_hash_table_lookup_lookuptablefindv2_table_handleL
Htransmission_indicator_hash_table_lookup_lookuptablefindv2_default_value	I
Edrive_type_indicator_hash_table_lookup_lookuptablefindv2_table_handleJ
Fdrive_type_indicator_hash_table_lookup_lookuptablefindv2_default_value	M
Iinterior_color_indicator_hash_table_lookup_lookuptablefindv2_table_handleN
Jinterior_color_indicator_hash_table_lookup_lookuptablefindv2_default_value	D
@style_indicator_hash_table_lookup_lookuptablefindv2_table_handleE
Astyle_indicator_hash_table_lookup_lookuptablefindv2_default_value	
identity??3Brand_indicator/hash_table_Lookup/LookupTableFindV2?4Engine_indicator/hash_table_Lookup/LookupTableFindV2?<Exterior_color_indicator/hash_table_Lookup/LookupTableFindV2?7Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV2?2Name_indicator/hash_table_Lookup/LookupTableFindV2?:Transmission_indicator/hash_table_Lookup/LookupTableFindV2?8drive_type_indicator/hash_table_Lookup/LookupTableFindV2?<interior_color_indicator/hash_table_Lookup/LookupTableFindV2?3style_indicator/hash_table_Lookup/LookupTableFindV2i
Brand_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Brand_indicator/ExpandDims
ExpandDimsfeatures_brand'Brand_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????o
.Brand_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
(Brand_indicator/to_sparse_input/NotEqualNotEqual#Brand_indicator/ExpandDims:output:07Brand_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
'Brand_indicator/to_sparse_input/indicesWhere,Brand_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
&Brand_indicator/to_sparse_input/valuesGatherNd#Brand_indicator/ExpandDims:output:0/Brand_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
+Brand_indicator/to_sparse_input/dense_shapeShape#Brand_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
3Brand_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2@brand_indicator_hash_table_lookup_lookuptablefindv2_table_handle/Brand_indicator/to_sparse_input/values:output:0Abrand_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????v
+Brand_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Brand_indicator/SparseToDenseSparseToDense/Brand_indicator/to_sparse_input/indices:index:04Brand_indicator/to_sparse_input/dense_shape:output:0<Brand_indicator/hash_table_Lookup/LookupTableFindV2:values:04Brand_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????b
Brand_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
Brand_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    _
Brand_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :+?
Brand_indicator/one_hotOneHot%Brand_indicator/SparseToDense:dense:0&Brand_indicator/one_hot/depth:output:0&Brand_indicator/one_hot/Const:output:0(Brand_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????+x
%Brand_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Brand_indicator/SumSum Brand_indicator/one_hot:output:0.Brand_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????+a
Brand_indicator/ShapeShapeBrand_indicator/Sum:output:0*
T0*
_output_shapes
:m
#Brand_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%Brand_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%Brand_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Brand_indicator/strided_sliceStridedSliceBrand_indicator/Shape:output:0,Brand_indicator/strided_slice/stack:output:0.Brand_indicator/strided_slice/stack_1:output:0.Brand_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
Brand_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :+?
Brand_indicator/Reshape/shapePack&Brand_indicator/strided_slice:output:0(Brand_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Brand_indicator/ReshapeReshapeBrand_indicator/Sum:output:0&Brand_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????+b
Engine_V/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Engine_V/ExpandDims
ExpandDimsfeatures_engine_v Engine_V/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????Z
Engine_V/ShapeShapeEngine_V/ExpandDims:output:0*
T0*
_output_shapes
:f
Engine_V/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
Engine_V/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
Engine_V/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Engine_V/strided_sliceStridedSliceEngine_V/Shape:output:0%Engine_V/strided_slice/stack:output:0'Engine_V/strided_slice/stack_1:output:0'Engine_V/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
Engine_V/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Engine_V/Reshape/shapePackEngine_V/strided_slice:output:0!Engine_V/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Engine_V/ReshapeReshapeEngine_V/ExpandDims:output:0Engine_V/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????j
Engine_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Engine_indicator/ExpandDims
ExpandDimsfeatures_engine(Engine_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????p
/Engine_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
)Engine_indicator/to_sparse_input/NotEqualNotEqual$Engine_indicator/ExpandDims:output:08Engine_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
(Engine_indicator/to_sparse_input/indicesWhere-Engine_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
'Engine_indicator/to_sparse_input/valuesGatherNd$Engine_indicator/ExpandDims:output:00Engine_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
,Engine_indicator/to_sparse_input/dense_shapeShape$Engine_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
4Engine_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Aengine_indicator_hash_table_lookup_lookuptablefindv2_table_handle0Engine_indicator/to_sparse_input/values:output:0Bengine_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????w
,Engine_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Engine_indicator/SparseToDenseSparseToDense0Engine_indicator/to_sparse_input/indices:index:05Engine_indicator/to_sparse_input/dense_shape:output:0=Engine_indicator/hash_table_Lookup/LookupTableFindV2:values:05Engine_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????c
Engine_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
 Engine_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    `
Engine_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
Engine_indicator/one_hotOneHot&Engine_indicator/SparseToDense:dense:0'Engine_indicator/one_hot/depth:output:0'Engine_indicator/one_hot/Const:output:0)Engine_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????y
&Engine_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Engine_indicator/SumSum!Engine_indicator/one_hot:output:0/Engine_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????c
Engine_indicator/ShapeShapeEngine_indicator/Sum:output:0*
T0*
_output_shapes
:n
$Engine_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&Engine_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&Engine_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Engine_indicator/strided_sliceStridedSliceEngine_indicator/Shape:output:0-Engine_indicator/strided_slice/stack:output:0/Engine_indicator/strided_slice/stack_1:output:0/Engine_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 Engine_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Engine_indicator/Reshape/shapePack'Engine_indicator/strided_slice:output:0)Engine_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Engine_indicator/ReshapeReshapeEngine_indicator/Sum:output:0'Engine_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????r
'Exterior_color_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
#Exterior_color_indicator/ExpandDims
ExpandDimsfeatures_exterior_color0Exterior_color_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????x
7Exterior_color_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
1Exterior_color_indicator/to_sparse_input/NotEqualNotEqual,Exterior_color_indicator/ExpandDims:output:0@Exterior_color_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
0Exterior_color_indicator/to_sparse_input/indicesWhere5Exterior_color_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
/Exterior_color_indicator/to_sparse_input/valuesGatherNd,Exterior_color_indicator/ExpandDims:output:08Exterior_color_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
4Exterior_color_indicator/to_sparse_input/dense_shapeShape,Exterior_color_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
<Exterior_color_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Iexterior_color_indicator_hash_table_lookup_lookuptablefindv2_table_handle8Exterior_color_indicator/to_sparse_input/values:output:0Jexterior_color_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????
4Exterior_color_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
&Exterior_color_indicator/SparseToDenseSparseToDense8Exterior_color_indicator/to_sparse_input/indices:index:0=Exterior_color_indicator/to_sparse_input/dense_shape:output:0EExterior_color_indicator/hash_table_Lookup/LookupTableFindV2:values:0=Exterior_color_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????k
&Exterior_color_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??m
(Exterior_color_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    i
&Exterior_color_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
 Exterior_color_indicator/one_hotOneHot.Exterior_color_indicator/SparseToDense:dense:0/Exterior_color_indicator/one_hot/depth:output:0/Exterior_color_indicator/one_hot/Const:output:01Exterior_color_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:???????????
.Exterior_color_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Exterior_color_indicator/SumSum)Exterior_color_indicator/one_hot:output:07Exterior_color_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:??????????s
Exterior_color_indicator/ShapeShape%Exterior_color_indicator/Sum:output:0*
T0*
_output_shapes
:v
,Exterior_color_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.Exterior_color_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.Exterior_color_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&Exterior_color_indicator/strided_sliceStridedSlice'Exterior_color_indicator/Shape:output:05Exterior_color_indicator/strided_slice/stack:output:07Exterior_color_indicator/strided_slice/stack_1:output:07Exterior_color_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
(Exterior_color_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
&Exterior_color_indicator/Reshape/shapePack/Exterior_color_indicator/strided_slice:output:01Exterior_color_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
 Exterior_color_indicator/ReshapeReshape%Exterior_color_indicator/Sum:output:0/Exterior_color_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????m
"Fuel_Type_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Fuel_Type_indicator/ExpandDims
ExpandDimsfeatures_fuel_type+Fuel_Type_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????s
2Fuel_Type_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
,Fuel_Type_indicator/to_sparse_input/NotEqualNotEqual'Fuel_Type_indicator/ExpandDims:output:0;Fuel_Type_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
+Fuel_Type_indicator/to_sparse_input/indicesWhere0Fuel_Type_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
*Fuel_Type_indicator/to_sparse_input/valuesGatherNd'Fuel_Type_indicator/ExpandDims:output:03Fuel_Type_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
/Fuel_Type_indicator/to_sparse_input/dense_shapeShape'Fuel_Type_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
7Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Dfuel_type_indicator_hash_table_lookup_lookuptablefindv2_table_handle3Fuel_Type_indicator/to_sparse_input/values:output:0Efuel_type_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????z
/Fuel_Type_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
!Fuel_Type_indicator/SparseToDenseSparseToDense3Fuel_Type_indicator/to_sparse_input/indices:index:08Fuel_Type_indicator/to_sparse_input/dense_shape:output:0@Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV2:values:08Fuel_Type_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????f
!Fuel_Type_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??h
#Fuel_Type_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    c
!Fuel_Type_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
Fuel_Type_indicator/one_hotOneHot)Fuel_Type_indicator/SparseToDense:dense:0*Fuel_Type_indicator/one_hot/depth:output:0*Fuel_Type_indicator/one_hot/Const:output:0,Fuel_Type_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????|
)Fuel_Type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Fuel_Type_indicator/SumSum$Fuel_Type_indicator/one_hot:output:02Fuel_Type_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????i
Fuel_Type_indicator/ShapeShape Fuel_Type_indicator/Sum:output:0*
T0*
_output_shapes
:q
'Fuel_Type_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)Fuel_Type_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)Fuel_Type_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!Fuel_Type_indicator/strided_sliceStridedSlice"Fuel_Type_indicator/Shape:output:00Fuel_Type_indicator/strided_slice/stack:output:02Fuel_Type_indicator/strided_slice/stack_1:output:02Fuel_Type_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#Fuel_Type_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
!Fuel_Type_indicator/Reshape/shapePack*Fuel_Type_indicator/strided_slice:output:0,Fuel_Type_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Fuel_Type_indicator/ReshapeReshape Fuel_Type_indicator/Sum:output:0*Fuel_Type_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????a
Mileage/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Mileage/ExpandDims
ExpandDimsfeatures_mileageMileage/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????r
Mileage/CastCastMileage/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????M
Mileage/ShapeShapeMileage/Cast:y:0*
T0*
_output_shapes
:e
Mileage/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
Mileage/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
Mileage/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Mileage/strided_sliceStridedSliceMileage/Shape:output:0$Mileage/strided_slice/stack:output:0&Mileage/strided_slice/stack_1:output:0&Mileage/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
Mileage/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Mileage/Reshape/shapePackMileage/strided_slice:output:0 Mileage/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:~
Mileage/ReshapeReshapeMileage/Cast:y:0Mileage/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????h
Name_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Name_indicator/ExpandDims
ExpandDimsfeatures_name&Name_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????n
-Name_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
'Name_indicator/to_sparse_input/NotEqualNotEqual"Name_indicator/ExpandDims:output:06Name_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
&Name_indicator/to_sparse_input/indicesWhere+Name_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
%Name_indicator/to_sparse_input/valuesGatherNd"Name_indicator/ExpandDims:output:0.Name_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
*Name_indicator/to_sparse_input/dense_shapeShape"Name_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
2Name_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2?name_indicator_hash_table_lookup_lookuptablefindv2_table_handle.Name_indicator/to_sparse_input/values:output:0@name_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????u
*Name_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Name_indicator/SparseToDenseSparseToDense.Name_indicator/to_sparse_input/indices:index:03Name_indicator/to_sparse_input/dense_shape:output:0;Name_indicator/hash_table_Lookup/LookupTableFindV2:values:03Name_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????a
Name_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??c
Name_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    _
Name_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
Name_indicator/one_hotOneHot$Name_indicator/SparseToDense:dense:0%Name_indicator/one_hot/depth:output:0%Name_indicator/one_hot/Const:output:0'Name_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:??????????w
$Name_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Name_indicator/SumSumName_indicator/one_hot:output:0-Name_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:??????????_
Name_indicator/ShapeShapeName_indicator/Sum:output:0*
T0*
_output_shapes
:l
"Name_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$Name_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$Name_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Name_indicator/strided_sliceStridedSliceName_indicator/Shape:output:0+Name_indicator/strided_slice/stack:output:0-Name_indicator/strided_slice/stack_1:output:0-Name_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
Name_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
Name_indicator/Reshape/shapePack%Name_indicator/strided_slice:output:0'Name_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Name_indicator/ReshapeReshapeName_indicator/Sum:output:0%Name_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????p
%Transmission_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
!Transmission_indicator/ExpandDims
ExpandDimsfeatures_transmission.Transmission_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????v
5Transmission_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
/Transmission_indicator/to_sparse_input/NotEqualNotEqual*Transmission_indicator/ExpandDims:output:0>Transmission_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
.Transmission_indicator/to_sparse_input/indicesWhere3Transmission_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
-Transmission_indicator/to_sparse_input/valuesGatherNd*Transmission_indicator/ExpandDims:output:06Transmission_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
2Transmission_indicator/to_sparse_input/dense_shapeShape*Transmission_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
:Transmission_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Gtransmission_indicator_hash_table_lookup_lookuptablefindv2_table_handle6Transmission_indicator/to_sparse_input/values:output:0Htransmission_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????}
2Transmission_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
$Transmission_indicator/SparseToDenseSparseToDense6Transmission_indicator/to_sparse_input/indices:index:0;Transmission_indicator/to_sparse_input/dense_shape:output:0CTransmission_indicator/hash_table_Lookup/LookupTableFindV2:values:0;Transmission_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????i
$Transmission_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??k
&Transmission_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    f
$Transmission_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
Transmission_indicator/one_hotOneHot,Transmission_indicator/SparseToDense:dense:0-Transmission_indicator/one_hot/depth:output:0-Transmission_indicator/one_hot/Const:output:0/Transmission_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????
,Transmission_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Transmission_indicator/SumSum'Transmission_indicator/one_hot:output:05Transmission_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????o
Transmission_indicator/ShapeShape#Transmission_indicator/Sum:output:0*
T0*
_output_shapes
:t
*Transmission_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,Transmission_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,Transmission_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$Transmission_indicator/strided_sliceStridedSlice%Transmission_indicator/Shape:output:03Transmission_indicator/strided_slice/stack:output:05Transmission_indicator/strided_slice/stack_1:output:05Transmission_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&Transmission_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
$Transmission_indicator/Reshape/shapePack-Transmission_indicator/strided_slice:output:0/Transmission_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Transmission_indicator/ReshapeReshape#Transmission_indicator/Sum:output:0-Transmission_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????^
Year/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????|
Year/ExpandDims
ExpandDimsfeatures_yearYear/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????l
	Year/CastCastYear/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????G

Year/ShapeShapeYear/Cast:y:0*
T0*
_output_shapes
:b
Year/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
Year/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
Year/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Year/strided_sliceStridedSliceYear/Shape:output:0!Year/strided_slice/stack:output:0#Year/strided_slice/stack_1:output:0#Year/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
Year/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Year/Reshape/shapePackYear/strided_slice:output:0Year/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:u
Year/ReshapeReshapeYear/Cast:y:0Year/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????n
#drive_type_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
drive_type_indicator/ExpandDims
ExpandDimsfeatures_drive_type,drive_type_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????t
3drive_type_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
-drive_type_indicator/to_sparse_input/NotEqualNotEqual(drive_type_indicator/ExpandDims:output:0<drive_type_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
,drive_type_indicator/to_sparse_input/indicesWhere1drive_type_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
+drive_type_indicator/to_sparse_input/valuesGatherNd(drive_type_indicator/ExpandDims:output:04drive_type_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
0drive_type_indicator/to_sparse_input/dense_shapeShape(drive_type_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
8drive_type_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Edrive_type_indicator_hash_table_lookup_lookuptablefindv2_table_handle4drive_type_indicator/to_sparse_input/values:output:0Fdrive_type_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????{
0drive_type_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
"drive_type_indicator/SparseToDenseSparseToDense4drive_type_indicator/to_sparse_input/indices:index:09drive_type_indicator/to_sparse_input/dense_shape:output:0Adrive_type_indicator/hash_table_Lookup/LookupTableFindV2:values:09drive_type_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????g
"drive_type_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??i
$drive_type_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    d
"drive_type_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
drive_type_indicator/one_hotOneHot*drive_type_indicator/SparseToDense:dense:0+drive_type_indicator/one_hot/depth:output:0+drive_type_indicator/one_hot/Const:output:0-drive_type_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????}
*drive_type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
drive_type_indicator/SumSum%drive_type_indicator/one_hot:output:03drive_type_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????k
drive_type_indicator/ShapeShape!drive_type_indicator/Sum:output:0*
T0*
_output_shapes
:r
(drive_type_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*drive_type_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*drive_type_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"drive_type_indicator/strided_sliceStridedSlice#drive_type_indicator/Shape:output:01drive_type_indicator/strided_slice/stack:output:03drive_type_indicator/strided_slice/stack_1:output:03drive_type_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$drive_type_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
"drive_type_indicator/Reshape/shapePack+drive_type_indicator/strided_slice:output:0-drive_type_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
drive_type_indicator/ReshapeReshape!drive_type_indicator/Sum:output:0+drive_type_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????r
'interior_color_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
#interior_color_indicator/ExpandDims
ExpandDimsfeatures_interior_color0interior_color_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????x
7interior_color_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
1interior_color_indicator/to_sparse_input/NotEqualNotEqual,interior_color_indicator/ExpandDims:output:0@interior_color_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
0interior_color_indicator/to_sparse_input/indicesWhere5interior_color_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
/interior_color_indicator/to_sparse_input/valuesGatherNd,interior_color_indicator/ExpandDims:output:08interior_color_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
4interior_color_indicator/to_sparse_input/dense_shapeShape,interior_color_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
<interior_color_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Iinterior_color_indicator_hash_table_lookup_lookuptablefindv2_table_handle8interior_color_indicator/to_sparse_input/values:output:0Jinterior_color_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????
4interior_color_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
&interior_color_indicator/SparseToDenseSparseToDense8interior_color_indicator/to_sparse_input/indices:index:0=interior_color_indicator/to_sparse_input/dense_shape:output:0Einterior_color_indicator/hash_table_Lookup/LookupTableFindV2:values:0=interior_color_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????k
&interior_color_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??m
(interior_color_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    i
&interior_color_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
 interior_color_indicator/one_hotOneHot.interior_color_indicator/SparseToDense:dense:0/interior_color_indicator/one_hot/depth:output:0/interior_color_indicator/one_hot/Const:output:01interior_color_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:???????????
.interior_color_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
interior_color_indicator/SumSum)interior_color_indicator/one_hot:output:07interior_color_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:??????????s
interior_color_indicator/ShapeShape%interior_color_indicator/Sum:output:0*
T0*
_output_shapes
:v
,interior_color_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.interior_color_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.interior_color_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&interior_color_indicator/strided_sliceStridedSlice'interior_color_indicator/Shape:output:05interior_color_indicator/strided_slice/stack:output:07interior_color_indicator/strided_slice/stack_1:output:07interior_color_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
(interior_color_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
&interior_color_indicator/Reshape/shapePack/interior_color_indicator/strided_slice:output:01interior_color_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
 interior_color_indicator/ReshapeReshape%interior_color_indicator/Sum:output:0/interior_color_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????b
mpg_city/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
mpg_city/ExpandDims
ExpandDimsfeatures_mpg_city mpg_city/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????t
mpg_city/CastCastmpg_city/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????O
mpg_city/ShapeShapempg_city/Cast:y:0*
T0*
_output_shapes
:f
mpg_city/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
mpg_city/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
mpg_city/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
mpg_city/strided_sliceStridedSlicempg_city/Shape:output:0%mpg_city/strided_slice/stack:output:0'mpg_city/strided_slice/stack_1:output:0'mpg_city/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
mpg_city/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
mpg_city/Reshape/shapePackmpg_city/strided_slice:output:0!mpg_city/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
mpg_city/ReshapeReshapempg_city/Cast:y:0mpg_city/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????e
mpg_highway/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
mpg_highway/ExpandDims
ExpandDimsfeatures_mpg_highway#mpg_highway/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????z
mpg_highway/CastCastmpg_highway/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????U
mpg_highway/ShapeShapempg_highway/Cast:y:0*
T0*
_output_shapes
:i
mpg_highway/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!mpg_highway/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!mpg_highway/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
mpg_highway/strided_sliceStridedSlicempg_highway/Shape:output:0(mpg_highway/strided_slice/stack:output:0*mpg_highway/strided_slice/stack_1:output:0*mpg_highway/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
mpg_highway/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
mpg_highway/Reshape/shapePack"mpg_highway/strided_slice:output:0$mpg_highway/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
mpg_highway/ReshapeReshapempg_highway/Cast:y:0"mpg_highway/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????i
style_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
style_indicator/ExpandDims
ExpandDimsfeatures_style'style_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????o
.style_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
(style_indicator/to_sparse_input/NotEqualNotEqual#style_indicator/ExpandDims:output:07style_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
'style_indicator/to_sparse_input/indicesWhere,style_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
&style_indicator/to_sparse_input/valuesGatherNd#style_indicator/ExpandDims:output:0/style_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
+style_indicator/to_sparse_input/dense_shapeShape#style_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
3style_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2@style_indicator_hash_table_lookup_lookuptablefindv2_table_handle/style_indicator/to_sparse_input/values:output:0Astyle_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????v
+style_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
style_indicator/SparseToDenseSparseToDense/style_indicator/to_sparse_input/indices:index:04style_indicator/to_sparse_input/dense_shape:output:0<style_indicator/hash_table_Lookup/LookupTableFindV2:values:04style_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????b
style_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
style_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    _
style_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :	?
style_indicator/one_hotOneHot%style_indicator/SparseToDense:dense:0&style_indicator/one_hot/depth:output:0&style_indicator/one_hot/Const:output:0(style_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????	x
%style_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
style_indicator/SumSum style_indicator/one_hot:output:0.style_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????	a
style_indicator/ShapeShapestyle_indicator/Sum:output:0*
T0*
_output_shapes
:m
#style_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%style_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%style_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
style_indicator/strided_sliceStridedSlicestyle_indicator/Shape:output:0,style_indicator/strided_slice/stack:output:0.style_indicator/strided_slice/stack_1:output:0.style_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
style_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :	?
style_indicator/Reshape/shapePack&style_indicator/strided_slice:output:0(style_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
style_indicator/ReshapeReshapestyle_indicator/Sum:output:0&style_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????	V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
concatConcatV2 Brand_indicator/Reshape:output:0Engine_V/Reshape:output:0!Engine_indicator/Reshape:output:0)Exterior_color_indicator/Reshape:output:0$Fuel_Type_indicator/Reshape:output:0Mileage/Reshape:output:0Name_indicator/Reshape:output:0'Transmission_indicator/Reshape:output:0Year/Reshape:output:0%drive_type_indicator/Reshape:output:0)interior_color_indicator/Reshape:output:0mpg_city/Reshape:output:0mpg_highway/Reshape:output:0 style_indicator/Reshape:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????	_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:??????????	?
NoOpNoOp4^Brand_indicator/hash_table_Lookup/LookupTableFindV25^Engine_indicator/hash_table_Lookup/LookupTableFindV2=^Exterior_color_indicator/hash_table_Lookup/LookupTableFindV28^Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV23^Name_indicator/hash_table_Lookup/LookupTableFindV2;^Transmission_indicator/hash_table_Lookup/LookupTableFindV29^drive_type_indicator/hash_table_Lookup/LookupTableFindV2=^interior_color_indicator/hash_table_Lookup/LookupTableFindV24^style_indicator/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : 2j
3Brand_indicator/hash_table_Lookup/LookupTableFindV23Brand_indicator/hash_table_Lookup/LookupTableFindV22l
4Engine_indicator/hash_table_Lookup/LookupTableFindV24Engine_indicator/hash_table_Lookup/LookupTableFindV22|
<Exterior_color_indicator/hash_table_Lookup/LookupTableFindV2<Exterior_color_indicator/hash_table_Lookup/LookupTableFindV22r
7Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV27Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV22h
2Name_indicator/hash_table_Lookup/LookupTableFindV22Name_indicator/hash_table_Lookup/LookupTableFindV22x
:Transmission_indicator/hash_table_Lookup/LookupTableFindV2:Transmission_indicator/hash_table_Lookup/LookupTableFindV22t
8drive_type_indicator/hash_table_Lookup/LookupTableFindV28drive_type_indicator/hash_table_Lookup/LookupTableFindV22|
<interior_color_indicator/hash_table_Lookup/LookupTableFindV2<interior_color_indicator/hash_table_Lookup/LookupTableFindV22j
3style_indicator/hash_table_Lookup/LookupTableFindV23style_indicator/hash_table_Lookup/LookupTableFindV2:S O
#
_output_shapes
:?????????
(
_user_specified_namefeatures/Brand:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/Engine:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Engine_V:\X
#
_output_shapes
:?????????
1
_user_specified_namefeatures/Exterior_color:WS
#
_output_shapes
:?????????
,
_user_specified_namefeatures/Fuel_Type:UQ
#
_output_shapes
:?????????
*
_user_specified_namefeatures/Mileage:RN
#
_output_shapes
:?????????
'
_user_specified_namefeatures/Name:ZV
#
_output_shapes
:?????????
/
_user_specified_namefeatures/Transmission:RN
#
_output_shapes
:?????????
'
_user_specified_namefeatures/Year:X	T
#
_output_shapes
:?????????
-
_user_specified_namefeatures/drive_type:\
X
#
_output_shapes
:?????????
1
_user_specified_namefeatures/interior_color:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/mpg_city:YU
#
_output_shapes
:?????????
.
_user_specified_namefeatures/mpg_highway:SO
#
_output_shapes
:?????????
(
_user_specified_namefeatures/style:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?
;
__inference__creator_824161
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name345*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
;
__inference__creator_824179
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name381*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
;
__inference__creator_824089
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name180*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
-
__inference__destroyer_824210
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
-
__inference__destroyer_824246
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
__inference_<lambda>_8243022
.table_init427_lookuptableimportv2_table_handle*
&table_init427_lookuptableimportv2_keys,
(table_init427_lookuptableimportv2_values	
identity??!table_init427/LookupTableImportV2?
!table_init427/LookupTableImportV2LookupTableImportV2.table_init427_lookuptableimportv2_table_handle&table_init427_lookuptableimportv2_keys(table_init427_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init427/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init427/LookupTableImportV2!table_init427/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?

?
@__inference_FC_1_layer_call_and_return_conditional_losses_821334

inputs1
matmul_readvariableop_resource:	?	@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????	
 
_user_specified_nameinputs
?Q
?
__inference__traced_save_824509
file_prefixE
Asavev2_car_price_predictor_normalization_mean_read_readvariableopI
Esavev2_car_price_predictor_normalization_variance_read_readvariableopF
Bsavev2_car_price_predictor_normalization_count_read_readvariableop	>
:savev2_car_price_predictor_fc_1_kernel_read_readvariableop<
8savev2_car_price_predictor_fc_1_bias_read_readvariableop>
:savev2_car_price_predictor_fc_2_kernel_read_readvariableop<
8savev2_car_price_predictor_fc_2_bias_read_readvariableop>
:savev2_car_price_predictor_fc_3_kernel_read_readvariableop<
8savev2_car_price_predictor_fc_3_bias_read_readvariableop@
<savev2_car_price_predictor_output_kernel_read_readvariableop>
:savev2_car_price_predictor_output_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableopE
Asavev2_adam_car_price_predictor_fc_1_kernel_m_read_readvariableopC
?savev2_adam_car_price_predictor_fc_1_bias_m_read_readvariableopE
Asavev2_adam_car_price_predictor_fc_2_kernel_m_read_readvariableopC
?savev2_adam_car_price_predictor_fc_2_bias_m_read_readvariableopE
Asavev2_adam_car_price_predictor_fc_3_kernel_m_read_readvariableopC
?savev2_adam_car_price_predictor_fc_3_bias_m_read_readvariableopG
Csavev2_adam_car_price_predictor_output_kernel_m_read_readvariableopE
Asavev2_adam_car_price_predictor_output_bias_m_read_readvariableopE
Asavev2_adam_car_price_predictor_fc_1_kernel_v_read_readvariableopC
?savev2_adam_car_price_predictor_fc_1_bias_v_read_readvariableopE
Asavev2_adam_car_price_predictor_fc_2_kernel_v_read_readvariableopC
?savev2_adam_car_price_predictor_fc_2_bias_v_read_readvariableopE
Asavev2_adam_car_price_predictor_fc_3_kernel_v_read_readvariableopC
?savev2_adam_car_price_predictor_fc_3_bias_v_read_readvariableopG
Csavev2_adam_car_price_predictor_output_kernel_v_read_readvariableopE
Asavev2_adam_car_price_predictor_output_bias_v_read_readvariableop
savev2_const_29

identity_1??MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*?
value?B?%B4layer_with_weights-0/mean/.ATTRIBUTES/VARIABLE_VALUEB8layer_with_weights-0/variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-0/count/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:%*
dtype0*]
valueTBR%B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Asavev2_car_price_predictor_normalization_mean_read_readvariableopEsavev2_car_price_predictor_normalization_variance_read_readvariableopBsavev2_car_price_predictor_normalization_count_read_readvariableop:savev2_car_price_predictor_fc_1_kernel_read_readvariableop8savev2_car_price_predictor_fc_1_bias_read_readvariableop:savev2_car_price_predictor_fc_2_kernel_read_readvariableop8savev2_car_price_predictor_fc_2_bias_read_readvariableop:savev2_car_price_predictor_fc_3_kernel_read_readvariableop8savev2_car_price_predictor_fc_3_bias_read_readvariableop<savev2_car_price_predictor_output_kernel_read_readvariableop:savev2_car_price_predictor_output_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableopAsavev2_adam_car_price_predictor_fc_1_kernel_m_read_readvariableop?savev2_adam_car_price_predictor_fc_1_bias_m_read_readvariableopAsavev2_adam_car_price_predictor_fc_2_kernel_m_read_readvariableop?savev2_adam_car_price_predictor_fc_2_bias_m_read_readvariableopAsavev2_adam_car_price_predictor_fc_3_kernel_m_read_readvariableop?savev2_adam_car_price_predictor_fc_3_bias_m_read_readvariableopCsavev2_adam_car_price_predictor_output_kernel_m_read_readvariableopAsavev2_adam_car_price_predictor_output_bias_m_read_readvariableopAsavev2_adam_car_price_predictor_fc_1_kernel_v_read_readvariableop?savev2_adam_car_price_predictor_fc_1_bias_v_read_readvariableopAsavev2_adam_car_price_predictor_fc_2_kernel_v_read_readvariableop?savev2_adam_car_price_predictor_fc_2_bias_v_read_readvariableopAsavev2_adam_car_price_predictor_fc_3_kernel_v_read_readvariableop?savev2_adam_car_price_predictor_fc_3_bias_v_read_readvariableopCsavev2_adam_car_price_predictor_output_kernel_v_read_readvariableopAsavev2_adam_car_price_predictor_output_bias_v_read_readvariableopsavev2_const_29"/device:CPU:0*
_output_shapes
 *3
dtypes)
'2%		?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*?
_input_shapes?
?: :?	:?	: :	?	@:@:@ : : 
:
:
:: : : : : : : : : :	?	@:@:@ : : 
:
:
::	?	@:@:@ : : 
:
:
:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:!

_output_shapes	
:?	:!

_output_shapes	
:?	:

_output_shapes
: :%!

_output_shapes
:	?	@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: 
: 	

_output_shapes
:
:$
 

_output_shapes

:
: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?	@: 

_output_shapes
:@:$ 

_output_shapes

:@ : 

_output_shapes
: :$ 

_output_shapes

: 
: 

_output_shapes
:
:$ 

_output_shapes

:
: 

_output_shapes
::%!

_output_shapes
:	?	@: 

_output_shapes
:@:$ 

_output_shapes

:@ :  

_output_shapes
: :$! 

_output_shapes

: 
: "

_output_shapes
:
:$# 

_output_shapes

:
: $

_output_shapes
::%

_output_shapes
: 
?
-
__inference__destroyer_824174
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?

?
@__inference_FC_1_layer_call_and_return_conditional_losses_824025

inputs1
matmul_readvariableop_resource:	?	@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?	@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????@w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????	
 
_user_specified_nameinputs
?
;
__inference__creator_824125
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name262*
value_dtype0	W
IdentityIdentityhash_table:table_handle:0^NoOp*
T0*
_output_shapes
: S
NoOpNoOp^hash_table*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 2

hash_table
hash_table
?
?
4__inference_CAR_PRICE_PREDICTOR_layer_call_fn_821450	
brand

engine
engine_v
exterior_color
	fuel_type
mileage
name
transmission
year

drive_type
interior_color
mpg_city
mpg_highway	
style
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9

unknown_10	

unknown_11

unknown_12	

unknown_13

unknown_14	

unknown_15

unknown_16	

unknown_17

unknown_18

unknown_19:	?	@

unknown_20:@

unknown_21:@ 

unknown_22: 

unknown_23: 


unknown_24:


unknown_25:


unknown_26:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallbrandengineengine_vexterior_color	fuel_typemileagenametransmissionyear
drive_typeinterior_colormpg_citympg_highwaystyleunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*5
Tin.
,2*									*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

"#$%&'()*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_CAR_PRICE_PREDICTOR_layer_call_and_return_conditional_losses_821391o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : :	?	:	?	: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
#
_output_shapes
:?????????

_user_specified_nameBrand:KG
#
_output_shapes
:?????????
 
_user_specified_nameEngine:MI
#
_output_shapes
:?????????
"
_user_specified_name
Engine_V:SO
#
_output_shapes
:?????????
(
_user_specified_nameExterior_color:NJ
#
_output_shapes
:?????????
#
_user_specified_name	Fuel_Type:LH
#
_output_shapes
:?????????
!
_user_specified_name	Mileage:IE
#
_output_shapes
:?????????

_user_specified_nameName:QM
#
_output_shapes
:?????????
&
_user_specified_nameTransmission:IE
#
_output_shapes
:?????????

_user_specified_nameYear:O	K
#
_output_shapes
:?????????
$
_user_specified_name
drive_type:S
O
#
_output_shapes
:?????????
(
_user_specified_nameinterior_color:MI
#
_output_shapes
:?????????
"
_user_specified_name
mpg_city:PL
#
_output_shapes
:?????????
%
_user_specified_namempg_highway:JF
#
_output_shapes
:?????????

_user_specified_namestyle:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :% !

_output_shapes
:	?	:%!!

_output_shapes
:	?	
??
? 
!__inference__wrapped_model_820938	
brand

engine
engine_v
exterior_color
	fuel_type
mileage
name
transmission
year

drive_type
interior_color
mpg_city
mpg_highway	
styleg
ccar_price_predictor_dense_features_brand_indicator_hash_table_lookup_lookuptablefindv2_table_handleh
dcar_price_predictor_dense_features_brand_indicator_hash_table_lookup_lookuptablefindv2_default_value	h
dcar_price_predictor_dense_features_engine_indicator_hash_table_lookup_lookuptablefindv2_table_handlei
ecar_price_predictor_dense_features_engine_indicator_hash_table_lookup_lookuptablefindv2_default_value	p
lcar_price_predictor_dense_features_exterior_color_indicator_hash_table_lookup_lookuptablefindv2_table_handleq
mcar_price_predictor_dense_features_exterior_color_indicator_hash_table_lookup_lookuptablefindv2_default_value	k
gcar_price_predictor_dense_features_fuel_type_indicator_hash_table_lookup_lookuptablefindv2_table_handlel
hcar_price_predictor_dense_features_fuel_type_indicator_hash_table_lookup_lookuptablefindv2_default_value	f
bcar_price_predictor_dense_features_name_indicator_hash_table_lookup_lookuptablefindv2_table_handleg
ccar_price_predictor_dense_features_name_indicator_hash_table_lookup_lookuptablefindv2_default_value	n
jcar_price_predictor_dense_features_transmission_indicator_hash_table_lookup_lookuptablefindv2_table_handleo
kcar_price_predictor_dense_features_transmission_indicator_hash_table_lookup_lookuptablefindv2_default_value	l
hcar_price_predictor_dense_features_drive_type_indicator_hash_table_lookup_lookuptablefindv2_table_handlem
icar_price_predictor_dense_features_drive_type_indicator_hash_table_lookup_lookuptablefindv2_default_value	p
lcar_price_predictor_dense_features_interior_color_indicator_hash_table_lookup_lookuptablefindv2_table_handleq
mcar_price_predictor_dense_features_interior_color_indicator_hash_table_lookup_lookuptablefindv2_default_value	g
ccar_price_predictor_dense_features_style_indicator_hash_table_lookup_lookuptablefindv2_table_handleh
dcar_price_predictor_dense_features_style_indicator_hash_table_lookup_lookuptablefindv2_default_value	+
'car_price_predictor_normalization_sub_y,
(car_price_predictor_normalization_sqrt_xJ
7car_price_predictor_fc_1_matmul_readvariableop_resource:	?	@F
8car_price_predictor_fc_1_biasadd_readvariableop_resource:@I
7car_price_predictor_fc_2_matmul_readvariableop_resource:@ F
8car_price_predictor_fc_2_biasadd_readvariableop_resource: I
7car_price_predictor_fc_3_matmul_readvariableop_resource: 
F
8car_price_predictor_fc_3_biasadd_readvariableop_resource:
K
9car_price_predictor_output_matmul_readvariableop_resource:
H
:car_price_predictor_output_biasadd_readvariableop_resource:
identity??/CAR_PRICE_PREDICTOR/FC_1/BiasAdd/ReadVariableOp?.CAR_PRICE_PREDICTOR/FC_1/MatMul/ReadVariableOp?/CAR_PRICE_PREDICTOR/FC_2/BiasAdd/ReadVariableOp?.CAR_PRICE_PREDICTOR/FC_2/MatMul/ReadVariableOp?/CAR_PRICE_PREDICTOR/FC_3/BiasAdd/ReadVariableOp?.CAR_PRICE_PREDICTOR/FC_3/MatMul/ReadVariableOp?1CAR_PRICE_PREDICTOR/Output/BiasAdd/ReadVariableOp?0CAR_PRICE_PREDICTOR/Output/MatMul/ReadVariableOp?VCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/hash_table_Lookup/LookupTableFindV2?WCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/hash_table_Lookup/LookupTableFindV2?_CAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/hash_table_Lookup/LookupTableFindV2?ZCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV2?UCAR_PRICE_PREDICTOR/dense_features/Name_indicator/hash_table_Lookup/LookupTableFindV2?]CAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/hash_table_Lookup/LookupTableFindV2?[CAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/hash_table_Lookup/LookupTableFindV2?_CAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/hash_table_Lookup/LookupTableFindV2?VCAR_PRICE_PREDICTOR/dense_features/style_indicator/hash_table_Lookup/LookupTableFindV2?
ACAR_PRICE_PREDICTOR/dense_features/Brand_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
=CAR_PRICE_PREDICTOR/dense_features/Brand_indicator/ExpandDims
ExpandDimsbrandJCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
QCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
KCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/to_sparse_input/NotEqualNotEqualFCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/ExpandDims:output:0ZCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
JCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/to_sparse_input/indicesWhereOCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
ICAR_PRICE_PREDICTOR/dense_features/Brand_indicator/to_sparse_input/valuesGatherNdFCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/ExpandDims:output:0RCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
NCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/to_sparse_input/dense_shapeShapeFCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
VCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2ccar_price_predictor_dense_features_brand_indicator_hash_table_lookup_lookuptablefindv2_table_handleRCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/to_sparse_input/values:output:0dcar_price_predictor_dense_features_brand_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
NCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
@CAR_PRICE_PREDICTOR/dense_features/Brand_indicator/SparseToDenseSparseToDenseRCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/to_sparse_input/indices:index:0WCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/to_sparse_input/dense_shape:output:0_CAR_PRICE_PREDICTOR/dense_features/Brand_indicator/hash_table_Lookup/LookupTableFindV2:values:0WCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:??????????
@CAR_PRICE_PREDICTOR/dense_features/Brand_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
BCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ?
@CAR_PRICE_PREDICTOR/dense_features/Brand_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :+?
:CAR_PRICE_PREDICTOR/dense_features/Brand_indicator/one_hotOneHotHCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/SparseToDense:dense:0ICAR_PRICE_PREDICTOR/dense_features/Brand_indicator/one_hot/depth:output:0ICAR_PRICE_PREDICTOR/dense_features/Brand_indicator/one_hot/Const:output:0KCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????+?
HCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
6CAR_PRICE_PREDICTOR/dense_features/Brand_indicator/SumSumCCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/one_hot:output:0QCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????+?
8CAR_PRICE_PREDICTOR/dense_features/Brand_indicator/ShapeShape?CAR_PRICE_PREDICTOR/dense_features/Brand_indicator/Sum:output:0*
T0*
_output_shapes
:?
FCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
HCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
HCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
@CAR_PRICE_PREDICTOR/dense_features/Brand_indicator/strided_sliceStridedSliceACAR_PRICE_PREDICTOR/dense_features/Brand_indicator/Shape:output:0OCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/strided_slice/stack:output:0QCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/strided_slice/stack_1:output:0QCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
BCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :+?
@CAR_PRICE_PREDICTOR/dense_features/Brand_indicator/Reshape/shapePackICAR_PRICE_PREDICTOR/dense_features/Brand_indicator/strided_slice:output:0KCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
:CAR_PRICE_PREDICTOR/dense_features/Brand_indicator/ReshapeReshape?CAR_PRICE_PREDICTOR/dense_features/Brand_indicator/Sum:output:0ICAR_PRICE_PREDICTOR/dense_features/Brand_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????+?
:CAR_PRICE_PREDICTOR/dense_features/Engine_V/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
6CAR_PRICE_PREDICTOR/dense_features/Engine_V/ExpandDims
ExpandDimsengine_vCCAR_PRICE_PREDICTOR/dense_features/Engine_V/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
1CAR_PRICE_PREDICTOR/dense_features/Engine_V/ShapeShape?CAR_PRICE_PREDICTOR/dense_features/Engine_V/ExpandDims:output:0*
T0*
_output_shapes
:?
?CAR_PRICE_PREDICTOR/dense_features/Engine_V/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
ACAR_PRICE_PREDICTOR/dense_features/Engine_V/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
ACAR_PRICE_PREDICTOR/dense_features/Engine_V/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
9CAR_PRICE_PREDICTOR/dense_features/Engine_V/strided_sliceStridedSlice:CAR_PRICE_PREDICTOR/dense_features/Engine_V/Shape:output:0HCAR_PRICE_PREDICTOR/dense_features/Engine_V/strided_slice/stack:output:0JCAR_PRICE_PREDICTOR/dense_features/Engine_V/strided_slice/stack_1:output:0JCAR_PRICE_PREDICTOR/dense_features/Engine_V/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
;CAR_PRICE_PREDICTOR/dense_features/Engine_V/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
9CAR_PRICE_PREDICTOR/dense_features/Engine_V/Reshape/shapePackBCAR_PRICE_PREDICTOR/dense_features/Engine_V/strided_slice:output:0DCAR_PRICE_PREDICTOR/dense_features/Engine_V/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
3CAR_PRICE_PREDICTOR/dense_features/Engine_V/ReshapeReshape?CAR_PRICE_PREDICTOR/dense_features/Engine_V/ExpandDims:output:0BCAR_PRICE_PREDICTOR/dense_features/Engine_V/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
BCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
>CAR_PRICE_PREDICTOR/dense_features/Engine_indicator/ExpandDims
ExpandDimsengineKCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
RCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
LCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/to_sparse_input/NotEqualNotEqualGCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/ExpandDims:output:0[CAR_PRICE_PREDICTOR/dense_features/Engine_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
KCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/to_sparse_input/indicesWherePCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
JCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/to_sparse_input/valuesGatherNdGCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/ExpandDims:output:0SCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
OCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/to_sparse_input/dense_shapeShapeGCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
WCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2dcar_price_predictor_dense_features_engine_indicator_hash_table_lookup_lookuptablefindv2_table_handleSCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/to_sparse_input/values:output:0ecar_price_predictor_dense_features_engine_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
OCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
ACAR_PRICE_PREDICTOR/dense_features/Engine_indicator/SparseToDenseSparseToDenseSCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/to_sparse_input/indices:index:0XCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/to_sparse_input/dense_shape:output:0`CAR_PRICE_PREDICTOR/dense_features/Engine_indicator/hash_table_Lookup/LookupTableFindV2:values:0XCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:??????????
ACAR_PRICE_PREDICTOR/dense_features/Engine_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
CCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ?
ACAR_PRICE_PREDICTOR/dense_features/Engine_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
;CAR_PRICE_PREDICTOR/dense_features/Engine_indicator/one_hotOneHotICAR_PRICE_PREDICTOR/dense_features/Engine_indicator/SparseToDense:dense:0JCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/one_hot/depth:output:0JCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/one_hot/Const:output:0LCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
ICAR_PRICE_PREDICTOR/dense_features/Engine_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
7CAR_PRICE_PREDICTOR/dense_features/Engine_indicator/SumSumDCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/one_hot:output:0RCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
9CAR_PRICE_PREDICTOR/dense_features/Engine_indicator/ShapeShape@CAR_PRICE_PREDICTOR/dense_features/Engine_indicator/Sum:output:0*
T0*
_output_shapes
:?
GCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
ICAR_PRICE_PREDICTOR/dense_features/Engine_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
ICAR_PRICE_PREDICTOR/dense_features/Engine_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
ACAR_PRICE_PREDICTOR/dense_features/Engine_indicator/strided_sliceStridedSliceBCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/Shape:output:0PCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/strided_slice/stack:output:0RCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/strided_slice/stack_1:output:0RCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
CCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
ACAR_PRICE_PREDICTOR/dense_features/Engine_indicator/Reshape/shapePackJCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/strided_slice:output:0LCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
;CAR_PRICE_PREDICTOR/dense_features/Engine_indicator/ReshapeReshape@CAR_PRICE_PREDICTOR/dense_features/Engine_indicator/Sum:output:0JCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
JCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
FCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/ExpandDims
ExpandDimsexterior_colorSCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
ZCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
TCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/to_sparse_input/NotEqualNotEqualOCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/ExpandDims:output:0cCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
SCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/to_sparse_input/indicesWhereXCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
RCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/to_sparse_input/valuesGatherNdOCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/ExpandDims:output:0[CAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
WCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/to_sparse_input/dense_shapeShapeOCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
_CAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2lcar_price_predictor_dense_features_exterior_color_indicator_hash_table_lookup_lookuptablefindv2_table_handle[CAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/to_sparse_input/values:output:0mcar_price_predictor_dense_features_exterior_color_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
WCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
ICAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/SparseToDenseSparseToDense[CAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/to_sparse_input/indices:index:0`CAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/to_sparse_input/dense_shape:output:0hCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/hash_table_Lookup/LookupTableFindV2:values:0`CAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:??????????
ICAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
KCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ?
ICAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
CCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/one_hotOneHotQCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/SparseToDense:dense:0RCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/one_hot/depth:output:0RCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/one_hot/Const:output:0TCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:???????????
QCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
?CAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/SumSumLCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/one_hot:output:0ZCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
ACAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/ShapeShapeHCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/Sum:output:0*
T0*
_output_shapes
:?
OCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
QCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
QCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
ICAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/strided_sliceStridedSliceJCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/Shape:output:0XCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/strided_slice/stack:output:0ZCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/strided_slice/stack_1:output:0ZCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
KCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
ICAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/Reshape/shapePackRCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/strided_slice:output:0TCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
CCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/ReshapeReshapeHCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/Sum:output:0RCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:???????????
ECAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
ACAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/ExpandDims
ExpandDims	fuel_typeNCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
UCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
OCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/to_sparse_input/NotEqualNotEqualJCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/ExpandDims:output:0^CAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
NCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/to_sparse_input/indicesWhereSCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
MCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/to_sparse_input/valuesGatherNdJCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/ExpandDims:output:0VCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
RCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/to_sparse_input/dense_shapeShapeJCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
ZCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2gcar_price_predictor_dense_features_fuel_type_indicator_hash_table_lookup_lookuptablefindv2_table_handleVCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/to_sparse_input/values:output:0hcar_price_predictor_dense_features_fuel_type_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
RCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
DCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/SparseToDenseSparseToDenseVCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/to_sparse_input/indices:index:0[CAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/to_sparse_input/dense_shape:output:0cCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV2:values:0[CAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:??????????
DCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
FCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ?
DCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
>CAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/one_hotOneHotLCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/SparseToDense:dense:0MCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/one_hot/depth:output:0MCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/one_hot/Const:output:0OCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
LCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
:CAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/SumSumGCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/one_hot:output:0UCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
<CAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/ShapeShapeCCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/Sum:output:0*
T0*
_output_shapes
:?
JCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
LCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
LCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
DCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/strided_sliceStridedSliceECAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/Shape:output:0SCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/strided_slice/stack:output:0UCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/strided_slice/stack_1:output:0UCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
FCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
DCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/Reshape/shapePackMCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/strided_slice:output:0OCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
>CAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/ReshapeReshapeCCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/Sum:output:0MCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
9CAR_PRICE_PREDICTOR/dense_features/Mileage/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
5CAR_PRICE_PREDICTOR/dense_features/Mileage/ExpandDims
ExpandDimsmileageBCAR_PRICE_PREDICTOR/dense_features/Mileage/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
/CAR_PRICE_PREDICTOR/dense_features/Mileage/CastCast>CAR_PRICE_PREDICTOR/dense_features/Mileage/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:??????????
0CAR_PRICE_PREDICTOR/dense_features/Mileage/ShapeShape3CAR_PRICE_PREDICTOR/dense_features/Mileage/Cast:y:0*
T0*
_output_shapes
:?
>CAR_PRICE_PREDICTOR/dense_features/Mileage/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
@CAR_PRICE_PREDICTOR/dense_features/Mileage/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
@CAR_PRICE_PREDICTOR/dense_features/Mileage/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8CAR_PRICE_PREDICTOR/dense_features/Mileage/strided_sliceStridedSlice9CAR_PRICE_PREDICTOR/dense_features/Mileage/Shape:output:0GCAR_PRICE_PREDICTOR/dense_features/Mileage/strided_slice/stack:output:0ICAR_PRICE_PREDICTOR/dense_features/Mileage/strided_slice/stack_1:output:0ICAR_PRICE_PREDICTOR/dense_features/Mileage/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
:CAR_PRICE_PREDICTOR/dense_features/Mileage/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
8CAR_PRICE_PREDICTOR/dense_features/Mileage/Reshape/shapePackACAR_PRICE_PREDICTOR/dense_features/Mileage/strided_slice:output:0CCAR_PRICE_PREDICTOR/dense_features/Mileage/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
2CAR_PRICE_PREDICTOR/dense_features/Mileage/ReshapeReshape3CAR_PRICE_PREDICTOR/dense_features/Mileage/Cast:y:0ACAR_PRICE_PREDICTOR/dense_features/Mileage/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
@CAR_PRICE_PREDICTOR/dense_features/Name_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
<CAR_PRICE_PREDICTOR/dense_features/Name_indicator/ExpandDims
ExpandDimsnameICAR_PRICE_PREDICTOR/dense_features/Name_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
PCAR_PRICE_PREDICTOR/dense_features/Name_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
JCAR_PRICE_PREDICTOR/dense_features/Name_indicator/to_sparse_input/NotEqualNotEqualECAR_PRICE_PREDICTOR/dense_features/Name_indicator/ExpandDims:output:0YCAR_PRICE_PREDICTOR/dense_features/Name_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
ICAR_PRICE_PREDICTOR/dense_features/Name_indicator/to_sparse_input/indicesWhereNCAR_PRICE_PREDICTOR/dense_features/Name_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
HCAR_PRICE_PREDICTOR/dense_features/Name_indicator/to_sparse_input/valuesGatherNdECAR_PRICE_PREDICTOR/dense_features/Name_indicator/ExpandDims:output:0QCAR_PRICE_PREDICTOR/dense_features/Name_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
MCAR_PRICE_PREDICTOR/dense_features/Name_indicator/to_sparse_input/dense_shapeShapeECAR_PRICE_PREDICTOR/dense_features/Name_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
UCAR_PRICE_PREDICTOR/dense_features/Name_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2bcar_price_predictor_dense_features_name_indicator_hash_table_lookup_lookuptablefindv2_table_handleQCAR_PRICE_PREDICTOR/dense_features/Name_indicator/to_sparse_input/values:output:0ccar_price_predictor_dense_features_name_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
MCAR_PRICE_PREDICTOR/dense_features/Name_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
?CAR_PRICE_PREDICTOR/dense_features/Name_indicator/SparseToDenseSparseToDenseQCAR_PRICE_PREDICTOR/dense_features/Name_indicator/to_sparse_input/indices:index:0VCAR_PRICE_PREDICTOR/dense_features/Name_indicator/to_sparse_input/dense_shape:output:0^CAR_PRICE_PREDICTOR/dense_features/Name_indicator/hash_table_Lookup/LookupTableFindV2:values:0VCAR_PRICE_PREDICTOR/dense_features/Name_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:??????????
?CAR_PRICE_PREDICTOR/dense_features/Name_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
ACAR_PRICE_PREDICTOR/dense_features/Name_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ?
?CAR_PRICE_PREDICTOR/dense_features/Name_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
9CAR_PRICE_PREDICTOR/dense_features/Name_indicator/one_hotOneHotGCAR_PRICE_PREDICTOR/dense_features/Name_indicator/SparseToDense:dense:0HCAR_PRICE_PREDICTOR/dense_features/Name_indicator/one_hot/depth:output:0HCAR_PRICE_PREDICTOR/dense_features/Name_indicator/one_hot/Const:output:0JCAR_PRICE_PREDICTOR/dense_features/Name_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:???????????
GCAR_PRICE_PREDICTOR/dense_features/Name_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
5CAR_PRICE_PREDICTOR/dense_features/Name_indicator/SumSumBCAR_PRICE_PREDICTOR/dense_features/Name_indicator/one_hot:output:0PCAR_PRICE_PREDICTOR/dense_features/Name_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
7CAR_PRICE_PREDICTOR/dense_features/Name_indicator/ShapeShape>CAR_PRICE_PREDICTOR/dense_features/Name_indicator/Sum:output:0*
T0*
_output_shapes
:?
ECAR_PRICE_PREDICTOR/dense_features/Name_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
GCAR_PRICE_PREDICTOR/dense_features/Name_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
GCAR_PRICE_PREDICTOR/dense_features/Name_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
?CAR_PRICE_PREDICTOR/dense_features/Name_indicator/strided_sliceStridedSlice@CAR_PRICE_PREDICTOR/dense_features/Name_indicator/Shape:output:0NCAR_PRICE_PREDICTOR/dense_features/Name_indicator/strided_slice/stack:output:0PCAR_PRICE_PREDICTOR/dense_features/Name_indicator/strided_slice/stack_1:output:0PCAR_PRICE_PREDICTOR/dense_features/Name_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
ACAR_PRICE_PREDICTOR/dense_features/Name_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
?CAR_PRICE_PREDICTOR/dense_features/Name_indicator/Reshape/shapePackHCAR_PRICE_PREDICTOR/dense_features/Name_indicator/strided_slice:output:0JCAR_PRICE_PREDICTOR/dense_features/Name_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
9CAR_PRICE_PREDICTOR/dense_features/Name_indicator/ReshapeReshape>CAR_PRICE_PREDICTOR/dense_features/Name_indicator/Sum:output:0HCAR_PRICE_PREDICTOR/dense_features/Name_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:???????????
HCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
DCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/ExpandDims
ExpandDimstransmissionQCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
XCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
RCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/to_sparse_input/NotEqualNotEqualMCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/ExpandDims:output:0aCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
QCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/to_sparse_input/indicesWhereVCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
PCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/to_sparse_input/valuesGatherNdMCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/ExpandDims:output:0YCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
UCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/to_sparse_input/dense_shapeShapeMCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
]CAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2jcar_price_predictor_dense_features_transmission_indicator_hash_table_lookup_lookuptablefindv2_table_handleYCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/to_sparse_input/values:output:0kcar_price_predictor_dense_features_transmission_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
UCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
GCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/SparseToDenseSparseToDenseYCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/to_sparse_input/indices:index:0^CAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/to_sparse_input/dense_shape:output:0fCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/hash_table_Lookup/LookupTableFindV2:values:0^CAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:??????????
GCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
ICAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ?
GCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
ACAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/one_hotOneHotOCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/SparseToDense:dense:0PCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/one_hot/depth:output:0PCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/one_hot/Const:output:0RCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
OCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
=CAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/SumSumJCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/one_hot:output:0XCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
?CAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/ShapeShapeFCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/Sum:output:0*
T0*
_output_shapes
:?
MCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
OCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
OCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
GCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/strided_sliceStridedSliceHCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/Shape:output:0VCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/strided_slice/stack:output:0XCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/strided_slice/stack_1:output:0XCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
ICAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
GCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/Reshape/shapePackPCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/strided_slice:output:0RCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
ACAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/ReshapeReshapeFCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/Sum:output:0PCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
6CAR_PRICE_PREDICTOR/dense_features/Year/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
2CAR_PRICE_PREDICTOR/dense_features/Year/ExpandDims
ExpandDimsyear?CAR_PRICE_PREDICTOR/dense_features/Year/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
,CAR_PRICE_PREDICTOR/dense_features/Year/CastCast;CAR_PRICE_PREDICTOR/dense_features/Year/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:??????????
-CAR_PRICE_PREDICTOR/dense_features/Year/ShapeShape0CAR_PRICE_PREDICTOR/dense_features/Year/Cast:y:0*
T0*
_output_shapes
:?
;CAR_PRICE_PREDICTOR/dense_features/Year/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
=CAR_PRICE_PREDICTOR/dense_features/Year/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
=CAR_PRICE_PREDICTOR/dense_features/Year/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
5CAR_PRICE_PREDICTOR/dense_features/Year/strided_sliceStridedSlice6CAR_PRICE_PREDICTOR/dense_features/Year/Shape:output:0DCAR_PRICE_PREDICTOR/dense_features/Year/strided_slice/stack:output:0FCAR_PRICE_PREDICTOR/dense_features/Year/strided_slice/stack_1:output:0FCAR_PRICE_PREDICTOR/dense_features/Year/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masky
7CAR_PRICE_PREDICTOR/dense_features/Year/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
5CAR_PRICE_PREDICTOR/dense_features/Year/Reshape/shapePack>CAR_PRICE_PREDICTOR/dense_features/Year/strided_slice:output:0@CAR_PRICE_PREDICTOR/dense_features/Year/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
/CAR_PRICE_PREDICTOR/dense_features/Year/ReshapeReshape0CAR_PRICE_PREDICTOR/dense_features/Year/Cast:y:0>CAR_PRICE_PREDICTOR/dense_features/Year/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
FCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
BCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/ExpandDims
ExpandDims
drive_typeOCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
VCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
PCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/to_sparse_input/NotEqualNotEqualKCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/ExpandDims:output:0_CAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
OCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/to_sparse_input/indicesWhereTCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
NCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/to_sparse_input/valuesGatherNdKCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/ExpandDims:output:0WCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
SCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/to_sparse_input/dense_shapeShapeKCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
[CAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2hcar_price_predictor_dense_features_drive_type_indicator_hash_table_lookup_lookuptablefindv2_table_handleWCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/to_sparse_input/values:output:0icar_price_predictor_dense_features_drive_type_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
SCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
ECAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/SparseToDenseSparseToDenseWCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/to_sparse_input/indices:index:0\CAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/to_sparse_input/dense_shape:output:0dCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/hash_table_Lookup/LookupTableFindV2:values:0\CAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:??????????
ECAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
GCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ?
ECAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
?CAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/one_hotOneHotMCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/SparseToDense:dense:0NCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/one_hot/depth:output:0NCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/one_hot/Const:output:0PCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
MCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
;CAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/SumSumHCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/one_hot:output:0VCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
=CAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/ShapeShapeDCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/Sum:output:0*
T0*
_output_shapes
:?
KCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
MCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
MCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
ECAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/strided_sliceStridedSliceFCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/Shape:output:0TCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/strided_slice/stack:output:0VCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/strided_slice/stack_1:output:0VCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
GCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
ECAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/Reshape/shapePackNCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/strided_slice:output:0PCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
?CAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/ReshapeReshapeDCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/Sum:output:0NCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
JCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
FCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/ExpandDims
ExpandDimsinterior_colorSCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
ZCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
TCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/to_sparse_input/NotEqualNotEqualOCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/ExpandDims:output:0cCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
SCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/to_sparse_input/indicesWhereXCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
RCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/to_sparse_input/valuesGatherNdOCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/ExpandDims:output:0[CAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
WCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/to_sparse_input/dense_shapeShapeOCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
_CAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2lcar_price_predictor_dense_features_interior_color_indicator_hash_table_lookup_lookuptablefindv2_table_handle[CAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/to_sparse_input/values:output:0mcar_price_predictor_dense_features_interior_color_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
WCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
ICAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/SparseToDenseSparseToDense[CAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/to_sparse_input/indices:index:0`CAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/to_sparse_input/dense_shape:output:0hCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/hash_table_Lookup/LookupTableFindV2:values:0`CAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:??????????
ICAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
KCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ?
ICAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
CCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/one_hotOneHotQCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/SparseToDense:dense:0RCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/one_hot/depth:output:0RCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/one_hot/Const:output:0TCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:???????????
QCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
?CAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/SumSumLCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/one_hot:output:0ZCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
ACAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/ShapeShapeHCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/Sum:output:0*
T0*
_output_shapes
:?
OCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
QCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
QCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
ICAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/strided_sliceStridedSliceJCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/Shape:output:0XCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/strided_slice/stack:output:0ZCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/strided_slice/stack_1:output:0ZCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
KCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
ICAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/Reshape/shapePackRCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/strided_slice:output:0TCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
CCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/ReshapeReshapeHCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/Sum:output:0RCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:???????????
:CAR_PRICE_PREDICTOR/dense_features/mpg_city/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
6CAR_PRICE_PREDICTOR/dense_features/mpg_city/ExpandDims
ExpandDimsmpg_cityCCAR_PRICE_PREDICTOR/dense_features/mpg_city/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
0CAR_PRICE_PREDICTOR/dense_features/mpg_city/CastCast?CAR_PRICE_PREDICTOR/dense_features/mpg_city/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:??????????
1CAR_PRICE_PREDICTOR/dense_features/mpg_city/ShapeShape4CAR_PRICE_PREDICTOR/dense_features/mpg_city/Cast:y:0*
T0*
_output_shapes
:?
?CAR_PRICE_PREDICTOR/dense_features/mpg_city/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
ACAR_PRICE_PREDICTOR/dense_features/mpg_city/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
ACAR_PRICE_PREDICTOR/dense_features/mpg_city/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
9CAR_PRICE_PREDICTOR/dense_features/mpg_city/strided_sliceStridedSlice:CAR_PRICE_PREDICTOR/dense_features/mpg_city/Shape:output:0HCAR_PRICE_PREDICTOR/dense_features/mpg_city/strided_slice/stack:output:0JCAR_PRICE_PREDICTOR/dense_features/mpg_city/strided_slice/stack_1:output:0JCAR_PRICE_PREDICTOR/dense_features/mpg_city/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
;CAR_PRICE_PREDICTOR/dense_features/mpg_city/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
9CAR_PRICE_PREDICTOR/dense_features/mpg_city/Reshape/shapePackBCAR_PRICE_PREDICTOR/dense_features/mpg_city/strided_slice:output:0DCAR_PRICE_PREDICTOR/dense_features/mpg_city/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
3CAR_PRICE_PREDICTOR/dense_features/mpg_city/ReshapeReshape4CAR_PRICE_PREDICTOR/dense_features/mpg_city/Cast:y:0BCAR_PRICE_PREDICTOR/dense_features/mpg_city/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
=CAR_PRICE_PREDICTOR/dense_features/mpg_highway/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
9CAR_PRICE_PREDICTOR/dense_features/mpg_highway/ExpandDims
ExpandDimsmpg_highwayFCAR_PRICE_PREDICTOR/dense_features/mpg_highway/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
3CAR_PRICE_PREDICTOR/dense_features/mpg_highway/CastCastBCAR_PRICE_PREDICTOR/dense_features/mpg_highway/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:??????????
4CAR_PRICE_PREDICTOR/dense_features/mpg_highway/ShapeShape7CAR_PRICE_PREDICTOR/dense_features/mpg_highway/Cast:y:0*
T0*
_output_shapes
:?
BCAR_PRICE_PREDICTOR/dense_features/mpg_highway/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
DCAR_PRICE_PREDICTOR/dense_features/mpg_highway/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
DCAR_PRICE_PREDICTOR/dense_features/mpg_highway/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
<CAR_PRICE_PREDICTOR/dense_features/mpg_highway/strided_sliceStridedSlice=CAR_PRICE_PREDICTOR/dense_features/mpg_highway/Shape:output:0KCAR_PRICE_PREDICTOR/dense_features/mpg_highway/strided_slice/stack:output:0MCAR_PRICE_PREDICTOR/dense_features/mpg_highway/strided_slice/stack_1:output:0MCAR_PRICE_PREDICTOR/dense_features/mpg_highway/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
>CAR_PRICE_PREDICTOR/dense_features/mpg_highway/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
<CAR_PRICE_PREDICTOR/dense_features/mpg_highway/Reshape/shapePackECAR_PRICE_PREDICTOR/dense_features/mpg_highway/strided_slice:output:0GCAR_PRICE_PREDICTOR/dense_features/mpg_highway/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
6CAR_PRICE_PREDICTOR/dense_features/mpg_highway/ReshapeReshape7CAR_PRICE_PREDICTOR/dense_features/mpg_highway/Cast:y:0ECAR_PRICE_PREDICTOR/dense_features/mpg_highway/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
ACAR_PRICE_PREDICTOR/dense_features/style_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
=CAR_PRICE_PREDICTOR/dense_features/style_indicator/ExpandDims
ExpandDimsstyleJCAR_PRICE_PREDICTOR/dense_features/style_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
QCAR_PRICE_PREDICTOR/dense_features/style_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
KCAR_PRICE_PREDICTOR/dense_features/style_indicator/to_sparse_input/NotEqualNotEqualFCAR_PRICE_PREDICTOR/dense_features/style_indicator/ExpandDims:output:0ZCAR_PRICE_PREDICTOR/dense_features/style_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
JCAR_PRICE_PREDICTOR/dense_features/style_indicator/to_sparse_input/indicesWhereOCAR_PRICE_PREDICTOR/dense_features/style_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
ICAR_PRICE_PREDICTOR/dense_features/style_indicator/to_sparse_input/valuesGatherNdFCAR_PRICE_PREDICTOR/dense_features/style_indicator/ExpandDims:output:0RCAR_PRICE_PREDICTOR/dense_features/style_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
NCAR_PRICE_PREDICTOR/dense_features/style_indicator/to_sparse_input/dense_shapeShapeFCAR_PRICE_PREDICTOR/dense_features/style_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
VCAR_PRICE_PREDICTOR/dense_features/style_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2ccar_price_predictor_dense_features_style_indicator_hash_table_lookup_lookuptablefindv2_table_handleRCAR_PRICE_PREDICTOR/dense_features/style_indicator/to_sparse_input/values:output:0dcar_price_predictor_dense_features_style_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
NCAR_PRICE_PREDICTOR/dense_features/style_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
@CAR_PRICE_PREDICTOR/dense_features/style_indicator/SparseToDenseSparseToDenseRCAR_PRICE_PREDICTOR/dense_features/style_indicator/to_sparse_input/indices:index:0WCAR_PRICE_PREDICTOR/dense_features/style_indicator/to_sparse_input/dense_shape:output:0_CAR_PRICE_PREDICTOR/dense_features/style_indicator/hash_table_Lookup/LookupTableFindV2:values:0WCAR_PRICE_PREDICTOR/dense_features/style_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:??????????
@CAR_PRICE_PREDICTOR/dense_features/style_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
BCAR_PRICE_PREDICTOR/dense_features/style_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ?
@CAR_PRICE_PREDICTOR/dense_features/style_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :	?
:CAR_PRICE_PREDICTOR/dense_features/style_indicator/one_hotOneHotHCAR_PRICE_PREDICTOR/dense_features/style_indicator/SparseToDense:dense:0ICAR_PRICE_PREDICTOR/dense_features/style_indicator/one_hot/depth:output:0ICAR_PRICE_PREDICTOR/dense_features/style_indicator/one_hot/Const:output:0KCAR_PRICE_PREDICTOR/dense_features/style_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????	?
HCAR_PRICE_PREDICTOR/dense_features/style_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
6CAR_PRICE_PREDICTOR/dense_features/style_indicator/SumSumCCAR_PRICE_PREDICTOR/dense_features/style_indicator/one_hot:output:0QCAR_PRICE_PREDICTOR/dense_features/style_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????	?
8CAR_PRICE_PREDICTOR/dense_features/style_indicator/ShapeShape?CAR_PRICE_PREDICTOR/dense_features/style_indicator/Sum:output:0*
T0*
_output_shapes
:?
FCAR_PRICE_PREDICTOR/dense_features/style_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
HCAR_PRICE_PREDICTOR/dense_features/style_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
HCAR_PRICE_PREDICTOR/dense_features/style_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
@CAR_PRICE_PREDICTOR/dense_features/style_indicator/strided_sliceStridedSliceACAR_PRICE_PREDICTOR/dense_features/style_indicator/Shape:output:0OCAR_PRICE_PREDICTOR/dense_features/style_indicator/strided_slice/stack:output:0QCAR_PRICE_PREDICTOR/dense_features/style_indicator/strided_slice/stack_1:output:0QCAR_PRICE_PREDICTOR/dense_features/style_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
BCAR_PRICE_PREDICTOR/dense_features/style_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :	?
@CAR_PRICE_PREDICTOR/dense_features/style_indicator/Reshape/shapePackICAR_PRICE_PREDICTOR/dense_features/style_indicator/strided_slice:output:0KCAR_PRICE_PREDICTOR/dense_features/style_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
:CAR_PRICE_PREDICTOR/dense_features/style_indicator/ReshapeReshape?CAR_PRICE_PREDICTOR/dense_features/style_indicator/Sum:output:0ICAR_PRICE_PREDICTOR/dense_features/style_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????	y
.CAR_PRICE_PREDICTOR/dense_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
)CAR_PRICE_PREDICTOR/dense_features/concatConcatV2CCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/Reshape:output:0<CAR_PRICE_PREDICTOR/dense_features/Engine_V/Reshape:output:0DCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/Reshape:output:0LCAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/Reshape:output:0GCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/Reshape:output:0;CAR_PRICE_PREDICTOR/dense_features/Mileage/Reshape:output:0BCAR_PRICE_PREDICTOR/dense_features/Name_indicator/Reshape:output:0JCAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/Reshape:output:08CAR_PRICE_PREDICTOR/dense_features/Year/Reshape:output:0HCAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/Reshape:output:0LCAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/Reshape:output:0<CAR_PRICE_PREDICTOR/dense_features/mpg_city/Reshape:output:0?CAR_PRICE_PREDICTOR/dense_features/mpg_highway/Reshape:output:0CCAR_PRICE_PREDICTOR/dense_features/style_indicator/Reshape:output:07CAR_PRICE_PREDICTOR/dense_features/concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????	?
%CAR_PRICE_PREDICTOR/normalization/subSub2CAR_PRICE_PREDICTOR/dense_features/concat:output:0'car_price_predictor_normalization_sub_y*
T0*(
_output_shapes
:??????????	?
&CAR_PRICE_PREDICTOR/normalization/SqrtSqrt(car_price_predictor_normalization_sqrt_x*
T0*
_output_shapes
:	?	p
+CAR_PRICE_PREDICTOR/normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
)CAR_PRICE_PREDICTOR/normalization/MaximumMaximum*CAR_PRICE_PREDICTOR/normalization/Sqrt:y:04CAR_PRICE_PREDICTOR/normalization/Maximum/y:output:0*
T0*
_output_shapes
:	?	?
)CAR_PRICE_PREDICTOR/normalization/truedivRealDiv)CAR_PRICE_PREDICTOR/normalization/sub:z:0-CAR_PRICE_PREDICTOR/normalization/Maximum:z:0*
T0*(
_output_shapes
:??????????	?
.CAR_PRICE_PREDICTOR/FC_1/MatMul/ReadVariableOpReadVariableOp7car_price_predictor_fc_1_matmul_readvariableop_resource*
_output_shapes
:	?	@*
dtype0?
CAR_PRICE_PREDICTOR/FC_1/MatMulMatMul-CAR_PRICE_PREDICTOR/normalization/truediv:z:06CAR_PRICE_PREDICTOR/FC_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
/CAR_PRICE_PREDICTOR/FC_1/BiasAdd/ReadVariableOpReadVariableOp8car_price_predictor_fc_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
 CAR_PRICE_PREDICTOR/FC_1/BiasAddBiasAdd)CAR_PRICE_PREDICTOR/FC_1/MatMul:product:07CAR_PRICE_PREDICTOR/FC_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@?
CAR_PRICE_PREDICTOR/FC_1/ReluRelu)CAR_PRICE_PREDICTOR/FC_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@?
.CAR_PRICE_PREDICTOR/FC_2/MatMul/ReadVariableOpReadVariableOp7car_price_predictor_fc_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0?
CAR_PRICE_PREDICTOR/FC_2/MatMulMatMul+CAR_PRICE_PREDICTOR/FC_1/Relu:activations:06CAR_PRICE_PREDICTOR/FC_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
/CAR_PRICE_PREDICTOR/FC_2/BiasAdd/ReadVariableOpReadVariableOp8car_price_predictor_fc_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
 CAR_PRICE_PREDICTOR/FC_2/BiasAddBiasAdd)CAR_PRICE_PREDICTOR/FC_2/MatMul:product:07CAR_PRICE_PREDICTOR/FC_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? ?
CAR_PRICE_PREDICTOR/FC_2/ReluRelu)CAR_PRICE_PREDICTOR/FC_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? ?
.CAR_PRICE_PREDICTOR/FC_3/MatMul/ReadVariableOpReadVariableOp7car_price_predictor_fc_3_matmul_readvariableop_resource*
_output_shapes

: 
*
dtype0?
CAR_PRICE_PREDICTOR/FC_3/MatMulMatMul+CAR_PRICE_PREDICTOR/FC_2/Relu:activations:06CAR_PRICE_PREDICTOR/FC_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
/CAR_PRICE_PREDICTOR/FC_3/BiasAdd/ReadVariableOpReadVariableOp8car_price_predictor_fc_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0?
 CAR_PRICE_PREDICTOR/FC_3/BiasAddBiasAdd)CAR_PRICE_PREDICTOR/FC_3/MatMul:product:07CAR_PRICE_PREDICTOR/FC_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
?
CAR_PRICE_PREDICTOR/FC_3/ReluRelu)CAR_PRICE_PREDICTOR/FC_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
?
0CAR_PRICE_PREDICTOR/Output/MatMul/ReadVariableOpReadVariableOp9car_price_predictor_output_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
!CAR_PRICE_PREDICTOR/Output/MatMulMatMul+CAR_PRICE_PREDICTOR/FC_3/Relu:activations:08CAR_PRICE_PREDICTOR/Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
1CAR_PRICE_PREDICTOR/Output/BiasAdd/ReadVariableOpReadVariableOp:car_price_predictor_output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
"CAR_PRICE_PREDICTOR/Output/BiasAddBiasAdd+CAR_PRICE_PREDICTOR/Output/MatMul:product:09CAR_PRICE_PREDICTOR/Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????z
IdentityIdentity+CAR_PRICE_PREDICTOR/Output/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????

NoOpNoOp0^CAR_PRICE_PREDICTOR/FC_1/BiasAdd/ReadVariableOp/^CAR_PRICE_PREDICTOR/FC_1/MatMul/ReadVariableOp0^CAR_PRICE_PREDICTOR/FC_2/BiasAdd/ReadVariableOp/^CAR_PRICE_PREDICTOR/FC_2/MatMul/ReadVariableOp0^CAR_PRICE_PREDICTOR/FC_3/BiasAdd/ReadVariableOp/^CAR_PRICE_PREDICTOR/FC_3/MatMul/ReadVariableOp2^CAR_PRICE_PREDICTOR/Output/BiasAdd/ReadVariableOp1^CAR_PRICE_PREDICTOR/Output/MatMul/ReadVariableOpW^CAR_PRICE_PREDICTOR/dense_features/Brand_indicator/hash_table_Lookup/LookupTableFindV2X^CAR_PRICE_PREDICTOR/dense_features/Engine_indicator/hash_table_Lookup/LookupTableFindV2`^CAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/hash_table_Lookup/LookupTableFindV2[^CAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV2V^CAR_PRICE_PREDICTOR/dense_features/Name_indicator/hash_table_Lookup/LookupTableFindV2^^CAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/hash_table_Lookup/LookupTableFindV2\^CAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/hash_table_Lookup/LookupTableFindV2`^CAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/hash_table_Lookup/LookupTableFindV2W^CAR_PRICE_PREDICTOR/dense_features/style_indicator/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : :	?	:	?	: : : : : : : : 2b
/CAR_PRICE_PREDICTOR/FC_1/BiasAdd/ReadVariableOp/CAR_PRICE_PREDICTOR/FC_1/BiasAdd/ReadVariableOp2`
.CAR_PRICE_PREDICTOR/FC_1/MatMul/ReadVariableOp.CAR_PRICE_PREDICTOR/FC_1/MatMul/ReadVariableOp2b
/CAR_PRICE_PREDICTOR/FC_2/BiasAdd/ReadVariableOp/CAR_PRICE_PREDICTOR/FC_2/BiasAdd/ReadVariableOp2`
.CAR_PRICE_PREDICTOR/FC_2/MatMul/ReadVariableOp.CAR_PRICE_PREDICTOR/FC_2/MatMul/ReadVariableOp2b
/CAR_PRICE_PREDICTOR/FC_3/BiasAdd/ReadVariableOp/CAR_PRICE_PREDICTOR/FC_3/BiasAdd/ReadVariableOp2`
.CAR_PRICE_PREDICTOR/FC_3/MatMul/ReadVariableOp.CAR_PRICE_PREDICTOR/FC_3/MatMul/ReadVariableOp2f
1CAR_PRICE_PREDICTOR/Output/BiasAdd/ReadVariableOp1CAR_PRICE_PREDICTOR/Output/BiasAdd/ReadVariableOp2d
0CAR_PRICE_PREDICTOR/Output/MatMul/ReadVariableOp0CAR_PRICE_PREDICTOR/Output/MatMul/ReadVariableOp2?
VCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/hash_table_Lookup/LookupTableFindV2VCAR_PRICE_PREDICTOR/dense_features/Brand_indicator/hash_table_Lookup/LookupTableFindV22?
WCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/hash_table_Lookup/LookupTableFindV2WCAR_PRICE_PREDICTOR/dense_features/Engine_indicator/hash_table_Lookup/LookupTableFindV22?
_CAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/hash_table_Lookup/LookupTableFindV2_CAR_PRICE_PREDICTOR/dense_features/Exterior_color_indicator/hash_table_Lookup/LookupTableFindV22?
ZCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV2ZCAR_PRICE_PREDICTOR/dense_features/Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV22?
UCAR_PRICE_PREDICTOR/dense_features/Name_indicator/hash_table_Lookup/LookupTableFindV2UCAR_PRICE_PREDICTOR/dense_features/Name_indicator/hash_table_Lookup/LookupTableFindV22?
]CAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/hash_table_Lookup/LookupTableFindV2]CAR_PRICE_PREDICTOR/dense_features/Transmission_indicator/hash_table_Lookup/LookupTableFindV22?
[CAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/hash_table_Lookup/LookupTableFindV2[CAR_PRICE_PREDICTOR/dense_features/drive_type_indicator/hash_table_Lookup/LookupTableFindV22?
_CAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/hash_table_Lookup/LookupTableFindV2_CAR_PRICE_PREDICTOR/dense_features/interior_color_indicator/hash_table_Lookup/LookupTableFindV22?
VCAR_PRICE_PREDICTOR/dense_features/style_indicator/hash_table_Lookup/LookupTableFindV2VCAR_PRICE_PREDICTOR/dense_features/style_indicator/hash_table_Lookup/LookupTableFindV2:J F
#
_output_shapes
:?????????

_user_specified_nameBrand:KG
#
_output_shapes
:?????????
 
_user_specified_nameEngine:MI
#
_output_shapes
:?????????
"
_user_specified_name
Engine_V:SO
#
_output_shapes
:?????????
(
_user_specified_nameExterior_color:NJ
#
_output_shapes
:?????????
#
_user_specified_name	Fuel_Type:LH
#
_output_shapes
:?????????
!
_user_specified_name	Mileage:IE
#
_output_shapes
:?????????

_user_specified_nameName:QM
#
_output_shapes
:?????????
&
_user_specified_nameTransmission:IE
#
_output_shapes
:?????????

_user_specified_nameYear:O	K
#
_output_shapes
:?????????
$
_user_specified_name
drive_type:S
O
#
_output_shapes
:?????????
(
_user_specified_nameinterior_color:MI
#
_output_shapes
:?????????
"
_user_specified_name
mpg_city:PL
#
_output_shapes
:?????????
%
_user_specified_namempg_highway:JF
#
_output_shapes
:?????????

_user_specified_namestyle:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :% !

_output_shapes
:	?	:%!!

_output_shapes
:	?	
?
?
__inference_<lambda>_8242702
.table_init261_lookuptableimportv2_table_handle*
&table_init261_lookuptableimportv2_keys,
(table_init261_lookuptableimportv2_values	
identity??!table_init261/LookupTableImportV2?
!table_init261/LookupTableImportV2LookupTableImportV2.table_init261_lookuptableimportv2_table_handle&table_init261_lookuptableimportv2_keys(table_init261_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init261/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?:?2F
!table_init261/LookupTableImportV2!table_init261/LookupTableImportV2:!

_output_shapes	
:?:!

_output_shapes	
:?
?
?
__inference_<lambda>_8243102
.table_init463_lookuptableimportv2_table_handle*
&table_init463_lookuptableimportv2_keys,
(table_init463_lookuptableimportv2_values	
identity??!table_init463/LookupTableImportV2?
!table_init463/LookupTableImportV2LookupTableImportV2.table_init463_lookuptableimportv2_table_handle&table_init463_lookuptableimportv2_keys(table_init463_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init463/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?:?2F
!table_init463/LookupTableImportV2!table_init463/LookupTableImportV2:!

_output_shapes	
:?:!

_output_shapes	
:?
??
?
O__inference_CAR_PRICE_PREDICTOR_layer_call_and_return_conditional_losses_823207
inputs_brand
inputs_engine
inputs_engine_v
inputs_exterior_color
inputs_fuel_type
inputs_mileage
inputs_name
inputs_transmission
inputs_year
inputs_drive_type
inputs_interior_color
inputs_mpg_city
inputs_mpg_highway
inputs_styleS
Odense_features_brand_indicator_hash_table_lookup_lookuptablefindv2_table_handleT
Pdense_features_brand_indicator_hash_table_lookup_lookuptablefindv2_default_value	T
Pdense_features_engine_indicator_hash_table_lookup_lookuptablefindv2_table_handleU
Qdense_features_engine_indicator_hash_table_lookup_lookuptablefindv2_default_value	\
Xdense_features_exterior_color_indicator_hash_table_lookup_lookuptablefindv2_table_handle]
Ydense_features_exterior_color_indicator_hash_table_lookup_lookuptablefindv2_default_value	W
Sdense_features_fuel_type_indicator_hash_table_lookup_lookuptablefindv2_table_handleX
Tdense_features_fuel_type_indicator_hash_table_lookup_lookuptablefindv2_default_value	R
Ndense_features_name_indicator_hash_table_lookup_lookuptablefindv2_table_handleS
Odense_features_name_indicator_hash_table_lookup_lookuptablefindv2_default_value	Z
Vdense_features_transmission_indicator_hash_table_lookup_lookuptablefindv2_table_handle[
Wdense_features_transmission_indicator_hash_table_lookup_lookuptablefindv2_default_value	X
Tdense_features_drive_type_indicator_hash_table_lookup_lookuptablefindv2_table_handleY
Udense_features_drive_type_indicator_hash_table_lookup_lookuptablefindv2_default_value	\
Xdense_features_interior_color_indicator_hash_table_lookup_lookuptablefindv2_table_handle]
Ydense_features_interior_color_indicator_hash_table_lookup_lookuptablefindv2_default_value	S
Odense_features_style_indicator_hash_table_lookup_lookuptablefindv2_table_handleT
Pdense_features_style_indicator_hash_table_lookup_lookuptablefindv2_default_value	
normalization_sub_y
normalization_sqrt_x6
#fc_1_matmul_readvariableop_resource:	?	@2
$fc_1_biasadd_readvariableop_resource:@5
#fc_2_matmul_readvariableop_resource:@ 2
$fc_2_biasadd_readvariableop_resource: 5
#fc_3_matmul_readvariableop_resource: 
2
$fc_3_biasadd_readvariableop_resource:
7
%output_matmul_readvariableop_resource:
4
&output_biasadd_readvariableop_resource:
identity??FC_1/BiasAdd/ReadVariableOp?FC_1/MatMul/ReadVariableOp?FC_2/BiasAdd/ReadVariableOp?FC_2/MatMul/ReadVariableOp?FC_3/BiasAdd/ReadVariableOp?FC_3/MatMul/ReadVariableOp?Output/BiasAdd/ReadVariableOp?Output/MatMul/ReadVariableOp?Bdense_features/Brand_indicator/hash_table_Lookup/LookupTableFindV2?Cdense_features/Engine_indicator/hash_table_Lookup/LookupTableFindV2?Kdense_features/Exterior_color_indicator/hash_table_Lookup/LookupTableFindV2?Fdense_features/Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV2?Adense_features/Name_indicator/hash_table_Lookup/LookupTableFindV2?Idense_features/Transmission_indicator/hash_table_Lookup/LookupTableFindV2?Gdense_features/drive_type_indicator/hash_table_Lookup/LookupTableFindV2?Kdense_features/interior_color_indicator/hash_table_Lookup/LookupTableFindV2?Bdense_features/style_indicator/hash_table_Lookup/LookupTableFindV2x
-dense_features/Brand_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
)dense_features/Brand_indicator/ExpandDims
ExpandDimsinputs_brand6dense_features/Brand_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????~
=dense_features/Brand_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
7dense_features/Brand_indicator/to_sparse_input/NotEqualNotEqual2dense_features/Brand_indicator/ExpandDims:output:0Fdense_features/Brand_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
6dense_features/Brand_indicator/to_sparse_input/indicesWhere;dense_features/Brand_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
5dense_features/Brand_indicator/to_sparse_input/valuesGatherNd2dense_features/Brand_indicator/ExpandDims:output:0>dense_features/Brand_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
:dense_features/Brand_indicator/to_sparse_input/dense_shapeShape2dense_features/Brand_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Bdense_features/Brand_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Odense_features_brand_indicator_hash_table_lookup_lookuptablefindv2_table_handle>dense_features/Brand_indicator/to_sparse_input/values:output:0Pdense_features_brand_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
:dense_features/Brand_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
,dense_features/Brand_indicator/SparseToDenseSparseToDense>dense_features/Brand_indicator/to_sparse_input/indices:index:0Cdense_features/Brand_indicator/to_sparse_input/dense_shape:output:0Kdense_features/Brand_indicator/hash_table_Lookup/LookupTableFindV2:values:0Cdense_features/Brand_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????q
,dense_features/Brand_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??s
.dense_features/Brand_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    n
,dense_features/Brand_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :+?
&dense_features/Brand_indicator/one_hotOneHot4dense_features/Brand_indicator/SparseToDense:dense:05dense_features/Brand_indicator/one_hot/depth:output:05dense_features/Brand_indicator/one_hot/Const:output:07dense_features/Brand_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????+?
4dense_features/Brand_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
"dense_features/Brand_indicator/SumSum/dense_features/Brand_indicator/one_hot:output:0=dense_features/Brand_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????+
$dense_features/Brand_indicator/ShapeShape+dense_features/Brand_indicator/Sum:output:0*
T0*
_output_shapes
:|
2dense_features/Brand_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_features/Brand_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_features/Brand_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,dense_features/Brand_indicator/strided_sliceStridedSlice-dense_features/Brand_indicator/Shape:output:0;dense_features/Brand_indicator/strided_slice/stack:output:0=dense_features/Brand_indicator/strided_slice/stack_1:output:0=dense_features/Brand_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.dense_features/Brand_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :+?
,dense_features/Brand_indicator/Reshape/shapePack5dense_features/Brand_indicator/strided_slice:output:07dense_features/Brand_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
&dense_features/Brand_indicator/ReshapeReshape+dense_features/Brand_indicator/Sum:output:05dense_features/Brand_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????+q
&dense_features/Engine_V/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
"dense_features/Engine_V/ExpandDims
ExpandDimsinputs_engine_v/dense_features/Engine_V/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????x
dense_features/Engine_V/ShapeShape+dense_features/Engine_V/ExpandDims:output:0*
T0*
_output_shapes
:u
+dense_features/Engine_V/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-dense_features/Engine_V/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-dense_features/Engine_V/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%dense_features/Engine_V/strided_sliceStridedSlice&dense_features/Engine_V/Shape:output:04dense_features/Engine_V/strided_slice/stack:output:06dense_features/Engine_V/strided_slice/stack_1:output:06dense_features/Engine_V/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'dense_features/Engine_V/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
%dense_features/Engine_V/Reshape/shapePack.dense_features/Engine_V/strided_slice:output:00dense_features/Engine_V/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dense_features/Engine_V/ReshapeReshape+dense_features/Engine_V/ExpandDims:output:0.dense_features/Engine_V/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????y
.dense_features/Engine_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
*dense_features/Engine_indicator/ExpandDims
ExpandDimsinputs_engine7dense_features/Engine_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????
>dense_features/Engine_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
8dense_features/Engine_indicator/to_sparse_input/NotEqualNotEqual3dense_features/Engine_indicator/ExpandDims:output:0Gdense_features/Engine_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
7dense_features/Engine_indicator/to_sparse_input/indicesWhere<dense_features/Engine_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
6dense_features/Engine_indicator/to_sparse_input/valuesGatherNd3dense_features/Engine_indicator/ExpandDims:output:0?dense_features/Engine_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
;dense_features/Engine_indicator/to_sparse_input/dense_shapeShape3dense_features/Engine_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Cdense_features/Engine_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Pdense_features_engine_indicator_hash_table_lookup_lookuptablefindv2_table_handle?dense_features/Engine_indicator/to_sparse_input/values:output:0Qdense_features_engine_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
;dense_features/Engine_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
-dense_features/Engine_indicator/SparseToDenseSparseToDense?dense_features/Engine_indicator/to_sparse_input/indices:index:0Ddense_features/Engine_indicator/to_sparse_input/dense_shape:output:0Ldense_features/Engine_indicator/hash_table_Lookup/LookupTableFindV2:values:0Ddense_features/Engine_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????r
-dense_features/Engine_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??t
/dense_features/Engine_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    o
-dense_features/Engine_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
'dense_features/Engine_indicator/one_hotOneHot5dense_features/Engine_indicator/SparseToDense:dense:06dense_features/Engine_indicator/one_hot/depth:output:06dense_features/Engine_indicator/one_hot/Const:output:08dense_features/Engine_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
5dense_features/Engine_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
#dense_features/Engine_indicator/SumSum0dense_features/Engine_indicator/one_hot:output:0>dense_features/Engine_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
%dense_features/Engine_indicator/ShapeShape,dense_features/Engine_indicator/Sum:output:0*
T0*
_output_shapes
:}
3dense_features/Engine_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5dense_features/Engine_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5dense_features/Engine_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-dense_features/Engine_indicator/strided_sliceStridedSlice.dense_features/Engine_indicator/Shape:output:0<dense_features/Engine_indicator/strided_slice/stack:output:0>dense_features/Engine_indicator/strided_slice/stack_1:output:0>dense_features/Engine_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/dense_features/Engine_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
-dense_features/Engine_indicator/Reshape/shapePack6dense_features/Engine_indicator/strided_slice:output:08dense_features/Engine_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
'dense_features/Engine_indicator/ReshapeReshape,dense_features/Engine_indicator/Sum:output:06dense_features/Engine_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
6dense_features/Exterior_color_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
2dense_features/Exterior_color_indicator/ExpandDims
ExpandDimsinputs_exterior_color?dense_features/Exterior_color_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
Fdense_features/Exterior_color_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
@dense_features/Exterior_color_indicator/to_sparse_input/NotEqualNotEqual;dense_features/Exterior_color_indicator/ExpandDims:output:0Odense_features/Exterior_color_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
?dense_features/Exterior_color_indicator/to_sparse_input/indicesWhereDdense_features/Exterior_color_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
>dense_features/Exterior_color_indicator/to_sparse_input/valuesGatherNd;dense_features/Exterior_color_indicator/ExpandDims:output:0Gdense_features/Exterior_color_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
Cdense_features/Exterior_color_indicator/to_sparse_input/dense_shapeShape;dense_features/Exterior_color_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Kdense_features/Exterior_color_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Xdense_features_exterior_color_indicator_hash_table_lookup_lookuptablefindv2_table_handleGdense_features/Exterior_color_indicator/to_sparse_input/values:output:0Ydense_features_exterior_color_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
Cdense_features/Exterior_color_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
5dense_features/Exterior_color_indicator/SparseToDenseSparseToDenseGdense_features/Exterior_color_indicator/to_sparse_input/indices:index:0Ldense_features/Exterior_color_indicator/to_sparse_input/dense_shape:output:0Tdense_features/Exterior_color_indicator/hash_table_Lookup/LookupTableFindV2:values:0Ldense_features/Exterior_color_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????z
5dense_features/Exterior_color_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??|
7dense_features/Exterior_color_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    x
5dense_features/Exterior_color_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
/dense_features/Exterior_color_indicator/one_hotOneHot=dense_features/Exterior_color_indicator/SparseToDense:dense:0>dense_features/Exterior_color_indicator/one_hot/depth:output:0>dense_features/Exterior_color_indicator/one_hot/Const:output:0@dense_features/Exterior_color_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:???????????
=dense_features/Exterior_color_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
+dense_features/Exterior_color_indicator/SumSum8dense_features/Exterior_color_indicator/one_hot:output:0Fdense_features/Exterior_color_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
-dense_features/Exterior_color_indicator/ShapeShape4dense_features/Exterior_color_indicator/Sum:output:0*
T0*
_output_shapes
:?
;dense_features/Exterior_color_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
=dense_features/Exterior_color_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
=dense_features/Exterior_color_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
5dense_features/Exterior_color_indicator/strided_sliceStridedSlice6dense_features/Exterior_color_indicator/Shape:output:0Ddense_features/Exterior_color_indicator/strided_slice/stack:output:0Fdense_features/Exterior_color_indicator/strided_slice/stack_1:output:0Fdense_features/Exterior_color_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
7dense_features/Exterior_color_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
5dense_features/Exterior_color_indicator/Reshape/shapePack>dense_features/Exterior_color_indicator/strided_slice:output:0@dense_features/Exterior_color_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
/dense_features/Exterior_color_indicator/ReshapeReshape4dense_features/Exterior_color_indicator/Sum:output:0>dense_features/Exterior_color_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????|
1dense_features/Fuel_Type_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
-dense_features/Fuel_Type_indicator/ExpandDims
ExpandDimsinputs_fuel_type:dense_features/Fuel_Type_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
Adense_features/Fuel_Type_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
;dense_features/Fuel_Type_indicator/to_sparse_input/NotEqualNotEqual6dense_features/Fuel_Type_indicator/ExpandDims:output:0Jdense_features/Fuel_Type_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
:dense_features/Fuel_Type_indicator/to_sparse_input/indicesWhere?dense_features/Fuel_Type_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
9dense_features/Fuel_Type_indicator/to_sparse_input/valuesGatherNd6dense_features/Fuel_Type_indicator/ExpandDims:output:0Bdense_features/Fuel_Type_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
>dense_features/Fuel_Type_indicator/to_sparse_input/dense_shapeShape6dense_features/Fuel_Type_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Fdense_features/Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Sdense_features_fuel_type_indicator_hash_table_lookup_lookuptablefindv2_table_handleBdense_features/Fuel_Type_indicator/to_sparse_input/values:output:0Tdense_features_fuel_type_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
>dense_features/Fuel_Type_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
0dense_features/Fuel_Type_indicator/SparseToDenseSparseToDenseBdense_features/Fuel_Type_indicator/to_sparse_input/indices:index:0Gdense_features/Fuel_Type_indicator/to_sparse_input/dense_shape:output:0Odense_features/Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV2:values:0Gdense_features/Fuel_Type_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????u
0dense_features/Fuel_Type_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??w
2dense_features/Fuel_Type_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    r
0dense_features/Fuel_Type_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
*dense_features/Fuel_Type_indicator/one_hotOneHot8dense_features/Fuel_Type_indicator/SparseToDense:dense:09dense_features/Fuel_Type_indicator/one_hot/depth:output:09dense_features/Fuel_Type_indicator/one_hot/Const:output:0;dense_features/Fuel_Type_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
8dense_features/Fuel_Type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
&dense_features/Fuel_Type_indicator/SumSum3dense_features/Fuel_Type_indicator/one_hot:output:0Adense_features/Fuel_Type_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
(dense_features/Fuel_Type_indicator/ShapeShape/dense_features/Fuel_Type_indicator/Sum:output:0*
T0*
_output_shapes
:?
6dense_features/Fuel_Type_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8dense_features/Fuel_Type_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8dense_features/Fuel_Type_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0dense_features/Fuel_Type_indicator/strided_sliceStridedSlice1dense_features/Fuel_Type_indicator/Shape:output:0?dense_features/Fuel_Type_indicator/strided_slice/stack:output:0Adense_features/Fuel_Type_indicator/strided_slice/stack_1:output:0Adense_features/Fuel_Type_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
2dense_features/Fuel_Type_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
0dense_features/Fuel_Type_indicator/Reshape/shapePack9dense_features/Fuel_Type_indicator/strided_slice:output:0;dense_features/Fuel_Type_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
*dense_features/Fuel_Type_indicator/ReshapeReshape/dense_features/Fuel_Type_indicator/Sum:output:09dense_features/Fuel_Type_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????p
%dense_features/Mileage/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
!dense_features/Mileage/ExpandDims
ExpandDimsinputs_mileage.dense_features/Mileage/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
dense_features/Mileage/CastCast*dense_features/Mileage/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????k
dense_features/Mileage/ShapeShapedense_features/Mileage/Cast:y:0*
T0*
_output_shapes
:t
*dense_features/Mileage/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,dense_features/Mileage/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,dense_features/Mileage/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$dense_features/Mileage/strided_sliceStridedSlice%dense_features/Mileage/Shape:output:03dense_features/Mileage/strided_slice/stack:output:05dense_features/Mileage/strided_slice/stack_1:output:05dense_features/Mileage/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&dense_features/Mileage/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
$dense_features/Mileage/Reshape/shapePack-dense_features/Mileage/strided_slice:output:0/dense_features/Mileage/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dense_features/Mileage/ReshapeReshapedense_features/Mileage/Cast:y:0-dense_features/Mileage/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????w
,dense_features/Name_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
(dense_features/Name_indicator/ExpandDims
ExpandDimsinputs_name5dense_features/Name_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????}
<dense_features/Name_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
6dense_features/Name_indicator/to_sparse_input/NotEqualNotEqual1dense_features/Name_indicator/ExpandDims:output:0Edense_features/Name_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
5dense_features/Name_indicator/to_sparse_input/indicesWhere:dense_features/Name_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
4dense_features/Name_indicator/to_sparse_input/valuesGatherNd1dense_features/Name_indicator/ExpandDims:output:0=dense_features/Name_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
9dense_features/Name_indicator/to_sparse_input/dense_shapeShape1dense_features/Name_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Adense_features/Name_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Ndense_features_name_indicator_hash_table_lookup_lookuptablefindv2_table_handle=dense_features/Name_indicator/to_sparse_input/values:output:0Odense_features_name_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
9dense_features/Name_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
+dense_features/Name_indicator/SparseToDenseSparseToDense=dense_features/Name_indicator/to_sparse_input/indices:index:0Bdense_features/Name_indicator/to_sparse_input/dense_shape:output:0Jdense_features/Name_indicator/hash_table_Lookup/LookupTableFindV2:values:0Bdense_features/Name_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????p
+dense_features/Name_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??r
-dense_features/Name_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    n
+dense_features/Name_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
%dense_features/Name_indicator/one_hotOneHot3dense_features/Name_indicator/SparseToDense:dense:04dense_features/Name_indicator/one_hot/depth:output:04dense_features/Name_indicator/one_hot/Const:output:06dense_features/Name_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:???????????
3dense_features/Name_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
!dense_features/Name_indicator/SumSum.dense_features/Name_indicator/one_hot:output:0<dense_features/Name_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:??????????}
#dense_features/Name_indicator/ShapeShape*dense_features/Name_indicator/Sum:output:0*
T0*
_output_shapes
:{
1dense_features/Name_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3dense_features/Name_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3dense_features/Name_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+dense_features/Name_indicator/strided_sliceStridedSlice,dense_features/Name_indicator/Shape:output:0:dense_features/Name_indicator/strided_slice/stack:output:0<dense_features/Name_indicator/strided_slice/stack_1:output:0<dense_features/Name_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
-dense_features/Name_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
+dense_features/Name_indicator/Reshape/shapePack4dense_features/Name_indicator/strided_slice:output:06dense_features/Name_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
%dense_features/Name_indicator/ReshapeReshape*dense_features/Name_indicator/Sum:output:04dense_features/Name_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????
4dense_features/Transmission_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
0dense_features/Transmission_indicator/ExpandDims
ExpandDimsinputs_transmission=dense_features/Transmission_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
Ddense_features/Transmission_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
>dense_features/Transmission_indicator/to_sparse_input/NotEqualNotEqual9dense_features/Transmission_indicator/ExpandDims:output:0Mdense_features/Transmission_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
=dense_features/Transmission_indicator/to_sparse_input/indicesWhereBdense_features/Transmission_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
<dense_features/Transmission_indicator/to_sparse_input/valuesGatherNd9dense_features/Transmission_indicator/ExpandDims:output:0Edense_features/Transmission_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
Adense_features/Transmission_indicator/to_sparse_input/dense_shapeShape9dense_features/Transmission_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Idense_features/Transmission_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Vdense_features_transmission_indicator_hash_table_lookup_lookuptablefindv2_table_handleEdense_features/Transmission_indicator/to_sparse_input/values:output:0Wdense_features_transmission_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
Adense_features/Transmission_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
3dense_features/Transmission_indicator/SparseToDenseSparseToDenseEdense_features/Transmission_indicator/to_sparse_input/indices:index:0Jdense_features/Transmission_indicator/to_sparse_input/dense_shape:output:0Rdense_features/Transmission_indicator/hash_table_Lookup/LookupTableFindV2:values:0Jdense_features/Transmission_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????x
3dense_features/Transmission_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??z
5dense_features/Transmission_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    u
3dense_features/Transmission_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
-dense_features/Transmission_indicator/one_hotOneHot;dense_features/Transmission_indicator/SparseToDense:dense:0<dense_features/Transmission_indicator/one_hot/depth:output:0<dense_features/Transmission_indicator/one_hot/Const:output:0>dense_features/Transmission_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
;dense_features/Transmission_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
)dense_features/Transmission_indicator/SumSum6dense_features/Transmission_indicator/one_hot:output:0Ddense_features/Transmission_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
+dense_features/Transmission_indicator/ShapeShape2dense_features/Transmission_indicator/Sum:output:0*
T0*
_output_shapes
:?
9dense_features/Transmission_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
;dense_features/Transmission_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
;dense_features/Transmission_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
3dense_features/Transmission_indicator/strided_sliceStridedSlice4dense_features/Transmission_indicator/Shape:output:0Bdense_features/Transmission_indicator/strided_slice/stack:output:0Ddense_features/Transmission_indicator/strided_slice/stack_1:output:0Ddense_features/Transmission_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
5dense_features/Transmission_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
3dense_features/Transmission_indicator/Reshape/shapePack<dense_features/Transmission_indicator/strided_slice:output:0>dense_features/Transmission_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
-dense_features/Transmission_indicator/ReshapeReshape2dense_features/Transmission_indicator/Sum:output:0<dense_features/Transmission_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????m
"dense_features/Year/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dense_features/Year/ExpandDims
ExpandDimsinputs_year+dense_features/Year/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
dense_features/Year/CastCast'dense_features/Year/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????e
dense_features/Year/ShapeShapedense_features/Year/Cast:y:0*
T0*
_output_shapes
:q
'dense_features/Year/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)dense_features/Year/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)dense_features/Year/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!dense_features/Year/strided_sliceStridedSlice"dense_features/Year/Shape:output:00dense_features/Year/strided_slice/stack:output:02dense_features/Year/strided_slice/stack_1:output:02dense_features/Year/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#dense_features/Year/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
!dense_features/Year/Reshape/shapePack*dense_features/Year/strided_slice:output:0,dense_features/Year/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dense_features/Year/ReshapeReshapedense_features/Year/Cast:y:0*dense_features/Year/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????}
2dense_features/drive_type_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
.dense_features/drive_type_indicator/ExpandDims
ExpandDimsinputs_drive_type;dense_features/drive_type_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
Bdense_features/drive_type_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
<dense_features/drive_type_indicator/to_sparse_input/NotEqualNotEqual7dense_features/drive_type_indicator/ExpandDims:output:0Kdense_features/drive_type_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
;dense_features/drive_type_indicator/to_sparse_input/indicesWhere@dense_features/drive_type_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
:dense_features/drive_type_indicator/to_sparse_input/valuesGatherNd7dense_features/drive_type_indicator/ExpandDims:output:0Cdense_features/drive_type_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
?dense_features/drive_type_indicator/to_sparse_input/dense_shapeShape7dense_features/drive_type_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Gdense_features/drive_type_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Tdense_features_drive_type_indicator_hash_table_lookup_lookuptablefindv2_table_handleCdense_features/drive_type_indicator/to_sparse_input/values:output:0Udense_features_drive_type_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
?dense_features/drive_type_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
1dense_features/drive_type_indicator/SparseToDenseSparseToDenseCdense_features/drive_type_indicator/to_sparse_input/indices:index:0Hdense_features/drive_type_indicator/to_sparse_input/dense_shape:output:0Pdense_features/drive_type_indicator/hash_table_Lookup/LookupTableFindV2:values:0Hdense_features/drive_type_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????v
1dense_features/drive_type_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??x
3dense_features/drive_type_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    s
1dense_features/drive_type_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
+dense_features/drive_type_indicator/one_hotOneHot9dense_features/drive_type_indicator/SparseToDense:dense:0:dense_features/drive_type_indicator/one_hot/depth:output:0:dense_features/drive_type_indicator/one_hot/Const:output:0<dense_features/drive_type_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
9dense_features/drive_type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
'dense_features/drive_type_indicator/SumSum4dense_features/drive_type_indicator/one_hot:output:0Bdense_features/drive_type_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
)dense_features/drive_type_indicator/ShapeShape0dense_features/drive_type_indicator/Sum:output:0*
T0*
_output_shapes
:?
7dense_features/drive_type_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
9dense_features/drive_type_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
9dense_features/drive_type_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
1dense_features/drive_type_indicator/strided_sliceStridedSlice2dense_features/drive_type_indicator/Shape:output:0@dense_features/drive_type_indicator/strided_slice/stack:output:0Bdense_features/drive_type_indicator/strided_slice/stack_1:output:0Bdense_features/drive_type_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
3dense_features/drive_type_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
1dense_features/drive_type_indicator/Reshape/shapePack:dense_features/drive_type_indicator/strided_slice:output:0<dense_features/drive_type_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
+dense_features/drive_type_indicator/ReshapeReshape0dense_features/drive_type_indicator/Sum:output:0:dense_features/drive_type_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
6dense_features/interior_color_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
2dense_features/interior_color_indicator/ExpandDims
ExpandDimsinputs_interior_color?dense_features/interior_color_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
Fdense_features/interior_color_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
@dense_features/interior_color_indicator/to_sparse_input/NotEqualNotEqual;dense_features/interior_color_indicator/ExpandDims:output:0Odense_features/interior_color_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
?dense_features/interior_color_indicator/to_sparse_input/indicesWhereDdense_features/interior_color_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
>dense_features/interior_color_indicator/to_sparse_input/valuesGatherNd;dense_features/interior_color_indicator/ExpandDims:output:0Gdense_features/interior_color_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
Cdense_features/interior_color_indicator/to_sparse_input/dense_shapeShape;dense_features/interior_color_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Kdense_features/interior_color_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Xdense_features_interior_color_indicator_hash_table_lookup_lookuptablefindv2_table_handleGdense_features/interior_color_indicator/to_sparse_input/values:output:0Ydense_features_interior_color_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
Cdense_features/interior_color_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
5dense_features/interior_color_indicator/SparseToDenseSparseToDenseGdense_features/interior_color_indicator/to_sparse_input/indices:index:0Ldense_features/interior_color_indicator/to_sparse_input/dense_shape:output:0Tdense_features/interior_color_indicator/hash_table_Lookup/LookupTableFindV2:values:0Ldense_features/interior_color_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????z
5dense_features/interior_color_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??|
7dense_features/interior_color_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    x
5dense_features/interior_color_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
/dense_features/interior_color_indicator/one_hotOneHot=dense_features/interior_color_indicator/SparseToDense:dense:0>dense_features/interior_color_indicator/one_hot/depth:output:0>dense_features/interior_color_indicator/one_hot/Const:output:0@dense_features/interior_color_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:???????????
=dense_features/interior_color_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
+dense_features/interior_color_indicator/SumSum8dense_features/interior_color_indicator/one_hot:output:0Fdense_features/interior_color_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
-dense_features/interior_color_indicator/ShapeShape4dense_features/interior_color_indicator/Sum:output:0*
T0*
_output_shapes
:?
;dense_features/interior_color_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
=dense_features/interior_color_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
=dense_features/interior_color_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
5dense_features/interior_color_indicator/strided_sliceStridedSlice6dense_features/interior_color_indicator/Shape:output:0Ddense_features/interior_color_indicator/strided_slice/stack:output:0Fdense_features/interior_color_indicator/strided_slice/stack_1:output:0Fdense_features/interior_color_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
7dense_features/interior_color_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
5dense_features/interior_color_indicator/Reshape/shapePack>dense_features/interior_color_indicator/strided_slice:output:0@dense_features/interior_color_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
/dense_features/interior_color_indicator/ReshapeReshape4dense_features/interior_color_indicator/Sum:output:0>dense_features/interior_color_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????q
&dense_features/mpg_city/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
"dense_features/mpg_city/ExpandDims
ExpandDimsinputs_mpg_city/dense_features/mpg_city/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
dense_features/mpg_city/CastCast+dense_features/mpg_city/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????m
dense_features/mpg_city/ShapeShape dense_features/mpg_city/Cast:y:0*
T0*
_output_shapes
:u
+dense_features/mpg_city/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-dense_features/mpg_city/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-dense_features/mpg_city/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%dense_features/mpg_city/strided_sliceStridedSlice&dense_features/mpg_city/Shape:output:04dense_features/mpg_city/strided_slice/stack:output:06dense_features/mpg_city/strided_slice/stack_1:output:06dense_features/mpg_city/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'dense_features/mpg_city/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
%dense_features/mpg_city/Reshape/shapePack.dense_features/mpg_city/strided_slice:output:00dense_features/mpg_city/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dense_features/mpg_city/ReshapeReshape dense_features/mpg_city/Cast:y:0.dense_features/mpg_city/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????t
)dense_features/mpg_highway/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%dense_features/mpg_highway/ExpandDims
ExpandDimsinputs_mpg_highway2dense_features/mpg_highway/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
dense_features/mpg_highway/CastCast.dense_features/mpg_highway/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????s
 dense_features/mpg_highway/ShapeShape#dense_features/mpg_highway/Cast:y:0*
T0*
_output_shapes
:x
.dense_features/mpg_highway/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0dense_features/mpg_highway/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0dense_features/mpg_highway/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
(dense_features/mpg_highway/strided_sliceStridedSlice)dense_features/mpg_highway/Shape:output:07dense_features/mpg_highway/strided_slice/stack:output:09dense_features/mpg_highway/strided_slice/stack_1:output:09dense_features/mpg_highway/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*dense_features/mpg_highway/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
(dense_features/mpg_highway/Reshape/shapePack1dense_features/mpg_highway/strided_slice:output:03dense_features/mpg_highway/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
"dense_features/mpg_highway/ReshapeReshape#dense_features/mpg_highway/Cast:y:01dense_features/mpg_highway/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????x
-dense_features/style_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
)dense_features/style_indicator/ExpandDims
ExpandDimsinputs_style6dense_features/style_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????~
=dense_features/style_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
7dense_features/style_indicator/to_sparse_input/NotEqualNotEqual2dense_features/style_indicator/ExpandDims:output:0Fdense_features/style_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
6dense_features/style_indicator/to_sparse_input/indicesWhere;dense_features/style_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
5dense_features/style_indicator/to_sparse_input/valuesGatherNd2dense_features/style_indicator/ExpandDims:output:0>dense_features/style_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
:dense_features/style_indicator/to_sparse_input/dense_shapeShape2dense_features/style_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Bdense_features/style_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Odense_features_style_indicator_hash_table_lookup_lookuptablefindv2_table_handle>dense_features/style_indicator/to_sparse_input/values:output:0Pdense_features_style_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
:dense_features/style_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
,dense_features/style_indicator/SparseToDenseSparseToDense>dense_features/style_indicator/to_sparse_input/indices:index:0Cdense_features/style_indicator/to_sparse_input/dense_shape:output:0Kdense_features/style_indicator/hash_table_Lookup/LookupTableFindV2:values:0Cdense_features/style_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????q
,dense_features/style_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??s
.dense_features/style_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    n
,dense_features/style_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :	?
&dense_features/style_indicator/one_hotOneHot4dense_features/style_indicator/SparseToDense:dense:05dense_features/style_indicator/one_hot/depth:output:05dense_features/style_indicator/one_hot/Const:output:07dense_features/style_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????	?
4dense_features/style_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
"dense_features/style_indicator/SumSum/dense_features/style_indicator/one_hot:output:0=dense_features/style_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????	
$dense_features/style_indicator/ShapeShape+dense_features/style_indicator/Sum:output:0*
T0*
_output_shapes
:|
2dense_features/style_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_features/style_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_features/style_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,dense_features/style_indicator/strided_sliceStridedSlice-dense_features/style_indicator/Shape:output:0;dense_features/style_indicator/strided_slice/stack:output:0=dense_features/style_indicator/strided_slice/stack_1:output:0=dense_features/style_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.dense_features/style_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :	?
,dense_features/style_indicator/Reshape/shapePack5dense_features/style_indicator/strided_slice:output:07dense_features/style_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
&dense_features/style_indicator/ReshapeReshape+dense_features/style_indicator/Sum:output:05dense_features/style_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????	e
dense_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dense_features/concatConcatV2/dense_features/Brand_indicator/Reshape:output:0(dense_features/Engine_V/Reshape:output:00dense_features/Engine_indicator/Reshape:output:08dense_features/Exterior_color_indicator/Reshape:output:03dense_features/Fuel_Type_indicator/Reshape:output:0'dense_features/Mileage/Reshape:output:0.dense_features/Name_indicator/Reshape:output:06dense_features/Transmission_indicator/Reshape:output:0$dense_features/Year/Reshape:output:04dense_features/drive_type_indicator/Reshape:output:08dense_features/interior_color_indicator/Reshape:output:0(dense_features/mpg_city/Reshape:output:0+dense_features/mpg_highway/Reshape:output:0/dense_features/style_indicator/Reshape:output:0#dense_features/concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????	?
normalization/subSubdense_features/concat:output:0normalization_sub_y*
T0*(
_output_shapes
:??????????	Z
normalization/SqrtSqrtnormalization_sqrt_x*
T0*
_output_shapes
:	?	\
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*
_output_shapes
:	?	?
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*(
_output_shapes
:??????????	
FC_1/MatMul/ReadVariableOpReadVariableOp#fc_1_matmul_readvariableop_resource*
_output_shapes
:	?	@*
dtype0?
FC_1/MatMulMatMulnormalization/truediv:z:0"FC_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@|
FC_1/BiasAdd/ReadVariableOpReadVariableOp$fc_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
FC_1/BiasAddBiasAddFC_1/MatMul:product:0#FC_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@Z
	FC_1/ReluReluFC_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@~
FC_2/MatMul/ReadVariableOpReadVariableOp#fc_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0?
FC_2/MatMulMatMulFC_1/Relu:activations:0"FC_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? |
FC_2/BiasAdd/ReadVariableOpReadVariableOp$fc_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
FC_2/BiasAddBiasAddFC_2/MatMul:product:0#FC_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? Z
	FC_2/ReluReluFC_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? ~
FC_3/MatMul/ReadVariableOpReadVariableOp#fc_3_matmul_readvariableop_resource*
_output_shapes

: 
*
dtype0?
FC_3/MatMulMatMulFC_2/Relu:activations:0"FC_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
|
FC_3/BiasAdd/ReadVariableOpReadVariableOp$fc_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0?
FC_3/BiasAddBiasAddFC_3/MatMul:product:0#FC_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
Z
	FC_3/ReluReluFC_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
?
Output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
Output/MatMulMatMulFC_3/Relu:activations:0$Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
Output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
Output/BiasAddBiasAddOutput/MatMul:product:0%Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
IdentityIdentityOutput/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^FC_1/BiasAdd/ReadVariableOp^FC_1/MatMul/ReadVariableOp^FC_2/BiasAdd/ReadVariableOp^FC_2/MatMul/ReadVariableOp^FC_3/BiasAdd/ReadVariableOp^FC_3/MatMul/ReadVariableOp^Output/BiasAdd/ReadVariableOp^Output/MatMul/ReadVariableOpC^dense_features/Brand_indicator/hash_table_Lookup/LookupTableFindV2D^dense_features/Engine_indicator/hash_table_Lookup/LookupTableFindV2L^dense_features/Exterior_color_indicator/hash_table_Lookup/LookupTableFindV2G^dense_features/Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV2B^dense_features/Name_indicator/hash_table_Lookup/LookupTableFindV2J^dense_features/Transmission_indicator/hash_table_Lookup/LookupTableFindV2H^dense_features/drive_type_indicator/hash_table_Lookup/LookupTableFindV2L^dense_features/interior_color_indicator/hash_table_Lookup/LookupTableFindV2C^dense_features/style_indicator/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : :	?	:	?	: : : : : : : : 2:
FC_1/BiasAdd/ReadVariableOpFC_1/BiasAdd/ReadVariableOp28
FC_1/MatMul/ReadVariableOpFC_1/MatMul/ReadVariableOp2:
FC_2/BiasAdd/ReadVariableOpFC_2/BiasAdd/ReadVariableOp28
FC_2/MatMul/ReadVariableOpFC_2/MatMul/ReadVariableOp2:
FC_3/BiasAdd/ReadVariableOpFC_3/BiasAdd/ReadVariableOp28
FC_3/MatMul/ReadVariableOpFC_3/MatMul/ReadVariableOp2>
Output/BiasAdd/ReadVariableOpOutput/BiasAdd/ReadVariableOp2<
Output/MatMul/ReadVariableOpOutput/MatMul/ReadVariableOp2?
Bdense_features/Brand_indicator/hash_table_Lookup/LookupTableFindV2Bdense_features/Brand_indicator/hash_table_Lookup/LookupTableFindV22?
Cdense_features/Engine_indicator/hash_table_Lookup/LookupTableFindV2Cdense_features/Engine_indicator/hash_table_Lookup/LookupTableFindV22?
Kdense_features/Exterior_color_indicator/hash_table_Lookup/LookupTableFindV2Kdense_features/Exterior_color_indicator/hash_table_Lookup/LookupTableFindV22?
Fdense_features/Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV2Fdense_features/Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV22?
Adense_features/Name_indicator/hash_table_Lookup/LookupTableFindV2Adense_features/Name_indicator/hash_table_Lookup/LookupTableFindV22?
Idense_features/Transmission_indicator/hash_table_Lookup/LookupTableFindV2Idense_features/Transmission_indicator/hash_table_Lookup/LookupTableFindV22?
Gdense_features/drive_type_indicator/hash_table_Lookup/LookupTableFindV2Gdense_features/drive_type_indicator/hash_table_Lookup/LookupTableFindV22?
Kdense_features/interior_color_indicator/hash_table_Lookup/LookupTableFindV2Kdense_features/interior_color_indicator/hash_table_Lookup/LookupTableFindV22?
Bdense_features/style_indicator/hash_table_Lookup/LookupTableFindV2Bdense_features/style_indicator/hash_table_Lookup/LookupTableFindV2:Q M
#
_output_shapes
:?????????
&
_user_specified_nameinputs/Brand:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/Engine:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Engine_V:ZV
#
_output_shapes
:?????????
/
_user_specified_nameinputs/Exterior_color:UQ
#
_output_shapes
:?????????
*
_user_specified_nameinputs/Fuel_Type:SO
#
_output_shapes
:?????????
(
_user_specified_nameinputs/Mileage:PL
#
_output_shapes
:?????????
%
_user_specified_nameinputs/Name:XT
#
_output_shapes
:?????????
-
_user_specified_nameinputs/Transmission:PL
#
_output_shapes
:?????????
%
_user_specified_nameinputs/Year:V	R
#
_output_shapes
:?????????
+
_user_specified_nameinputs/drive_type:Z
V
#
_output_shapes
:?????????
/
_user_specified_nameinputs/interior_color:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/mpg_city:WS
#
_output_shapes
:?????????
,
_user_specified_nameinputs/mpg_highway:QM
#
_output_shapes
:?????????
&
_user_specified_nameinputs/style:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :% !

_output_shapes
:	?	:%!!

_output_shapes
:	?	
?
?
%__inference_FC_2_layer_call_fn_824034

inputs
unknown:@ 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_FC_2_layer_call_and_return_conditional_losses_821351o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:????????? `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
$__inference_signature_wrapper_823283	
brand

engine
engine_v
exterior_color
	fuel_type
mileage
name
transmission
year

drive_type
interior_color
mpg_city
mpg_highway	
style
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9

unknown_10	

unknown_11

unknown_12	

unknown_13

unknown_14	

unknown_15

unknown_16	

unknown_17

unknown_18

unknown_19:	?	@

unknown_20:@

unknown_21:@ 

unknown_22: 

unknown_23: 


unknown_24:


unknown_25:


unknown_26:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallbrandengineengine_vexterior_color	fuel_typemileagenametransmissionyear
drive_typeinterior_colormpg_citympg_highwaystyleunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*5
Tin.
,2*									*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

"#$%&'()*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_820938o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : :	?	:	?	: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
#
_output_shapes
:?????????

_user_specified_nameBrand:KG
#
_output_shapes
:?????????
 
_user_specified_nameEngine:MI
#
_output_shapes
:?????????
"
_user_specified_name
Engine_V:SO
#
_output_shapes
:?????????
(
_user_specified_nameExterior_color:NJ
#
_output_shapes
:?????????
#
_user_specified_name	Fuel_Type:LH
#
_output_shapes
:?????????
!
_user_specified_name	Mileage:IE
#
_output_shapes
:?????????

_user_specified_nameName:QM
#
_output_shapes
:?????????
&
_user_specified_nameTransmission:IE
#
_output_shapes
:?????????

_user_specified_nameYear:O	K
#
_output_shapes
:?????????
$
_user_specified_name
drive_type:S
O
#
_output_shapes
:?????????
(
_user_specified_nameinterior_color:MI
#
_output_shapes
:?????????
"
_user_specified_name
mpg_city:PL
#
_output_shapes
:?????????
%
_user_specified_namempg_highway:JF
#
_output_shapes
:?????????

_user_specified_namestyle:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :% !

_output_shapes
:	?	:%!!

_output_shapes
:	?	
?
-
__inference__destroyer_824120
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
__inference__initializer_8241692
.table_init344_lookuptableimportv2_table_handle*
&table_init344_lookuptableimportv2_keys,
(table_init344_lookuptableimportv2_values	
identity??!table_init344/LookupTableImportV2?
!table_init344/LookupTableImportV2LookupTableImportV2.table_init344_lookuptableimportv2_table_handle&table_init344_lookuptableimportv2_keys(table_init344_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init344/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?:?2F
!table_init344/LookupTableImportV2!table_init344/LookupTableImportV2:!

_output_shapes	
:?:!

_output_shapes	
:?
?
?
%__inference_FC_1_layer_call_fn_824014

inputs
unknown:	?	@
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_FC_1_layer_call_and_return_conditional_losses_821334o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????	: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????	
 
_user_specified_nameinputs
?
?
__inference__initializer_8241872
.table_init380_lookuptableimportv2_table_handle*
&table_init380_lookuptableimportv2_keys,
(table_init380_lookuptableimportv2_values	
identity??!table_init380/LookupTableImportV2?
!table_init380/LookupTableImportV2LookupTableImportV2.table_init380_lookuptableimportv2_table_handle&table_init380_lookuptableimportv2_keys(table_init380_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init380/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init380/LookupTableImportV2!table_init380/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
4__inference_CAR_PRICE_PREDICTOR_layer_call_fn_822209	
brand

engine
engine_v
exterior_color
	fuel_type
mileage
name
transmission
year

drive_type
interior_color
mpg_city
mpg_highway	
style
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9

unknown_10	

unknown_11

unknown_12	

unknown_13

unknown_14	

unknown_15

unknown_16	

unknown_17

unknown_18

unknown_19:	?	@

unknown_20:@

unknown_21:@ 

unknown_22: 

unknown_23: 


unknown_24:


unknown_25:


unknown_26:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallbrandengineengine_vexterior_color	fuel_typemileagenametransmissionyear
drive_typeinterior_colormpg_citympg_highwaystyleunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26*5
Tin.
,2*									*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????**
_read_only_resource_inputs

"#$%&'()*-
config_proto

CPU

GPU 2J 8? *X
fSRQ
O__inference_CAR_PRICE_PREDICTOR_layer_call_and_return_conditional_losses_822076o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : :	?	:	?	: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:J F
#
_output_shapes
:?????????

_user_specified_nameBrand:KG
#
_output_shapes
:?????????
 
_user_specified_nameEngine:MI
#
_output_shapes
:?????????
"
_user_specified_name
Engine_V:SO
#
_output_shapes
:?????????
(
_user_specified_nameExterior_color:NJ
#
_output_shapes
:?????????
#
_user_specified_name	Fuel_Type:LH
#
_output_shapes
:?????????
!
_user_specified_name	Mileage:IE
#
_output_shapes
:?????????

_user_specified_nameName:QM
#
_output_shapes
:?????????
&
_user_specified_nameTransmission:IE
#
_output_shapes
:?????????

_user_specified_nameYear:O	K
#
_output_shapes
:?????????
$
_user_specified_name
drive_type:S
O
#
_output_shapes
:?????????
(
_user_specified_nameinterior_color:MI
#
_output_shapes
:?????????
"
_user_specified_name
mpg_city:PL
#
_output_shapes
:?????????
%
_user_specified_namempg_highway:JF
#
_output_shapes
:?????????

_user_specified_namestyle:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :% !

_output_shapes
:	?	:%!!

_output_shapes
:	?	
?
-
__inference__destroyer_824138
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?

?
@__inference_FC_2_layer_call_and_return_conditional_losses_821351

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:????????? w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
-
__inference__destroyer_824228
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
??
?
J__inference_dense_features_layer_call_and_return_conditional_losses_821867
features

features_1

features_2

features_3

features_4

features_5

features_6

features_7

features_8

features_9
features_10
features_11
features_12
features_13D
@brand_indicator_hash_table_lookup_lookuptablefindv2_table_handleE
Abrand_indicator_hash_table_lookup_lookuptablefindv2_default_value	E
Aengine_indicator_hash_table_lookup_lookuptablefindv2_table_handleF
Bengine_indicator_hash_table_lookup_lookuptablefindv2_default_value	M
Iexterior_color_indicator_hash_table_lookup_lookuptablefindv2_table_handleN
Jexterior_color_indicator_hash_table_lookup_lookuptablefindv2_default_value	H
Dfuel_type_indicator_hash_table_lookup_lookuptablefindv2_table_handleI
Efuel_type_indicator_hash_table_lookup_lookuptablefindv2_default_value	C
?name_indicator_hash_table_lookup_lookuptablefindv2_table_handleD
@name_indicator_hash_table_lookup_lookuptablefindv2_default_value	K
Gtransmission_indicator_hash_table_lookup_lookuptablefindv2_table_handleL
Htransmission_indicator_hash_table_lookup_lookuptablefindv2_default_value	I
Edrive_type_indicator_hash_table_lookup_lookuptablefindv2_table_handleJ
Fdrive_type_indicator_hash_table_lookup_lookuptablefindv2_default_value	M
Iinterior_color_indicator_hash_table_lookup_lookuptablefindv2_table_handleN
Jinterior_color_indicator_hash_table_lookup_lookuptablefindv2_default_value	D
@style_indicator_hash_table_lookup_lookuptablefindv2_table_handleE
Astyle_indicator_hash_table_lookup_lookuptablefindv2_default_value	
identity??3Brand_indicator/hash_table_Lookup/LookupTableFindV2?4Engine_indicator/hash_table_Lookup/LookupTableFindV2?<Exterior_color_indicator/hash_table_Lookup/LookupTableFindV2?7Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV2?2Name_indicator/hash_table_Lookup/LookupTableFindV2?:Transmission_indicator/hash_table_Lookup/LookupTableFindV2?8drive_type_indicator/hash_table_Lookup/LookupTableFindV2?<interior_color_indicator/hash_table_Lookup/LookupTableFindV2?3style_indicator/hash_table_Lookup/LookupTableFindV2i
Brand_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Brand_indicator/ExpandDims
ExpandDimsfeatures'Brand_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????o
.Brand_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
(Brand_indicator/to_sparse_input/NotEqualNotEqual#Brand_indicator/ExpandDims:output:07Brand_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
'Brand_indicator/to_sparse_input/indicesWhere,Brand_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
&Brand_indicator/to_sparse_input/valuesGatherNd#Brand_indicator/ExpandDims:output:0/Brand_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
+Brand_indicator/to_sparse_input/dense_shapeShape#Brand_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
3Brand_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2@brand_indicator_hash_table_lookup_lookuptablefindv2_table_handle/Brand_indicator/to_sparse_input/values:output:0Abrand_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????v
+Brand_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Brand_indicator/SparseToDenseSparseToDense/Brand_indicator/to_sparse_input/indices:index:04Brand_indicator/to_sparse_input/dense_shape:output:0<Brand_indicator/hash_table_Lookup/LookupTableFindV2:values:04Brand_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????b
Brand_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
Brand_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    _
Brand_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :+?
Brand_indicator/one_hotOneHot%Brand_indicator/SparseToDense:dense:0&Brand_indicator/one_hot/depth:output:0&Brand_indicator/one_hot/Const:output:0(Brand_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????+x
%Brand_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Brand_indicator/SumSum Brand_indicator/one_hot:output:0.Brand_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????+a
Brand_indicator/ShapeShapeBrand_indicator/Sum:output:0*
T0*
_output_shapes
:m
#Brand_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%Brand_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%Brand_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Brand_indicator/strided_sliceStridedSliceBrand_indicator/Shape:output:0,Brand_indicator/strided_slice/stack:output:0.Brand_indicator/strided_slice/stack_1:output:0.Brand_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
Brand_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :+?
Brand_indicator/Reshape/shapePack&Brand_indicator/strided_slice:output:0(Brand_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Brand_indicator/ReshapeReshapeBrand_indicator/Sum:output:0&Brand_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????+b
Engine_V/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Engine_V/ExpandDims
ExpandDims
features_2 Engine_V/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????Z
Engine_V/ShapeShapeEngine_V/ExpandDims:output:0*
T0*
_output_shapes
:f
Engine_V/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
Engine_V/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
Engine_V/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Engine_V/strided_sliceStridedSliceEngine_V/Shape:output:0%Engine_V/strided_slice/stack:output:0'Engine_V/strided_slice/stack_1:output:0'Engine_V/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
Engine_V/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Engine_V/Reshape/shapePackEngine_V/strided_slice:output:0!Engine_V/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Engine_V/ReshapeReshapeEngine_V/ExpandDims:output:0Engine_V/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????j
Engine_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Engine_indicator/ExpandDims
ExpandDims
features_1(Engine_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????p
/Engine_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
)Engine_indicator/to_sparse_input/NotEqualNotEqual$Engine_indicator/ExpandDims:output:08Engine_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
(Engine_indicator/to_sparse_input/indicesWhere-Engine_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
'Engine_indicator/to_sparse_input/valuesGatherNd$Engine_indicator/ExpandDims:output:00Engine_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
,Engine_indicator/to_sparse_input/dense_shapeShape$Engine_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
4Engine_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Aengine_indicator_hash_table_lookup_lookuptablefindv2_table_handle0Engine_indicator/to_sparse_input/values:output:0Bengine_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????w
,Engine_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Engine_indicator/SparseToDenseSparseToDense0Engine_indicator/to_sparse_input/indices:index:05Engine_indicator/to_sparse_input/dense_shape:output:0=Engine_indicator/hash_table_Lookup/LookupTableFindV2:values:05Engine_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????c
Engine_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??e
 Engine_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    `
Engine_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
Engine_indicator/one_hotOneHot&Engine_indicator/SparseToDense:dense:0'Engine_indicator/one_hot/depth:output:0'Engine_indicator/one_hot/Const:output:0)Engine_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????y
&Engine_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Engine_indicator/SumSum!Engine_indicator/one_hot:output:0/Engine_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????c
Engine_indicator/ShapeShapeEngine_indicator/Sum:output:0*
T0*
_output_shapes
:n
$Engine_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&Engine_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&Engine_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Engine_indicator/strided_sliceStridedSliceEngine_indicator/Shape:output:0-Engine_indicator/strided_slice/stack:output:0/Engine_indicator/strided_slice/stack_1:output:0/Engine_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
 Engine_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Engine_indicator/Reshape/shapePack'Engine_indicator/strided_slice:output:0)Engine_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Engine_indicator/ReshapeReshapeEngine_indicator/Sum:output:0'Engine_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????r
'Exterior_color_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
#Exterior_color_indicator/ExpandDims
ExpandDims
features_30Exterior_color_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????x
7Exterior_color_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
1Exterior_color_indicator/to_sparse_input/NotEqualNotEqual,Exterior_color_indicator/ExpandDims:output:0@Exterior_color_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
0Exterior_color_indicator/to_sparse_input/indicesWhere5Exterior_color_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
/Exterior_color_indicator/to_sparse_input/valuesGatherNd,Exterior_color_indicator/ExpandDims:output:08Exterior_color_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
4Exterior_color_indicator/to_sparse_input/dense_shapeShape,Exterior_color_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
<Exterior_color_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Iexterior_color_indicator_hash_table_lookup_lookuptablefindv2_table_handle8Exterior_color_indicator/to_sparse_input/values:output:0Jexterior_color_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????
4Exterior_color_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
&Exterior_color_indicator/SparseToDenseSparseToDense8Exterior_color_indicator/to_sparse_input/indices:index:0=Exterior_color_indicator/to_sparse_input/dense_shape:output:0EExterior_color_indicator/hash_table_Lookup/LookupTableFindV2:values:0=Exterior_color_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????k
&Exterior_color_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??m
(Exterior_color_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    i
&Exterior_color_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
 Exterior_color_indicator/one_hotOneHot.Exterior_color_indicator/SparseToDense:dense:0/Exterior_color_indicator/one_hot/depth:output:0/Exterior_color_indicator/one_hot/Const:output:01Exterior_color_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:???????????
.Exterior_color_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Exterior_color_indicator/SumSum)Exterior_color_indicator/one_hot:output:07Exterior_color_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:??????????s
Exterior_color_indicator/ShapeShape%Exterior_color_indicator/Sum:output:0*
T0*
_output_shapes
:v
,Exterior_color_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.Exterior_color_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.Exterior_color_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&Exterior_color_indicator/strided_sliceStridedSlice'Exterior_color_indicator/Shape:output:05Exterior_color_indicator/strided_slice/stack:output:07Exterior_color_indicator/strided_slice/stack_1:output:07Exterior_color_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
(Exterior_color_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
&Exterior_color_indicator/Reshape/shapePack/Exterior_color_indicator/strided_slice:output:01Exterior_color_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
 Exterior_color_indicator/ReshapeReshape%Exterior_color_indicator/Sum:output:0/Exterior_color_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????m
"Fuel_Type_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Fuel_Type_indicator/ExpandDims
ExpandDims
features_4+Fuel_Type_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????s
2Fuel_Type_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
,Fuel_Type_indicator/to_sparse_input/NotEqualNotEqual'Fuel_Type_indicator/ExpandDims:output:0;Fuel_Type_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
+Fuel_Type_indicator/to_sparse_input/indicesWhere0Fuel_Type_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
*Fuel_Type_indicator/to_sparse_input/valuesGatherNd'Fuel_Type_indicator/ExpandDims:output:03Fuel_Type_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
/Fuel_Type_indicator/to_sparse_input/dense_shapeShape'Fuel_Type_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
7Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Dfuel_type_indicator_hash_table_lookup_lookuptablefindv2_table_handle3Fuel_Type_indicator/to_sparse_input/values:output:0Efuel_type_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????z
/Fuel_Type_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
!Fuel_Type_indicator/SparseToDenseSparseToDense3Fuel_Type_indicator/to_sparse_input/indices:index:08Fuel_Type_indicator/to_sparse_input/dense_shape:output:0@Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV2:values:08Fuel_Type_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????f
!Fuel_Type_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??h
#Fuel_Type_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    c
!Fuel_Type_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
Fuel_Type_indicator/one_hotOneHot)Fuel_Type_indicator/SparseToDense:dense:0*Fuel_Type_indicator/one_hot/depth:output:0*Fuel_Type_indicator/one_hot/Const:output:0,Fuel_Type_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????|
)Fuel_Type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Fuel_Type_indicator/SumSum$Fuel_Type_indicator/one_hot:output:02Fuel_Type_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????i
Fuel_Type_indicator/ShapeShape Fuel_Type_indicator/Sum:output:0*
T0*
_output_shapes
:q
'Fuel_Type_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)Fuel_Type_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)Fuel_Type_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!Fuel_Type_indicator/strided_sliceStridedSlice"Fuel_Type_indicator/Shape:output:00Fuel_Type_indicator/strided_slice/stack:output:02Fuel_Type_indicator/strided_slice/stack_1:output:02Fuel_Type_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#Fuel_Type_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
!Fuel_Type_indicator/Reshape/shapePack*Fuel_Type_indicator/strided_slice:output:0,Fuel_Type_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Fuel_Type_indicator/ReshapeReshape Fuel_Type_indicator/Sum:output:0*Fuel_Type_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????a
Mileage/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????
Mileage/ExpandDims
ExpandDims
features_5Mileage/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????r
Mileage/CastCastMileage/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????M
Mileage/ShapeShapeMileage/Cast:y:0*
T0*
_output_shapes
:e
Mileage/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
Mileage/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
Mileage/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Mileage/strided_sliceStridedSliceMileage/Shape:output:0$Mileage/strided_slice/stack:output:0&Mileage/strided_slice/stack_1:output:0&Mileage/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
Mileage/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Mileage/Reshape/shapePackMileage/strided_slice:output:0 Mileage/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:~
Mileage/ReshapeReshapeMileage/Cast:y:0Mileage/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????h
Name_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Name_indicator/ExpandDims
ExpandDims
features_6&Name_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????n
-Name_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
'Name_indicator/to_sparse_input/NotEqualNotEqual"Name_indicator/ExpandDims:output:06Name_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
&Name_indicator/to_sparse_input/indicesWhere+Name_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
%Name_indicator/to_sparse_input/valuesGatherNd"Name_indicator/ExpandDims:output:0.Name_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
*Name_indicator/to_sparse_input/dense_shapeShape"Name_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
2Name_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2?name_indicator_hash_table_lookup_lookuptablefindv2_table_handle.Name_indicator/to_sparse_input/values:output:0@name_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????u
*Name_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Name_indicator/SparseToDenseSparseToDense.Name_indicator/to_sparse_input/indices:index:03Name_indicator/to_sparse_input/dense_shape:output:0;Name_indicator/hash_table_Lookup/LookupTableFindV2:values:03Name_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????a
Name_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??c
Name_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    _
Name_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
Name_indicator/one_hotOneHot$Name_indicator/SparseToDense:dense:0%Name_indicator/one_hot/depth:output:0%Name_indicator/one_hot/Const:output:0'Name_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:??????????w
$Name_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Name_indicator/SumSumName_indicator/one_hot:output:0-Name_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:??????????_
Name_indicator/ShapeShapeName_indicator/Sum:output:0*
T0*
_output_shapes
:l
"Name_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$Name_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$Name_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Name_indicator/strided_sliceStridedSliceName_indicator/Shape:output:0+Name_indicator/strided_slice/stack:output:0-Name_indicator/strided_slice/stack_1:output:0-Name_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
Name_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
Name_indicator/Reshape/shapePack%Name_indicator/strided_slice:output:0'Name_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Name_indicator/ReshapeReshapeName_indicator/Sum:output:0%Name_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????p
%Transmission_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
!Transmission_indicator/ExpandDims
ExpandDims
features_7.Transmission_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????v
5Transmission_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
/Transmission_indicator/to_sparse_input/NotEqualNotEqual*Transmission_indicator/ExpandDims:output:0>Transmission_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
.Transmission_indicator/to_sparse_input/indicesWhere3Transmission_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
-Transmission_indicator/to_sparse_input/valuesGatherNd*Transmission_indicator/ExpandDims:output:06Transmission_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
2Transmission_indicator/to_sparse_input/dense_shapeShape*Transmission_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
:Transmission_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Gtransmission_indicator_hash_table_lookup_lookuptablefindv2_table_handle6Transmission_indicator/to_sparse_input/values:output:0Htransmission_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????}
2Transmission_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
$Transmission_indicator/SparseToDenseSparseToDense6Transmission_indicator/to_sparse_input/indices:index:0;Transmission_indicator/to_sparse_input/dense_shape:output:0CTransmission_indicator/hash_table_Lookup/LookupTableFindV2:values:0;Transmission_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????i
$Transmission_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??k
&Transmission_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    f
$Transmission_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
Transmission_indicator/one_hotOneHot,Transmission_indicator/SparseToDense:dense:0-Transmission_indicator/one_hot/depth:output:0-Transmission_indicator/one_hot/Const:output:0/Transmission_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????
,Transmission_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Transmission_indicator/SumSum'Transmission_indicator/one_hot:output:05Transmission_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????o
Transmission_indicator/ShapeShape#Transmission_indicator/Sum:output:0*
T0*
_output_shapes
:t
*Transmission_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,Transmission_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,Transmission_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$Transmission_indicator/strided_sliceStridedSlice%Transmission_indicator/Shape:output:03Transmission_indicator/strided_slice/stack:output:05Transmission_indicator/strided_slice/stack_1:output:05Transmission_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&Transmission_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
$Transmission_indicator/Reshape/shapePack-Transmission_indicator/strided_slice:output:0/Transmission_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Transmission_indicator/ReshapeReshape#Transmission_indicator/Sum:output:0-Transmission_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????^
Year/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
?????????y
Year/ExpandDims
ExpandDims
features_8Year/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????l
	Year/CastCastYear/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????G

Year/ShapeShapeYear/Cast:y:0*
T0*
_output_shapes
:b
Year/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: d
Year/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:d
Year/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Year/strided_sliceStridedSliceYear/Shape:output:0!Year/strided_slice/stack:output:0#Year/strided_slice/stack_1:output:0#Year/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
Year/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Year/Reshape/shapePackYear/strided_slice:output:0Year/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:u
Year/ReshapeReshapeYear/Cast:y:0Year/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????n
#drive_type_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
drive_type_indicator/ExpandDims
ExpandDims
features_9,drive_type_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????t
3drive_type_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
-drive_type_indicator/to_sparse_input/NotEqualNotEqual(drive_type_indicator/ExpandDims:output:0<drive_type_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
,drive_type_indicator/to_sparse_input/indicesWhere1drive_type_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
+drive_type_indicator/to_sparse_input/valuesGatherNd(drive_type_indicator/ExpandDims:output:04drive_type_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
0drive_type_indicator/to_sparse_input/dense_shapeShape(drive_type_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
8drive_type_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Edrive_type_indicator_hash_table_lookup_lookuptablefindv2_table_handle4drive_type_indicator/to_sparse_input/values:output:0Fdrive_type_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????{
0drive_type_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
"drive_type_indicator/SparseToDenseSparseToDense4drive_type_indicator/to_sparse_input/indices:index:09drive_type_indicator/to_sparse_input/dense_shape:output:0Adrive_type_indicator/hash_table_Lookup/LookupTableFindV2:values:09drive_type_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????g
"drive_type_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??i
$drive_type_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    d
"drive_type_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
drive_type_indicator/one_hotOneHot*drive_type_indicator/SparseToDense:dense:0+drive_type_indicator/one_hot/depth:output:0+drive_type_indicator/one_hot/Const:output:0-drive_type_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????}
*drive_type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
drive_type_indicator/SumSum%drive_type_indicator/one_hot:output:03drive_type_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????k
drive_type_indicator/ShapeShape!drive_type_indicator/Sum:output:0*
T0*
_output_shapes
:r
(drive_type_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: t
*drive_type_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:t
*drive_type_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
"drive_type_indicator/strided_sliceStridedSlice#drive_type_indicator/Shape:output:01drive_type_indicator/strided_slice/stack:output:03drive_type_indicator/strided_slice/stack_1:output:03drive_type_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$drive_type_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
"drive_type_indicator/Reshape/shapePack+drive_type_indicator/strided_slice:output:0-drive_type_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
drive_type_indicator/ReshapeReshape!drive_type_indicator/Sum:output:0+drive_type_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????r
'interior_color_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
#interior_color_indicator/ExpandDims
ExpandDimsfeatures_100interior_color_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????x
7interior_color_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
1interior_color_indicator/to_sparse_input/NotEqualNotEqual,interior_color_indicator/ExpandDims:output:0@interior_color_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
0interior_color_indicator/to_sparse_input/indicesWhere5interior_color_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
/interior_color_indicator/to_sparse_input/valuesGatherNd,interior_color_indicator/ExpandDims:output:08interior_color_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
4interior_color_indicator/to_sparse_input/dense_shapeShape,interior_color_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
<interior_color_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Iinterior_color_indicator_hash_table_lookup_lookuptablefindv2_table_handle8interior_color_indicator/to_sparse_input/values:output:0Jinterior_color_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????
4interior_color_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
&interior_color_indicator/SparseToDenseSparseToDense8interior_color_indicator/to_sparse_input/indices:index:0=interior_color_indicator/to_sparse_input/dense_shape:output:0Einterior_color_indicator/hash_table_Lookup/LookupTableFindV2:values:0=interior_color_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????k
&interior_color_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??m
(interior_color_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    i
&interior_color_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
 interior_color_indicator/one_hotOneHot.interior_color_indicator/SparseToDense:dense:0/interior_color_indicator/one_hot/depth:output:0/interior_color_indicator/one_hot/Const:output:01interior_color_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:???????????
.interior_color_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
interior_color_indicator/SumSum)interior_color_indicator/one_hot:output:07interior_color_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:??????????s
interior_color_indicator/ShapeShape%interior_color_indicator/Sum:output:0*
T0*
_output_shapes
:v
,interior_color_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: x
.interior_color_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:x
.interior_color_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
&interior_color_indicator/strided_sliceStridedSlice'interior_color_indicator/Shape:output:05interior_color_indicator/strided_slice/stack:output:07interior_color_indicator/strided_slice/stack_1:output:07interior_color_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
(interior_color_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
&interior_color_indicator/Reshape/shapePack/interior_color_indicator/strided_slice:output:01interior_color_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
 interior_color_indicator/ReshapeReshape%interior_color_indicator/Sum:output:0/interior_color_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????b
mpg_city/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
mpg_city/ExpandDims
ExpandDimsfeatures_11 mpg_city/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????t
mpg_city/CastCastmpg_city/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????O
mpg_city/ShapeShapempg_city/Cast:y:0*
T0*
_output_shapes
:f
mpg_city/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: h
mpg_city/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
mpg_city/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
mpg_city/strided_sliceStridedSlicempg_city/Shape:output:0%mpg_city/strided_slice/stack:output:0'mpg_city/strided_slice/stack_1:output:0'mpg_city/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskZ
mpg_city/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
mpg_city/Reshape/shapePackmpg_city/strided_slice:output:0!mpg_city/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
mpg_city/ReshapeReshapempg_city/Cast:y:0mpg_city/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????e
mpg_highway/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
mpg_highway/ExpandDims
ExpandDimsfeatures_12#mpg_highway/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????z
mpg_highway/CastCastmpg_highway/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????U
mpg_highway/ShapeShapempg_highway/Cast:y:0*
T0*
_output_shapes
:i
mpg_highway/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: k
!mpg_highway/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:k
!mpg_highway/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
mpg_highway/strided_sliceStridedSlicempg_highway/Shape:output:0(mpg_highway/strided_slice/stack:output:0*mpg_highway/strided_slice/stack_1:output:0*mpg_highway/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
mpg_highway/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
mpg_highway/Reshape/shapePack"mpg_highway/strided_slice:output:0$mpg_highway/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
mpg_highway/ReshapeReshapempg_highway/Cast:y:0"mpg_highway/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????i
style_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
style_indicator/ExpandDims
ExpandDimsfeatures_13'style_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????o
.style_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
(style_indicator/to_sparse_input/NotEqualNotEqual#style_indicator/ExpandDims:output:07style_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
'style_indicator/to_sparse_input/indicesWhere,style_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
&style_indicator/to_sparse_input/valuesGatherNd#style_indicator/ExpandDims:output:0/style_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
+style_indicator/to_sparse_input/dense_shapeShape#style_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
3style_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2@style_indicator_hash_table_lookup_lookuptablefindv2_table_handle/style_indicator/to_sparse_input/values:output:0Astyle_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:?????????v
+style_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
style_indicator/SparseToDenseSparseToDense/style_indicator/to_sparse_input/indices:index:04style_indicator/to_sparse_input/dense_shape:output:0<style_indicator/hash_table_Lookup/LookupTableFindV2:values:04style_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????b
style_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??d
style_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    _
style_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :	?
style_indicator/one_hotOneHot%style_indicator/SparseToDense:dense:0&style_indicator/one_hot/depth:output:0&style_indicator/one_hot/Const:output:0(style_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????	x
%style_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
style_indicator/SumSum style_indicator/one_hot:output:0.style_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????	a
style_indicator/ShapeShapestyle_indicator/Sum:output:0*
T0*
_output_shapes
:m
#style_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%style_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%style_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
style_indicator/strided_sliceStridedSlicestyle_indicator/Shape:output:0,style_indicator/strided_slice/stack:output:0.style_indicator/strided_slice/stack_1:output:0.style_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
style_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :	?
style_indicator/Reshape/shapePack&style_indicator/strided_slice:output:0(style_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
style_indicator/ReshapeReshapestyle_indicator/Sum:output:0&style_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????	V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
concatConcatV2 Brand_indicator/Reshape:output:0Engine_V/Reshape:output:0!Engine_indicator/Reshape:output:0)Exterior_color_indicator/Reshape:output:0$Fuel_Type_indicator/Reshape:output:0Mileage/Reshape:output:0Name_indicator/Reshape:output:0'Transmission_indicator/Reshape:output:0Year/Reshape:output:0%drive_type_indicator/Reshape:output:0)interior_color_indicator/Reshape:output:0mpg_city/Reshape:output:0mpg_highway/Reshape:output:0 style_indicator/Reshape:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????	_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:??????????	?
NoOpNoOp4^Brand_indicator/hash_table_Lookup/LookupTableFindV25^Engine_indicator/hash_table_Lookup/LookupTableFindV2=^Exterior_color_indicator/hash_table_Lookup/LookupTableFindV28^Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV23^Name_indicator/hash_table_Lookup/LookupTableFindV2;^Transmission_indicator/hash_table_Lookup/LookupTableFindV29^drive_type_indicator/hash_table_Lookup/LookupTableFindV2=^interior_color_indicator/hash_table_Lookup/LookupTableFindV24^style_indicator/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : 2j
3Brand_indicator/hash_table_Lookup/LookupTableFindV23Brand_indicator/hash_table_Lookup/LookupTableFindV22l
4Engine_indicator/hash_table_Lookup/LookupTableFindV24Engine_indicator/hash_table_Lookup/LookupTableFindV22|
<Exterior_color_indicator/hash_table_Lookup/LookupTableFindV2<Exterior_color_indicator/hash_table_Lookup/LookupTableFindV22r
7Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV27Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV22h
2Name_indicator/hash_table_Lookup/LookupTableFindV22Name_indicator/hash_table_Lookup/LookupTableFindV22x
:Transmission_indicator/hash_table_Lookup/LookupTableFindV2:Transmission_indicator/hash_table_Lookup/LookupTableFindV22t
8drive_type_indicator/hash_table_Lookup/LookupTableFindV28drive_type_indicator/hash_table_Lookup/LookupTableFindV22|
<interior_color_indicator/hash_table_Lookup/LookupTableFindV2<interior_color_indicator/hash_table_Lookup/LookupTableFindV22j
3style_indicator/hash_table_Lookup/LookupTableFindV23style_indicator/hash_table_Lookup/LookupTableFindV2:M I
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:M	I
#
_output_shapes
:?????????
"
_user_specified_name
features:M
I
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:MI
#
_output_shapes
:?????????
"
_user_specified_name
features:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
??
?
O__inference_CAR_PRICE_PREDICTOR_layer_call_and_return_conditional_losses_822866
inputs_brand
inputs_engine
inputs_engine_v
inputs_exterior_color
inputs_fuel_type
inputs_mileage
inputs_name
inputs_transmission
inputs_year
inputs_drive_type
inputs_interior_color
inputs_mpg_city
inputs_mpg_highway
inputs_styleS
Odense_features_brand_indicator_hash_table_lookup_lookuptablefindv2_table_handleT
Pdense_features_brand_indicator_hash_table_lookup_lookuptablefindv2_default_value	T
Pdense_features_engine_indicator_hash_table_lookup_lookuptablefindv2_table_handleU
Qdense_features_engine_indicator_hash_table_lookup_lookuptablefindv2_default_value	\
Xdense_features_exterior_color_indicator_hash_table_lookup_lookuptablefindv2_table_handle]
Ydense_features_exterior_color_indicator_hash_table_lookup_lookuptablefindv2_default_value	W
Sdense_features_fuel_type_indicator_hash_table_lookup_lookuptablefindv2_table_handleX
Tdense_features_fuel_type_indicator_hash_table_lookup_lookuptablefindv2_default_value	R
Ndense_features_name_indicator_hash_table_lookup_lookuptablefindv2_table_handleS
Odense_features_name_indicator_hash_table_lookup_lookuptablefindv2_default_value	Z
Vdense_features_transmission_indicator_hash_table_lookup_lookuptablefindv2_table_handle[
Wdense_features_transmission_indicator_hash_table_lookup_lookuptablefindv2_default_value	X
Tdense_features_drive_type_indicator_hash_table_lookup_lookuptablefindv2_table_handleY
Udense_features_drive_type_indicator_hash_table_lookup_lookuptablefindv2_default_value	\
Xdense_features_interior_color_indicator_hash_table_lookup_lookuptablefindv2_table_handle]
Ydense_features_interior_color_indicator_hash_table_lookup_lookuptablefindv2_default_value	S
Odense_features_style_indicator_hash_table_lookup_lookuptablefindv2_table_handleT
Pdense_features_style_indicator_hash_table_lookup_lookuptablefindv2_default_value	
normalization_sub_y
normalization_sqrt_x6
#fc_1_matmul_readvariableop_resource:	?	@2
$fc_1_biasadd_readvariableop_resource:@5
#fc_2_matmul_readvariableop_resource:@ 2
$fc_2_biasadd_readvariableop_resource: 5
#fc_3_matmul_readvariableop_resource: 
2
$fc_3_biasadd_readvariableop_resource:
7
%output_matmul_readvariableop_resource:
4
&output_biasadd_readvariableop_resource:
identity??FC_1/BiasAdd/ReadVariableOp?FC_1/MatMul/ReadVariableOp?FC_2/BiasAdd/ReadVariableOp?FC_2/MatMul/ReadVariableOp?FC_3/BiasAdd/ReadVariableOp?FC_3/MatMul/ReadVariableOp?Output/BiasAdd/ReadVariableOp?Output/MatMul/ReadVariableOp?Bdense_features/Brand_indicator/hash_table_Lookup/LookupTableFindV2?Cdense_features/Engine_indicator/hash_table_Lookup/LookupTableFindV2?Kdense_features/Exterior_color_indicator/hash_table_Lookup/LookupTableFindV2?Fdense_features/Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV2?Adense_features/Name_indicator/hash_table_Lookup/LookupTableFindV2?Idense_features/Transmission_indicator/hash_table_Lookup/LookupTableFindV2?Gdense_features/drive_type_indicator/hash_table_Lookup/LookupTableFindV2?Kdense_features/interior_color_indicator/hash_table_Lookup/LookupTableFindV2?Bdense_features/style_indicator/hash_table_Lookup/LookupTableFindV2x
-dense_features/Brand_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
)dense_features/Brand_indicator/ExpandDims
ExpandDimsinputs_brand6dense_features/Brand_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????~
=dense_features/Brand_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
7dense_features/Brand_indicator/to_sparse_input/NotEqualNotEqual2dense_features/Brand_indicator/ExpandDims:output:0Fdense_features/Brand_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
6dense_features/Brand_indicator/to_sparse_input/indicesWhere;dense_features/Brand_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
5dense_features/Brand_indicator/to_sparse_input/valuesGatherNd2dense_features/Brand_indicator/ExpandDims:output:0>dense_features/Brand_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
:dense_features/Brand_indicator/to_sparse_input/dense_shapeShape2dense_features/Brand_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Bdense_features/Brand_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Odense_features_brand_indicator_hash_table_lookup_lookuptablefindv2_table_handle>dense_features/Brand_indicator/to_sparse_input/values:output:0Pdense_features_brand_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
:dense_features/Brand_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
,dense_features/Brand_indicator/SparseToDenseSparseToDense>dense_features/Brand_indicator/to_sparse_input/indices:index:0Cdense_features/Brand_indicator/to_sparse_input/dense_shape:output:0Kdense_features/Brand_indicator/hash_table_Lookup/LookupTableFindV2:values:0Cdense_features/Brand_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????q
,dense_features/Brand_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??s
.dense_features/Brand_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    n
,dense_features/Brand_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :+?
&dense_features/Brand_indicator/one_hotOneHot4dense_features/Brand_indicator/SparseToDense:dense:05dense_features/Brand_indicator/one_hot/depth:output:05dense_features/Brand_indicator/one_hot/Const:output:07dense_features/Brand_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????+?
4dense_features/Brand_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
"dense_features/Brand_indicator/SumSum/dense_features/Brand_indicator/one_hot:output:0=dense_features/Brand_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????+
$dense_features/Brand_indicator/ShapeShape+dense_features/Brand_indicator/Sum:output:0*
T0*
_output_shapes
:|
2dense_features/Brand_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_features/Brand_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_features/Brand_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,dense_features/Brand_indicator/strided_sliceStridedSlice-dense_features/Brand_indicator/Shape:output:0;dense_features/Brand_indicator/strided_slice/stack:output:0=dense_features/Brand_indicator/strided_slice/stack_1:output:0=dense_features/Brand_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.dense_features/Brand_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :+?
,dense_features/Brand_indicator/Reshape/shapePack5dense_features/Brand_indicator/strided_slice:output:07dense_features/Brand_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
&dense_features/Brand_indicator/ReshapeReshape+dense_features/Brand_indicator/Sum:output:05dense_features/Brand_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????+q
&dense_features/Engine_V/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
"dense_features/Engine_V/ExpandDims
ExpandDimsinputs_engine_v/dense_features/Engine_V/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????x
dense_features/Engine_V/ShapeShape+dense_features/Engine_V/ExpandDims:output:0*
T0*
_output_shapes
:u
+dense_features/Engine_V/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-dense_features/Engine_V/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-dense_features/Engine_V/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%dense_features/Engine_V/strided_sliceStridedSlice&dense_features/Engine_V/Shape:output:04dense_features/Engine_V/strided_slice/stack:output:06dense_features/Engine_V/strided_slice/stack_1:output:06dense_features/Engine_V/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'dense_features/Engine_V/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
%dense_features/Engine_V/Reshape/shapePack.dense_features/Engine_V/strided_slice:output:00dense_features/Engine_V/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dense_features/Engine_V/ReshapeReshape+dense_features/Engine_V/ExpandDims:output:0.dense_features/Engine_V/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????y
.dense_features/Engine_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
*dense_features/Engine_indicator/ExpandDims
ExpandDimsinputs_engine7dense_features/Engine_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????
>dense_features/Engine_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
8dense_features/Engine_indicator/to_sparse_input/NotEqualNotEqual3dense_features/Engine_indicator/ExpandDims:output:0Gdense_features/Engine_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
7dense_features/Engine_indicator/to_sparse_input/indicesWhere<dense_features/Engine_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
6dense_features/Engine_indicator/to_sparse_input/valuesGatherNd3dense_features/Engine_indicator/ExpandDims:output:0?dense_features/Engine_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
;dense_features/Engine_indicator/to_sparse_input/dense_shapeShape3dense_features/Engine_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Cdense_features/Engine_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Pdense_features_engine_indicator_hash_table_lookup_lookuptablefindv2_table_handle?dense_features/Engine_indicator/to_sparse_input/values:output:0Qdense_features_engine_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
;dense_features/Engine_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
-dense_features/Engine_indicator/SparseToDenseSparseToDense?dense_features/Engine_indicator/to_sparse_input/indices:index:0Ddense_features/Engine_indicator/to_sparse_input/dense_shape:output:0Ldense_features/Engine_indicator/hash_table_Lookup/LookupTableFindV2:values:0Ddense_features/Engine_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????r
-dense_features/Engine_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??t
/dense_features/Engine_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    o
-dense_features/Engine_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
'dense_features/Engine_indicator/one_hotOneHot5dense_features/Engine_indicator/SparseToDense:dense:06dense_features/Engine_indicator/one_hot/depth:output:06dense_features/Engine_indicator/one_hot/Const:output:08dense_features/Engine_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
5dense_features/Engine_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
#dense_features/Engine_indicator/SumSum0dense_features/Engine_indicator/one_hot:output:0>dense_features/Engine_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
%dense_features/Engine_indicator/ShapeShape,dense_features/Engine_indicator/Sum:output:0*
T0*
_output_shapes
:}
3dense_features/Engine_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5dense_features/Engine_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5dense_features/Engine_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
-dense_features/Engine_indicator/strided_sliceStridedSlice.dense_features/Engine_indicator/Shape:output:0<dense_features/Engine_indicator/strided_slice/stack:output:0>dense_features/Engine_indicator/strided_slice/stack_1:output:0>dense_features/Engine_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
/dense_features/Engine_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
-dense_features/Engine_indicator/Reshape/shapePack6dense_features/Engine_indicator/strided_slice:output:08dense_features/Engine_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
'dense_features/Engine_indicator/ReshapeReshape,dense_features/Engine_indicator/Sum:output:06dense_features/Engine_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
6dense_features/Exterior_color_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
2dense_features/Exterior_color_indicator/ExpandDims
ExpandDimsinputs_exterior_color?dense_features/Exterior_color_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
Fdense_features/Exterior_color_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
@dense_features/Exterior_color_indicator/to_sparse_input/NotEqualNotEqual;dense_features/Exterior_color_indicator/ExpandDims:output:0Odense_features/Exterior_color_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
?dense_features/Exterior_color_indicator/to_sparse_input/indicesWhereDdense_features/Exterior_color_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
>dense_features/Exterior_color_indicator/to_sparse_input/valuesGatherNd;dense_features/Exterior_color_indicator/ExpandDims:output:0Gdense_features/Exterior_color_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
Cdense_features/Exterior_color_indicator/to_sparse_input/dense_shapeShape;dense_features/Exterior_color_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Kdense_features/Exterior_color_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Xdense_features_exterior_color_indicator_hash_table_lookup_lookuptablefindv2_table_handleGdense_features/Exterior_color_indicator/to_sparse_input/values:output:0Ydense_features_exterior_color_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
Cdense_features/Exterior_color_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
5dense_features/Exterior_color_indicator/SparseToDenseSparseToDenseGdense_features/Exterior_color_indicator/to_sparse_input/indices:index:0Ldense_features/Exterior_color_indicator/to_sparse_input/dense_shape:output:0Tdense_features/Exterior_color_indicator/hash_table_Lookup/LookupTableFindV2:values:0Ldense_features/Exterior_color_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????z
5dense_features/Exterior_color_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??|
7dense_features/Exterior_color_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    x
5dense_features/Exterior_color_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
/dense_features/Exterior_color_indicator/one_hotOneHot=dense_features/Exterior_color_indicator/SparseToDense:dense:0>dense_features/Exterior_color_indicator/one_hot/depth:output:0>dense_features/Exterior_color_indicator/one_hot/Const:output:0@dense_features/Exterior_color_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:???????????
=dense_features/Exterior_color_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
+dense_features/Exterior_color_indicator/SumSum8dense_features/Exterior_color_indicator/one_hot:output:0Fdense_features/Exterior_color_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
-dense_features/Exterior_color_indicator/ShapeShape4dense_features/Exterior_color_indicator/Sum:output:0*
T0*
_output_shapes
:?
;dense_features/Exterior_color_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
=dense_features/Exterior_color_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
=dense_features/Exterior_color_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
5dense_features/Exterior_color_indicator/strided_sliceStridedSlice6dense_features/Exterior_color_indicator/Shape:output:0Ddense_features/Exterior_color_indicator/strided_slice/stack:output:0Fdense_features/Exterior_color_indicator/strided_slice/stack_1:output:0Fdense_features/Exterior_color_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
7dense_features/Exterior_color_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
5dense_features/Exterior_color_indicator/Reshape/shapePack>dense_features/Exterior_color_indicator/strided_slice:output:0@dense_features/Exterior_color_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
/dense_features/Exterior_color_indicator/ReshapeReshape4dense_features/Exterior_color_indicator/Sum:output:0>dense_features/Exterior_color_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????|
1dense_features/Fuel_Type_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
-dense_features/Fuel_Type_indicator/ExpandDims
ExpandDimsinputs_fuel_type:dense_features/Fuel_Type_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
Adense_features/Fuel_Type_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
;dense_features/Fuel_Type_indicator/to_sparse_input/NotEqualNotEqual6dense_features/Fuel_Type_indicator/ExpandDims:output:0Jdense_features/Fuel_Type_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
:dense_features/Fuel_Type_indicator/to_sparse_input/indicesWhere?dense_features/Fuel_Type_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
9dense_features/Fuel_Type_indicator/to_sparse_input/valuesGatherNd6dense_features/Fuel_Type_indicator/ExpandDims:output:0Bdense_features/Fuel_Type_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
>dense_features/Fuel_Type_indicator/to_sparse_input/dense_shapeShape6dense_features/Fuel_Type_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Fdense_features/Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Sdense_features_fuel_type_indicator_hash_table_lookup_lookuptablefindv2_table_handleBdense_features/Fuel_Type_indicator/to_sparse_input/values:output:0Tdense_features_fuel_type_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
>dense_features/Fuel_Type_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
0dense_features/Fuel_Type_indicator/SparseToDenseSparseToDenseBdense_features/Fuel_Type_indicator/to_sparse_input/indices:index:0Gdense_features/Fuel_Type_indicator/to_sparse_input/dense_shape:output:0Odense_features/Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV2:values:0Gdense_features/Fuel_Type_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????u
0dense_features/Fuel_Type_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??w
2dense_features/Fuel_Type_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    r
0dense_features/Fuel_Type_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
*dense_features/Fuel_Type_indicator/one_hotOneHot8dense_features/Fuel_Type_indicator/SparseToDense:dense:09dense_features/Fuel_Type_indicator/one_hot/depth:output:09dense_features/Fuel_Type_indicator/one_hot/Const:output:0;dense_features/Fuel_Type_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
8dense_features/Fuel_Type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
&dense_features/Fuel_Type_indicator/SumSum3dense_features/Fuel_Type_indicator/one_hot:output:0Adense_features/Fuel_Type_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
(dense_features/Fuel_Type_indicator/ShapeShape/dense_features/Fuel_Type_indicator/Sum:output:0*
T0*
_output_shapes
:?
6dense_features/Fuel_Type_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
8dense_features/Fuel_Type_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
8dense_features/Fuel_Type_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
0dense_features/Fuel_Type_indicator/strided_sliceStridedSlice1dense_features/Fuel_Type_indicator/Shape:output:0?dense_features/Fuel_Type_indicator/strided_slice/stack:output:0Adense_features/Fuel_Type_indicator/strided_slice/stack_1:output:0Adense_features/Fuel_Type_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
2dense_features/Fuel_Type_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
0dense_features/Fuel_Type_indicator/Reshape/shapePack9dense_features/Fuel_Type_indicator/strided_slice:output:0;dense_features/Fuel_Type_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
*dense_features/Fuel_Type_indicator/ReshapeReshape/dense_features/Fuel_Type_indicator/Sum:output:09dense_features/Fuel_Type_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????p
%dense_features/Mileage/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
!dense_features/Mileage/ExpandDims
ExpandDimsinputs_mileage.dense_features/Mileage/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
dense_features/Mileage/CastCast*dense_features/Mileage/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????k
dense_features/Mileage/ShapeShapedense_features/Mileage/Cast:y:0*
T0*
_output_shapes
:t
*dense_features/Mileage/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: v
,dense_features/Mileage/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:v
,dense_features/Mileage/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
$dense_features/Mileage/strided_sliceStridedSlice%dense_features/Mileage/Shape:output:03dense_features/Mileage/strided_slice/stack:output:05dense_features/Mileage/strided_slice/stack_1:output:05dense_features/Mileage/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&dense_features/Mileage/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
$dense_features/Mileage/Reshape/shapePack-dense_features/Mileage/strided_slice:output:0/dense_features/Mileage/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dense_features/Mileage/ReshapeReshapedense_features/Mileage/Cast:y:0-dense_features/Mileage/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????w
,dense_features/Name_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
(dense_features/Name_indicator/ExpandDims
ExpandDimsinputs_name5dense_features/Name_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????}
<dense_features/Name_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
6dense_features/Name_indicator/to_sparse_input/NotEqualNotEqual1dense_features/Name_indicator/ExpandDims:output:0Edense_features/Name_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
5dense_features/Name_indicator/to_sparse_input/indicesWhere:dense_features/Name_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
4dense_features/Name_indicator/to_sparse_input/valuesGatherNd1dense_features/Name_indicator/ExpandDims:output:0=dense_features/Name_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
9dense_features/Name_indicator/to_sparse_input/dense_shapeShape1dense_features/Name_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Adense_features/Name_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Ndense_features_name_indicator_hash_table_lookup_lookuptablefindv2_table_handle=dense_features/Name_indicator/to_sparse_input/values:output:0Odense_features_name_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
9dense_features/Name_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
+dense_features/Name_indicator/SparseToDenseSparseToDense=dense_features/Name_indicator/to_sparse_input/indices:index:0Bdense_features/Name_indicator/to_sparse_input/dense_shape:output:0Jdense_features/Name_indicator/hash_table_Lookup/LookupTableFindV2:values:0Bdense_features/Name_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????p
+dense_features/Name_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??r
-dense_features/Name_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    n
+dense_features/Name_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
%dense_features/Name_indicator/one_hotOneHot3dense_features/Name_indicator/SparseToDense:dense:04dense_features/Name_indicator/one_hot/depth:output:04dense_features/Name_indicator/one_hot/Const:output:06dense_features/Name_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:???????????
3dense_features/Name_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
!dense_features/Name_indicator/SumSum.dense_features/Name_indicator/one_hot:output:0<dense_features/Name_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:??????????}
#dense_features/Name_indicator/ShapeShape*dense_features/Name_indicator/Sum:output:0*
T0*
_output_shapes
:{
1dense_features/Name_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3dense_features/Name_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3dense_features/Name_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+dense_features/Name_indicator/strided_sliceStridedSlice,dense_features/Name_indicator/Shape:output:0:dense_features/Name_indicator/strided_slice/stack:output:0<dense_features/Name_indicator/strided_slice/stack_1:output:0<dense_features/Name_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
-dense_features/Name_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
+dense_features/Name_indicator/Reshape/shapePack4dense_features/Name_indicator/strided_slice:output:06dense_features/Name_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
%dense_features/Name_indicator/ReshapeReshape*dense_features/Name_indicator/Sum:output:04dense_features/Name_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????
4dense_features/Transmission_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
0dense_features/Transmission_indicator/ExpandDims
ExpandDimsinputs_transmission=dense_features/Transmission_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
Ddense_features/Transmission_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
>dense_features/Transmission_indicator/to_sparse_input/NotEqualNotEqual9dense_features/Transmission_indicator/ExpandDims:output:0Mdense_features/Transmission_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
=dense_features/Transmission_indicator/to_sparse_input/indicesWhereBdense_features/Transmission_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
<dense_features/Transmission_indicator/to_sparse_input/valuesGatherNd9dense_features/Transmission_indicator/ExpandDims:output:0Edense_features/Transmission_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
Adense_features/Transmission_indicator/to_sparse_input/dense_shapeShape9dense_features/Transmission_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Idense_features/Transmission_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Vdense_features_transmission_indicator_hash_table_lookup_lookuptablefindv2_table_handleEdense_features/Transmission_indicator/to_sparse_input/values:output:0Wdense_features_transmission_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
Adense_features/Transmission_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
3dense_features/Transmission_indicator/SparseToDenseSparseToDenseEdense_features/Transmission_indicator/to_sparse_input/indices:index:0Jdense_features/Transmission_indicator/to_sparse_input/dense_shape:output:0Rdense_features/Transmission_indicator/hash_table_Lookup/LookupTableFindV2:values:0Jdense_features/Transmission_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????x
3dense_features/Transmission_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??z
5dense_features/Transmission_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    u
3dense_features/Transmission_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
-dense_features/Transmission_indicator/one_hotOneHot;dense_features/Transmission_indicator/SparseToDense:dense:0<dense_features/Transmission_indicator/one_hot/depth:output:0<dense_features/Transmission_indicator/one_hot/Const:output:0>dense_features/Transmission_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
;dense_features/Transmission_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
)dense_features/Transmission_indicator/SumSum6dense_features/Transmission_indicator/one_hot:output:0Ddense_features/Transmission_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
+dense_features/Transmission_indicator/ShapeShape2dense_features/Transmission_indicator/Sum:output:0*
T0*
_output_shapes
:?
9dense_features/Transmission_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
;dense_features/Transmission_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
;dense_features/Transmission_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
3dense_features/Transmission_indicator/strided_sliceStridedSlice4dense_features/Transmission_indicator/Shape:output:0Bdense_features/Transmission_indicator/strided_slice/stack:output:0Ddense_features/Transmission_indicator/strided_slice/stack_1:output:0Ddense_features/Transmission_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
5dense_features/Transmission_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
3dense_features/Transmission_indicator/Reshape/shapePack<dense_features/Transmission_indicator/strided_slice:output:0>dense_features/Transmission_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
-dense_features/Transmission_indicator/ReshapeReshape2dense_features/Transmission_indicator/Sum:output:0<dense_features/Transmission_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????m
"dense_features/Year/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dense_features/Year/ExpandDims
ExpandDimsinputs_year+dense_features/Year/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
dense_features/Year/CastCast'dense_features/Year/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????e
dense_features/Year/ShapeShapedense_features/Year/Cast:y:0*
T0*
_output_shapes
:q
'dense_features/Year/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)dense_features/Year/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)dense_features/Year/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
!dense_features/Year/strided_sliceStridedSlice"dense_features/Year/Shape:output:00dense_features/Year/strided_slice/stack:output:02dense_features/Year/strided_slice/stack_1:output:02dense_features/Year/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#dense_features/Year/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
!dense_features/Year/Reshape/shapePack*dense_features/Year/strided_slice:output:0,dense_features/Year/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dense_features/Year/ReshapeReshapedense_features/Year/Cast:y:0*dense_features/Year/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????}
2dense_features/drive_type_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
.dense_features/drive_type_indicator/ExpandDims
ExpandDimsinputs_drive_type;dense_features/drive_type_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
Bdense_features/drive_type_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
<dense_features/drive_type_indicator/to_sparse_input/NotEqualNotEqual7dense_features/drive_type_indicator/ExpandDims:output:0Kdense_features/drive_type_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
;dense_features/drive_type_indicator/to_sparse_input/indicesWhere@dense_features/drive_type_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
:dense_features/drive_type_indicator/to_sparse_input/valuesGatherNd7dense_features/drive_type_indicator/ExpandDims:output:0Cdense_features/drive_type_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
?dense_features/drive_type_indicator/to_sparse_input/dense_shapeShape7dense_features/drive_type_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Gdense_features/drive_type_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Tdense_features_drive_type_indicator_hash_table_lookup_lookuptablefindv2_table_handleCdense_features/drive_type_indicator/to_sparse_input/values:output:0Udense_features_drive_type_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
?dense_features/drive_type_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
1dense_features/drive_type_indicator/SparseToDenseSparseToDenseCdense_features/drive_type_indicator/to_sparse_input/indices:index:0Hdense_features/drive_type_indicator/to_sparse_input/dense_shape:output:0Pdense_features/drive_type_indicator/hash_table_Lookup/LookupTableFindV2:values:0Hdense_features/drive_type_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????v
1dense_features/drive_type_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??x
3dense_features/drive_type_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    s
1dense_features/drive_type_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
+dense_features/drive_type_indicator/one_hotOneHot9dense_features/drive_type_indicator/SparseToDense:dense:0:dense_features/drive_type_indicator/one_hot/depth:output:0:dense_features/drive_type_indicator/one_hot/Const:output:0<dense_features/drive_type_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
9dense_features/drive_type_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
'dense_features/drive_type_indicator/SumSum4dense_features/drive_type_indicator/one_hot:output:0Bdense_features/drive_type_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
)dense_features/drive_type_indicator/ShapeShape0dense_features/drive_type_indicator/Sum:output:0*
T0*
_output_shapes
:?
7dense_features/drive_type_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
9dense_features/drive_type_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
9dense_features/drive_type_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
1dense_features/drive_type_indicator/strided_sliceStridedSlice2dense_features/drive_type_indicator/Shape:output:0@dense_features/drive_type_indicator/strided_slice/stack:output:0Bdense_features/drive_type_indicator/strided_slice/stack_1:output:0Bdense_features/drive_type_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
3dense_features/drive_type_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
1dense_features/drive_type_indicator/Reshape/shapePack:dense_features/drive_type_indicator/strided_slice:output:0<dense_features/drive_type_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
+dense_features/drive_type_indicator/ReshapeReshape0dense_features/drive_type_indicator/Sum:output:0:dense_features/drive_type_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
6dense_features/interior_color_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
2dense_features/interior_color_indicator/ExpandDims
ExpandDimsinputs_interior_color?dense_features/interior_color_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
Fdense_features/interior_color_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
@dense_features/interior_color_indicator/to_sparse_input/NotEqualNotEqual;dense_features/interior_color_indicator/ExpandDims:output:0Odense_features/interior_color_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
?dense_features/interior_color_indicator/to_sparse_input/indicesWhereDdense_features/interior_color_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
>dense_features/interior_color_indicator/to_sparse_input/valuesGatherNd;dense_features/interior_color_indicator/ExpandDims:output:0Gdense_features/interior_color_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
Cdense_features/interior_color_indicator/to_sparse_input/dense_shapeShape;dense_features/interior_color_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Kdense_features/interior_color_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Xdense_features_interior_color_indicator_hash_table_lookup_lookuptablefindv2_table_handleGdense_features/interior_color_indicator/to_sparse_input/values:output:0Ydense_features_interior_color_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
Cdense_features/interior_color_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
5dense_features/interior_color_indicator/SparseToDenseSparseToDenseGdense_features/interior_color_indicator/to_sparse_input/indices:index:0Ldense_features/interior_color_indicator/to_sparse_input/dense_shape:output:0Tdense_features/interior_color_indicator/hash_table_Lookup/LookupTableFindV2:values:0Ldense_features/interior_color_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????z
5dense_features/interior_color_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??|
7dense_features/interior_color_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    x
5dense_features/interior_color_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value
B :??
/dense_features/interior_color_indicator/one_hotOneHot=dense_features/interior_color_indicator/SparseToDense:dense:0>dense_features/interior_color_indicator/one_hot/depth:output:0>dense_features/interior_color_indicator/one_hot/Const:output:0@dense_features/interior_color_indicator/one_hot/Const_1:output:0*
T0*,
_output_shapes
:???????????
=dense_features/interior_color_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
+dense_features/interior_color_indicator/SumSum8dense_features/interior_color_indicator/one_hot:output:0Fdense_features/interior_color_indicator/Sum/reduction_indices:output:0*
T0*(
_output_shapes
:???????????
-dense_features/interior_color_indicator/ShapeShape4dense_features/interior_color_indicator/Sum:output:0*
T0*
_output_shapes
:?
;dense_features/interior_color_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
=dense_features/interior_color_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
=dense_features/interior_color_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
5dense_features/interior_color_indicator/strided_sliceStridedSlice6dense_features/interior_color_indicator/Shape:output:0Ddense_features/interior_color_indicator/strided_slice/stack:output:0Fdense_features/interior_color_indicator/strided_slice/stack_1:output:0Fdense_features/interior_color_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
7dense_features/interior_color_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :??
5dense_features/interior_color_indicator/Reshape/shapePack>dense_features/interior_color_indicator/strided_slice:output:0@dense_features/interior_color_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
/dense_features/interior_color_indicator/ReshapeReshape4dense_features/interior_color_indicator/Sum:output:0>dense_features/interior_color_indicator/Reshape/shape:output:0*
T0*(
_output_shapes
:??????????q
&dense_features/mpg_city/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
"dense_features/mpg_city/ExpandDims
ExpandDimsinputs_mpg_city/dense_features/mpg_city/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
dense_features/mpg_city/CastCast+dense_features/mpg_city/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????m
dense_features/mpg_city/ShapeShape dense_features/mpg_city/Cast:y:0*
T0*
_output_shapes
:u
+dense_features/mpg_city/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-dense_features/mpg_city/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-dense_features/mpg_city/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%dense_features/mpg_city/strided_sliceStridedSlice&dense_features/mpg_city/Shape:output:04dense_features/mpg_city/strided_slice/stack:output:06dense_features/mpg_city/strided_slice/stack_1:output:06dense_features/mpg_city/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maski
'dense_features/mpg_city/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
%dense_features/mpg_city/Reshape/shapePack.dense_features/mpg_city/strided_slice:output:00dense_features/mpg_city/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
dense_features/mpg_city/ReshapeReshape dense_features/mpg_city/Cast:y:0.dense_features/mpg_city/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????t
)dense_features/mpg_highway/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
%dense_features/mpg_highway/ExpandDims
ExpandDimsinputs_mpg_highway2dense_features/mpg_highway/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
dense_features/mpg_highway/CastCast.dense_features/mpg_highway/ExpandDims:output:0*

DstT0*

SrcT0*'
_output_shapes
:?????????s
 dense_features/mpg_highway/ShapeShape#dense_features/mpg_highway/Cast:y:0*
T0*
_output_shapes
:x
.dense_features/mpg_highway/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0dense_features/mpg_highway/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0dense_features/mpg_highway/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
(dense_features/mpg_highway/strided_sliceStridedSlice)dense_features/mpg_highway/Shape:output:07dense_features/mpg_highway/strided_slice/stack:output:09dense_features/mpg_highway/strided_slice/stack_1:output:09dense_features/mpg_highway/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*dense_features/mpg_highway/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
(dense_features/mpg_highway/Reshape/shapePack1dense_features/mpg_highway/strided_slice:output:03dense_features/mpg_highway/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
"dense_features/mpg_highway/ReshapeReshape#dense_features/mpg_highway/Cast:y:01dense_features/mpg_highway/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????x
-dense_features/style_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
)dense_features/style_indicator/ExpandDims
ExpandDimsinputs_style6dense_features/style_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:?????????~
=dense_features/style_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
7dense_features/style_indicator/to_sparse_input/NotEqualNotEqual2dense_features/style_indicator/ExpandDims:output:0Fdense_features/style_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
6dense_features/style_indicator/to_sparse_input/indicesWhere;dense_features/style_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
5dense_features/style_indicator/to_sparse_input/valuesGatherNd2dense_features/style_indicator/ExpandDims:output:0>dense_features/style_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
:dense_features/style_indicator/to_sparse_input/dense_shapeShape2dense_features/style_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Bdense_features/style_indicator/hash_table_Lookup/LookupTableFindV2LookupTableFindV2Odense_features_style_indicator_hash_table_lookup_lookuptablefindv2_table_handle>dense_features/style_indicator/to_sparse_input/values:output:0Pdense_features_style_indicator_hash_table_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
:dense_features/style_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
,dense_features/style_indicator/SparseToDenseSparseToDense>dense_features/style_indicator/to_sparse_input/indices:index:0Cdense_features/style_indicator/to_sparse_input/dense_shape:output:0Kdense_features/style_indicator/hash_table_Lookup/LookupTableFindV2:values:0Cdense_features/style_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????q
,dense_features/style_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??s
.dense_features/style_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    n
,dense_features/style_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :	?
&dense_features/style_indicator/one_hotOneHot4dense_features/style_indicator/SparseToDense:dense:05dense_features/style_indicator/one_hot/depth:output:05dense_features/style_indicator/one_hot/Const:output:07dense_features/style_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????	?
4dense_features/style_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
"dense_features/style_indicator/SumSum/dense_features/style_indicator/one_hot:output:0=dense_features/style_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????	
$dense_features/style_indicator/ShapeShape+dense_features/style_indicator/Sum:output:0*
T0*
_output_shapes
:|
2dense_features/style_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_features/style_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_features/style_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,dense_features/style_indicator/strided_sliceStridedSlice-dense_features/style_indicator/Shape:output:0;dense_features/style_indicator/strided_slice/stack:output:0=dense_features/style_indicator/strided_slice/stack_1:output:0=dense_features/style_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.dense_features/style_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :	?
,dense_features/style_indicator/Reshape/shapePack5dense_features/style_indicator/strided_slice:output:07dense_features/style_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
&dense_features/style_indicator/ReshapeReshape+dense_features/style_indicator/Sum:output:05dense_features/style_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????	e
dense_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dense_features/concatConcatV2/dense_features/Brand_indicator/Reshape:output:0(dense_features/Engine_V/Reshape:output:00dense_features/Engine_indicator/Reshape:output:08dense_features/Exterior_color_indicator/Reshape:output:03dense_features/Fuel_Type_indicator/Reshape:output:0'dense_features/Mileage/Reshape:output:0.dense_features/Name_indicator/Reshape:output:06dense_features/Transmission_indicator/Reshape:output:0$dense_features/Year/Reshape:output:04dense_features/drive_type_indicator/Reshape:output:08dense_features/interior_color_indicator/Reshape:output:0(dense_features/mpg_city/Reshape:output:0+dense_features/mpg_highway/Reshape:output:0/dense_features/style_indicator/Reshape:output:0#dense_features/concat/axis:output:0*
N*
T0*(
_output_shapes
:??????????	?
normalization/subSubdense_features/concat:output:0normalization_sub_y*
T0*(
_output_shapes
:??????????	Z
normalization/SqrtSqrtnormalization_sqrt_x*
T0*
_output_shapes
:	?	\
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*
_output_shapes
:	?	?
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*(
_output_shapes
:??????????	
FC_1/MatMul/ReadVariableOpReadVariableOp#fc_1_matmul_readvariableop_resource*
_output_shapes
:	?	@*
dtype0?
FC_1/MatMulMatMulnormalization/truediv:z:0"FC_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@|
FC_1/BiasAdd/ReadVariableOpReadVariableOp$fc_1_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype0?
FC_1/BiasAddBiasAddFC_1/MatMul:product:0#FC_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@Z
	FC_1/ReluReluFC_1/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@~
FC_2/MatMul/ReadVariableOpReadVariableOp#fc_2_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype0?
FC_2/MatMulMatMulFC_1/Relu:activations:0"FC_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? |
FC_2/BiasAdd/ReadVariableOpReadVariableOp$fc_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0?
FC_2/BiasAddBiasAddFC_2/MatMul:product:0#FC_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? Z
	FC_2/ReluReluFC_2/BiasAdd:output:0*
T0*'
_output_shapes
:????????? ~
FC_3/MatMul/ReadVariableOpReadVariableOp#fc_3_matmul_readvariableop_resource*
_output_shapes

: 
*
dtype0?
FC_3/MatMulMatMulFC_2/Relu:activations:0"FC_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
|
FC_3/BiasAdd/ReadVariableOpReadVariableOp$fc_3_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0?
FC_3/BiasAddBiasAddFC_3/MatMul:product:0#FC_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
Z
	FC_3/ReluReluFC_3/BiasAdd:output:0*
T0*'
_output_shapes
:?????????
?
Output/MatMul/ReadVariableOpReadVariableOp%output_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0?
Output/MatMulMatMulFC_3/Relu:activations:0$Output/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
Output/BiasAdd/ReadVariableOpReadVariableOp&output_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
Output/BiasAddBiasAddOutput/MatMul:product:0%Output/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
IdentityIdentityOutput/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^FC_1/BiasAdd/ReadVariableOp^FC_1/MatMul/ReadVariableOp^FC_2/BiasAdd/ReadVariableOp^FC_2/MatMul/ReadVariableOp^FC_3/BiasAdd/ReadVariableOp^FC_3/MatMul/ReadVariableOp^Output/BiasAdd/ReadVariableOp^Output/MatMul/ReadVariableOpC^dense_features/Brand_indicator/hash_table_Lookup/LookupTableFindV2D^dense_features/Engine_indicator/hash_table_Lookup/LookupTableFindV2L^dense_features/Exterior_color_indicator/hash_table_Lookup/LookupTableFindV2G^dense_features/Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV2B^dense_features/Name_indicator/hash_table_Lookup/LookupTableFindV2J^dense_features/Transmission_indicator/hash_table_Lookup/LookupTableFindV2H^dense_features/drive_type_indicator/hash_table_Lookup/LookupTableFindV2L^dense_features/interior_color_indicator/hash_table_Lookup/LookupTableFindV2C^dense_features/style_indicator/hash_table_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : :	?	:	?	: : : : : : : : 2:
FC_1/BiasAdd/ReadVariableOpFC_1/BiasAdd/ReadVariableOp28
FC_1/MatMul/ReadVariableOpFC_1/MatMul/ReadVariableOp2:
FC_2/BiasAdd/ReadVariableOpFC_2/BiasAdd/ReadVariableOp28
FC_2/MatMul/ReadVariableOpFC_2/MatMul/ReadVariableOp2:
FC_3/BiasAdd/ReadVariableOpFC_3/BiasAdd/ReadVariableOp28
FC_3/MatMul/ReadVariableOpFC_3/MatMul/ReadVariableOp2>
Output/BiasAdd/ReadVariableOpOutput/BiasAdd/ReadVariableOp2<
Output/MatMul/ReadVariableOpOutput/MatMul/ReadVariableOp2?
Bdense_features/Brand_indicator/hash_table_Lookup/LookupTableFindV2Bdense_features/Brand_indicator/hash_table_Lookup/LookupTableFindV22?
Cdense_features/Engine_indicator/hash_table_Lookup/LookupTableFindV2Cdense_features/Engine_indicator/hash_table_Lookup/LookupTableFindV22?
Kdense_features/Exterior_color_indicator/hash_table_Lookup/LookupTableFindV2Kdense_features/Exterior_color_indicator/hash_table_Lookup/LookupTableFindV22?
Fdense_features/Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV2Fdense_features/Fuel_Type_indicator/hash_table_Lookup/LookupTableFindV22?
Adense_features/Name_indicator/hash_table_Lookup/LookupTableFindV2Adense_features/Name_indicator/hash_table_Lookup/LookupTableFindV22?
Idense_features/Transmission_indicator/hash_table_Lookup/LookupTableFindV2Idense_features/Transmission_indicator/hash_table_Lookup/LookupTableFindV22?
Gdense_features/drive_type_indicator/hash_table_Lookup/LookupTableFindV2Gdense_features/drive_type_indicator/hash_table_Lookup/LookupTableFindV22?
Kdense_features/interior_color_indicator/hash_table_Lookup/LookupTableFindV2Kdense_features/interior_color_indicator/hash_table_Lookup/LookupTableFindV22?
Bdense_features/style_indicator/hash_table_Lookup/LookupTableFindV2Bdense_features/style_indicator/hash_table_Lookup/LookupTableFindV2:Q M
#
_output_shapes
:?????????
&
_user_specified_nameinputs/Brand:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/Engine:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/Engine_V:ZV
#
_output_shapes
:?????????
/
_user_specified_nameinputs/Exterior_color:UQ
#
_output_shapes
:?????????
*
_user_specified_nameinputs/Fuel_Type:SO
#
_output_shapes
:?????????
(
_user_specified_nameinputs/Mileage:PL
#
_output_shapes
:?????????
%
_user_specified_nameinputs/Name:XT
#
_output_shapes
:?????????
-
_user_specified_nameinputs/Transmission:PL
#
_output_shapes
:?????????
%
_user_specified_nameinputs/Year:V	R
#
_output_shapes
:?????????
+
_user_specified_nameinputs/drive_type:Z
V
#
_output_shapes
:?????????
/
_user_specified_nameinputs/interior_color:TP
#
_output_shapes
:?????????
)
_user_specified_nameinputs/mpg_city:WS
#
_output_shapes
:?????????
,
_user_specified_nameinputs/mpg_highway:QM
#
_output_shapes
:?????????
&
_user_specified_nameinputs/style:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :% !

_output_shapes
:	?	:%!!

_output_shapes
:	?	
?
?
/__inference_dense_features_layer_call_fn_823391
features_brand
features_engine
features_engine_v
features_exterior_color
features_fuel_type
features_mileage
features_name
features_transmission
features_year
features_drive_type
features_interior_color
features_mpg_city
features_mpg_highway
features_style
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3
	unknown_4	
	unknown_5
	unknown_6	
	unknown_7
	unknown_8	
	unknown_9

unknown_10	

unknown_11

unknown_12	

unknown_13

unknown_14	

unknown_15

unknown_16	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfeatures_brandfeatures_enginefeatures_engine_vfeatures_exterior_colorfeatures_fuel_typefeatures_mileagefeatures_namefeatures_transmissionfeatures_yearfeatures_drive_typefeatures_interior_colorfeatures_mpg_cityfeatures_mpg_highwayfeatures_styleunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*+
Tin$
"2 									*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_821867p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
#
_output_shapes
:?????????
(
_user_specified_namefeatures/Brand:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/Engine:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/Engine_V:\X
#
_output_shapes
:?????????
1
_user_specified_namefeatures/Exterior_color:WS
#
_output_shapes
:?????????
,
_user_specified_namefeatures/Fuel_Type:UQ
#
_output_shapes
:?????????
*
_user_specified_namefeatures/Mileage:RN
#
_output_shapes
:?????????
'
_user_specified_namefeatures/Name:ZV
#
_output_shapes
:?????????
/
_user_specified_namefeatures/Transmission:RN
#
_output_shapes
:?????????
'
_user_specified_namefeatures/Year:X	T
#
_output_shapes
:?????????
-
_user_specified_namefeatures/drive_type:\
X
#
_output_shapes
:?????????
1
_user_specified_namefeatures/interior_color:VR
#
_output_shapes
:?????????
+
_user_specified_namefeatures/mpg_city:YU
#
_output_shapes
:?????????
.
_user_specified_namefeatures/mpg_highway:SO
#
_output_shapes
:?????????
(
_user_specified_namefeatures/style:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
?5
?	
O__inference_CAR_PRICE_PREDICTOR_layer_call_and_return_conditional_losses_822371	
brand

engine
engine_v
exterior_color
	fuel_type
mileage
name
transmission
year

drive_type
interior_color
mpg_city
mpg_highway	
style
dense_features_822306
dense_features_822308	
dense_features_822310
dense_features_822312	
dense_features_822314
dense_features_822316	
dense_features_822318
dense_features_822320	
dense_features_822322
dense_features_822324	
dense_features_822326
dense_features_822328	
dense_features_822330
dense_features_822332	
dense_features_822334
dense_features_822336	
dense_features_822338
dense_features_822340	
normalization_sub_y
normalization_sqrt_x
fc_1_822350:	?	@
fc_1_822352:@
fc_2_822355:@ 
fc_2_822357: 
fc_3_822360: 

fc_3_822362:

output_822365:

output_822367:
identity??FC_1/StatefulPartitionedCall?FC_2/StatefulPartitionedCall?FC_3/StatefulPartitionedCall?Output/StatefulPartitionedCall?&dense_features/StatefulPartitionedCall?
&dense_features/StatefulPartitionedCallStatefulPartitionedCallbrandengineengine_vexterior_color	fuel_typemileagenametransmissionyear
drive_typeinterior_colormpg_citympg_highwaystyledense_features_822306dense_features_822308dense_features_822310dense_features_822312dense_features_822314dense_features_822316dense_features_822318dense_features_822320dense_features_822322dense_features_822324dense_features_822326dense_features_822328dense_features_822330dense_features_822332dense_features_822334dense_features_822336dense_features_822338dense_features_822340*+
Tin$
"2 									*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_821867?
normalization/subSub/dense_features/StatefulPartitionedCall:output:0normalization_sub_y*
T0*(
_output_shapes
:??????????	Z
normalization/SqrtSqrtnormalization_sqrt_x*
T0*
_output_shapes
:	?	\
normalization/Maximum/yConst*
_output_shapes
: *
dtype0*
valueB
 *???3?
normalization/MaximumMaximumnormalization/Sqrt:y:0 normalization/Maximum/y:output:0*
T0*
_output_shapes
:	?	?
normalization/truedivRealDivnormalization/sub:z:0normalization/Maximum:z:0*
T0*(
_output_shapes
:??????????	?
FC_1/StatefulPartitionedCallStatefulPartitionedCallnormalization/truediv:z:0fc_1_822350fc_1_822352*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_FC_1_layer_call_and_return_conditional_losses_821334?
FC_2/StatefulPartitionedCallStatefulPartitionedCall%FC_1/StatefulPartitionedCall:output:0fc_2_822355fc_2_822357*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_FC_2_layer_call_and_return_conditional_losses_821351?
FC_3/StatefulPartitionedCallStatefulPartitionedCall%FC_2/StatefulPartitionedCall:output:0fc_3_822360fc_3_822362*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????
*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *I
fDRB
@__inference_FC_3_layer_call_and_return_conditional_losses_821368?
Output/StatefulPartitionedCallStatefulPartitionedCall%FC_3/StatefulPartitionedCall:output:0output_822365output_822367*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *K
fFRD
B__inference_Output_layer_call_and_return_conditional_losses_821384v
IdentityIdentity'Output/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^FC_1/StatefulPartitionedCall^FC_2/StatefulPartitionedCall^FC_3/StatefulPartitionedCall^Output/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : : : : : : : : : : : : : :	?	:	?	: : : : : : : : 2<
FC_1/StatefulPartitionedCallFC_1/StatefulPartitionedCall2<
FC_2/StatefulPartitionedCallFC_2/StatefulPartitionedCall2<
FC_3/StatefulPartitionedCallFC_3/StatefulPartitionedCall2@
Output/StatefulPartitionedCallOutput/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall:J F
#
_output_shapes
:?????????

_user_specified_nameBrand:KG
#
_output_shapes
:?????????
 
_user_specified_nameEngine:MI
#
_output_shapes
:?????????
"
_user_specified_name
Engine_V:SO
#
_output_shapes
:?????????
(
_user_specified_nameExterior_color:NJ
#
_output_shapes
:?????????
#
_user_specified_name	Fuel_Type:LH
#
_output_shapes
:?????????
!
_user_specified_name	Mileage:IE
#
_output_shapes
:?????????

_user_specified_nameName:QM
#
_output_shapes
:?????????
&
_user_specified_nameTransmission:IE
#
_output_shapes
:?????????

_user_specified_nameYear:O	K
#
_output_shapes
:?????????
$
_user_specified_name
drive_type:S
O
#
_output_shapes
:?????????
(
_user_specified_nameinterior_color:MI
#
_output_shapes
:?????????
"
_user_specified_name
mpg_city:PL
#
_output_shapes
:?????????
%
_user_specified_namempg_highway:JF
#
_output_shapes
:?????????

_user_specified_namestyle:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :% !

_output_shapes
:	?	:%!!

_output_shapes
:	?	
?
-
__inference__destroyer_824102
identityG
ConstConst*
_output_shapes
: *
dtype0*
value	B :E
IdentityIdentityConst:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes 
?
?
__inference__initializer_8242232
.table_init463_lookuptableimportv2_table_handle*
&table_init463_lookuptableimportv2_keys,
(table_init463_lookuptableimportv2_values	
identity??!table_init463/LookupTableImportV2?
!table_init463/LookupTableImportV2LookupTableImportV2.table_init463_lookuptableimportv2_table_handle&table_init463_lookuptableimportv2_keys(table_init463_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 G
ConstConst*
_output_shapes
: *
dtype0*
value	B :L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init463/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*#
_input_shapes
: :?:?2F
!table_init463/LookupTableImportV2!table_init463/LookupTableImportV2:!

_output_shapes	
:?:!

_output_shapes	
:?
?

?
@__inference_FC_3_layer_call_and_return_conditional_losses_824065

inputs0
matmul_readvariableop_resource: 
-
biasadd_readvariableop_resource:

identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: 
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????
P
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????
a
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:?????????
w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?
?
__inference_<lambda>_8242542
.table_init179_lookuptableimportv2_table_handle*
&table_init179_lookuptableimportv2_keys,
(table_init179_lookuptableimportv2_values	
identity??!table_init179/LookupTableImportV2?
!table_init179/LookupTableImportV2LookupTableImportV2.table_init179_lookuptableimportv2_table_handle&table_init179_lookuptableimportv2_keys(table_init179_lookuptableimportv2_values*	
Tin0*

Tout0	*
_output_shapes
 J
ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??L
IdentityIdentityConst:output:0^NoOp*
T0*
_output_shapes
: j
NoOpNoOp"^table_init179/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: :+:+2F
!table_init179/LookupTableImportV2!table_init179/LookupTableImportV2: 

_output_shapes
:+: 

_output_shapes
:+
?	
?
B__inference_Output_layer_call_and_return_conditional_losses_824084

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????

 
_user_specified_nameinputs"?N
saver_filename:0StatefulPartitionedCall_10:0StatefulPartitionedCall_118"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
3
Brand*
serving_default_Brand:0?????????
5
Engine+
serving_default_Engine:0?????????
9
Engine_V-
serving_default_Engine_V:0?????????
E
Exterior_color3
 serving_default_Exterior_color:0?????????
;
	Fuel_Type.
serving_default_Fuel_Type:0?????????
7
Mileage,
serving_default_Mileage:0?????????
1
Name)
serving_default_Name:0?????????
A
Transmission1
serving_default_Transmission:0?????????
1
Year)
serving_default_Year:0?????????
=

drive_type/
serving_default_drive_type:0?????????
E
interior_color3
 serving_default_interior_color:0?????????
9
mpg_city-
serving_default_mpg_city:0?????????
?
mpg_highway0
serving_default_mpg_highway:0?????????
3
style*
serving_default_style:0?????????>
output_12
StatefulPartitionedCall_9:0?????????tensorflow/serving/predict:
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
	optimizer
_build_input_shape
		variables

trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
?
_feature_columns

_resources
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?

_keep_axis
_reduce_axis
_reduce_axis_mask
_broadcast_shape
mean

adapt_mean
variance
adapt_variance
	count
 	keras_api"
_tf_keras_layer
?

!kernel
"bias
#	variables
$trainable_variables
%regularization_losses
&	keras_api
'__call__
*(&call_and_return_all_conditional_losses"
_tf_keras_layer
?

)kernel
*bias
+	variables
,trainable_variables
-regularization_losses
.	keras_api
/__call__
*0&call_and_return_all_conditional_losses"
_tf_keras_layer
?

1kernel
2bias
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses"
_tf_keras_layer
?

9kernel
:bias
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses"
_tf_keras_layer
?
Aiter

Bbeta_1

Cbeta_2
	Ddecay
Elearning_rate!m?"m?)m?*m?1m?2m?9m?:m?!v?"v?)v?*v?1v?2v?9v?:v?"
	optimizer
 "
trackable_dict_wrapper
n
0
1
2
!3
"4
)5
*6
17
28
99
:10"
trackable_list_wrapper
X
!0
"1
)2
*3
14
25
96
:7"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Fnon_trainable_variables

Glayers
Hmetrics
Ilayer_regularization_losses
Jlayer_metrics
		variables

trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
4__inference_CAR_PRICE_PREDICTOR_layer_call_fn_821450
4__inference_CAR_PRICE_PREDICTOR_layer_call_fn_822451
4__inference_CAR_PRICE_PREDICTOR_layer_call_fn_822525
4__inference_CAR_PRICE_PREDICTOR_layer_call_fn_822209?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
O__inference_CAR_PRICE_PREDICTOR_layer_call_and_return_conditional_losses_822866
O__inference_CAR_PRICE_PREDICTOR_layer_call_and_return_conditional_losses_823207
O__inference_CAR_PRICE_PREDICTOR_layer_call_and_return_conditional_losses_822290
O__inference_CAR_PRICE_PREDICTOR_layer_call_and_return_conditional_losses_822371?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
!__inference__wrapped_model_820938BrandEngineEngine_VExterior_color	Fuel_TypeMileageNameTransmissionYear
drive_typeinterior_colormpg_citympg_highwaystyle"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
Kserving_default"
signature_map
 "
trackable_list_wrapper
?
	LBrand

MEngine
NExterior_color
O	Fuel_Type
PName
QTransmission
R
drive_type
Sinterior_color
	Tstyle"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
/__inference_dense_features_layer_call_fn_823337
/__inference_dense_features_layer_call_fn_823391?
???
FullArgSpecE
args=?:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
J__inference_dense_features_layer_call_and_return_conditional_losses_823698
J__inference_dense_features_layer_call_and_return_conditional_losses_824005?
???
FullArgSpecE
args=?:
jself

jfeatures
jcols_to_output_tensors

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
3:1?	2&CAR_PRICE_PREDICTOR/normalization/mean
7:5?	2*CAR_PRICE_PREDICTOR/normalization/variance
/:-	 2'CAR_PRICE_PREDICTOR/normalization/count
"
_generic_user_object
2:0	?	@2CAR_PRICE_PREDICTOR/FC_1/kernel
+:)@2CAR_PRICE_PREDICTOR/FC_1/bias
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Znon_trainable_variables

[layers
\metrics
]layer_regularization_losses
^layer_metrics
#	variables
$trainable_variables
%regularization_losses
'__call__
*(&call_and_return_all_conditional_losses
&("call_and_return_conditional_losses"
_generic_user_object
?2?
%__inference_FC_1_layer_call_fn_824014?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_FC_1_layer_call_and_return_conditional_losses_824025?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
1:/@ 2CAR_PRICE_PREDICTOR/FC_2/kernel
+:) 2CAR_PRICE_PREDICTOR/FC_2/bias
.
)0
*1"
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
_non_trainable_variables

`layers
ametrics
blayer_regularization_losses
clayer_metrics
+	variables
,trainable_variables
-regularization_losses
/__call__
*0&call_and_return_all_conditional_losses
&0"call_and_return_conditional_losses"
_generic_user_object
?2?
%__inference_FC_2_layer_call_fn_824034?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_FC_2_layer_call_and_return_conditional_losses_824045?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
1:/ 
2CAR_PRICE_PREDICTOR/FC_3/kernel
+:)
2CAR_PRICE_PREDICTOR/FC_3/bias
.
10
21"
trackable_list_wrapper
.
10
21"
trackable_list_wrapper
 "
trackable_list_wrapper
?
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
?2?
%__inference_FC_3_layer_call_fn_824054?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
@__inference_FC_3_layer_call_and_return_conditional_losses_824065?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
3:1
2!CAR_PRICE_PREDICTOR/Output/kernel
-:+2CAR_PRICE_PREDICTOR/Output/bias
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
?2?
'__inference_Output_layer_call_fn_824074?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
B__inference_Output_layer_call_and_return_conditional_losses_824084?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
5
0
1
2"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
.
n0
o1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
$__inference_signature_wrapper_823283BrandEngineEngine_VExterior_color	Fuel_TypeMileageNameTransmissionYear
drive_typeinterior_colormpg_citympg_highwaystyle"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
0
pBrand_lookup"
_generic_user_object
1
qEngine_lookup"
_generic_user_object
9
rExterior_color_lookup"
_generic_user_object
4
sFuel_Type_lookup"
_generic_user_object
/
tName_lookup"
_generic_user_object
7
uTransmission_lookup"
_generic_user_object
5
vdrive_type_lookup"
_generic_user_object
9
winterior_color_lookup"
_generic_user_object
0
xstyle_lookup"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
N
	ytotal
	zcount
{	variables
|	keras_api"
_tf_keras_metric
`
	}total
	~count

_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
n
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jCustom.StaticHashTable
n
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jCustom.StaticHashTable
n
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jCustom.StaticHashTable
n
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jCustom.StaticHashTable
n
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jCustom.StaticHashTable
n
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jCustom.StaticHashTable
n
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jCustom.StaticHashTable
n
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jCustom.StaticHashTable
n
?_initializer
?_create_resource
?_initialize
?_destroy_resourceR jCustom.StaticHashTable
:  (2total
:  (2count
.
y0
z1"
trackable_list_wrapper
-
{	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
}0
~1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
"
_generic_user_object
?2?
__inference__creator_824089?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_824097?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_824102?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
"
_generic_user_object
?2?
__inference__creator_824107?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_824115?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_824120?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
"
_generic_user_object
?2?
__inference__creator_824125?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_824133?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_824138?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
"
_generic_user_object
?2?
__inference__creator_824143?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_824151?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_824156?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
"
_generic_user_object
?2?
__inference__creator_824161?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_824169?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_824174?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
"
_generic_user_object
?2?
__inference__creator_824179?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_824187?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_824192?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
"
_generic_user_object
?2?
__inference__creator_824197?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_824205?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_824210?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
"
_generic_user_object
?2?
__inference__creator_824215?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_824223?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_824228?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
"
_generic_user_object
?2?
__inference__creator_824233?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__initializer_824241?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
?2?
__inference__destroyer_824246?
???
FullArgSpec
args? 
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *? 
7:5	?	@2&Adam/CAR_PRICE_PREDICTOR/FC_1/kernel/m
0:.@2$Adam/CAR_PRICE_PREDICTOR/FC_1/bias/m
6:4@ 2&Adam/CAR_PRICE_PREDICTOR/FC_2/kernel/m
0:. 2$Adam/CAR_PRICE_PREDICTOR/FC_2/bias/m
6:4 
2&Adam/CAR_PRICE_PREDICTOR/FC_3/kernel/m
0:.
2$Adam/CAR_PRICE_PREDICTOR/FC_3/bias/m
8:6
2(Adam/CAR_PRICE_PREDICTOR/Output/kernel/m
2:02&Adam/CAR_PRICE_PREDICTOR/Output/bias/m
7:5	?	@2&Adam/CAR_PRICE_PREDICTOR/FC_1/kernel/v
0:.@2$Adam/CAR_PRICE_PREDICTOR/FC_1/bias/v
6:4@ 2&Adam/CAR_PRICE_PREDICTOR/FC_2/kernel/v
0:. 2$Adam/CAR_PRICE_PREDICTOR/FC_2/bias/v
6:4 
2&Adam/CAR_PRICE_PREDICTOR/FC_3/kernel/v
0:.
2$Adam/CAR_PRICE_PREDICTOR/FC_3/bias/v
8:6
2(Adam/CAR_PRICE_PREDICTOR/Output/kernel/v
2:02&Adam/CAR_PRICE_PREDICTOR/Output/bias/v
	J
Const
J	
Const_1
J	
Const_2
J	
Const_3
J	
Const_4
J	
Const_5
J	
Const_6
J	
Const_7
J	
Const_8
J	
Const_9
J

Const_10
J

Const_11
J

Const_12
J

Const_13
J

Const_14
J

Const_15
J

Const_16
J

Const_17
J

Const_18
J

Const_19
J

Const_20
J

Const_21
J

Const_22
J

Const_23
J

Const_24
J

Const_25
J

Const_26
J

Const_27
J

Const_28?
O__inference_CAR_PRICE_PREDICTOR_layer_call_and_return_conditional_losses_822290?'p?q?r?s?t?u?v?w?x???!")*129:???
???
???
$
Brand?
Brand?????????
&
Engine?
Engine?????????
*
Engine_V?
Engine_V?????????
6
Exterior_color$?!
Exterior_color?????????
,
	Fuel_Type?
	Fuel_Type?????????
(
Mileage?
Mileage?????????
"
Name?
Name?????????
2
Transmission"?
Transmission?????????
"
Year?
Year?????????
.

drive_type ?

drive_type?????????
6
interior_color$?!
interior_color?????????
*
mpg_city?
mpg_city?????????
0
mpg_highway!?
mpg_highway?????????
$
style?
style?????????
p 

 
? "%?"
?
0?????????
? ?
O__inference_CAR_PRICE_PREDICTOR_layer_call_and_return_conditional_losses_822371?'p?q?r?s?t?u?v?w?x???!")*129:???
???
???
$
Brand?
Brand?????????
&
Engine?
Engine?????????
*
Engine_V?
Engine_V?????????
6
Exterior_color$?!
Exterior_color?????????
,
	Fuel_Type?
	Fuel_Type?????????
(
Mileage?
Mileage?????????
"
Name?
Name?????????
2
Transmission"?
Transmission?????????
"
Year?
Year?????????
.

drive_type ?

drive_type?????????
6
interior_color$?!
interior_color?????????
*
mpg_city?
mpg_city?????????
0
mpg_highway!?
mpg_highway?????????
$
style?
style?????????
p

 
? "%?"
?
0?????????
? ?
O__inference_CAR_PRICE_PREDICTOR_layer_call_and_return_conditional_losses_822866?'p?q?r?s?t?u?v?w?x???!")*129:???
???
???
+
Brand"?
inputs/Brand?????????
-
Engine#? 
inputs/Engine?????????
1
Engine_V%?"
inputs/Engine_V?????????
=
Exterior_color+?(
inputs/Exterior_color?????????
3
	Fuel_Type&?#
inputs/Fuel_Type?????????
/
Mileage$?!
inputs/Mileage?????????
)
Name!?
inputs/Name?????????
9
Transmission)?&
inputs/Transmission?????????
)
Year!?
inputs/Year?????????
5

drive_type'?$
inputs/drive_type?????????
=
interior_color+?(
inputs/interior_color?????????
1
mpg_city%?"
inputs/mpg_city?????????
7
mpg_highway(?%
inputs/mpg_highway?????????
+
style"?
inputs/style?????????
p 

 
? "%?"
?
0?????????
? ?
O__inference_CAR_PRICE_PREDICTOR_layer_call_and_return_conditional_losses_823207?'p?q?r?s?t?u?v?w?x???!")*129:???
???
???
+
Brand"?
inputs/Brand?????????
-
Engine#? 
inputs/Engine?????????
1
Engine_V%?"
inputs/Engine_V?????????
=
Exterior_color+?(
inputs/Exterior_color?????????
3
	Fuel_Type&?#
inputs/Fuel_Type?????????
/
Mileage$?!
inputs/Mileage?????????
)
Name!?
inputs/Name?????????
9
Transmission)?&
inputs/Transmission?????????
)
Year!?
inputs/Year?????????
5

drive_type'?$
inputs/drive_type?????????
=
interior_color+?(
inputs/interior_color?????????
1
mpg_city%?"
inputs/mpg_city?????????
7
mpg_highway(?%
inputs/mpg_highway?????????
+
style"?
inputs/style?????????
p

 
? "%?"
?
0?????????
? ?
4__inference_CAR_PRICE_PREDICTOR_layer_call_fn_821450?'p?q?r?s?t?u?v?w?x???!")*129:???
???
???
$
Brand?
Brand?????????
&
Engine?
Engine?????????
*
Engine_V?
Engine_V?????????
6
Exterior_color$?!
Exterior_color?????????
,
	Fuel_Type?
	Fuel_Type?????????
(
Mileage?
Mileage?????????
"
Name?
Name?????????
2
Transmission"?
Transmission?????????
"
Year?
Year?????????
.

drive_type ?

drive_type?????????
6
interior_color$?!
interior_color?????????
*
mpg_city?
mpg_city?????????
0
mpg_highway!?
mpg_highway?????????
$
style?
style?????????
p 

 
? "???????????
4__inference_CAR_PRICE_PREDICTOR_layer_call_fn_822209?'p?q?r?s?t?u?v?w?x???!")*129:???
???
???
$
Brand?
Brand?????????
&
Engine?
Engine?????????
*
Engine_V?
Engine_V?????????
6
Exterior_color$?!
Exterior_color?????????
,
	Fuel_Type?
	Fuel_Type?????????
(
Mileage?
Mileage?????????
"
Name?
Name?????????
2
Transmission"?
Transmission?????????
"
Year?
Year?????????
.

drive_type ?

drive_type?????????
6
interior_color$?!
interior_color?????????
*
mpg_city?
mpg_city?????????
0
mpg_highway!?
mpg_highway?????????
$
style?
style?????????
p

 
? "???????????
4__inference_CAR_PRICE_PREDICTOR_layer_call_fn_822451?'p?q?r?s?t?u?v?w?x???!")*129:???
???
???
+
Brand"?
inputs/Brand?????????
-
Engine#? 
inputs/Engine?????????
1
Engine_V%?"
inputs/Engine_V?????????
=
Exterior_color+?(
inputs/Exterior_color?????????
3
	Fuel_Type&?#
inputs/Fuel_Type?????????
/
Mileage$?!
inputs/Mileage?????????
)
Name!?
inputs/Name?????????
9
Transmission)?&
inputs/Transmission?????????
)
Year!?
inputs/Year?????????
5

drive_type'?$
inputs/drive_type?????????
=
interior_color+?(
inputs/interior_color?????????
1
mpg_city%?"
inputs/mpg_city?????????
7
mpg_highway(?%
inputs/mpg_highway?????????
+
style"?
inputs/style?????????
p 

 
? "???????????
4__inference_CAR_PRICE_PREDICTOR_layer_call_fn_822525?'p?q?r?s?t?u?v?w?x???!")*129:???
???
???
+
Brand"?
inputs/Brand?????????
-
Engine#? 
inputs/Engine?????????
1
Engine_V%?"
inputs/Engine_V?????????
=
Exterior_color+?(
inputs/Exterior_color?????????
3
	Fuel_Type&?#
inputs/Fuel_Type?????????
/
Mileage$?!
inputs/Mileage?????????
)
Name!?
inputs/Name?????????
9
Transmission)?&
inputs/Transmission?????????
)
Year!?
inputs/Year?????????
5

drive_type'?$
inputs/drive_type?????????
=
interior_color+?(
inputs/interior_color?????????
1
mpg_city%?"
inputs/mpg_city?????????
7
mpg_highway(?%
inputs/mpg_highway?????????
+
style"?
inputs/style?????????
p

 
? "???????????
@__inference_FC_1_layer_call_and_return_conditional_losses_824025]!"0?-
&?#
!?
inputs??????????	
? "%?"
?
0?????????@
? y
%__inference_FC_1_layer_call_fn_824014P!"0?-
&?#
!?
inputs??????????	
? "??????????@?
@__inference_FC_2_layer_call_and_return_conditional_losses_824045\)*/?,
%?"
 ?
inputs?????????@
? "%?"
?
0????????? 
? x
%__inference_FC_2_layer_call_fn_824034O)*/?,
%?"
 ?
inputs?????????@
? "?????????? ?
@__inference_FC_3_layer_call_and_return_conditional_losses_824065\12/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????

? x
%__inference_FC_3_layer_call_fn_824054O12/?,
%?"
 ?
inputs????????? 
? "??????????
?
B__inference_Output_layer_call_and_return_conditional_losses_824084\9:/?,
%?"
 ?
inputs?????????

? "%?"
?
0?????????
? z
'__inference_Output_layer_call_fn_824074O9:/?,
%?"
 ?
inputs?????????

? "??????????7
__inference__creator_824089?

? 
? "? 7
__inference__creator_824107?

? 
? "? 7
__inference__creator_824125?

? 
? "? 7
__inference__creator_824143?

? 
? "? 7
__inference__creator_824161?

? 
? "? 7
__inference__creator_824179?

? 
? "? 7
__inference__creator_824197?

? 
? "? 7
__inference__creator_824215?

? 
? "? 7
__inference__creator_824233?

? 
? "? 9
__inference__destroyer_824102?

? 
? "? 9
__inference__destroyer_824120?

? 
? "? 9
__inference__destroyer_824138?

? 
? "? 9
__inference__destroyer_824156?

? 
? "? 9
__inference__destroyer_824174?

? 
? "? 9
__inference__destroyer_824192?

? 
? "? 9
__inference__destroyer_824210?

? 
? "? 9
__inference__destroyer_824228?

? 
? "? 9
__inference__destroyer_824246?

? 
? "? B
__inference__initializer_824097p???

? 
? "? B
__inference__initializer_824115q???

? 
? "? B
__inference__initializer_824133r???

? 
? "? B
__inference__initializer_824151s???

? 
? "? B
__inference__initializer_824169t???

? 
? "? B
__inference__initializer_824187u???

? 
? "? B
__inference__initializer_824205v???

? 
? "? B
__inference__initializer_824223w???

? 
? "? B
__inference__initializer_824241x???

? 
? "? ?
!__inference__wrapped_model_820938?'p?q?r?s?t?u?v?w?x???!")*129:???
???
???
$
Brand?
Brand?????????
&
Engine?
Engine?????????
*
Engine_V?
Engine_V?????????
6
Exterior_color$?!
Exterior_color?????????
,
	Fuel_Type?
	Fuel_Type?????????
(
Mileage?
Mileage?????????
"
Name?
Name?????????
2
Transmission"?
Transmission?????????
"
Year?
Year?????????
.

drive_type ?

drive_type?????????
6
interior_color$?!
interior_color?????????
*
mpg_city?
mpg_city?????????
0
mpg_highway!?
mpg_highway?????????
$
style?
style?????????
? "3?0
.
output_1"?
output_1??????????
J__inference_dense_features_layer_call_and_return_conditional_losses_823698?p?q?r?s?t?u?v?w?x????
???
???
-
Brand$?!
features/Brand?????????
/
Engine%?"
features/Engine?????????
3
Engine_V'?$
features/Engine_V?????????
?
Exterior_color-?*
features/Exterior_color?????????
5
	Fuel_Type(?%
features/Fuel_Type?????????
1
Mileage&?#
features/Mileage?????????
+
Name#? 
features/Name?????????
;
Transmission+?(
features/Transmission?????????
+
Year#? 
features/Year?????????
7

drive_type)?&
features/drive_type?????????
?
interior_color-?*
features/interior_color?????????
3
mpg_city'?$
features/mpg_city?????????
9
mpg_highway*?'
features/mpg_highway?????????
-
style$?!
features/style?????????

 
p 
? "&?#
?
0??????????	
? ?
J__inference_dense_features_layer_call_and_return_conditional_losses_824005?p?q?r?s?t?u?v?w?x????
???
???
-
Brand$?!
features/Brand?????????
/
Engine%?"
features/Engine?????????
3
Engine_V'?$
features/Engine_V?????????
?
Exterior_color-?*
features/Exterior_color?????????
5
	Fuel_Type(?%
features/Fuel_Type?????????
1
Mileage&?#
features/Mileage?????????
+
Name#? 
features/Name?????????
;
Transmission+?(
features/Transmission?????????
+
Year#? 
features/Year?????????
7

drive_type)?&
features/drive_type?????????
?
interior_color-?*
features/interior_color?????????
3
mpg_city'?$
features/mpg_city?????????
9
mpg_highway*?'
features/mpg_highway?????????
-
style$?!
features/style?????????

 
p
? "&?#
?
0??????????	
? ?
/__inference_dense_features_layer_call_fn_823337?p?q?r?s?t?u?v?w?x????
???
???
-
Brand$?!
features/Brand?????????
/
Engine%?"
features/Engine?????????
3
Engine_V'?$
features/Engine_V?????????
?
Exterior_color-?*
features/Exterior_color?????????
5
	Fuel_Type(?%
features/Fuel_Type?????????
1
Mileage&?#
features/Mileage?????????
+
Name#? 
features/Name?????????
;
Transmission+?(
features/Transmission?????????
+
Year#? 
features/Year?????????
7

drive_type)?&
features/drive_type?????????
?
interior_color-?*
features/interior_color?????????
3
mpg_city'?$
features/mpg_city?????????
9
mpg_highway*?'
features/mpg_highway?????????
-
style$?!
features/style?????????

 
p 
? "???????????	?
/__inference_dense_features_layer_call_fn_823391?p?q?r?s?t?u?v?w?x????
???
???
-
Brand$?!
features/Brand?????????
/
Engine%?"
features/Engine?????????
3
Engine_V'?$
features/Engine_V?????????
?
Exterior_color-?*
features/Exterior_color?????????
5
	Fuel_Type(?%
features/Fuel_Type?????????
1
Mileage&?#
features/Mileage?????????
+
Name#? 
features/Name?????????
;
Transmission+?(
features/Transmission?????????
+
Year#? 
features/Year?????????
7

drive_type)?&
features/drive_type?????????
?
interior_color-?*
features/interior_color?????????
3
mpg_city'?$
features/mpg_city?????????
9
mpg_highway*?'
features/mpg_highway?????????
-
style$?!
features/style?????????

 
p
? "???????????	?
$__inference_signature_wrapper_823283?'p?q?r?s?t?u?v?w?x???!")*129:???
? 
???
$
Brand?
Brand?????????
&
Engine?
Engine?????????
*
Engine_V?
Engine_V?????????
6
Exterior_color$?!
Exterior_color?????????
,
	Fuel_Type?
	Fuel_Type?????????
(
Mileage?
Mileage?????????
"
Name?
Name?????????
2
Transmission"?
Transmission?????????
"
Year?
Year?????????
.

drive_type ?

drive_type?????????
6
interior_color$?!
interior_color?????????
*
mpg_city?
mpg_city?????????
0
mpg_highway!?
mpg_highway?????????
$
style?
style?????????"3?0
.
output_1"?
output_1?????????