??
??
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
"serve*2.8.22v2.8.2-0-g2ea19cbb5758??
?
sequential/dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	*(
shared_namesequential/dense/kernel
?
+sequential/dense/kernel/Read/ReadVariableOpReadVariableOpsequential/dense/kernel*
_output_shapes

:	*
dtype0
?
sequential/dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_namesequential/dense/bias
{
)sequential/dense/bias/Read/ReadVariableOpReadVariableOpsequential/dense/bias*
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
	key_dtype0	*
shared_name157*
value_dtype0	
m
hash_table_1HashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name193*
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
?
Adam/sequential/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	*/
shared_name Adam/sequential/dense/kernel/m
?
2Adam/sequential/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/sequential/dense/kernel/m*
_output_shapes

:	*
dtype0
?
Adam/sequential/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/sequential/dense/bias/m
?
0Adam/sequential/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/sequential/dense/bias/m*
_output_shapes
:*
dtype0
?
Adam/sequential/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:	*/
shared_name Adam/sequential/dense/kernel/v
?
2Adam/sequential/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/sequential/dense/kernel/v*
_output_shapes

:	*
dtype0
?
Adam/sequential/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*-
shared_nameAdam/sequential/dense/bias/v
?
0Adam/sequential/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/sequential/dense/bias/v*
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
Q
Const_2Const*
_output_shapes
:*
dtype0	*
valueB	R
Q
Const_3Const*
_output_shapes
:*
dtype0	*
valueB	R 
X
Const_4Const*
_output_shapes
:*
dtype0*
valueBBFavorite
Q
Const_5Const*
_output_shapes
:*
dtype0	*
valueB	R 
?
StatefulPartitionedCallStatefulPartitionedCall
hash_tableConst_2Const_3*
Tin
2		*
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
__inference_<lambda>_706592
?
StatefulPartitionedCall_1StatefulPartitionedCallhash_table_1Const_4Const_5*
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
__inference_<lambda>_706600
B
NoOpNoOp^StatefulPartitionedCall^StatefulPartitionedCall_1
?
Const_6Const"/device:CPU:0*
_output_shapes
: *
dtype0*?
value?B? B?
?
layer-0
layer_with_weights-0
layer-1
	optimizer
_build_input_shape
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures*
?
_feature_columns

_resources
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
h
iter

beta_1

beta_2
	 decay
!learning_ratemCmDvEvF*
* 

0
1*

0
1*
* 
?
"non_trainable_variables

#layers
$metrics
%layer_regularization_losses
&layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses*
* 
* 
* 

'serving_default* 
* 
.
(City
 )FavoriteChannelOfTransaction* 
* 
* 
* 
?
*non_trainable_variables

+layers
,metrics
-layer_regularization_losses
.layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
ga
VARIABLE_VALUEsequential/dense/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEsequential/dense/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
?
/non_trainable_variables

0layers
1metrics
2layer_regularization_losses
3layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
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
* 

0
1*

40*
* 
* 
* 

5City_lookup* 
+
'6#FavoriteChannelOfTransaction_lookup* 
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
	7total
	8count
9	variables
:	keras_api*
R
;_initializer
<_create_resource
=_initialize
>_destroy_resource* 
R
?_initializer
@_create_resource
A_initialize
B_destroy_resource* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

70
81*

9	variables*
* 
* 
* 
* 
* 
* 
* 
* 
??
VARIABLE_VALUEAdam/sequential/dense/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/sequential/dense/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/sequential/dense/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEAdam/sequential/dense/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
o
serving_default_CityPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
u
serving_default_CustomerIDPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
,serving_default_FavoriteChannelOfTransactionPlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
w
serving_default_FavoriteGamePlaceholder*#
_output_shapes
:?????????*
dtype0*
shape:?????????
z
serving_default_FrequencyOFPlayPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
|
!serving_default_FrquncyOfPurchasePlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
x
serving_default_MaxAgeOfChildPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
x
serving_default_MinAgeOfChildPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
w
serving_default_NoOfChildrenPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
z
serving_default_NoOfGamesBoughtPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
z
serving_default_NoOfGamesPlayedPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
}
"serving_default_NoOfUnitsPurchasedPlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
q
serving_default_TenurePlaceholder*#
_output_shapes
:?????????*
dtype0	*
shape:?????????
?
StatefulPartitionedCall_2StatefulPartitionedCallserving_default_Cityserving_default_CustomerID,serving_default_FavoriteChannelOfTransactionserving_default_FavoriteGameserving_default_FrequencyOFPlay!serving_default_FrquncyOfPurchaseserving_default_MaxAgeOfChildserving_default_MinAgeOfChildserving_default_NoOfChildrenserving_default_NoOfGamesBoughtserving_default_NoOfGamesPlayed"serving_default_NoOfUnitsPurchasedserving_default_Tenure
hash_tableConsthash_table_1Const_1sequential/dense/kernelsequential/dense/bias*
Tin
2													*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *-
f(R&
$__inference_signature_wrapper_706183
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filename+sequential/dense/kernel/Read/ReadVariableOp)sequential/dense/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp2Adam/sequential/dense/kernel/m/Read/ReadVariableOp0Adam/sequential/dense/bias/m/Read/ReadVariableOp2Adam/sequential/dense/kernel/v/Read/ReadVariableOp0Adam/sequential/dense/bias/v/Read/ReadVariableOpConst_6*
Tin
2	*
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
__inference__traced_save_706684
?
StatefulPartitionedCall_4StatefulPartitionedCallsaver_filenamesequential/dense/kernelsequential/dense/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/sequential/dense/kernel/mAdam/sequential/dense/bias/mAdam/sequential/dense/kernel/vAdam/sequential/dense/bias/v*
Tin
2*
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
"__inference__traced_restore_706733ح
??
?
J__inference_dense_features_layer_call_and_return_conditional_losses_705352
features	

features_1	

features_2

features_3

features_4	

features_5	

features_6	

features_7	

features_8	

features_9	
features_10	
features_11	
features_12	=
9city_indicator_none_lookup_lookuptablefindv2_table_handle>
:city_indicator_none_lookup_lookuptablefindv2_default_value	U
Qfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_table_handleV
Rfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_default_value	
identity??,City_indicator/None_Lookup/LookupTableFindV2?DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2h
City_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
City_indicator/ExpandDims
ExpandDimsfeatures&City_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????x
-City_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
+City_indicator/to_sparse_input/ignore_valueCast6City_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
'City_indicator/to_sparse_input/NotEqualNotEqual"City_indicator/ExpandDims:output:0/City_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
&City_indicator/to_sparse_input/indicesWhere+City_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
%City_indicator/to_sparse_input/valuesGatherNd"City_indicator/ExpandDims:output:0.City_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
*City_indicator/to_sparse_input/dense_shapeShape"City_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
,City_indicator/None_Lookup/LookupTableFindV2LookupTableFindV29city_indicator_none_lookup_lookuptablefindv2_table_handle.City_indicator/to_sparse_input/values:output:0:city_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:?????????u
*City_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
City_indicator/SparseToDenseSparseToDense.City_indicator/to_sparse_input/indices:index:03City_indicator/to_sparse_input/dense_shape:output:05City_indicator/None_Lookup/LookupTableFindV2:values:03City_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????a
City_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??c
City_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ^
City_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
City_indicator/one_hotOneHot$City_indicator/SparseToDense:dense:0%City_indicator/one_hot/depth:output:0%City_indicator/one_hot/Const:output:0'City_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????w
$City_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
City_indicator/SumSumCity_indicator/one_hot:output:0-City_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????_
City_indicator/ShapeShapeCity_indicator/Sum:output:0*
T0*
_output_shapes
:l
"City_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$City_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$City_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
City_indicator/strided_sliceStridedSliceCity_indicator/Shape:output:0+City_indicator/strided_slice/stack:output:0-City_indicator/strided_slice/stack_1:output:0-City_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
City_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
City_indicator/Reshape/shapePack%City_indicator/strided_slice:output:0'City_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
City_indicator/ReshapeReshapeCity_indicator/Sum:output:0%City_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
5FavoriteChannelOfTransaction_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
1FavoriteChannelOfTransaction_indicator/ExpandDims
ExpandDims
features_2>FavoriteChannelOfTransaction_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
EFavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
?FavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqualNotEqual:FavoriteChannelOfTransaction_indicator/ExpandDims:output:0NFavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
>FavoriteChannelOfTransaction_indicator/to_sparse_input/indicesWhereCFavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
=FavoriteChannelOfTransaction_indicator/to_sparse_input/valuesGatherNd:FavoriteChannelOfTransaction_indicator/ExpandDims:output:0FFavoriteChannelOfTransaction_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
BFavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shapeShape:FavoriteChannelOfTransaction_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Qfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_table_handleFFavoriteChannelOfTransaction_indicator/to_sparse_input/values:output:0Rfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
BFavoriteChannelOfTransaction_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
4FavoriteChannelOfTransaction_indicator/SparseToDenseSparseToDenseFFavoriteChannelOfTransaction_indicator/to_sparse_input/indices:index:0KFavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shape:output:0MFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2:values:0KFavoriteChannelOfTransaction_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????y
4FavoriteChannelOfTransaction_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??{
6FavoriteChannelOfTransaction_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    v
4FavoriteChannelOfTransaction_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
.FavoriteChannelOfTransaction_indicator/one_hotOneHot<FavoriteChannelOfTransaction_indicator/SparseToDense:dense:0=FavoriteChannelOfTransaction_indicator/one_hot/depth:output:0=FavoriteChannelOfTransaction_indicator/one_hot/Const:output:0?FavoriteChannelOfTransaction_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
<FavoriteChannelOfTransaction_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
*FavoriteChannelOfTransaction_indicator/SumSum7FavoriteChannelOfTransaction_indicator/one_hot:output:0EFavoriteChannelOfTransaction_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
,FavoriteChannelOfTransaction_indicator/ShapeShape3FavoriteChannelOfTransaction_indicator/Sum:output:0*
T0*
_output_shapes
:?
:FavoriteChannelOfTransaction_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
<FavoriteChannelOfTransaction_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
<FavoriteChannelOfTransaction_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
4FavoriteChannelOfTransaction_indicator/strided_sliceStridedSlice5FavoriteChannelOfTransaction_indicator/Shape:output:0CFavoriteChannelOfTransaction_indicator/strided_slice/stack:output:0EFavoriteChannelOfTransaction_indicator/strided_slice/stack_1:output:0EFavoriteChannelOfTransaction_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
6FavoriteChannelOfTransaction_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
4FavoriteChannelOfTransaction_indicator/Reshape/shapePack=FavoriteChannelOfTransaction_indicator/strided_slice:output:0?FavoriteChannelOfTransaction_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
.FavoriteChannelOfTransaction_indicator/ReshapeReshape3FavoriteChannelOfTransaction_indicator/Sum:output:0=FavoriteChannelOfTransaction_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????i
FrequencyOFPlay/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
FrequencyOFPlay/ExpandDims
ExpandDims
features_4'FrequencyOFPlay/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
FrequencyOFPlay/CastCast#FrequencyOFPlay/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????]
FrequencyOFPlay/ShapeShapeFrequencyOFPlay/Cast:y:0*
T0*
_output_shapes
:m
#FrequencyOFPlay/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%FrequencyOFPlay/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%FrequencyOFPlay/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
FrequencyOFPlay/strided_sliceStridedSliceFrequencyOFPlay/Shape:output:0,FrequencyOFPlay/strided_slice/stack:output:0.FrequencyOFPlay/strided_slice/stack_1:output:0.FrequencyOFPlay/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
FrequencyOFPlay/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
FrequencyOFPlay/Reshape/shapePack&FrequencyOFPlay/strided_slice:output:0(FrequencyOFPlay/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
FrequencyOFPlay/ReshapeReshapeFrequencyOFPlay/Cast:y:0&FrequencyOFPlay/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????k
 FrquncyOfPurchase/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
FrquncyOfPurchase/ExpandDims
ExpandDims
features_5)FrquncyOfPurchase/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
FrquncyOfPurchase/CastCast%FrquncyOfPurchase/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????a
FrquncyOfPurchase/ShapeShapeFrquncyOfPurchase/Cast:y:0*
T0*
_output_shapes
:o
%FrquncyOfPurchase/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'FrquncyOfPurchase/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'FrquncyOfPurchase/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
FrquncyOfPurchase/strided_sliceStridedSlice FrquncyOfPurchase/Shape:output:0.FrquncyOfPurchase/strided_slice/stack:output:00FrquncyOfPurchase/strided_slice/stack_1:output:00FrquncyOfPurchase/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
!FrquncyOfPurchase/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
FrquncyOfPurchase/Reshape/shapePack(FrquncyOfPurchase/strided_slice:output:0*FrquncyOfPurchase/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
FrquncyOfPurchase/ReshapeReshapeFrquncyOfPurchase/Cast:y:0(FrquncyOfPurchase/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????g
MinAgeOfChild/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
MinAgeOfChild/ExpandDims
ExpandDims
features_7%MinAgeOfChild/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????~
MinAgeOfChild/CastCast!MinAgeOfChild/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????Y
MinAgeOfChild/ShapeShapeMinAgeOfChild/Cast:y:0*
T0*
_output_shapes
:k
!MinAgeOfChild/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#MinAgeOfChild/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#MinAgeOfChild/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
MinAgeOfChild/strided_sliceStridedSliceMinAgeOfChild/Shape:output:0*MinAgeOfChild/strided_slice/stack:output:0,MinAgeOfChild/strided_slice/stack_1:output:0,MinAgeOfChild/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
MinAgeOfChild/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
MinAgeOfChild/Reshape/shapePack$MinAgeOfChild/strided_slice:output:0&MinAgeOfChild/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
MinAgeOfChild/ReshapeReshapeMinAgeOfChild/Cast:y:0$MinAgeOfChild/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????f
NoOfChildren/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
NoOfChildren/ExpandDims
ExpandDims
features_8$NoOfChildren/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????|
NoOfChildren/CastCast NoOfChildren/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????W
NoOfChildren/ShapeShapeNoOfChildren/Cast:y:0*
T0*
_output_shapes
:j
 NoOfChildren/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"NoOfChildren/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"NoOfChildren/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
NoOfChildren/strided_sliceStridedSliceNoOfChildren/Shape:output:0)NoOfChildren/strided_slice/stack:output:0+NoOfChildren/strided_slice/stack_1:output:0+NoOfChildren/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
NoOfChildren/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
NoOfChildren/Reshape/shapePack#NoOfChildren/strided_slice:output:0%NoOfChildren/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
NoOfChildren/ReshapeReshapeNoOfChildren/Cast:y:0#NoOfChildren/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????i
NoOfGamesBought/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
NoOfGamesBought/ExpandDims
ExpandDims
features_9'NoOfGamesBought/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
NoOfGamesBought/CastCast#NoOfGamesBought/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????]
NoOfGamesBought/ShapeShapeNoOfGamesBought/Cast:y:0*
T0*
_output_shapes
:m
#NoOfGamesBought/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%NoOfGamesBought/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%NoOfGamesBought/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
NoOfGamesBought/strided_sliceStridedSliceNoOfGamesBought/Shape:output:0,NoOfGamesBought/strided_slice/stack:output:0.NoOfGamesBought/strided_slice/stack_1:output:0.NoOfGamesBought/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
NoOfGamesBought/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
NoOfGamesBought/Reshape/shapePack&NoOfGamesBought/strided_slice:output:0(NoOfGamesBought/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
NoOfGamesBought/ReshapeReshapeNoOfGamesBought/Cast:y:0&NoOfGamesBought/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????i
NoOfGamesPlayed/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
NoOfGamesPlayed/ExpandDims
ExpandDimsfeatures_10'NoOfGamesPlayed/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
NoOfGamesPlayed/CastCast#NoOfGamesPlayed/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????]
NoOfGamesPlayed/ShapeShapeNoOfGamesPlayed/Cast:y:0*
T0*
_output_shapes
:m
#NoOfGamesPlayed/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%NoOfGamesPlayed/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%NoOfGamesPlayed/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
NoOfGamesPlayed/strided_sliceStridedSliceNoOfGamesPlayed/Shape:output:0,NoOfGamesPlayed/strided_slice/stack:output:0.NoOfGamesPlayed/strided_slice/stack_1:output:0.NoOfGamesPlayed/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
NoOfGamesPlayed/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
NoOfGamesPlayed/Reshape/shapePack&NoOfGamesPlayed/strided_slice:output:0(NoOfGamesPlayed/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
NoOfGamesPlayed/ReshapeReshapeNoOfGamesPlayed/Cast:y:0&NoOfGamesPlayed/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????l
!NoOfUnitsPurchased/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
NoOfUnitsPurchased/ExpandDims
ExpandDimsfeatures_11*NoOfUnitsPurchased/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
NoOfUnitsPurchased/CastCast&NoOfUnitsPurchased/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????c
NoOfUnitsPurchased/ShapeShapeNoOfUnitsPurchased/Cast:y:0*
T0*
_output_shapes
:p
&NoOfUnitsPurchased/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(NoOfUnitsPurchased/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(NoOfUnitsPurchased/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 NoOfUnitsPurchased/strided_sliceStridedSlice!NoOfUnitsPurchased/Shape:output:0/NoOfUnitsPurchased/strided_slice/stack:output:01NoOfUnitsPurchased/strided_slice/stack_1:output:01NoOfUnitsPurchased/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"NoOfUnitsPurchased/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
 NoOfUnitsPurchased/Reshape/shapePack)NoOfUnitsPurchased/strided_slice:output:0+NoOfUnitsPurchased/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
NoOfUnitsPurchased/ReshapeReshapeNoOfUnitsPurchased/Cast:y:0)NoOfUnitsPurchased/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
concatConcatV2City_indicator/Reshape:output:07FavoriteChannelOfTransaction_indicator/Reshape:output:0 FrequencyOFPlay/Reshape:output:0"FrquncyOfPurchase/Reshape:output:0MinAgeOfChild/Reshape:output:0NoOfChildren/Reshape:output:0 NoOfGamesBought/Reshape:output:0 NoOfGamesPlayed/Reshape:output:0#NoOfUnitsPurchased/Reshape:output:0concat/axis:output:0*
N	*
T0*'
_output_shapes
:?????????	^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:?????????	?
NoOpNoOp-^City_indicator/None_Lookup/LookupTableFindV2E^FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : 2\
,City_indicator/None_Lookup/LookupTableFindV2,City_indicator/None_Lookup/LookupTableFindV22?
DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2:M I
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
features:

_output_shapes
: :

_output_shapes
: 
ֵ
?
J__inference_dense_features_layer_call_and_return_conditional_losses_706381
features_city	
features_customerid	)
%features_favoritechanneloftransaction
features_favoritegame
features_frequencyofplay	
features_frquncyofpurchase	
features_maxageofchild	
features_minageofchild	
features_noofchildren	
features_noofgamesbought	
features_noofgamesplayed	
features_noofunitspurchased	
features_tenure	=
9city_indicator_none_lookup_lookuptablefindv2_table_handle>
:city_indicator_none_lookup_lookuptablefindv2_default_value	U
Qfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_table_handleV
Rfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_default_value	
identity??,City_indicator/None_Lookup/LookupTableFindV2?DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2h
City_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
City_indicator/ExpandDims
ExpandDimsfeatures_city&City_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????x
-City_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
+City_indicator/to_sparse_input/ignore_valueCast6City_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
'City_indicator/to_sparse_input/NotEqualNotEqual"City_indicator/ExpandDims:output:0/City_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
&City_indicator/to_sparse_input/indicesWhere+City_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
%City_indicator/to_sparse_input/valuesGatherNd"City_indicator/ExpandDims:output:0.City_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
*City_indicator/to_sparse_input/dense_shapeShape"City_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
,City_indicator/None_Lookup/LookupTableFindV2LookupTableFindV29city_indicator_none_lookup_lookuptablefindv2_table_handle.City_indicator/to_sparse_input/values:output:0:city_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:?????????u
*City_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
City_indicator/SparseToDenseSparseToDense.City_indicator/to_sparse_input/indices:index:03City_indicator/to_sparse_input/dense_shape:output:05City_indicator/None_Lookup/LookupTableFindV2:values:03City_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????a
City_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??c
City_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ^
City_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
City_indicator/one_hotOneHot$City_indicator/SparseToDense:dense:0%City_indicator/one_hot/depth:output:0%City_indicator/one_hot/Const:output:0'City_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????w
$City_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
City_indicator/SumSumCity_indicator/one_hot:output:0-City_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????_
City_indicator/ShapeShapeCity_indicator/Sum:output:0*
T0*
_output_shapes
:l
"City_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$City_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$City_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
City_indicator/strided_sliceStridedSliceCity_indicator/Shape:output:0+City_indicator/strided_slice/stack:output:0-City_indicator/strided_slice/stack_1:output:0-City_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
City_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
City_indicator/Reshape/shapePack%City_indicator/strided_slice:output:0'City_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
City_indicator/ReshapeReshapeCity_indicator/Sum:output:0%City_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
5FavoriteChannelOfTransaction_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
1FavoriteChannelOfTransaction_indicator/ExpandDims
ExpandDims%features_favoritechanneloftransaction>FavoriteChannelOfTransaction_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
EFavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
?FavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqualNotEqual:FavoriteChannelOfTransaction_indicator/ExpandDims:output:0NFavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
>FavoriteChannelOfTransaction_indicator/to_sparse_input/indicesWhereCFavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
=FavoriteChannelOfTransaction_indicator/to_sparse_input/valuesGatherNd:FavoriteChannelOfTransaction_indicator/ExpandDims:output:0FFavoriteChannelOfTransaction_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
BFavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shapeShape:FavoriteChannelOfTransaction_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Qfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_table_handleFFavoriteChannelOfTransaction_indicator/to_sparse_input/values:output:0Rfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
BFavoriteChannelOfTransaction_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
4FavoriteChannelOfTransaction_indicator/SparseToDenseSparseToDenseFFavoriteChannelOfTransaction_indicator/to_sparse_input/indices:index:0KFavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shape:output:0MFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2:values:0KFavoriteChannelOfTransaction_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????y
4FavoriteChannelOfTransaction_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??{
6FavoriteChannelOfTransaction_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    v
4FavoriteChannelOfTransaction_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
.FavoriteChannelOfTransaction_indicator/one_hotOneHot<FavoriteChannelOfTransaction_indicator/SparseToDense:dense:0=FavoriteChannelOfTransaction_indicator/one_hot/depth:output:0=FavoriteChannelOfTransaction_indicator/one_hot/Const:output:0?FavoriteChannelOfTransaction_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
<FavoriteChannelOfTransaction_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
*FavoriteChannelOfTransaction_indicator/SumSum7FavoriteChannelOfTransaction_indicator/one_hot:output:0EFavoriteChannelOfTransaction_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
,FavoriteChannelOfTransaction_indicator/ShapeShape3FavoriteChannelOfTransaction_indicator/Sum:output:0*
T0*
_output_shapes
:?
:FavoriteChannelOfTransaction_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
<FavoriteChannelOfTransaction_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
<FavoriteChannelOfTransaction_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
4FavoriteChannelOfTransaction_indicator/strided_sliceStridedSlice5FavoriteChannelOfTransaction_indicator/Shape:output:0CFavoriteChannelOfTransaction_indicator/strided_slice/stack:output:0EFavoriteChannelOfTransaction_indicator/strided_slice/stack_1:output:0EFavoriteChannelOfTransaction_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
6FavoriteChannelOfTransaction_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
4FavoriteChannelOfTransaction_indicator/Reshape/shapePack=FavoriteChannelOfTransaction_indicator/strided_slice:output:0?FavoriteChannelOfTransaction_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
.FavoriteChannelOfTransaction_indicator/ReshapeReshape3FavoriteChannelOfTransaction_indicator/Sum:output:0=FavoriteChannelOfTransaction_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????i
FrequencyOFPlay/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
FrequencyOFPlay/ExpandDims
ExpandDimsfeatures_frequencyofplay'FrequencyOFPlay/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
FrequencyOFPlay/CastCast#FrequencyOFPlay/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????]
FrequencyOFPlay/ShapeShapeFrequencyOFPlay/Cast:y:0*
T0*
_output_shapes
:m
#FrequencyOFPlay/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%FrequencyOFPlay/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%FrequencyOFPlay/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
FrequencyOFPlay/strided_sliceStridedSliceFrequencyOFPlay/Shape:output:0,FrequencyOFPlay/strided_slice/stack:output:0.FrequencyOFPlay/strided_slice/stack_1:output:0.FrequencyOFPlay/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
FrequencyOFPlay/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
FrequencyOFPlay/Reshape/shapePack&FrequencyOFPlay/strided_slice:output:0(FrequencyOFPlay/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
FrequencyOFPlay/ReshapeReshapeFrequencyOFPlay/Cast:y:0&FrequencyOFPlay/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????k
 FrquncyOfPurchase/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
FrquncyOfPurchase/ExpandDims
ExpandDimsfeatures_frquncyofpurchase)FrquncyOfPurchase/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
FrquncyOfPurchase/CastCast%FrquncyOfPurchase/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????a
FrquncyOfPurchase/ShapeShapeFrquncyOfPurchase/Cast:y:0*
T0*
_output_shapes
:o
%FrquncyOfPurchase/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'FrquncyOfPurchase/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'FrquncyOfPurchase/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
FrquncyOfPurchase/strided_sliceStridedSlice FrquncyOfPurchase/Shape:output:0.FrquncyOfPurchase/strided_slice/stack:output:00FrquncyOfPurchase/strided_slice/stack_1:output:00FrquncyOfPurchase/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
!FrquncyOfPurchase/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
FrquncyOfPurchase/Reshape/shapePack(FrquncyOfPurchase/strided_slice:output:0*FrquncyOfPurchase/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
FrquncyOfPurchase/ReshapeReshapeFrquncyOfPurchase/Cast:y:0(FrquncyOfPurchase/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????g
MinAgeOfChild/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
MinAgeOfChild/ExpandDims
ExpandDimsfeatures_minageofchild%MinAgeOfChild/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????~
MinAgeOfChild/CastCast!MinAgeOfChild/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????Y
MinAgeOfChild/ShapeShapeMinAgeOfChild/Cast:y:0*
T0*
_output_shapes
:k
!MinAgeOfChild/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#MinAgeOfChild/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#MinAgeOfChild/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
MinAgeOfChild/strided_sliceStridedSliceMinAgeOfChild/Shape:output:0*MinAgeOfChild/strided_slice/stack:output:0,MinAgeOfChild/strided_slice/stack_1:output:0,MinAgeOfChild/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
MinAgeOfChild/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
MinAgeOfChild/Reshape/shapePack$MinAgeOfChild/strided_slice:output:0&MinAgeOfChild/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
MinAgeOfChild/ReshapeReshapeMinAgeOfChild/Cast:y:0$MinAgeOfChild/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????f
NoOfChildren/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
NoOfChildren/ExpandDims
ExpandDimsfeatures_noofchildren$NoOfChildren/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????|
NoOfChildren/CastCast NoOfChildren/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????W
NoOfChildren/ShapeShapeNoOfChildren/Cast:y:0*
T0*
_output_shapes
:j
 NoOfChildren/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"NoOfChildren/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"NoOfChildren/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
NoOfChildren/strided_sliceStridedSliceNoOfChildren/Shape:output:0)NoOfChildren/strided_slice/stack:output:0+NoOfChildren/strided_slice/stack_1:output:0+NoOfChildren/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
NoOfChildren/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
NoOfChildren/Reshape/shapePack#NoOfChildren/strided_slice:output:0%NoOfChildren/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
NoOfChildren/ReshapeReshapeNoOfChildren/Cast:y:0#NoOfChildren/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????i
NoOfGamesBought/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
NoOfGamesBought/ExpandDims
ExpandDimsfeatures_noofgamesbought'NoOfGamesBought/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
NoOfGamesBought/CastCast#NoOfGamesBought/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????]
NoOfGamesBought/ShapeShapeNoOfGamesBought/Cast:y:0*
T0*
_output_shapes
:m
#NoOfGamesBought/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%NoOfGamesBought/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%NoOfGamesBought/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
NoOfGamesBought/strided_sliceStridedSliceNoOfGamesBought/Shape:output:0,NoOfGamesBought/strided_slice/stack:output:0.NoOfGamesBought/strided_slice/stack_1:output:0.NoOfGamesBought/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
NoOfGamesBought/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
NoOfGamesBought/Reshape/shapePack&NoOfGamesBought/strided_slice:output:0(NoOfGamesBought/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
NoOfGamesBought/ReshapeReshapeNoOfGamesBought/Cast:y:0&NoOfGamesBought/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????i
NoOfGamesPlayed/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
NoOfGamesPlayed/ExpandDims
ExpandDimsfeatures_noofgamesplayed'NoOfGamesPlayed/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
NoOfGamesPlayed/CastCast#NoOfGamesPlayed/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????]
NoOfGamesPlayed/ShapeShapeNoOfGamesPlayed/Cast:y:0*
T0*
_output_shapes
:m
#NoOfGamesPlayed/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%NoOfGamesPlayed/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%NoOfGamesPlayed/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
NoOfGamesPlayed/strided_sliceStridedSliceNoOfGamesPlayed/Shape:output:0,NoOfGamesPlayed/strided_slice/stack:output:0.NoOfGamesPlayed/strided_slice/stack_1:output:0.NoOfGamesPlayed/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
NoOfGamesPlayed/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
NoOfGamesPlayed/Reshape/shapePack&NoOfGamesPlayed/strided_slice:output:0(NoOfGamesPlayed/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
NoOfGamesPlayed/ReshapeReshapeNoOfGamesPlayed/Cast:y:0&NoOfGamesPlayed/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????l
!NoOfUnitsPurchased/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
NoOfUnitsPurchased/ExpandDims
ExpandDimsfeatures_noofunitspurchased*NoOfUnitsPurchased/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
NoOfUnitsPurchased/CastCast&NoOfUnitsPurchased/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????c
NoOfUnitsPurchased/ShapeShapeNoOfUnitsPurchased/Cast:y:0*
T0*
_output_shapes
:p
&NoOfUnitsPurchased/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(NoOfUnitsPurchased/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(NoOfUnitsPurchased/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 NoOfUnitsPurchased/strided_sliceStridedSlice!NoOfUnitsPurchased/Shape:output:0/NoOfUnitsPurchased/strided_slice/stack:output:01NoOfUnitsPurchased/strided_slice/stack_1:output:01NoOfUnitsPurchased/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"NoOfUnitsPurchased/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
 NoOfUnitsPurchased/Reshape/shapePack)NoOfUnitsPurchased/strided_slice:output:0+NoOfUnitsPurchased/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
NoOfUnitsPurchased/ReshapeReshapeNoOfUnitsPurchased/Cast:y:0)NoOfUnitsPurchased/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
concatConcatV2City_indicator/Reshape:output:07FavoriteChannelOfTransaction_indicator/Reshape:output:0 FrequencyOFPlay/Reshape:output:0"FrquncyOfPurchase/Reshape:output:0MinAgeOfChild/Reshape:output:0NoOfChildren/Reshape:output:0 NoOfGamesBought/Reshape:output:0 NoOfGamesPlayed/Reshape:output:0#NoOfUnitsPurchased/Reshape:output:0concat/axis:output:0*
N	*
T0*'
_output_shapes
:?????????	^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:?????????	?
NoOpNoOp-^City_indicator/None_Lookup/LookupTableFindV2E^FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : 2\
,City_indicator/None_Lookup/LookupTableFindV2,City_indicator/None_Lookup/LookupTableFindV22?
DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2:R N
#
_output_shapes
:?????????
'
_user_specified_namefeatures/City:XT
#
_output_shapes
:?????????
-
_user_specified_namefeatures/CustomerID:jf
#
_output_shapes
:?????????
?
_user_specified_name'%features/FavoriteChannelOfTransaction:ZV
#
_output_shapes
:?????????
/
_user_specified_namefeatures/FavoriteGame:]Y
#
_output_shapes
:?????????
2
_user_specified_namefeatures/FrequencyOFPlay:_[
#
_output_shapes
:?????????
4
_user_specified_namefeatures/FrquncyOfPurchase:[W
#
_output_shapes
:?????????
0
_user_specified_namefeatures/MaxAgeOfChild:[W
#
_output_shapes
:?????????
0
_user_specified_namefeatures/MinAgeOfChild:ZV
#
_output_shapes
:?????????
/
_user_specified_namefeatures/NoOfChildren:]	Y
#
_output_shapes
:?????????
2
_user_specified_namefeatures/NoOfGamesBought:]
Y
#
_output_shapes
:?????????
2
_user_specified_namefeatures/NoOfGamesPlayed:`\
#
_output_shapes
:?????????
5
_user_specified_namefeatures/NoOfUnitsPurchased:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/Tenure:

_output_shapes
: :

_output_shapes
: 
?
?
+__inference_sequential_layer_call_fn_705815
inputs_city	
inputs_customerid	'
#inputs_favoritechanneloftransaction
inputs_favoritegame
inputs_frequencyofplay	
inputs_frquncyofpurchase	
inputs_maxageofchild	
inputs_minageofchild	
inputs_noofchildren	
inputs_noofgamesbought	
inputs_noofgamesplayed	
inputs_noofunitspurchased	
inputs_tenure	
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_cityinputs_customerid#inputs_favoritechanneloftransactioninputs_favoritegameinputs_frequencyofplayinputs_frquncyofpurchaseinputs_maxageofchildinputs_minageofchildinputs_noofchildreninputs_noofgamesboughtinputs_noofgamesplayedinputs_noofunitspurchasedinputs_tenureunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2													*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_705379o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
#
_output_shapes
:?????????
%
_user_specified_nameinputs/City:VR
#
_output_shapes
:?????????
+
_user_specified_nameinputs/CustomerID:hd
#
_output_shapes
:?????????
=
_user_specified_name%#inputs/FavoriteChannelOfTransaction:XT
#
_output_shapes
:?????????
-
_user_specified_nameinputs/FavoriteGame:[W
#
_output_shapes
:?????????
0
_user_specified_nameinputs/FrequencyOFPlay:]Y
#
_output_shapes
:?????????
2
_user_specified_nameinputs/FrquncyOfPurchase:YU
#
_output_shapes
:?????????
.
_user_specified_nameinputs/MaxAgeOfChild:YU
#
_output_shapes
:?????????
.
_user_specified_nameinputs/MinAgeOfChild:XT
#
_output_shapes
:?????????
-
_user_specified_nameinputs/NoOfChildren:[	W
#
_output_shapes
:?????????
0
_user_specified_nameinputs/NoOfGamesBought:[
W
#
_output_shapes
:?????????
0
_user_specified_nameinputs/NoOfGamesPlayed:^Z
#
_output_shapes
:?????????
3
_user_specified_nameinputs/NoOfUnitsPurchased:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/Tenure:

_output_shapes
: :

_output_shapes
: 
?
?
F__inference_sequential_layer_call_and_return_conditional_losses_705750
city	

customerid	 
favoritechanneloftransaction
favoritegame
frequencyofplay	
frquncyofpurchase	
maxageofchild	
minageofchild	
noofchildren	
noofgamesbought	
noofgamesplayed	
noofunitspurchased	

tenure	
dense_features_705735
dense_features_705737	
dense_features_705739
dense_features_705741	
dense_705744:	
dense_705746:
identity??dense/StatefulPartitionedCall?&dense_features/StatefulPartitionedCall?
&dense_features/StatefulPartitionedCallStatefulPartitionedCallcity
customeridfavoritechanneloftransactionfavoritegamefrequencyofplayfrquncyofpurchasemaxageofchildminageofchildnoofchildrennoofgamesboughtnoofgamesplayednoofunitspurchasedtenuredense_features_705735dense_features_705737dense_features_705739dense_features_705741*
Tin
2													*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_705352?
dense/StatefulPartitionedCallStatefulPartitionedCall/dense_features/StatefulPartitionedCall:output:0dense_705744dense_705746*
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
GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_705372u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall:I E
#
_output_shapes
:?????????

_user_specified_nameCity:OK
#
_output_shapes
:?????????
$
_user_specified_name
CustomerID:a]
#
_output_shapes
:?????????
6
_user_specified_nameFavoriteChannelOfTransaction:QM
#
_output_shapes
:?????????
&
_user_specified_nameFavoriteGame:TP
#
_output_shapes
:?????????
)
_user_specified_nameFrequencyOFPlay:VR
#
_output_shapes
:?????????
+
_user_specified_nameFrquncyOfPurchase:RN
#
_output_shapes
:?????????
'
_user_specified_nameMaxAgeOfChild:RN
#
_output_shapes
:?????????
'
_user_specified_nameMinAgeOfChild:QM
#
_output_shapes
:?????????
&
_user_specified_nameNoOfChildren:T	P
#
_output_shapes
:?????????
)
_user_specified_nameNoOfGamesBought:T
P
#
_output_shapes
:?????????
)
_user_specified_nameNoOfGamesPlayed:WS
#
_output_shapes
:?????????
,
_user_specified_nameNoOfUnitsPurchased:KG
#
_output_shapes
:?????????
 
_user_specified_nameTenure:

_output_shapes
: :

_output_shapes
: 
??
?
F__inference_sequential_layer_call_and_return_conditional_losses_705998
inputs_city	
inputs_customerid	'
#inputs_favoritechanneloftransaction
inputs_favoritegame
inputs_frequencyofplay	
inputs_frquncyofpurchase	
inputs_maxageofchild	
inputs_minageofchild	
inputs_noofchildren	
inputs_noofgamesbought	
inputs_noofgamesplayed	
inputs_noofunitspurchased	
inputs_tenure	L
Hdense_features_city_indicator_none_lookup_lookuptablefindv2_table_handleM
Idense_features_city_indicator_none_lookup_lookuptablefindv2_default_value	d
`dense_features_favoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_table_handlee
adense_features_favoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_default_value	6
$dense_matmul_readvariableop_resource:	3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?;dense_features/City_indicator/None_Lookup/LookupTableFindV2?Sdense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2w
,dense_features/City_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
(dense_features/City_indicator/ExpandDims
ExpandDimsinputs_city5dense_features/City_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
<dense_features/City_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
:dense_features/City_indicator/to_sparse_input/ignore_valueCastEdense_features/City_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
6dense_features/City_indicator/to_sparse_input/NotEqualNotEqual1dense_features/City_indicator/ExpandDims:output:0>dense_features/City_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
5dense_features/City_indicator/to_sparse_input/indicesWhere:dense_features/City_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
4dense_features/City_indicator/to_sparse_input/valuesGatherNd1dense_features/City_indicator/ExpandDims:output:0=dense_features/City_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
9dense_features/City_indicator/to_sparse_input/dense_shapeShape1dense_features/City_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
;dense_features/City_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Hdense_features_city_indicator_none_lookup_lookuptablefindv2_table_handle=dense_features/City_indicator/to_sparse_input/values:output:0Idense_features_city_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
9dense_features/City_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
+dense_features/City_indicator/SparseToDenseSparseToDense=dense_features/City_indicator/to_sparse_input/indices:index:0Bdense_features/City_indicator/to_sparse_input/dense_shape:output:0Ddense_features/City_indicator/None_Lookup/LookupTableFindV2:values:0Bdense_features/City_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????p
+dense_features/City_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??r
-dense_features/City_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    m
+dense_features/City_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
%dense_features/City_indicator/one_hotOneHot3dense_features/City_indicator/SparseToDense:dense:04dense_features/City_indicator/one_hot/depth:output:04dense_features/City_indicator/one_hot/Const:output:06dense_features/City_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
3dense_features/City_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
!dense_features/City_indicator/SumSum.dense_features/City_indicator/one_hot:output:0<dense_features/City_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????}
#dense_features/City_indicator/ShapeShape*dense_features/City_indicator/Sum:output:0*
T0*
_output_shapes
:{
1dense_features/City_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3dense_features/City_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3dense_features/City_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+dense_features/City_indicator/strided_sliceStridedSlice,dense_features/City_indicator/Shape:output:0:dense_features/City_indicator/strided_slice/stack:output:0<dense_features/City_indicator/strided_slice/stack_1:output:0<dense_features/City_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
-dense_features/City_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
+dense_features/City_indicator/Reshape/shapePack4dense_features/City_indicator/strided_slice:output:06dense_features/City_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
%dense_features/City_indicator/ReshapeReshape*dense_features/City_indicator/Sum:output:04dense_features/City_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
Ddense_features/FavoriteChannelOfTransaction_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
@dense_features/FavoriteChannelOfTransaction_indicator/ExpandDims
ExpandDims#inputs_favoritechanneloftransactionMdense_features/FavoriteChannelOfTransaction_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
Tdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
Ndense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqualNotEqualIdense_features/FavoriteChannelOfTransaction_indicator/ExpandDims:output:0]dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
Mdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/indicesWhereRdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
Ldense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/valuesGatherNdIdense_features/FavoriteChannelOfTransaction_indicator/ExpandDims:output:0Udense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
Qdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shapeShapeIdense_features/FavoriteChannelOfTransaction_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Sdense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2`dense_features_favoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_table_handleUdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/values:output:0adense_features_favoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
Qdense_features/FavoriteChannelOfTransaction_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Cdense_features/FavoriteChannelOfTransaction_indicator/SparseToDenseSparseToDenseUdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/indices:index:0Zdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shape:output:0\dense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2:values:0Zdense_features/FavoriteChannelOfTransaction_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:??????????
Cdense_features/FavoriteChannelOfTransaction_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
Edense_features/FavoriteChannelOfTransaction_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ?
Cdense_features/FavoriteChannelOfTransaction_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
=dense_features/FavoriteChannelOfTransaction_indicator/one_hotOneHotKdense_features/FavoriteChannelOfTransaction_indicator/SparseToDense:dense:0Ldense_features/FavoriteChannelOfTransaction_indicator/one_hot/depth:output:0Ldense_features/FavoriteChannelOfTransaction_indicator/one_hot/Const:output:0Ndense_features/FavoriteChannelOfTransaction_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
Kdense_features/FavoriteChannelOfTransaction_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
9dense_features/FavoriteChannelOfTransaction_indicator/SumSumFdense_features/FavoriteChannelOfTransaction_indicator/one_hot:output:0Tdense_features/FavoriteChannelOfTransaction_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
;dense_features/FavoriteChannelOfTransaction_indicator/ShapeShapeBdense_features/FavoriteChannelOfTransaction_indicator/Sum:output:0*
T0*
_output_shapes
:?
Idense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Kdense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Kdense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Cdense_features/FavoriteChannelOfTransaction_indicator/strided_sliceStridedSliceDdense_features/FavoriteChannelOfTransaction_indicator/Shape:output:0Rdense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack:output:0Tdense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack_1:output:0Tdense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Edense_features/FavoriteChannelOfTransaction_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Cdense_features/FavoriteChannelOfTransaction_indicator/Reshape/shapePackLdense_features/FavoriteChannelOfTransaction_indicator/strided_slice:output:0Ndense_features/FavoriteChannelOfTransaction_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
=dense_features/FavoriteChannelOfTransaction_indicator/ReshapeReshapeBdense_features/FavoriteChannelOfTransaction_indicator/Sum:output:0Ldense_features/FavoriteChannelOfTransaction_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????x
-dense_features/FrequencyOFPlay/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
)dense_features/FrequencyOFPlay/ExpandDims
ExpandDimsinputs_frequencyofplay6dense_features/FrequencyOFPlay/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
#dense_features/FrequencyOFPlay/CastCast2dense_features/FrequencyOFPlay/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????{
$dense_features/FrequencyOFPlay/ShapeShape'dense_features/FrequencyOFPlay/Cast:y:0*
T0*
_output_shapes
:|
2dense_features/FrequencyOFPlay/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_features/FrequencyOFPlay/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_features/FrequencyOFPlay/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,dense_features/FrequencyOFPlay/strided_sliceStridedSlice-dense_features/FrequencyOFPlay/Shape:output:0;dense_features/FrequencyOFPlay/strided_slice/stack:output:0=dense_features/FrequencyOFPlay/strided_slice/stack_1:output:0=dense_features/FrequencyOFPlay/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.dense_features/FrequencyOFPlay/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
,dense_features/FrequencyOFPlay/Reshape/shapePack5dense_features/FrequencyOFPlay/strided_slice:output:07dense_features/FrequencyOFPlay/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
&dense_features/FrequencyOFPlay/ReshapeReshape'dense_features/FrequencyOFPlay/Cast:y:05dense_features/FrequencyOFPlay/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????z
/dense_features/FrquncyOfPurchase/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
+dense_features/FrquncyOfPurchase/ExpandDims
ExpandDimsinputs_frquncyofpurchase8dense_features/FrquncyOfPurchase/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
%dense_features/FrquncyOfPurchase/CastCast4dense_features/FrquncyOfPurchase/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????
&dense_features/FrquncyOfPurchase/ShapeShape)dense_features/FrquncyOfPurchase/Cast:y:0*
T0*
_output_shapes
:~
4dense_features/FrquncyOfPurchase/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6dense_features/FrquncyOfPurchase/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6dense_features/FrquncyOfPurchase/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.dense_features/FrquncyOfPurchase/strided_sliceStridedSlice/dense_features/FrquncyOfPurchase/Shape:output:0=dense_features/FrquncyOfPurchase/strided_slice/stack:output:0?dense_features/FrquncyOfPurchase/strided_slice/stack_1:output:0?dense_features/FrquncyOfPurchase/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
0dense_features/FrquncyOfPurchase/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
.dense_features/FrquncyOfPurchase/Reshape/shapePack7dense_features/FrquncyOfPurchase/strided_slice:output:09dense_features/FrquncyOfPurchase/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
(dense_features/FrquncyOfPurchase/ReshapeReshape)dense_features/FrquncyOfPurchase/Cast:y:07dense_features/FrquncyOfPurchase/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????v
+dense_features/MinAgeOfChild/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
'dense_features/MinAgeOfChild/ExpandDims
ExpandDimsinputs_minageofchild4dense_features/MinAgeOfChild/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
!dense_features/MinAgeOfChild/CastCast0dense_features/MinAgeOfChild/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????w
"dense_features/MinAgeOfChild/ShapeShape%dense_features/MinAgeOfChild/Cast:y:0*
T0*
_output_shapes
:z
0dense_features/MinAgeOfChild/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_features/MinAgeOfChild/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_features/MinAgeOfChild/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_features/MinAgeOfChild/strided_sliceStridedSlice+dense_features/MinAgeOfChild/Shape:output:09dense_features/MinAgeOfChild/strided_slice/stack:output:0;dense_features/MinAgeOfChild/strided_slice/stack_1:output:0;dense_features/MinAgeOfChild/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
,dense_features/MinAgeOfChild/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
*dense_features/MinAgeOfChild/Reshape/shapePack3dense_features/MinAgeOfChild/strided_slice:output:05dense_features/MinAgeOfChild/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
$dense_features/MinAgeOfChild/ReshapeReshape%dense_features/MinAgeOfChild/Cast:y:03dense_features/MinAgeOfChild/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????u
*dense_features/NoOfChildren/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
&dense_features/NoOfChildren/ExpandDims
ExpandDimsinputs_noofchildren3dense_features/NoOfChildren/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
 dense_features/NoOfChildren/CastCast/dense_features/NoOfChildren/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????u
!dense_features/NoOfChildren/ShapeShape$dense_features/NoOfChildren/Cast:y:0*
T0*
_output_shapes
:y
/dense_features/NoOfChildren/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_features/NoOfChildren/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_features/NoOfChildren/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)dense_features/NoOfChildren/strided_sliceStridedSlice*dense_features/NoOfChildren/Shape:output:08dense_features/NoOfChildren/strided_slice/stack:output:0:dense_features/NoOfChildren/strided_slice/stack_1:output:0:dense_features/NoOfChildren/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
+dense_features/NoOfChildren/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
)dense_features/NoOfChildren/Reshape/shapePack2dense_features/NoOfChildren/strided_slice:output:04dense_features/NoOfChildren/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
#dense_features/NoOfChildren/ReshapeReshape$dense_features/NoOfChildren/Cast:y:02dense_features/NoOfChildren/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????x
-dense_features/NoOfGamesBought/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
)dense_features/NoOfGamesBought/ExpandDims
ExpandDimsinputs_noofgamesbought6dense_features/NoOfGamesBought/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
#dense_features/NoOfGamesBought/CastCast2dense_features/NoOfGamesBought/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????{
$dense_features/NoOfGamesBought/ShapeShape'dense_features/NoOfGamesBought/Cast:y:0*
T0*
_output_shapes
:|
2dense_features/NoOfGamesBought/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_features/NoOfGamesBought/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_features/NoOfGamesBought/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,dense_features/NoOfGamesBought/strided_sliceStridedSlice-dense_features/NoOfGamesBought/Shape:output:0;dense_features/NoOfGamesBought/strided_slice/stack:output:0=dense_features/NoOfGamesBought/strided_slice/stack_1:output:0=dense_features/NoOfGamesBought/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.dense_features/NoOfGamesBought/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
,dense_features/NoOfGamesBought/Reshape/shapePack5dense_features/NoOfGamesBought/strided_slice:output:07dense_features/NoOfGamesBought/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
&dense_features/NoOfGamesBought/ReshapeReshape'dense_features/NoOfGamesBought/Cast:y:05dense_features/NoOfGamesBought/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????x
-dense_features/NoOfGamesPlayed/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
)dense_features/NoOfGamesPlayed/ExpandDims
ExpandDimsinputs_noofgamesplayed6dense_features/NoOfGamesPlayed/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
#dense_features/NoOfGamesPlayed/CastCast2dense_features/NoOfGamesPlayed/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????{
$dense_features/NoOfGamesPlayed/ShapeShape'dense_features/NoOfGamesPlayed/Cast:y:0*
T0*
_output_shapes
:|
2dense_features/NoOfGamesPlayed/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_features/NoOfGamesPlayed/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_features/NoOfGamesPlayed/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,dense_features/NoOfGamesPlayed/strided_sliceStridedSlice-dense_features/NoOfGamesPlayed/Shape:output:0;dense_features/NoOfGamesPlayed/strided_slice/stack:output:0=dense_features/NoOfGamesPlayed/strided_slice/stack_1:output:0=dense_features/NoOfGamesPlayed/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.dense_features/NoOfGamesPlayed/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
,dense_features/NoOfGamesPlayed/Reshape/shapePack5dense_features/NoOfGamesPlayed/strided_slice:output:07dense_features/NoOfGamesPlayed/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
&dense_features/NoOfGamesPlayed/ReshapeReshape'dense_features/NoOfGamesPlayed/Cast:y:05dense_features/NoOfGamesPlayed/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????{
0dense_features/NoOfUnitsPurchased/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
,dense_features/NoOfUnitsPurchased/ExpandDims
ExpandDimsinputs_noofunitspurchased9dense_features/NoOfUnitsPurchased/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
&dense_features/NoOfUnitsPurchased/CastCast5dense_features/NoOfUnitsPurchased/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:??????????
'dense_features/NoOfUnitsPurchased/ShapeShape*dense_features/NoOfUnitsPurchased/Cast:y:0*
T0*
_output_shapes
:
5dense_features/NoOfUnitsPurchased/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
7dense_features/NoOfUnitsPurchased/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
7dense_features/NoOfUnitsPurchased/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
/dense_features/NoOfUnitsPurchased/strided_sliceStridedSlice0dense_features/NoOfUnitsPurchased/Shape:output:0>dense_features/NoOfUnitsPurchased/strided_slice/stack:output:0@dense_features/NoOfUnitsPurchased/strided_slice/stack_1:output:0@dense_features/NoOfUnitsPurchased/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1dense_features/NoOfUnitsPurchased/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
/dense_features/NoOfUnitsPurchased/Reshape/shapePack8dense_features/NoOfUnitsPurchased/strided_slice:output:0:dense_features/NoOfUnitsPurchased/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
)dense_features/NoOfUnitsPurchased/ReshapeReshape*dense_features/NoOfUnitsPurchased/Cast:y:08dense_features/NoOfUnitsPurchased/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????e
dense_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dense_features/concatConcatV2.dense_features/City_indicator/Reshape:output:0Fdense_features/FavoriteChannelOfTransaction_indicator/Reshape:output:0/dense_features/FrequencyOFPlay/Reshape:output:01dense_features/FrquncyOfPurchase/Reshape:output:0-dense_features/MinAgeOfChild/Reshape:output:0,dense_features/NoOfChildren/Reshape:output:0/dense_features/NoOfGamesBought/Reshape:output:0/dense_features/NoOfGamesPlayed/Reshape:output:02dense_features/NoOfUnitsPurchased/Reshape:output:0#dense_features/concat/axis:output:0*
N	*
T0*'
_output_shapes
:?????????	?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0?
dense/MatMulMatMuldense_features/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????e
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp<^dense_features/City_indicator/None_Lookup/LookupTableFindV2T^dense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2z
;dense_features/City_indicator/None_Lookup/LookupTableFindV2;dense_features/City_indicator/None_Lookup/LookupTableFindV22?
Sdense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2Sdense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2:P L
#
_output_shapes
:?????????
%
_user_specified_nameinputs/City:VR
#
_output_shapes
:?????????
+
_user_specified_nameinputs/CustomerID:hd
#
_output_shapes
:?????????
=
_user_specified_name%#inputs/FavoriteChannelOfTransaction:XT
#
_output_shapes
:?????????
-
_user_specified_nameinputs/FavoriteGame:[W
#
_output_shapes
:?????????
0
_user_specified_nameinputs/FrequencyOFPlay:]Y
#
_output_shapes
:?????????
2
_user_specified_nameinputs/FrquncyOfPurchase:YU
#
_output_shapes
:?????????
.
_user_specified_nameinputs/MaxAgeOfChild:YU
#
_output_shapes
:?????????
.
_user_specified_nameinputs/MinAgeOfChild:XT
#
_output_shapes
:?????????
-
_user_specified_nameinputs/NoOfChildren:[	W
#
_output_shapes
:?????????
0
_user_specified_nameinputs/NoOfGamesBought:[
W
#
_output_shapes
:?????????
0
_user_specified_nameinputs/NoOfGamesPlayed:^Z
#
_output_shapes
:?????????
3
_user_specified_nameinputs/NoOfUnitsPurchased:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/Tenure:

_output_shapes
: :

_output_shapes
: 
?
?
F__inference_sequential_layer_call_and_return_conditional_losses_705379

inputs	
inputs_1	
inputs_2
inputs_3
inputs_4	
inputs_5	
inputs_6	
inputs_7	
inputs_8	
inputs_9	
	inputs_10	
	inputs_11	
	inputs_12	
dense_features_705353
dense_features_705355	
dense_features_705357
dense_features_705359	
dense_705373:	
dense_705375:
identity??dense/StatefulPartitionedCall?&dense_features/StatefulPartitionedCall?
&dense_features/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12dense_features_705353dense_features_705355dense_features_705357dense_features_705359*
Tin
2													*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_705352?
dense/StatefulPartitionedCallStatefulPartitionedCall/dense_features/StatefulPartitionedCall:output:0dense_705373dense_705375*
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
GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_705372u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2P
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
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
?
?
+__inference_sequential_layer_call_fn_705720
city	

customerid	 
favoritechanneloftransaction
favoritegame
frequencyofplay	
frquncyofpurchase	
maxageofchild	
minageofchild	
noofchildren	
noofgamesbought	
noofgamesplayed	
noofunitspurchased	

tenure	
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallcity
customeridfavoritechanneloftransactionfavoritegamefrequencyofplayfrquncyofpurchasemaxageofchildminageofchildnoofchildrennoofgamesboughtnoofgamesplayednoofunitspurchasedtenureunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2													*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_705676o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:I E
#
_output_shapes
:?????????

_user_specified_nameCity:OK
#
_output_shapes
:?????????
$
_user_specified_name
CustomerID:a]
#
_output_shapes
:?????????
6
_user_specified_nameFavoriteChannelOfTransaction:QM
#
_output_shapes
:?????????
&
_user_specified_nameFavoriteGame:TP
#
_output_shapes
:?????????
)
_user_specified_nameFrequencyOFPlay:VR
#
_output_shapes
:?????????
+
_user_specified_nameFrquncyOfPurchase:RN
#
_output_shapes
:?????????
'
_user_specified_nameMaxAgeOfChild:RN
#
_output_shapes
:?????????
'
_user_specified_nameMinAgeOfChild:QM
#
_output_shapes
:?????????
&
_user_specified_nameNoOfChildren:T	P
#
_output_shapes
:?????????
)
_user_specified_nameNoOfGamesBought:T
P
#
_output_shapes
:?????????
)
_user_specified_nameNoOfGamesPlayed:WS
#
_output_shapes
:?????????
,
_user_specified_nameNoOfUnitsPurchased:KG
#
_output_shapes
:?????????
 
_user_specified_nameTenure:

_output_shapes
: :

_output_shapes
: 
?
?
F__inference_sequential_layer_call_and_return_conditional_losses_705676

inputs	
inputs_1	
inputs_2
inputs_3
inputs_4	
inputs_5	
inputs_6	
inputs_7	
inputs_8	
inputs_9	
	inputs_10	
	inputs_11	
	inputs_12	
dense_features_705661
dense_features_705663	
dense_features_705665
dense_features_705667	
dense_705670:	
dense_705672:
identity??dense/StatefulPartitionedCall?&dense_features/StatefulPartitionedCall?
&dense_features/StatefulPartitionedCallStatefulPartitionedCallinputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7inputs_8inputs_9	inputs_10	inputs_11	inputs_12dense_features_705661dense_features_705663dense_features_705665dense_features_705667*
Tin
2													*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_705592?
dense/StatefulPartitionedCallStatefulPartitionedCall/dense_features/StatefulPartitionedCall:output:0dense_705670dense_705672*
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
GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_705372u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2P
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
 
_user_specified_nameinputs:

_output_shapes
: :

_output_shapes
: 
??
?
F__inference_sequential_layer_call_and_return_conditional_losses_706152
inputs_city	
inputs_customerid	'
#inputs_favoritechanneloftransaction
inputs_favoritegame
inputs_frequencyofplay	
inputs_frquncyofpurchase	
inputs_maxageofchild	
inputs_minageofchild	
inputs_noofchildren	
inputs_noofgamesbought	
inputs_noofgamesplayed	
inputs_noofunitspurchased	
inputs_tenure	L
Hdense_features_city_indicator_none_lookup_lookuptablefindv2_table_handleM
Idense_features_city_indicator_none_lookup_lookuptablefindv2_default_value	d
`dense_features_favoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_table_handlee
adense_features_favoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_default_value	6
$dense_matmul_readvariableop_resource:	3
%dense_biasadd_readvariableop_resource:
identity??dense/BiasAdd/ReadVariableOp?dense/MatMul/ReadVariableOp?;dense_features/City_indicator/None_Lookup/LookupTableFindV2?Sdense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2w
,dense_features/City_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
(dense_features/City_indicator/ExpandDims
ExpandDimsinputs_city5dense_features/City_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
<dense_features/City_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
:dense_features/City_indicator/to_sparse_input/ignore_valueCastEdense_features/City_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
6dense_features/City_indicator/to_sparse_input/NotEqualNotEqual1dense_features/City_indicator/ExpandDims:output:0>dense_features/City_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
5dense_features/City_indicator/to_sparse_input/indicesWhere:dense_features/City_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
4dense_features/City_indicator/to_sparse_input/valuesGatherNd1dense_features/City_indicator/ExpandDims:output:0=dense_features/City_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
9dense_features/City_indicator/to_sparse_input/dense_shapeShape1dense_features/City_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
;dense_features/City_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Hdense_features_city_indicator_none_lookup_lookuptablefindv2_table_handle=dense_features/City_indicator/to_sparse_input/values:output:0Idense_features_city_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
9dense_features/City_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
+dense_features/City_indicator/SparseToDenseSparseToDense=dense_features/City_indicator/to_sparse_input/indices:index:0Bdense_features/City_indicator/to_sparse_input/dense_shape:output:0Ddense_features/City_indicator/None_Lookup/LookupTableFindV2:values:0Bdense_features/City_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????p
+dense_features/City_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??r
-dense_features/City_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    m
+dense_features/City_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
%dense_features/City_indicator/one_hotOneHot3dense_features/City_indicator/SparseToDense:dense:04dense_features/City_indicator/one_hot/depth:output:04dense_features/City_indicator/one_hot/Const:output:06dense_features/City_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
3dense_features/City_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
!dense_features/City_indicator/SumSum.dense_features/City_indicator/one_hot:output:0<dense_features/City_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????}
#dense_features/City_indicator/ShapeShape*dense_features/City_indicator/Sum:output:0*
T0*
_output_shapes
:{
1dense_features/City_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3dense_features/City_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3dense_features/City_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
+dense_features/City_indicator/strided_sliceStridedSlice,dense_features/City_indicator/Shape:output:0:dense_features/City_indicator/strided_slice/stack:output:0<dense_features/City_indicator/strided_slice/stack_1:output:0<dense_features/City_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
-dense_features/City_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
+dense_features/City_indicator/Reshape/shapePack4dense_features/City_indicator/strided_slice:output:06dense_features/City_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
%dense_features/City_indicator/ReshapeReshape*dense_features/City_indicator/Sum:output:04dense_features/City_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
Ddense_features/FavoriteChannelOfTransaction_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
@dense_features/FavoriteChannelOfTransaction_indicator/ExpandDims
ExpandDims#inputs_favoritechanneloftransactionMdense_features/FavoriteChannelOfTransaction_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
Tdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
Ndense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqualNotEqualIdense_features/FavoriteChannelOfTransaction_indicator/ExpandDims:output:0]dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
Mdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/indicesWhereRdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
Ldense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/valuesGatherNdIdense_features/FavoriteChannelOfTransaction_indicator/ExpandDims:output:0Udense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
Qdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shapeShapeIdense_features/FavoriteChannelOfTransaction_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
Sdense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2`dense_features_favoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_table_handleUdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/values:output:0adense_features_favoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
Qdense_features/FavoriteChannelOfTransaction_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Cdense_features/FavoriteChannelOfTransaction_indicator/SparseToDenseSparseToDenseUdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/indices:index:0Zdense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shape:output:0\dense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2:values:0Zdense_features/FavoriteChannelOfTransaction_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:??????????
Cdense_features/FavoriteChannelOfTransaction_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
Edense_features/FavoriteChannelOfTransaction_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ?
Cdense_features/FavoriteChannelOfTransaction_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
=dense_features/FavoriteChannelOfTransaction_indicator/one_hotOneHotKdense_features/FavoriteChannelOfTransaction_indicator/SparseToDense:dense:0Ldense_features/FavoriteChannelOfTransaction_indicator/one_hot/depth:output:0Ldense_features/FavoriteChannelOfTransaction_indicator/one_hot/Const:output:0Ndense_features/FavoriteChannelOfTransaction_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
Kdense_features/FavoriteChannelOfTransaction_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
9dense_features/FavoriteChannelOfTransaction_indicator/SumSumFdense_features/FavoriteChannelOfTransaction_indicator/one_hot:output:0Tdense_features/FavoriteChannelOfTransaction_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
;dense_features/FavoriteChannelOfTransaction_indicator/ShapeShapeBdense_features/FavoriteChannelOfTransaction_indicator/Sum:output:0*
T0*
_output_shapes
:?
Idense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Kdense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Kdense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Cdense_features/FavoriteChannelOfTransaction_indicator/strided_sliceStridedSliceDdense_features/FavoriteChannelOfTransaction_indicator/Shape:output:0Rdense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack:output:0Tdense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack_1:output:0Tdense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Edense_features/FavoriteChannelOfTransaction_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Cdense_features/FavoriteChannelOfTransaction_indicator/Reshape/shapePackLdense_features/FavoriteChannelOfTransaction_indicator/strided_slice:output:0Ndense_features/FavoriteChannelOfTransaction_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
=dense_features/FavoriteChannelOfTransaction_indicator/ReshapeReshapeBdense_features/FavoriteChannelOfTransaction_indicator/Sum:output:0Ldense_features/FavoriteChannelOfTransaction_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????x
-dense_features/FrequencyOFPlay/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
)dense_features/FrequencyOFPlay/ExpandDims
ExpandDimsinputs_frequencyofplay6dense_features/FrequencyOFPlay/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
#dense_features/FrequencyOFPlay/CastCast2dense_features/FrequencyOFPlay/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????{
$dense_features/FrequencyOFPlay/ShapeShape'dense_features/FrequencyOFPlay/Cast:y:0*
T0*
_output_shapes
:|
2dense_features/FrequencyOFPlay/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_features/FrequencyOFPlay/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_features/FrequencyOFPlay/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,dense_features/FrequencyOFPlay/strided_sliceStridedSlice-dense_features/FrequencyOFPlay/Shape:output:0;dense_features/FrequencyOFPlay/strided_slice/stack:output:0=dense_features/FrequencyOFPlay/strided_slice/stack_1:output:0=dense_features/FrequencyOFPlay/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.dense_features/FrequencyOFPlay/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
,dense_features/FrequencyOFPlay/Reshape/shapePack5dense_features/FrequencyOFPlay/strided_slice:output:07dense_features/FrequencyOFPlay/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
&dense_features/FrequencyOFPlay/ReshapeReshape'dense_features/FrequencyOFPlay/Cast:y:05dense_features/FrequencyOFPlay/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????z
/dense_features/FrquncyOfPurchase/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
+dense_features/FrquncyOfPurchase/ExpandDims
ExpandDimsinputs_frquncyofpurchase8dense_features/FrquncyOfPurchase/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
%dense_features/FrquncyOfPurchase/CastCast4dense_features/FrquncyOfPurchase/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????
&dense_features/FrquncyOfPurchase/ShapeShape)dense_features/FrquncyOfPurchase/Cast:y:0*
T0*
_output_shapes
:~
4dense_features/FrquncyOfPurchase/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
6dense_features/FrquncyOfPurchase/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
6dense_features/FrquncyOfPurchase/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
.dense_features/FrquncyOfPurchase/strided_sliceStridedSlice/dense_features/FrquncyOfPurchase/Shape:output:0=dense_features/FrquncyOfPurchase/strided_slice/stack:output:0?dense_features/FrquncyOfPurchase/strided_slice/stack_1:output:0?dense_features/FrquncyOfPurchase/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
0dense_features/FrquncyOfPurchase/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
.dense_features/FrquncyOfPurchase/Reshape/shapePack7dense_features/FrquncyOfPurchase/strided_slice:output:09dense_features/FrquncyOfPurchase/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
(dense_features/FrquncyOfPurchase/ReshapeReshape)dense_features/FrquncyOfPurchase/Cast:y:07dense_features/FrquncyOfPurchase/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????v
+dense_features/MinAgeOfChild/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
'dense_features/MinAgeOfChild/ExpandDims
ExpandDimsinputs_minageofchild4dense_features/MinAgeOfChild/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
!dense_features/MinAgeOfChild/CastCast0dense_features/MinAgeOfChild/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????w
"dense_features/MinAgeOfChild/ShapeShape%dense_features/MinAgeOfChild/Cast:y:0*
T0*
_output_shapes
:z
0dense_features/MinAgeOfChild/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: |
2dense_features/MinAgeOfChild/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2dense_features/MinAgeOfChild/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
*dense_features/MinAgeOfChild/strided_sliceStridedSlice+dense_features/MinAgeOfChild/Shape:output:09dense_features/MinAgeOfChild/strided_slice/stack:output:0;dense_features/MinAgeOfChild/strided_slice/stack_1:output:0;dense_features/MinAgeOfChild/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
,dense_features/MinAgeOfChild/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
*dense_features/MinAgeOfChild/Reshape/shapePack3dense_features/MinAgeOfChild/strided_slice:output:05dense_features/MinAgeOfChild/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
$dense_features/MinAgeOfChild/ReshapeReshape%dense_features/MinAgeOfChild/Cast:y:03dense_features/MinAgeOfChild/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????u
*dense_features/NoOfChildren/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
&dense_features/NoOfChildren/ExpandDims
ExpandDimsinputs_noofchildren3dense_features/NoOfChildren/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
 dense_features/NoOfChildren/CastCast/dense_features/NoOfChildren/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????u
!dense_features/NoOfChildren/ShapeShape$dense_features/NoOfChildren/Cast:y:0*
T0*
_output_shapes
:y
/dense_features/NoOfChildren/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: {
1dense_features/NoOfChildren/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:{
1dense_features/NoOfChildren/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
)dense_features/NoOfChildren/strided_sliceStridedSlice*dense_features/NoOfChildren/Shape:output:08dense_features/NoOfChildren/strided_slice/stack:output:0:dense_features/NoOfChildren/strided_slice/stack_1:output:0:dense_features/NoOfChildren/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
+dense_features/NoOfChildren/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
)dense_features/NoOfChildren/Reshape/shapePack2dense_features/NoOfChildren/strided_slice:output:04dense_features/NoOfChildren/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
#dense_features/NoOfChildren/ReshapeReshape$dense_features/NoOfChildren/Cast:y:02dense_features/NoOfChildren/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????x
-dense_features/NoOfGamesBought/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
)dense_features/NoOfGamesBought/ExpandDims
ExpandDimsinputs_noofgamesbought6dense_features/NoOfGamesBought/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
#dense_features/NoOfGamesBought/CastCast2dense_features/NoOfGamesBought/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????{
$dense_features/NoOfGamesBought/ShapeShape'dense_features/NoOfGamesBought/Cast:y:0*
T0*
_output_shapes
:|
2dense_features/NoOfGamesBought/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_features/NoOfGamesBought/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_features/NoOfGamesBought/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,dense_features/NoOfGamesBought/strided_sliceStridedSlice-dense_features/NoOfGamesBought/Shape:output:0;dense_features/NoOfGamesBought/strided_slice/stack:output:0=dense_features/NoOfGamesBought/strided_slice/stack_1:output:0=dense_features/NoOfGamesBought/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.dense_features/NoOfGamesBought/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
,dense_features/NoOfGamesBought/Reshape/shapePack5dense_features/NoOfGamesBought/strided_slice:output:07dense_features/NoOfGamesBought/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
&dense_features/NoOfGamesBought/ReshapeReshape'dense_features/NoOfGamesBought/Cast:y:05dense_features/NoOfGamesBought/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????x
-dense_features/NoOfGamesPlayed/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
)dense_features/NoOfGamesPlayed/ExpandDims
ExpandDimsinputs_noofgamesplayed6dense_features/NoOfGamesPlayed/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
#dense_features/NoOfGamesPlayed/CastCast2dense_features/NoOfGamesPlayed/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????{
$dense_features/NoOfGamesPlayed/ShapeShape'dense_features/NoOfGamesPlayed/Cast:y:0*
T0*
_output_shapes
:|
2dense_features/NoOfGamesPlayed/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4dense_features/NoOfGamesPlayed/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4dense_features/NoOfGamesPlayed/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,dense_features/NoOfGamesPlayed/strided_sliceStridedSlice-dense_features/NoOfGamesPlayed/Shape:output:0;dense_features/NoOfGamesPlayed/strided_slice/stack:output:0=dense_features/NoOfGamesPlayed/strided_slice/stack_1:output:0=dense_features/NoOfGamesPlayed/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.dense_features/NoOfGamesPlayed/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
,dense_features/NoOfGamesPlayed/Reshape/shapePack5dense_features/NoOfGamesPlayed/strided_slice:output:07dense_features/NoOfGamesPlayed/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
&dense_features/NoOfGamesPlayed/ReshapeReshape'dense_features/NoOfGamesPlayed/Cast:y:05dense_features/NoOfGamesPlayed/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????{
0dense_features/NoOfUnitsPurchased/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
,dense_features/NoOfUnitsPurchased/ExpandDims
ExpandDimsinputs_noofunitspurchased9dense_features/NoOfUnitsPurchased/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
&dense_features/NoOfUnitsPurchased/CastCast5dense_features/NoOfUnitsPurchased/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:??????????
'dense_features/NoOfUnitsPurchased/ShapeShape*dense_features/NoOfUnitsPurchased/Cast:y:0*
T0*
_output_shapes
:
5dense_features/NoOfUnitsPurchased/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
7dense_features/NoOfUnitsPurchased/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
7dense_features/NoOfUnitsPurchased/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
/dense_features/NoOfUnitsPurchased/strided_sliceStridedSlice0dense_features/NoOfUnitsPurchased/Shape:output:0>dense_features/NoOfUnitsPurchased/strided_slice/stack:output:0@dense_features/NoOfUnitsPurchased/strided_slice/stack_1:output:0@dense_features/NoOfUnitsPurchased/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
1dense_features/NoOfUnitsPurchased/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
/dense_features/NoOfUnitsPurchased/Reshape/shapePack8dense_features/NoOfUnitsPurchased/strided_slice:output:0:dense_features/NoOfUnitsPurchased/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
)dense_features/NoOfUnitsPurchased/ReshapeReshape*dense_features/NoOfUnitsPurchased/Cast:y:08dense_features/NoOfUnitsPurchased/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????e
dense_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
dense_features/concatConcatV2.dense_features/City_indicator/Reshape:output:0Fdense_features/FavoriteChannelOfTransaction_indicator/Reshape:output:0/dense_features/FrequencyOFPlay/Reshape:output:01dense_features/FrquncyOfPurchase/Reshape:output:0-dense_features/MinAgeOfChild/Reshape:output:0,dense_features/NoOfChildren/Reshape:output:0/dense_features/NoOfGamesBought/Reshape:output:0/dense_features/NoOfGamesPlayed/Reshape:output:02dense_features/NoOfUnitsPurchased/Reshape:output:0#dense_features/concat/axis:output:0*
N	*
T0*'
_output_shapes
:?????????	?
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0?
dense/MatMulMatMuldense_features/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????~
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????e
IdentityIdentitydense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp<^dense_features/City_indicator/None_Lookup/LookupTableFindV2T^dense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2z
;dense_features/City_indicator/None_Lookup/LookupTableFindV2;dense_features/City_indicator/None_Lookup/LookupTableFindV22?
Sdense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2Sdense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2:P L
#
_output_shapes
:?????????
%
_user_specified_nameinputs/City:VR
#
_output_shapes
:?????????
+
_user_specified_nameinputs/CustomerID:hd
#
_output_shapes
:?????????
=
_user_specified_name%#inputs/FavoriteChannelOfTransaction:XT
#
_output_shapes
:?????????
-
_user_specified_nameinputs/FavoriteGame:[W
#
_output_shapes
:?????????
0
_user_specified_nameinputs/FrequencyOFPlay:]Y
#
_output_shapes
:?????????
2
_user_specified_nameinputs/FrquncyOfPurchase:YU
#
_output_shapes
:?????????
.
_user_specified_nameinputs/MaxAgeOfChild:YU
#
_output_shapes
:?????????
.
_user_specified_nameinputs/MinAgeOfChild:XT
#
_output_shapes
:?????????
-
_user_specified_nameinputs/NoOfChildren:[	W
#
_output_shapes
:?????????
0
_user_specified_nameinputs/NoOfGamesBought:[
W
#
_output_shapes
:?????????
0
_user_specified_nameinputs/NoOfGamesPlayed:^Z
#
_output_shapes
:?????????
3
_user_specified_nameinputs/NoOfUnitsPurchased:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/Tenure:

_output_shapes
: :

_output_shapes
: 
?
?
__inference__initializer_7065792
.table_init192_lookuptableimportv2_table_handle*
&table_init192_lookuptableimportv2_keys,
(table_init192_lookuptableimportv2_values	
identity??!table_init192/LookupTableImportV2?
!table_init192/LookupTableImportV2LookupTableImportV2.table_init192_lookuptableimportv2_table_handle&table_init192_lookuptableimportv2_keys(table_init192_lookuptableimportv2_values*	
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
NoOpNoOp"^table_init192/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init192/LookupTableImportV2!table_init192/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
__inference__initializer_7065612
.table_init156_lookuptableimportv2_table_handle*
&table_init156_lookuptableimportv2_keys	,
(table_init156_lookuptableimportv2_values	
identity??!table_init156/LookupTableImportV2?
!table_init156/LookupTableImportV2LookupTableImportV2.table_init156_lookuptableimportv2_table_handle&table_init156_lookuptableimportv2_keys(table_init156_lookuptableimportv2_values*	
Tin0	*

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
NoOpNoOp"^table_init156/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init156/LookupTableImportV2!table_init156/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
-
__inference__destroyer_706584
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
?7
?
"__inference__traced_restore_706733
file_prefix:
(assignvariableop_sequential_dense_kernel:	6
(assignvariableop_1_sequential_dense_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: "
assignvariableop_7_total: "
assignvariableop_8_count: C
1assignvariableop_9_adam_sequential_dense_kernel_m:	>
0assignvariableop_10_adam_sequential_dense_bias_m:D
2assignvariableop_11_adam_sequential_dense_kernel_v:	>
0assignvariableop_12_adam_sequential_dense_bias_v:
identity_14??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_2?AssignVariableOp_3?AssignVariableOp_4?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*/
value&B$B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*L
_output_shapes:
8::::::::::::::*
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOp(assignvariableop_sequential_dense_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOp(assignvariableop_1_sequential_dense_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpassignvariableop_7_totalIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpassignvariableop_8_countIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOp1assignvariableop_9_adam_sequential_dense_kernel_mIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOp0assignvariableop_10_adam_sequential_dense_bias_mIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOp2assignvariableop_11_adam_sequential_dense_kernel_vIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOp0assignvariableop_12_adam_sequential_dense_bias_vIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_13Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_14IdentityIdentity_13:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_14Identity_14:output:0*/
_input_shapes
: : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
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
__inference_<lambda>_7066002
.table_init192_lookuptableimportv2_table_handle*
&table_init192_lookuptableimportv2_keys,
(table_init192_lookuptableimportv2_values	
identity??!table_init192/LookupTableImportV2?
!table_init192/LookupTableImportV2LookupTableImportV2.table_init192_lookuptableimportv2_table_handle&table_init192_lookuptableimportv2_keys(table_init192_lookuptableimportv2_values*	
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
NoOpNoOp"^table_init192/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init192/LookupTableImportV2!table_init192/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?
?
+__inference_sequential_layer_call_fn_705844
inputs_city	
inputs_customerid	'
#inputs_favoritechanneloftransaction
inputs_favoritegame
inputs_frequencyofplay	
inputs_frquncyofpurchase	
inputs_maxageofchild	
inputs_minageofchild	
inputs_noofchildren	
inputs_noofgamesbought	
inputs_noofgamesplayed	
inputs_noofunitspurchased	
inputs_tenure	
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs_cityinputs_customerid#inputs_favoritechanneloftransactioninputs_favoritegameinputs_frequencyofplayinputs_frquncyofpurchaseinputs_maxageofchildinputs_minageofchildinputs_noofchildreninputs_noofgamesboughtinputs_noofgamesplayedinputs_noofunitspurchasedinputs_tenureunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2													*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_705676o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
#
_output_shapes
:?????????
%
_user_specified_nameinputs/City:VR
#
_output_shapes
:?????????
+
_user_specified_nameinputs/CustomerID:hd
#
_output_shapes
:?????????
=
_user_specified_name%#inputs/FavoriteChannelOfTransaction:XT
#
_output_shapes
:?????????
-
_user_specified_nameinputs/FavoriteGame:[W
#
_output_shapes
:?????????
0
_user_specified_nameinputs/FrequencyOFPlay:]Y
#
_output_shapes
:?????????
2
_user_specified_nameinputs/FrquncyOfPurchase:YU
#
_output_shapes
:?????????
.
_user_specified_nameinputs/MaxAgeOfChild:YU
#
_output_shapes
:?????????
.
_user_specified_nameinputs/MinAgeOfChild:XT
#
_output_shapes
:?????????
-
_user_specified_nameinputs/NoOfChildren:[	W
#
_output_shapes
:?????????
0
_user_specified_nameinputs/NoOfGamesBought:[
W
#
_output_shapes
:?????????
0
_user_specified_nameinputs/NoOfGamesPlayed:^Z
#
_output_shapes
:?????????
3
_user_specified_nameinputs/NoOfUnitsPurchased:RN
#
_output_shapes
:?????????
'
_user_specified_nameinputs/Tenure:

_output_shapes
: :

_output_shapes
: 
?
?
__inference_<lambda>_7065922
.table_init156_lookuptableimportv2_table_handle*
&table_init156_lookuptableimportv2_keys	,
(table_init156_lookuptableimportv2_values	
identity??!table_init156/LookupTableImportV2?
!table_init156/LookupTableImportV2LookupTableImportV2.table_init156_lookuptableimportv2_table_handle&table_init156_lookuptableimportv2_keys(table_init156_lookuptableimportv2_values*	
Tin0	*

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
NoOpNoOp"^table_init156/LookupTableImportV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: ::2F
!table_init156/LookupTableImportV2!table_init156/LookupTableImportV2: 

_output_shapes
:: 

_output_shapes
:
?	
?
A__inference_dense_layer_call_and_return_conditional_losses_705372

inputs0
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
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
:?????????	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?%
?
__inference__traced_save_706684
file_prefix6
2savev2_sequential_dense_kernel_read_readvariableop4
0savev2_sequential_dense_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop=
9savev2_adam_sequential_dense_kernel_m_read_readvariableop;
7savev2_adam_sequential_dense_bias_m_read_readvariableop=
9savev2_adam_sequential_dense_kernel_v_read_readvariableop;
7savev2_adam_sequential_dense_bias_v_read_readvariableop
savev2_const_6

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
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*?
value?B?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*/
value&B$B B B B B B B B B B B B B B ?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:02savev2_sequential_dense_kernel_read_readvariableop0savev2_sequential_dense_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop9savev2_adam_sequential_dense_kernel_m_read_readvariableop7savev2_adam_sequential_dense_bias_m_read_readvariableop9savev2_adam_sequential_dense_kernel_v_read_readvariableop7savev2_adam_sequential_dense_bias_v_read_readvariableopsavev2_const_6"/device:CPU:0*
_output_shapes
 *
dtypes
2	?
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

identity_1Identity_1:output:0*U
_input_shapesD
B: :	:: : : : : : : :	::	:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:	: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :$
 

_output_shapes

:	: 

_output_shapes
::$ 

_output_shapes

:	: 

_output_shapes
::

_output_shapes
: 
?
;
__inference__creator_706553
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0	*
shared_name157*
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
?
?
$__inference_signature_wrapper_706183
city	

customerid	 
favoritechanneloftransaction
favoritegame
frequencyofplay	
frquncyofpurchase	
maxageofchild	
minageofchild	
noofchildren	
noofgamesbought	
noofgamesplayed	
noofunitspurchased	

tenure	
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallcity
customeridfavoritechanneloftransactionfavoritegamefrequencyofplayfrquncyofpurchasemaxageofchildminageofchildnoofchildrennoofgamesboughtnoofgamesplayednoofunitspurchasedtenureunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2													*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? **
f%R#
!__inference__wrapped_model_705173o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:I E
#
_output_shapes
:?????????

_user_specified_nameCity:OK
#
_output_shapes
:?????????
$
_user_specified_name
CustomerID:a]
#
_output_shapes
:?????????
6
_user_specified_nameFavoriteChannelOfTransaction:QM
#
_output_shapes
:?????????
&
_user_specified_nameFavoriteGame:TP
#
_output_shapes
:?????????
)
_user_specified_nameFrequencyOFPlay:VR
#
_output_shapes
:?????????
+
_user_specified_nameFrquncyOfPurchase:RN
#
_output_shapes
:?????????
'
_user_specified_nameMaxAgeOfChild:RN
#
_output_shapes
:?????????
'
_user_specified_nameMinAgeOfChild:QM
#
_output_shapes
:?????????
&
_user_specified_nameNoOfChildren:T	P
#
_output_shapes
:?????????
)
_user_specified_nameNoOfGamesBought:T
P
#
_output_shapes
:?????????
)
_user_specified_nameNoOfGamesPlayed:WS
#
_output_shapes
:?????????
,
_user_specified_nameNoOfUnitsPurchased:KG
#
_output_shapes
:?????????
 
_user_specified_nameTenure:

_output_shapes
: :

_output_shapes
: 
?
;
__inference__creator_706571
identity??
hash_tablek

hash_tableHashTableV2*
_output_shapes
: *
	key_dtype0*
shared_name193*
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
?
?
F__inference_sequential_layer_call_and_return_conditional_losses_705780
city	

customerid	 
favoritechanneloftransaction
favoritegame
frequencyofplay	
frquncyofpurchase	
maxageofchild	
minageofchild	
noofchildren	
noofgamesbought	
noofgamesplayed	
noofunitspurchased	

tenure	
dense_features_705765
dense_features_705767	
dense_features_705769
dense_features_705771	
dense_705774:	
dense_705776:
identity??dense/StatefulPartitionedCall?&dense_features/StatefulPartitionedCall?
&dense_features/StatefulPartitionedCallStatefulPartitionedCallcity
customeridfavoritechanneloftransactionfavoritegamefrequencyofplayfrquncyofpurchasemaxageofchildminageofchildnoofchildrennoofgamesboughtnoofgamesplayednoofunitspurchasedtenuredense_features_705765dense_features_705767dense_features_705769dense_features_705771*
Tin
2													*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_705592?
dense/StatefulPartitionedCallStatefulPartitionedCall/dense_features/StatefulPartitionedCall:output:0dense_705774dense_705776*
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
GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_705372u
IdentityIdentity&dense/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp^dense/StatefulPartitionedCall'^dense_features/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2P
&dense_features/StatefulPartitionedCall&dense_features/StatefulPartitionedCall:I E
#
_output_shapes
:?????????

_user_specified_nameCity:OK
#
_output_shapes
:?????????
$
_user_specified_name
CustomerID:a]
#
_output_shapes
:?????????
6
_user_specified_nameFavoriteChannelOfTransaction:QM
#
_output_shapes
:?????????
&
_user_specified_nameFavoriteGame:TP
#
_output_shapes
:?????????
)
_user_specified_nameFrequencyOFPlay:VR
#
_output_shapes
:?????????
+
_user_specified_nameFrquncyOfPurchase:RN
#
_output_shapes
:?????????
'
_user_specified_nameMaxAgeOfChild:RN
#
_output_shapes
:?????????
'
_user_specified_nameMinAgeOfChild:QM
#
_output_shapes
:?????????
&
_user_specified_nameNoOfChildren:T	P
#
_output_shapes
:?????????
)
_user_specified_nameNoOfGamesBought:T
P
#
_output_shapes
:?????????
)
_user_specified_nameNoOfGamesPlayed:WS
#
_output_shapes
:?????????
,
_user_specified_nameNoOfUnitsPurchased:KG
#
_output_shapes
:?????????
 
_user_specified_nameTenure:

_output_shapes
: :

_output_shapes
: 
?
?
/__inference_dense_features_layer_call_fn_706233
features_city	
features_customerid	)
%features_favoritechanneloftransaction
features_favoritegame
features_frequencyofplay	
features_frquncyofpurchase	
features_maxageofchild	
features_minageofchild	
features_noofchildren	
features_noofgamesbought	
features_noofgamesplayed	
features_noofunitspurchased	
features_tenure	
unknown
	unknown_0	
	unknown_1
	unknown_2	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfeatures_cityfeatures_customerid%features_favoritechanneloftransactionfeatures_favoritegamefeatures_frequencyofplayfeatures_frquncyofpurchasefeatures_maxageofchildfeatures_minageofchildfeatures_noofchildrenfeatures_noofgamesboughtfeatures_noofgamesplayedfeatures_noofunitspurchasedfeatures_tenureunknown	unknown_0	unknown_1	unknown_2*
Tin
2													*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_705592o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
#
_output_shapes
:?????????
'
_user_specified_namefeatures/City:XT
#
_output_shapes
:?????????
-
_user_specified_namefeatures/CustomerID:jf
#
_output_shapes
:?????????
?
_user_specified_name'%features/FavoriteChannelOfTransaction:ZV
#
_output_shapes
:?????????
/
_user_specified_namefeatures/FavoriteGame:]Y
#
_output_shapes
:?????????
2
_user_specified_namefeatures/FrequencyOFPlay:_[
#
_output_shapes
:?????????
4
_user_specified_namefeatures/FrquncyOfPurchase:[W
#
_output_shapes
:?????????
0
_user_specified_namefeatures/MaxAgeOfChild:[W
#
_output_shapes
:?????????
0
_user_specified_namefeatures/MinAgeOfChild:ZV
#
_output_shapes
:?????????
/
_user_specified_namefeatures/NoOfChildren:]	Y
#
_output_shapes
:?????????
2
_user_specified_namefeatures/NoOfGamesBought:]
Y
#
_output_shapes
:?????????
2
_user_specified_namefeatures/NoOfGamesPlayed:`\
#
_output_shapes
:?????????
5
_user_specified_namefeatures/NoOfUnitsPurchased:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/Tenure:

_output_shapes
: :

_output_shapes
: 
??
?
!__inference__wrapped_model_705173
city	

customerid	 
favoritechanneloftransaction
favoritegame
frequencyofplay	
frquncyofpurchase	
maxageofchild	
minageofchild	
noofchildren	
noofgamesbought	
noofgamesplayed	
noofunitspurchased	

tenure	W
Ssequential_dense_features_city_indicator_none_lookup_lookuptablefindv2_table_handleX
Tsequential_dense_features_city_indicator_none_lookup_lookuptablefindv2_default_value	o
ksequential_dense_features_favoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_table_handlep
lsequential_dense_features_favoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_default_value	A
/sequential_dense_matmul_readvariableop_resource:	>
0sequential_dense_biasadd_readvariableop_resource:
identity??'sequential/dense/BiasAdd/ReadVariableOp?&sequential/dense/MatMul/ReadVariableOp?Fsequential/dense_features/City_indicator/None_Lookup/LookupTableFindV2?^sequential/dense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2?
7sequential/dense_features/City_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
3sequential/dense_features/City_indicator/ExpandDims
ExpandDimscity@sequential/dense_features/City_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
Gsequential/dense_features/City_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Esequential/dense_features/City_indicator/to_sparse_input/ignore_valueCastPsequential/dense_features/City_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
Asequential/dense_features/City_indicator/to_sparse_input/NotEqualNotEqual<sequential/dense_features/City_indicator/ExpandDims:output:0Isequential/dense_features/City_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
@sequential/dense_features/City_indicator/to_sparse_input/indicesWhereEsequential/dense_features/City_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
?sequential/dense_features/City_indicator/to_sparse_input/valuesGatherNd<sequential/dense_features/City_indicator/ExpandDims:output:0Hsequential/dense_features/City_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
Dsequential/dense_features/City_indicator/to_sparse_input/dense_shapeShape<sequential/dense_features/City_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
Fsequential/dense_features/City_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Ssequential_dense_features_city_indicator_none_lookup_lookuptablefindv2_table_handleHsequential/dense_features/City_indicator/to_sparse_input/values:output:0Tsequential_dense_features_city_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:??????????
Dsequential/dense_features/City_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
6sequential/dense_features/City_indicator/SparseToDenseSparseToDenseHsequential/dense_features/City_indicator/to_sparse_input/indices:index:0Msequential/dense_features/City_indicator/to_sparse_input/dense_shape:output:0Osequential/dense_features/City_indicator/None_Lookup/LookupTableFindV2:values:0Msequential/dense_features/City_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????{
6sequential/dense_features/City_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??}
8sequential/dense_features/City_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    x
6sequential/dense_features/City_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
0sequential/dense_features/City_indicator/one_hotOneHot>sequential/dense_features/City_indicator/SparseToDense:dense:0?sequential/dense_features/City_indicator/one_hot/depth:output:0?sequential/dense_features/City_indicator/one_hot/Const:output:0Asequential/dense_features/City_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
>sequential/dense_features/City_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
,sequential/dense_features/City_indicator/SumSum9sequential/dense_features/City_indicator/one_hot:output:0Gsequential/dense_features/City_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
.sequential/dense_features/City_indicator/ShapeShape5sequential/dense_features/City_indicator/Sum:output:0*
T0*
_output_shapes
:?
<sequential/dense_features/City_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
>sequential/dense_features/City_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
>sequential/dense_features/City_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
6sequential/dense_features/City_indicator/strided_sliceStridedSlice7sequential/dense_features/City_indicator/Shape:output:0Esequential/dense_features/City_indicator/strided_slice/stack:output:0Gsequential/dense_features/City_indicator/strided_slice/stack_1:output:0Gsequential/dense_features/City_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
8sequential/dense_features/City_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
6sequential/dense_features/City_indicator/Reshape/shapePack?sequential/dense_features/City_indicator/strided_slice:output:0Asequential/dense_features/City_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
0sequential/dense_features/City_indicator/ReshapeReshape5sequential/dense_features/City_indicator/Sum:output:0?sequential/dense_features/City_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
Osequential/dense_features/FavoriteChannelOfTransaction_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Ksequential/dense_features/FavoriteChannelOfTransaction_indicator/ExpandDims
ExpandDimsfavoritechanneloftransactionXsequential/dense_features/FavoriteChannelOfTransaction_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
_sequential/dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
Ysequential/dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqualNotEqualTsequential/dense_features/FavoriteChannelOfTransaction_indicator/ExpandDims:output:0hsequential/dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
Xsequential/dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/indicesWhere]sequential/dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
Wsequential/dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/valuesGatherNdTsequential/dense_features/FavoriteChannelOfTransaction_indicator/ExpandDims:output:0`sequential/dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
\sequential/dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shapeShapeTsequential/dense_features/FavoriteChannelOfTransaction_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
^sequential/dense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2ksequential_dense_features_favoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_table_handle`sequential/dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/values:output:0lsequential_dense_features_favoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
\sequential/dense_features/FavoriteChannelOfTransaction_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
Nsequential/dense_features/FavoriteChannelOfTransaction_indicator/SparseToDenseSparseToDense`sequential/dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/indices:index:0esequential/dense_features/FavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shape:output:0gsequential/dense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2:values:0esequential/dense_features/FavoriteChannelOfTransaction_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:??????????
Nsequential/dense_features/FavoriteChannelOfTransaction_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
Psequential/dense_features/FavoriteChannelOfTransaction_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ?
Nsequential/dense_features/FavoriteChannelOfTransaction_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
Hsequential/dense_features/FavoriteChannelOfTransaction_indicator/one_hotOneHotVsequential/dense_features/FavoriteChannelOfTransaction_indicator/SparseToDense:dense:0Wsequential/dense_features/FavoriteChannelOfTransaction_indicator/one_hot/depth:output:0Wsequential/dense_features/FavoriteChannelOfTransaction_indicator/one_hot/Const:output:0Ysequential/dense_features/FavoriteChannelOfTransaction_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
Vsequential/dense_features/FavoriteChannelOfTransaction_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
Dsequential/dense_features/FavoriteChannelOfTransaction_indicator/SumSumQsequential/dense_features/FavoriteChannelOfTransaction_indicator/one_hot:output:0_sequential/dense_features/FavoriteChannelOfTransaction_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
Fsequential/dense_features/FavoriteChannelOfTransaction_indicator/ShapeShapeMsequential/dense_features/FavoriteChannelOfTransaction_indicator/Sum:output:0*
T0*
_output_shapes
:?
Tsequential/dense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Vsequential/dense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Vsequential/dense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
Nsequential/dense_features/FavoriteChannelOfTransaction_indicator/strided_sliceStridedSliceOsequential/dense_features/FavoriteChannelOfTransaction_indicator/Shape:output:0]sequential/dense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack:output:0_sequential/dense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack_1:output:0_sequential/dense_features/FavoriteChannelOfTransaction_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
Psequential/dense_features/FavoriteChannelOfTransaction_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
Nsequential/dense_features/FavoriteChannelOfTransaction_indicator/Reshape/shapePackWsequential/dense_features/FavoriteChannelOfTransaction_indicator/strided_slice:output:0Ysequential/dense_features/FavoriteChannelOfTransaction_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
Hsequential/dense_features/FavoriteChannelOfTransaction_indicator/ReshapeReshapeMsequential/dense_features/FavoriteChannelOfTransaction_indicator/Sum:output:0Wsequential/dense_features/FavoriteChannelOfTransaction_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
8sequential/dense_features/FrequencyOFPlay/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
4sequential/dense_features/FrequencyOFPlay/ExpandDims
ExpandDimsfrequencyofplayAsequential/dense_features/FrequencyOFPlay/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
.sequential/dense_features/FrequencyOFPlay/CastCast=sequential/dense_features/FrequencyOFPlay/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:??????????
/sequential/dense_features/FrequencyOFPlay/ShapeShape2sequential/dense_features/FrequencyOFPlay/Cast:y:0*
T0*
_output_shapes
:?
=sequential/dense_features/FrequencyOFPlay/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
?sequential/dense_features/FrequencyOFPlay/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?sequential/dense_features/FrequencyOFPlay/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7sequential/dense_features/FrequencyOFPlay/strided_sliceStridedSlice8sequential/dense_features/FrequencyOFPlay/Shape:output:0Fsequential/dense_features/FrequencyOFPlay/strided_slice/stack:output:0Hsequential/dense_features/FrequencyOFPlay/strided_slice/stack_1:output:0Hsequential/dense_features/FrequencyOFPlay/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
9sequential/dense_features/FrequencyOFPlay/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
7sequential/dense_features/FrequencyOFPlay/Reshape/shapePack@sequential/dense_features/FrequencyOFPlay/strided_slice:output:0Bsequential/dense_features/FrequencyOFPlay/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
1sequential/dense_features/FrequencyOFPlay/ReshapeReshape2sequential/dense_features/FrequencyOFPlay/Cast:y:0@sequential/dense_features/FrequencyOFPlay/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
:sequential/dense_features/FrquncyOfPurchase/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
6sequential/dense_features/FrquncyOfPurchase/ExpandDims
ExpandDimsfrquncyofpurchaseCsequential/dense_features/FrquncyOfPurchase/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
0sequential/dense_features/FrquncyOfPurchase/CastCast?sequential/dense_features/FrquncyOfPurchase/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:??????????
1sequential/dense_features/FrquncyOfPurchase/ShapeShape4sequential/dense_features/FrquncyOfPurchase/Cast:y:0*
T0*
_output_shapes
:?
?sequential/dense_features/FrquncyOfPurchase/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Asequential/dense_features/FrquncyOfPurchase/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Asequential/dense_features/FrquncyOfPurchase/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
9sequential/dense_features/FrquncyOfPurchase/strided_sliceStridedSlice:sequential/dense_features/FrquncyOfPurchase/Shape:output:0Hsequential/dense_features/FrquncyOfPurchase/strided_slice/stack:output:0Jsequential/dense_features/FrquncyOfPurchase/strided_slice/stack_1:output:0Jsequential/dense_features/FrquncyOfPurchase/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask}
;sequential/dense_features/FrquncyOfPurchase/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
9sequential/dense_features/FrquncyOfPurchase/Reshape/shapePackBsequential/dense_features/FrquncyOfPurchase/strided_slice:output:0Dsequential/dense_features/FrquncyOfPurchase/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
3sequential/dense_features/FrquncyOfPurchase/ReshapeReshape4sequential/dense_features/FrquncyOfPurchase/Cast:y:0Bsequential/dense_features/FrquncyOfPurchase/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
6sequential/dense_features/MinAgeOfChild/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
2sequential/dense_features/MinAgeOfChild/ExpandDims
ExpandDimsminageofchild?sequential/dense_features/MinAgeOfChild/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
,sequential/dense_features/MinAgeOfChild/CastCast;sequential/dense_features/MinAgeOfChild/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:??????????
-sequential/dense_features/MinAgeOfChild/ShapeShape0sequential/dense_features/MinAgeOfChild/Cast:y:0*
T0*
_output_shapes
:?
;sequential/dense_features/MinAgeOfChild/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
=sequential/dense_features/MinAgeOfChild/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
=sequential/dense_features/MinAgeOfChild/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
5sequential/dense_features/MinAgeOfChild/strided_sliceStridedSlice6sequential/dense_features/MinAgeOfChild/Shape:output:0Dsequential/dense_features/MinAgeOfChild/strided_slice/stack:output:0Fsequential/dense_features/MinAgeOfChild/strided_slice/stack_1:output:0Fsequential/dense_features/MinAgeOfChild/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masky
7sequential/dense_features/MinAgeOfChild/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
5sequential/dense_features/MinAgeOfChild/Reshape/shapePack>sequential/dense_features/MinAgeOfChild/strided_slice:output:0@sequential/dense_features/MinAgeOfChild/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
/sequential/dense_features/MinAgeOfChild/ReshapeReshape0sequential/dense_features/MinAgeOfChild/Cast:y:0>sequential/dense_features/MinAgeOfChild/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
5sequential/dense_features/NoOfChildren/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
1sequential/dense_features/NoOfChildren/ExpandDims
ExpandDimsnoofchildren>sequential/dense_features/NoOfChildren/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
+sequential/dense_features/NoOfChildren/CastCast:sequential/dense_features/NoOfChildren/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:??????????
,sequential/dense_features/NoOfChildren/ShapeShape/sequential/dense_features/NoOfChildren/Cast:y:0*
T0*
_output_shapes
:?
:sequential/dense_features/NoOfChildren/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
<sequential/dense_features/NoOfChildren/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
<sequential/dense_features/NoOfChildren/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
4sequential/dense_features/NoOfChildren/strided_sliceStridedSlice5sequential/dense_features/NoOfChildren/Shape:output:0Csequential/dense_features/NoOfChildren/strided_slice/stack:output:0Esequential/dense_features/NoOfChildren/strided_slice/stack_1:output:0Esequential/dense_features/NoOfChildren/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
6sequential/dense_features/NoOfChildren/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
4sequential/dense_features/NoOfChildren/Reshape/shapePack=sequential/dense_features/NoOfChildren/strided_slice:output:0?sequential/dense_features/NoOfChildren/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
.sequential/dense_features/NoOfChildren/ReshapeReshape/sequential/dense_features/NoOfChildren/Cast:y:0=sequential/dense_features/NoOfChildren/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
8sequential/dense_features/NoOfGamesBought/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
4sequential/dense_features/NoOfGamesBought/ExpandDims
ExpandDimsnoofgamesboughtAsequential/dense_features/NoOfGamesBought/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
.sequential/dense_features/NoOfGamesBought/CastCast=sequential/dense_features/NoOfGamesBought/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:??????????
/sequential/dense_features/NoOfGamesBought/ShapeShape2sequential/dense_features/NoOfGamesBought/Cast:y:0*
T0*
_output_shapes
:?
=sequential/dense_features/NoOfGamesBought/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
?sequential/dense_features/NoOfGamesBought/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?sequential/dense_features/NoOfGamesBought/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7sequential/dense_features/NoOfGamesBought/strided_sliceStridedSlice8sequential/dense_features/NoOfGamesBought/Shape:output:0Fsequential/dense_features/NoOfGamesBought/strided_slice/stack:output:0Hsequential/dense_features/NoOfGamesBought/strided_slice/stack_1:output:0Hsequential/dense_features/NoOfGamesBought/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
9sequential/dense_features/NoOfGamesBought/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
7sequential/dense_features/NoOfGamesBought/Reshape/shapePack@sequential/dense_features/NoOfGamesBought/strided_slice:output:0Bsequential/dense_features/NoOfGamesBought/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
1sequential/dense_features/NoOfGamesBought/ReshapeReshape2sequential/dense_features/NoOfGamesBought/Cast:y:0@sequential/dense_features/NoOfGamesBought/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
8sequential/dense_features/NoOfGamesPlayed/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
4sequential/dense_features/NoOfGamesPlayed/ExpandDims
ExpandDimsnoofgamesplayedAsequential/dense_features/NoOfGamesPlayed/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
.sequential/dense_features/NoOfGamesPlayed/CastCast=sequential/dense_features/NoOfGamesPlayed/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:??????????
/sequential/dense_features/NoOfGamesPlayed/ShapeShape2sequential/dense_features/NoOfGamesPlayed/Cast:y:0*
T0*
_output_shapes
:?
=sequential/dense_features/NoOfGamesPlayed/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
?sequential/dense_features/NoOfGamesPlayed/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
?sequential/dense_features/NoOfGamesPlayed/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
7sequential/dense_features/NoOfGamesPlayed/strided_sliceStridedSlice8sequential/dense_features/NoOfGamesPlayed/Shape:output:0Fsequential/dense_features/NoOfGamesPlayed/strided_slice/stack:output:0Hsequential/dense_features/NoOfGamesPlayed/strided_slice/stack_1:output:0Hsequential/dense_features/NoOfGamesPlayed/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask{
9sequential/dense_features/NoOfGamesPlayed/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
7sequential/dense_features/NoOfGamesPlayed/Reshape/shapePack@sequential/dense_features/NoOfGamesPlayed/strided_slice:output:0Bsequential/dense_features/NoOfGamesPlayed/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
1sequential/dense_features/NoOfGamesPlayed/ReshapeReshape2sequential/dense_features/NoOfGamesPlayed/Cast:y:0@sequential/dense_features/NoOfGamesPlayed/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
;sequential/dense_features/NoOfUnitsPurchased/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
7sequential/dense_features/NoOfUnitsPurchased/ExpandDims
ExpandDimsnoofunitspurchasedDsequential/dense_features/NoOfUnitsPurchased/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
1sequential/dense_features/NoOfUnitsPurchased/CastCast@sequential/dense_features/NoOfUnitsPurchased/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:??????????
2sequential/dense_features/NoOfUnitsPurchased/ShapeShape5sequential/dense_features/NoOfUnitsPurchased/Cast:y:0*
T0*
_output_shapes
:?
@sequential/dense_features/NoOfUnitsPurchased/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Bsequential/dense_features/NoOfUnitsPurchased/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Bsequential/dense_features/NoOfUnitsPurchased/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
:sequential/dense_features/NoOfUnitsPurchased/strided_sliceStridedSlice;sequential/dense_features/NoOfUnitsPurchased/Shape:output:0Isequential/dense_features/NoOfUnitsPurchased/strided_slice/stack:output:0Ksequential/dense_features/NoOfUnitsPurchased/strided_slice/stack_1:output:0Ksequential/dense_features/NoOfUnitsPurchased/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask~
<sequential/dense_features/NoOfUnitsPurchased/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
:sequential/dense_features/NoOfUnitsPurchased/Reshape/shapePackCsequential/dense_features/NoOfUnitsPurchased/strided_slice:output:0Esequential/dense_features/NoOfUnitsPurchased/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
4sequential/dense_features/NoOfUnitsPurchased/ReshapeReshape5sequential/dense_features/NoOfUnitsPurchased/Cast:y:0Csequential/dense_features/NoOfUnitsPurchased/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????p
%sequential/dense_features/concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
 sequential/dense_features/concatConcatV29sequential/dense_features/City_indicator/Reshape:output:0Qsequential/dense_features/FavoriteChannelOfTransaction_indicator/Reshape:output:0:sequential/dense_features/FrequencyOFPlay/Reshape:output:0<sequential/dense_features/FrquncyOfPurchase/Reshape:output:08sequential/dense_features/MinAgeOfChild/Reshape:output:07sequential/dense_features/NoOfChildren/Reshape:output:0:sequential/dense_features/NoOfGamesBought/Reshape:output:0:sequential/dense_features/NoOfGamesPlayed/Reshape:output:0=sequential/dense_features/NoOfUnitsPurchased/Reshape:output:0.sequential/dense_features/concat/axis:output:0*
N	*
T0*'
_output_shapes
:?????????	?
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*
_output_shapes

:	*
dtype0?
sequential/dense/MatMulMatMul)sequential/dense_features/concat:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
IdentityIdentity!sequential/dense/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOpG^sequential/dense_features/City_indicator/None_Lookup/LookupTableFindV2_^sequential/dense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2?
Fsequential/dense_features/City_indicator/None_Lookup/LookupTableFindV2Fsequential/dense_features/City_indicator/None_Lookup/LookupTableFindV22?
^sequential/dense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2^sequential/dense_features/FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2:I E
#
_output_shapes
:?????????

_user_specified_nameCity:OK
#
_output_shapes
:?????????
$
_user_specified_name
CustomerID:a]
#
_output_shapes
:?????????
6
_user_specified_nameFavoriteChannelOfTransaction:QM
#
_output_shapes
:?????????
&
_user_specified_nameFavoriteGame:TP
#
_output_shapes
:?????????
)
_user_specified_nameFrequencyOFPlay:VR
#
_output_shapes
:?????????
+
_user_specified_nameFrquncyOfPurchase:RN
#
_output_shapes
:?????????
'
_user_specified_nameMaxAgeOfChild:RN
#
_output_shapes
:?????????
'
_user_specified_nameMinAgeOfChild:QM
#
_output_shapes
:?????????
&
_user_specified_nameNoOfChildren:T	P
#
_output_shapes
:?????????
)
_user_specified_nameNoOfGamesBought:T
P
#
_output_shapes
:?????????
)
_user_specified_nameNoOfGamesPlayed:WS
#
_output_shapes
:?????????
,
_user_specified_nameNoOfUnitsPurchased:KG
#
_output_shapes
:?????????
 
_user_specified_nameTenure:

_output_shapes
: :

_output_shapes
: 
?
?
&__inference_dense_layer_call_fn_706538

inputs
unknown:	
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
GPU 2J 8? *J
fERC
A__inference_dense_layer_call_and_return_conditional_losses_705372o
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
:?????????	: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
??
?
J__inference_dense_features_layer_call_and_return_conditional_losses_705592
features	

features_1	

features_2

features_3

features_4	

features_5	

features_6	

features_7	

features_8	

features_9	
features_10	
features_11	
features_12	=
9city_indicator_none_lookup_lookuptablefindv2_table_handle>
:city_indicator_none_lookup_lookuptablefindv2_default_value	U
Qfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_table_handleV
Rfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_default_value	
identity??,City_indicator/None_Lookup/LookupTableFindV2?DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2h
City_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
City_indicator/ExpandDims
ExpandDimsfeatures&City_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????x
-City_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
+City_indicator/to_sparse_input/ignore_valueCast6City_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
'City_indicator/to_sparse_input/NotEqualNotEqual"City_indicator/ExpandDims:output:0/City_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
&City_indicator/to_sparse_input/indicesWhere+City_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
%City_indicator/to_sparse_input/valuesGatherNd"City_indicator/ExpandDims:output:0.City_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
*City_indicator/to_sparse_input/dense_shapeShape"City_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
,City_indicator/None_Lookup/LookupTableFindV2LookupTableFindV29city_indicator_none_lookup_lookuptablefindv2_table_handle.City_indicator/to_sparse_input/values:output:0:city_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:?????????u
*City_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
City_indicator/SparseToDenseSparseToDense.City_indicator/to_sparse_input/indices:index:03City_indicator/to_sparse_input/dense_shape:output:05City_indicator/None_Lookup/LookupTableFindV2:values:03City_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????a
City_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??c
City_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ^
City_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
City_indicator/one_hotOneHot$City_indicator/SparseToDense:dense:0%City_indicator/one_hot/depth:output:0%City_indicator/one_hot/Const:output:0'City_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????w
$City_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
City_indicator/SumSumCity_indicator/one_hot:output:0-City_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????_
City_indicator/ShapeShapeCity_indicator/Sum:output:0*
T0*
_output_shapes
:l
"City_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$City_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$City_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
City_indicator/strided_sliceStridedSliceCity_indicator/Shape:output:0+City_indicator/strided_slice/stack:output:0-City_indicator/strided_slice/stack_1:output:0-City_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
City_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
City_indicator/Reshape/shapePack%City_indicator/strided_slice:output:0'City_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
City_indicator/ReshapeReshapeCity_indicator/Sum:output:0%City_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
5FavoriteChannelOfTransaction_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
1FavoriteChannelOfTransaction_indicator/ExpandDims
ExpandDims
features_2>FavoriteChannelOfTransaction_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
EFavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
?FavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqualNotEqual:FavoriteChannelOfTransaction_indicator/ExpandDims:output:0NFavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
>FavoriteChannelOfTransaction_indicator/to_sparse_input/indicesWhereCFavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
=FavoriteChannelOfTransaction_indicator/to_sparse_input/valuesGatherNd:FavoriteChannelOfTransaction_indicator/ExpandDims:output:0FFavoriteChannelOfTransaction_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
BFavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shapeShape:FavoriteChannelOfTransaction_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Qfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_table_handleFFavoriteChannelOfTransaction_indicator/to_sparse_input/values:output:0Rfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
BFavoriteChannelOfTransaction_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
4FavoriteChannelOfTransaction_indicator/SparseToDenseSparseToDenseFFavoriteChannelOfTransaction_indicator/to_sparse_input/indices:index:0KFavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shape:output:0MFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2:values:0KFavoriteChannelOfTransaction_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????y
4FavoriteChannelOfTransaction_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??{
6FavoriteChannelOfTransaction_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    v
4FavoriteChannelOfTransaction_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
.FavoriteChannelOfTransaction_indicator/one_hotOneHot<FavoriteChannelOfTransaction_indicator/SparseToDense:dense:0=FavoriteChannelOfTransaction_indicator/one_hot/depth:output:0=FavoriteChannelOfTransaction_indicator/one_hot/Const:output:0?FavoriteChannelOfTransaction_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
<FavoriteChannelOfTransaction_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
*FavoriteChannelOfTransaction_indicator/SumSum7FavoriteChannelOfTransaction_indicator/one_hot:output:0EFavoriteChannelOfTransaction_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
,FavoriteChannelOfTransaction_indicator/ShapeShape3FavoriteChannelOfTransaction_indicator/Sum:output:0*
T0*
_output_shapes
:?
:FavoriteChannelOfTransaction_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
<FavoriteChannelOfTransaction_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
<FavoriteChannelOfTransaction_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
4FavoriteChannelOfTransaction_indicator/strided_sliceStridedSlice5FavoriteChannelOfTransaction_indicator/Shape:output:0CFavoriteChannelOfTransaction_indicator/strided_slice/stack:output:0EFavoriteChannelOfTransaction_indicator/strided_slice/stack_1:output:0EFavoriteChannelOfTransaction_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
6FavoriteChannelOfTransaction_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
4FavoriteChannelOfTransaction_indicator/Reshape/shapePack=FavoriteChannelOfTransaction_indicator/strided_slice:output:0?FavoriteChannelOfTransaction_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
.FavoriteChannelOfTransaction_indicator/ReshapeReshape3FavoriteChannelOfTransaction_indicator/Sum:output:0=FavoriteChannelOfTransaction_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????i
FrequencyOFPlay/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
FrequencyOFPlay/ExpandDims
ExpandDims
features_4'FrequencyOFPlay/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
FrequencyOFPlay/CastCast#FrequencyOFPlay/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????]
FrequencyOFPlay/ShapeShapeFrequencyOFPlay/Cast:y:0*
T0*
_output_shapes
:m
#FrequencyOFPlay/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%FrequencyOFPlay/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%FrequencyOFPlay/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
FrequencyOFPlay/strided_sliceStridedSliceFrequencyOFPlay/Shape:output:0,FrequencyOFPlay/strided_slice/stack:output:0.FrequencyOFPlay/strided_slice/stack_1:output:0.FrequencyOFPlay/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
FrequencyOFPlay/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
FrequencyOFPlay/Reshape/shapePack&FrequencyOFPlay/strided_slice:output:0(FrequencyOFPlay/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
FrequencyOFPlay/ReshapeReshapeFrequencyOFPlay/Cast:y:0&FrequencyOFPlay/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????k
 FrquncyOfPurchase/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
FrquncyOfPurchase/ExpandDims
ExpandDims
features_5)FrquncyOfPurchase/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
FrquncyOfPurchase/CastCast%FrquncyOfPurchase/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????a
FrquncyOfPurchase/ShapeShapeFrquncyOfPurchase/Cast:y:0*
T0*
_output_shapes
:o
%FrquncyOfPurchase/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'FrquncyOfPurchase/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'FrquncyOfPurchase/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
FrquncyOfPurchase/strided_sliceStridedSlice FrquncyOfPurchase/Shape:output:0.FrquncyOfPurchase/strided_slice/stack:output:00FrquncyOfPurchase/strided_slice/stack_1:output:00FrquncyOfPurchase/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
!FrquncyOfPurchase/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
FrquncyOfPurchase/Reshape/shapePack(FrquncyOfPurchase/strided_slice:output:0*FrquncyOfPurchase/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
FrquncyOfPurchase/ReshapeReshapeFrquncyOfPurchase/Cast:y:0(FrquncyOfPurchase/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????g
MinAgeOfChild/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
MinAgeOfChild/ExpandDims
ExpandDims
features_7%MinAgeOfChild/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????~
MinAgeOfChild/CastCast!MinAgeOfChild/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????Y
MinAgeOfChild/ShapeShapeMinAgeOfChild/Cast:y:0*
T0*
_output_shapes
:k
!MinAgeOfChild/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#MinAgeOfChild/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#MinAgeOfChild/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
MinAgeOfChild/strided_sliceStridedSliceMinAgeOfChild/Shape:output:0*MinAgeOfChild/strided_slice/stack:output:0,MinAgeOfChild/strided_slice/stack_1:output:0,MinAgeOfChild/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
MinAgeOfChild/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
MinAgeOfChild/Reshape/shapePack$MinAgeOfChild/strided_slice:output:0&MinAgeOfChild/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
MinAgeOfChild/ReshapeReshapeMinAgeOfChild/Cast:y:0$MinAgeOfChild/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????f
NoOfChildren/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
NoOfChildren/ExpandDims
ExpandDims
features_8$NoOfChildren/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????|
NoOfChildren/CastCast NoOfChildren/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????W
NoOfChildren/ShapeShapeNoOfChildren/Cast:y:0*
T0*
_output_shapes
:j
 NoOfChildren/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"NoOfChildren/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"NoOfChildren/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
NoOfChildren/strided_sliceStridedSliceNoOfChildren/Shape:output:0)NoOfChildren/strided_slice/stack:output:0+NoOfChildren/strided_slice/stack_1:output:0+NoOfChildren/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
NoOfChildren/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
NoOfChildren/Reshape/shapePack#NoOfChildren/strided_slice:output:0%NoOfChildren/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
NoOfChildren/ReshapeReshapeNoOfChildren/Cast:y:0#NoOfChildren/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????i
NoOfGamesBought/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
NoOfGamesBought/ExpandDims
ExpandDims
features_9'NoOfGamesBought/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
NoOfGamesBought/CastCast#NoOfGamesBought/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????]
NoOfGamesBought/ShapeShapeNoOfGamesBought/Cast:y:0*
T0*
_output_shapes
:m
#NoOfGamesBought/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%NoOfGamesBought/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%NoOfGamesBought/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
NoOfGamesBought/strided_sliceStridedSliceNoOfGamesBought/Shape:output:0,NoOfGamesBought/strided_slice/stack:output:0.NoOfGamesBought/strided_slice/stack_1:output:0.NoOfGamesBought/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
NoOfGamesBought/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
NoOfGamesBought/Reshape/shapePack&NoOfGamesBought/strided_slice:output:0(NoOfGamesBought/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
NoOfGamesBought/ReshapeReshapeNoOfGamesBought/Cast:y:0&NoOfGamesBought/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????i
NoOfGamesPlayed/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
NoOfGamesPlayed/ExpandDims
ExpandDimsfeatures_10'NoOfGamesPlayed/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
NoOfGamesPlayed/CastCast#NoOfGamesPlayed/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????]
NoOfGamesPlayed/ShapeShapeNoOfGamesPlayed/Cast:y:0*
T0*
_output_shapes
:m
#NoOfGamesPlayed/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%NoOfGamesPlayed/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%NoOfGamesPlayed/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
NoOfGamesPlayed/strided_sliceStridedSliceNoOfGamesPlayed/Shape:output:0,NoOfGamesPlayed/strided_slice/stack:output:0.NoOfGamesPlayed/strided_slice/stack_1:output:0.NoOfGamesPlayed/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
NoOfGamesPlayed/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
NoOfGamesPlayed/Reshape/shapePack&NoOfGamesPlayed/strided_slice:output:0(NoOfGamesPlayed/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
NoOfGamesPlayed/ReshapeReshapeNoOfGamesPlayed/Cast:y:0&NoOfGamesPlayed/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????l
!NoOfUnitsPurchased/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
NoOfUnitsPurchased/ExpandDims
ExpandDimsfeatures_11*NoOfUnitsPurchased/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
NoOfUnitsPurchased/CastCast&NoOfUnitsPurchased/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????c
NoOfUnitsPurchased/ShapeShapeNoOfUnitsPurchased/Cast:y:0*
T0*
_output_shapes
:p
&NoOfUnitsPurchased/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(NoOfUnitsPurchased/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(NoOfUnitsPurchased/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 NoOfUnitsPurchased/strided_sliceStridedSlice!NoOfUnitsPurchased/Shape:output:0/NoOfUnitsPurchased/strided_slice/stack:output:01NoOfUnitsPurchased/strided_slice/stack_1:output:01NoOfUnitsPurchased/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"NoOfUnitsPurchased/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
 NoOfUnitsPurchased/Reshape/shapePack)NoOfUnitsPurchased/strided_slice:output:0+NoOfUnitsPurchased/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
NoOfUnitsPurchased/ReshapeReshapeNoOfUnitsPurchased/Cast:y:0)NoOfUnitsPurchased/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
concatConcatV2City_indicator/Reshape:output:07FavoriteChannelOfTransaction_indicator/Reshape:output:0 FrequencyOFPlay/Reshape:output:0"FrquncyOfPurchase/Reshape:output:0MinAgeOfChild/Reshape:output:0NoOfChildren/Reshape:output:0 NoOfGamesBought/Reshape:output:0 NoOfGamesPlayed/Reshape:output:0#NoOfUnitsPurchased/Reshape:output:0concat/axis:output:0*
N	*
T0*'
_output_shapes
:?????????	^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:?????????	?
NoOpNoOp-^City_indicator/None_Lookup/LookupTableFindV2E^FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : 2\
,City_indicator/None_Lookup/LookupTableFindV2,City_indicator/None_Lookup/LookupTableFindV22?
DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2:M I
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
features:

_output_shapes
: :

_output_shapes
: 
?
?
/__inference_dense_features_layer_call_fn_706208
features_city	
features_customerid	)
%features_favoritechanneloftransaction
features_favoritegame
features_frequencyofplay	
features_frquncyofpurchase	
features_maxageofchild	
features_minageofchild	
features_noofchildren	
features_noofgamesbought	
features_noofgamesplayed	
features_noofunitspurchased	
features_tenure	
unknown
	unknown_0	
	unknown_1
	unknown_2	
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallfeatures_cityfeatures_customerid%features_favoritechanneloftransactionfeatures_favoritegamefeatures_frequencyofplayfeatures_frquncyofpurchasefeatures_maxageofchildfeatures_minageofchildfeatures_noofchildrenfeatures_noofgamesboughtfeatures_noofgamesplayedfeatures_noofunitspurchasedfeatures_tenureunknown	unknown_0	unknown_1	unknown_2*
Tin
2													*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????	* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8? *S
fNRL
J__inference_dense_features_layer_call_and_return_conditional_losses_705352o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????	`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
#
_output_shapes
:?????????
'
_user_specified_namefeatures/City:XT
#
_output_shapes
:?????????
-
_user_specified_namefeatures/CustomerID:jf
#
_output_shapes
:?????????
?
_user_specified_name'%features/FavoriteChannelOfTransaction:ZV
#
_output_shapes
:?????????
/
_user_specified_namefeatures/FavoriteGame:]Y
#
_output_shapes
:?????????
2
_user_specified_namefeatures/FrequencyOFPlay:_[
#
_output_shapes
:?????????
4
_user_specified_namefeatures/FrquncyOfPurchase:[W
#
_output_shapes
:?????????
0
_user_specified_namefeatures/MaxAgeOfChild:[W
#
_output_shapes
:?????????
0
_user_specified_namefeatures/MinAgeOfChild:ZV
#
_output_shapes
:?????????
/
_user_specified_namefeatures/NoOfChildren:]	Y
#
_output_shapes
:?????????
2
_user_specified_namefeatures/NoOfGamesBought:]
Y
#
_output_shapes
:?????????
2
_user_specified_namefeatures/NoOfGamesPlayed:`\
#
_output_shapes
:?????????
5
_user_specified_namefeatures/NoOfUnitsPurchased:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/Tenure:

_output_shapes
: :

_output_shapes
: 
?	
?
A__inference_dense_layer_call_and_return_conditional_losses_706548

inputs0
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:	*
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
:?????????	: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????	
 
_user_specified_nameinputs
?
-
__inference__destroyer_706566
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
?
?
+__inference_sequential_layer_call_fn_705394
city	

customerid	 
favoritechanneloftransaction
favoritegame
frequencyofplay	
frquncyofpurchase	
maxageofchild	
minageofchild	
noofchildren	
noofgamesbought	
noofgamesplayed	
noofunitspurchased	

tenure	
unknown
	unknown_0	
	unknown_1
	unknown_2	
	unknown_3:	
	unknown_4:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallcity
customeridfavoritechanneloftransactionfavoritegamefrequencyofplayfrquncyofpurchasemaxageofchildminageofchildnoofchildrennoofgamesboughtnoofgamesplayednoofunitspurchasedtenureunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
2													*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8? *O
fJRH
F__inference_sequential_layer_call_and_return_conditional_losses_705379o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:I E
#
_output_shapes
:?????????

_user_specified_nameCity:OK
#
_output_shapes
:?????????
$
_user_specified_name
CustomerID:a]
#
_output_shapes
:?????????
6
_user_specified_nameFavoriteChannelOfTransaction:QM
#
_output_shapes
:?????????
&
_user_specified_nameFavoriteGame:TP
#
_output_shapes
:?????????
)
_user_specified_nameFrequencyOFPlay:VR
#
_output_shapes
:?????????
+
_user_specified_nameFrquncyOfPurchase:RN
#
_output_shapes
:?????????
'
_user_specified_nameMaxAgeOfChild:RN
#
_output_shapes
:?????????
'
_user_specified_nameMinAgeOfChild:QM
#
_output_shapes
:?????????
&
_user_specified_nameNoOfChildren:T	P
#
_output_shapes
:?????????
)
_user_specified_nameNoOfGamesBought:T
P
#
_output_shapes
:?????????
)
_user_specified_nameNoOfGamesPlayed:WS
#
_output_shapes
:?????????
,
_user_specified_nameNoOfUnitsPurchased:KG
#
_output_shapes
:?????????
 
_user_specified_nameTenure:

_output_shapes
: :

_output_shapes
: 
ֵ
?
J__inference_dense_features_layer_call_and_return_conditional_losses_706529
features_city	
features_customerid	)
%features_favoritechanneloftransaction
features_favoritegame
features_frequencyofplay	
features_frquncyofpurchase	
features_maxageofchild	
features_minageofchild	
features_noofchildren	
features_noofgamesbought	
features_noofgamesplayed	
features_noofunitspurchased	
features_tenure	=
9city_indicator_none_lookup_lookuptablefindv2_table_handle>
:city_indicator_none_lookup_lookuptablefindv2_default_value	U
Qfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_table_handleV
Rfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_default_value	
identity??,City_indicator/None_Lookup/LookupTableFindV2?DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2h
City_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
City_indicator/ExpandDims
ExpandDimsfeatures_city&City_indicator/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????x
-City_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB :
??????????
+City_indicator/to_sparse_input/ignore_valueCast6City_indicator/to_sparse_input/ignore_value/x:output:0*

DstT0	*

SrcT0*
_output_shapes
: ?
'City_indicator/to_sparse_input/NotEqualNotEqual"City_indicator/ExpandDims:output:0/City_indicator/to_sparse_input/ignore_value:y:0*
T0	*'
_output_shapes
:??????????
&City_indicator/to_sparse_input/indicesWhere+City_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
%City_indicator/to_sparse_input/valuesGatherNd"City_indicator/ExpandDims:output:0.City_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0	*#
_output_shapes
:??????????
*City_indicator/to_sparse_input/dense_shapeShape"City_indicator/ExpandDims:output:0*
T0	*
_output_shapes
:*
out_type0	?
,City_indicator/None_Lookup/LookupTableFindV2LookupTableFindV29city_indicator_none_lookup_lookuptablefindv2_table_handle.City_indicator/to_sparse_input/values:output:0:city_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0	*

Tout0	*#
_output_shapes
:?????????u
*City_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
City_indicator/SparseToDenseSparseToDense.City_indicator/to_sparse_input/indices:index:03City_indicator/to_sparse_input/dense_shape:output:05City_indicator/None_Lookup/LookupTableFindV2:values:03City_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????a
City_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??c
City_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    ^
City_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
City_indicator/one_hotOneHot$City_indicator/SparseToDense:dense:0%City_indicator/one_hot/depth:output:0%City_indicator/one_hot/Const:output:0'City_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:?????????w
$City_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
City_indicator/SumSumCity_indicator/one_hot:output:0-City_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:?????????_
City_indicator/ShapeShapeCity_indicator/Sum:output:0*
T0*
_output_shapes
:l
"City_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$City_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$City_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
City_indicator/strided_sliceStridedSliceCity_indicator/Shape:output:0+City_indicator/strided_slice/stack:output:0-City_indicator/strided_slice/stack_1:output:0-City_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
City_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
City_indicator/Reshape/shapePack%City_indicator/strided_slice:output:0'City_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
City_indicator/ReshapeReshapeCity_indicator/Sum:output:0%City_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:??????????
5FavoriteChannelOfTransaction_indicator/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
1FavoriteChannelOfTransaction_indicator/ExpandDims
ExpandDims%features_favoritechanneloftransaction>FavoriteChannelOfTransaction_indicator/ExpandDims/dim:output:0*
T0*'
_output_shapes
:??????????
EFavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/xConst*
_output_shapes
: *
dtype0*
valueB B ?
?FavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqualNotEqual:FavoriteChannelOfTransaction_indicator/ExpandDims:output:0NFavoriteChannelOfTransaction_indicator/to_sparse_input/ignore_value/x:output:0*
T0*'
_output_shapes
:??????????
>FavoriteChannelOfTransaction_indicator/to_sparse_input/indicesWhereCFavoriteChannelOfTransaction_indicator/to_sparse_input/NotEqual:z:0*'
_output_shapes
:??????????
=FavoriteChannelOfTransaction_indicator/to_sparse_input/valuesGatherNd:FavoriteChannelOfTransaction_indicator/ExpandDims:output:0FFavoriteChannelOfTransaction_indicator/to_sparse_input/indices:index:0*
Tindices0	*
Tparams0*#
_output_shapes
:??????????
BFavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shapeShape:FavoriteChannelOfTransaction_indicator/ExpandDims:output:0*
T0*
_output_shapes
:*
out_type0	?
DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2LookupTableFindV2Qfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_table_handleFFavoriteChannelOfTransaction_indicator/to_sparse_input/values:output:0Rfavoritechanneloftransaction_indicator_none_lookup_lookuptablefindv2_default_value*	
Tin0*

Tout0	*#
_output_shapes
:??????????
BFavoriteChannelOfTransaction_indicator/SparseToDense/default_valueConst*
_output_shapes
: *
dtype0	*
valueB	 R
??????????
4FavoriteChannelOfTransaction_indicator/SparseToDenseSparseToDenseFFavoriteChannelOfTransaction_indicator/to_sparse_input/indices:index:0KFavoriteChannelOfTransaction_indicator/to_sparse_input/dense_shape:output:0MFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2:values:0KFavoriteChannelOfTransaction_indicator/SparseToDense/default_value:output:0*
T0	*
Tindices0	*'
_output_shapes
:?????????y
4FavoriteChannelOfTransaction_indicator/one_hot/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ??{
6FavoriteChannelOfTransaction_indicator/one_hot/Const_1Const*
_output_shapes
: *
dtype0*
valueB
 *    v
4FavoriteChannelOfTransaction_indicator/one_hot/depthConst*
_output_shapes
: *
dtype0*
value	B :?
.FavoriteChannelOfTransaction_indicator/one_hotOneHot<FavoriteChannelOfTransaction_indicator/SparseToDense:dense:0=FavoriteChannelOfTransaction_indicator/one_hot/depth:output:0=FavoriteChannelOfTransaction_indicator/one_hot/Const:output:0?FavoriteChannelOfTransaction_indicator/one_hot/Const_1:output:0*
T0*+
_output_shapes
:??????????
<FavoriteChannelOfTransaction_indicator/Sum/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB:
??????????
*FavoriteChannelOfTransaction_indicator/SumSum7FavoriteChannelOfTransaction_indicator/one_hot:output:0EFavoriteChannelOfTransaction_indicator/Sum/reduction_indices:output:0*
T0*'
_output_shapes
:??????????
,FavoriteChannelOfTransaction_indicator/ShapeShape3FavoriteChannelOfTransaction_indicator/Sum:output:0*
T0*
_output_shapes
:?
:FavoriteChannelOfTransaction_indicator/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
<FavoriteChannelOfTransaction_indicator/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
<FavoriteChannelOfTransaction_indicator/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
4FavoriteChannelOfTransaction_indicator/strided_sliceStridedSlice5FavoriteChannelOfTransaction_indicator/Shape:output:0CFavoriteChannelOfTransaction_indicator/strided_slice/stack:output:0EFavoriteChannelOfTransaction_indicator/strided_slice/stack_1:output:0EFavoriteChannelOfTransaction_indicator/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskx
6FavoriteChannelOfTransaction_indicator/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
4FavoriteChannelOfTransaction_indicator/Reshape/shapePack=FavoriteChannelOfTransaction_indicator/strided_slice:output:0?FavoriteChannelOfTransaction_indicator/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
.FavoriteChannelOfTransaction_indicator/ReshapeReshape3FavoriteChannelOfTransaction_indicator/Sum:output:0=FavoriteChannelOfTransaction_indicator/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????i
FrequencyOFPlay/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
FrequencyOFPlay/ExpandDims
ExpandDimsfeatures_frequencyofplay'FrequencyOFPlay/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
FrequencyOFPlay/CastCast#FrequencyOFPlay/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????]
FrequencyOFPlay/ShapeShapeFrequencyOFPlay/Cast:y:0*
T0*
_output_shapes
:m
#FrequencyOFPlay/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%FrequencyOFPlay/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%FrequencyOFPlay/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
FrequencyOFPlay/strided_sliceStridedSliceFrequencyOFPlay/Shape:output:0,FrequencyOFPlay/strided_slice/stack:output:0.FrequencyOFPlay/strided_slice/stack_1:output:0.FrequencyOFPlay/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
FrequencyOFPlay/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
FrequencyOFPlay/Reshape/shapePack&FrequencyOFPlay/strided_slice:output:0(FrequencyOFPlay/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
FrequencyOFPlay/ReshapeReshapeFrequencyOFPlay/Cast:y:0&FrequencyOFPlay/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????k
 FrquncyOfPurchase/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
FrquncyOfPurchase/ExpandDims
ExpandDimsfeatures_frquncyofpurchase)FrquncyOfPurchase/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
FrquncyOfPurchase/CastCast%FrquncyOfPurchase/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????a
FrquncyOfPurchase/ShapeShapeFrquncyOfPurchase/Cast:y:0*
T0*
_output_shapes
:o
%FrquncyOfPurchase/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'FrquncyOfPurchase/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'FrquncyOfPurchase/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
FrquncyOfPurchase/strided_sliceStridedSlice FrquncyOfPurchase/Shape:output:0.FrquncyOfPurchase/strided_slice/stack:output:00FrquncyOfPurchase/strided_slice/stack_1:output:00FrquncyOfPurchase/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskc
!FrquncyOfPurchase/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
FrquncyOfPurchase/Reshape/shapePack(FrquncyOfPurchase/strided_slice:output:0*FrquncyOfPurchase/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
FrquncyOfPurchase/ReshapeReshapeFrquncyOfPurchase/Cast:y:0(FrquncyOfPurchase/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????g
MinAgeOfChild/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
MinAgeOfChild/ExpandDims
ExpandDimsfeatures_minageofchild%MinAgeOfChild/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????~
MinAgeOfChild/CastCast!MinAgeOfChild/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????Y
MinAgeOfChild/ShapeShapeMinAgeOfChild/Cast:y:0*
T0*
_output_shapes
:k
!MinAgeOfChild/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: m
#MinAgeOfChild/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:m
#MinAgeOfChild/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
MinAgeOfChild/strided_sliceStridedSliceMinAgeOfChild/Shape:output:0*MinAgeOfChild/strided_slice/stack:output:0,MinAgeOfChild/strided_slice/stack_1:output:0,MinAgeOfChild/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
MinAgeOfChild/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
MinAgeOfChild/Reshape/shapePack$MinAgeOfChild/strided_slice:output:0&MinAgeOfChild/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
MinAgeOfChild/ReshapeReshapeMinAgeOfChild/Cast:y:0$MinAgeOfChild/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????f
NoOfChildren/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
NoOfChildren/ExpandDims
ExpandDimsfeatures_noofchildren$NoOfChildren/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:?????????|
NoOfChildren/CastCast NoOfChildren/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????W
NoOfChildren/ShapeShapeNoOfChildren/Cast:y:0*
T0*
_output_shapes
:j
 NoOfChildren/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"NoOfChildren/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"NoOfChildren/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
NoOfChildren/strided_sliceStridedSliceNoOfChildren/Shape:output:0)NoOfChildren/strided_slice/stack:output:0+NoOfChildren/strided_slice/stack_1:output:0+NoOfChildren/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
NoOfChildren/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
NoOfChildren/Reshape/shapePack#NoOfChildren/strided_slice:output:0%NoOfChildren/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
NoOfChildren/ReshapeReshapeNoOfChildren/Cast:y:0#NoOfChildren/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????i
NoOfGamesBought/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
NoOfGamesBought/ExpandDims
ExpandDimsfeatures_noofgamesbought'NoOfGamesBought/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
NoOfGamesBought/CastCast#NoOfGamesBought/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????]
NoOfGamesBought/ShapeShapeNoOfGamesBought/Cast:y:0*
T0*
_output_shapes
:m
#NoOfGamesBought/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%NoOfGamesBought/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%NoOfGamesBought/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
NoOfGamesBought/strided_sliceStridedSliceNoOfGamesBought/Shape:output:0,NoOfGamesBought/strided_slice/stack:output:0.NoOfGamesBought/strided_slice/stack_1:output:0.NoOfGamesBought/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
NoOfGamesBought/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
NoOfGamesBought/Reshape/shapePack&NoOfGamesBought/strided_slice:output:0(NoOfGamesBought/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
NoOfGamesBought/ReshapeReshapeNoOfGamesBought/Cast:y:0&NoOfGamesBought/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????i
NoOfGamesPlayed/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
NoOfGamesPlayed/ExpandDims
ExpandDimsfeatures_noofgamesplayed'NoOfGamesPlayed/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
NoOfGamesPlayed/CastCast#NoOfGamesPlayed/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????]
NoOfGamesPlayed/ShapeShapeNoOfGamesPlayed/Cast:y:0*
T0*
_output_shapes
:m
#NoOfGamesPlayed/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%NoOfGamesPlayed/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%NoOfGamesPlayed/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
NoOfGamesPlayed/strided_sliceStridedSliceNoOfGamesPlayed/Shape:output:0,NoOfGamesPlayed/strided_slice/stack:output:0.NoOfGamesPlayed/strided_slice/stack_1:output:0.NoOfGamesPlayed/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
NoOfGamesPlayed/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
NoOfGamesPlayed/Reshape/shapePack&NoOfGamesPlayed/strided_slice:output:0(NoOfGamesPlayed/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
NoOfGamesPlayed/ReshapeReshapeNoOfGamesPlayed/Cast:y:0&NoOfGamesPlayed/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????l
!NoOfUnitsPurchased/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
NoOfUnitsPurchased/ExpandDims
ExpandDimsfeatures_noofunitspurchased*NoOfUnitsPurchased/ExpandDims/dim:output:0*
T0	*'
_output_shapes
:??????????
NoOfUnitsPurchased/CastCast&NoOfUnitsPurchased/ExpandDims:output:0*

DstT0*

SrcT0	*'
_output_shapes
:?????????c
NoOfUnitsPurchased/ShapeShapeNoOfUnitsPurchased/Cast:y:0*
T0*
_output_shapes
:p
&NoOfUnitsPurchased/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(NoOfUnitsPurchased/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(NoOfUnitsPurchased/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
 NoOfUnitsPurchased/strided_sliceStridedSlice!NoOfUnitsPurchased/Shape:output:0/NoOfUnitsPurchased/strided_slice/stack:output:01NoOfUnitsPurchased/strided_slice/stack_1:output:01NoOfUnitsPurchased/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"NoOfUnitsPurchased/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :?
 NoOfUnitsPurchased/Reshape/shapePack)NoOfUnitsPurchased/strided_slice:output:0+NoOfUnitsPurchased/Reshape/shape/1:output:0*
N*
T0*
_output_shapes
:?
NoOfUnitsPurchased/ReshapeReshapeNoOfUnitsPurchased/Cast:y:0)NoOfUnitsPurchased/Reshape/shape:output:0*
T0*'
_output_shapes
:?????????V
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
??????????
concatConcatV2City_indicator/Reshape:output:07FavoriteChannelOfTransaction_indicator/Reshape:output:0 FrequencyOFPlay/Reshape:output:0"FrquncyOfPurchase/Reshape:output:0MinAgeOfChild/Reshape:output:0NoOfChildren/Reshape:output:0 NoOfGamesBought/Reshape:output:0 NoOfGamesPlayed/Reshape:output:0#NoOfUnitsPurchased/Reshape:output:0concat/axis:output:0*
N	*
T0*'
_output_shapes
:?????????	^
IdentityIdentityconcat:output:0^NoOp*
T0*'
_output_shapes
:?????????	?
NoOpNoOp-^City_indicator/None_Lookup/LookupTableFindV2E^FavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*?
_input_shapes?
?:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????:?????????: : : : 2\
,City_indicator/None_Lookup/LookupTableFindV2,City_indicator/None_Lookup/LookupTableFindV22?
DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2DFavoriteChannelOfTransaction_indicator/None_Lookup/LookupTableFindV2:R N
#
_output_shapes
:?????????
'
_user_specified_namefeatures/City:XT
#
_output_shapes
:?????????
-
_user_specified_namefeatures/CustomerID:jf
#
_output_shapes
:?????????
?
_user_specified_name'%features/FavoriteChannelOfTransaction:ZV
#
_output_shapes
:?????????
/
_user_specified_namefeatures/FavoriteGame:]Y
#
_output_shapes
:?????????
2
_user_specified_namefeatures/FrequencyOFPlay:_[
#
_output_shapes
:?????????
4
_user_specified_namefeatures/FrquncyOfPurchase:[W
#
_output_shapes
:?????????
0
_user_specified_namefeatures/MaxAgeOfChild:[W
#
_output_shapes
:?????????
0
_user_specified_namefeatures/MinAgeOfChild:ZV
#
_output_shapes
:?????????
/
_user_specified_namefeatures/NoOfChildren:]	Y
#
_output_shapes
:?????????
2
_user_specified_namefeatures/NoOfGamesBought:]
Y
#
_output_shapes
:?????????
2
_user_specified_namefeatures/NoOfGamesPlayed:`\
#
_output_shapes
:?????????
5
_user_specified_namefeatures/NoOfUnitsPurchased:TP
#
_output_shapes
:?????????
)
_user_specified_namefeatures/Tenure:

_output_shapes
: :

_output_shapes
: "?L
saver_filename:0StatefulPartitionedCall_3:0StatefulPartitionedCall_48"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
1
City)
serving_default_City:0	?????????
=

CustomerID/
serving_default_CustomerID:0	?????????
a
FavoriteChannelOfTransactionA
.serving_default_FavoriteChannelOfTransaction:0?????????
A
FavoriteGame1
serving_default_FavoriteGame:0?????????
G
FrequencyOFPlay4
!serving_default_FrequencyOFPlay:0	?????????
K
FrquncyOfPurchase6
#serving_default_FrquncyOfPurchase:0	?????????
C
MaxAgeOfChild2
serving_default_MaxAgeOfChild:0	?????????
C
MinAgeOfChild2
serving_default_MinAgeOfChild:0	?????????
A
NoOfChildren1
serving_default_NoOfChildren:0	?????????
G
NoOfGamesBought4
!serving_default_NoOfGamesBought:0	?????????
G
NoOfGamesPlayed4
!serving_default_NoOfGamesPlayed:0	?????????
M
NoOfUnitsPurchased7
$serving_default_NoOfUnitsPurchased:0	?????????
5
Tenure+
serving_default_Tenure:0	?????????>
output_12
StatefulPartitionedCall_2:0?????????tensorflow/serving/predict:ɦ
?
layer-0
layer_with_weights-0
layer-1
	optimizer
_build_input_shape
	variables
trainable_variables
regularization_losses
	keras_api
	__call__
*
&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
?
_feature_columns

_resources
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
w
iter

beta_1

beta_2
	 decay
!learning_ratemCmDvEvF"
	optimizer
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
"non_trainable_variables

#layers
$metrics
%layer_regularization_losses
&layer_metrics
	variables
trainable_variables
regularization_losses
	__call__
_default_save_signature
*
&call_and_return_all_conditional_losses
&
"call_and_return_conditional_losses"
_generic_user_object
?2?
+__inference_sequential_layer_call_fn_705394
+__inference_sequential_layer_call_fn_705815
+__inference_sequential_layer_call_fn_705844
+__inference_sequential_layer_call_fn_705720?
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
?2?
F__inference_sequential_layer_call_and_return_conditional_losses_705998
F__inference_sequential_layer_call_and_return_conditional_losses_706152
F__inference_sequential_layer_call_and_return_conditional_losses_705750
F__inference_sequential_layer_call_and_return_conditional_losses_705780?
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
?B?
!__inference__wrapped_model_705173City
CustomerIDFavoriteChannelOfTransactionFavoriteGameFrequencyOFPlayFrquncyOfPurchaseMaxAgeOfChildMinAgeOfChildNoOfChildrenNoOfGamesBoughtNoOfGamesPlayedNoOfUnitsPurchasedTenure"?
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
'serving_default"
signature_map
 "
trackable_list_wrapper
J
(City
 )FavoriteChannelOfTransaction"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
*non_trainable_variables

+layers
,metrics
-layer_regularization_losses
.layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
/__inference_dense_features_layer_call_fn_706208
/__inference_dense_features_layer_call_fn_706233?
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
J__inference_dense_features_layer_call_and_return_conditional_losses_706381
J__inference_dense_features_layer_call_and_return_conditional_losses_706529?
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
):'	2sequential/dense/kernel
#:!2sequential/dense/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
/non_trainable_variables

0layers
1metrics
2layer_regularization_losses
3layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
&__inference_dense_layer_call_fn_706538?
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
A__inference_dense_layer_call_and_return_conditional_losses_706548?
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
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
40"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
$__inference_signature_wrapper_706183City
CustomerIDFavoriteChannelOfTransactionFavoriteGameFrequencyOFPlayFrquncyOfPurchaseMaxAgeOfChildMinAgeOfChildNoOfChildrenNoOfGamesBoughtNoOfGamesPlayedNoOfUnitsPurchasedTenure"?
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
/
5City_lookup"
_generic_user_object
G
'6#FavoriteChannelOfTransaction_lookup"
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
N
	7total
	8count
9	variables
:	keras_api"
_tf_keras_metric
j
;_initializer
<_create_resource
=_initialize
>_destroy_resourceR jCustom.StaticHashTable
j
?_initializer
@_create_resource
A_initialize
B_destroy_resourceR jCustom.StaticHashTable
:  (2total
:  (2count
.
70
81"
trackable_list_wrapper
-
9	variables"
_generic_user_object
"
_generic_user_object
?2?
__inference__creator_706553?
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
__inference__initializer_706561?
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
__inference__destroyer_706566?
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
__inference__creator_706571?
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
__inference__initializer_706579?
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
__inference__destroyer_706584?
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
.:,	2Adam/sequential/dense/kernel/m
(:&2Adam/sequential/dense/bias/m
.:,	2Adam/sequential/dense/kernel/v
(:&2Adam/sequential/dense/bias/v
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
Const_57
__inference__creator_706553?

? 
? "? 7
__inference__creator_706571?

? 
? "? 9
__inference__destroyer_706566?

? 
? "? 9
__inference__destroyer_706584?

? 
? "? @
__inference__initializer_7065615IJ?

? 
? "? @
__inference__initializer_7065796KL?

? 
? "? ?
!__inference__wrapped_model_705173?5G6H???
???
???
"
City?
City?????????	
.

CustomerID ?

CustomerID?????????	
R
FavoriteChannelOfTransaction2?/
FavoriteChannelOfTransaction?????????
2
FavoriteGame"?
FavoriteGame?????????
8
FrequencyOFPlay%?"
FrequencyOFPlay?????????	
<
FrquncyOfPurchase'?$
FrquncyOfPurchase?????????	
4
MaxAgeOfChild#? 
MaxAgeOfChild?????????	
4
MinAgeOfChild#? 
MinAgeOfChild?????????	
2
NoOfChildren"?
NoOfChildren?????????	
8
NoOfGamesBought%?"
NoOfGamesBought?????????	
8
NoOfGamesPlayed%?"
NoOfGamesPlayed?????????	
>
NoOfUnitsPurchased(?%
NoOfUnitsPurchased?????????	
&
Tenure?
Tenure?????????	
? "3?0
.
output_1"?
output_1??????????
J__inference_dense_features_layer_call_and_return_conditional_losses_706381?5G6H???
???
???
+
City#? 
features/City?????????	
7

CustomerID)?&
features/CustomerID?????????	
[
FavoriteChannelOfTransaction;?8
%features/FavoriteChannelOfTransaction?????????
;
FavoriteGame+?(
features/FavoriteGame?????????
A
FrequencyOFPlay.?+
features/FrequencyOFPlay?????????	
E
FrquncyOfPurchase0?-
features/FrquncyOfPurchase?????????	
=
MaxAgeOfChild,?)
features/MaxAgeOfChild?????????	
=
MinAgeOfChild,?)
features/MinAgeOfChild?????????	
;
NoOfChildren+?(
features/NoOfChildren?????????	
A
NoOfGamesBought.?+
features/NoOfGamesBought?????????	
A
NoOfGamesPlayed.?+
features/NoOfGamesPlayed?????????	
G
NoOfUnitsPurchased1?.
features/NoOfUnitsPurchased?????????	
/
Tenure%?"
features/Tenure?????????	

 
p 
? "%?"
?
0?????????	
? ?
J__inference_dense_features_layer_call_and_return_conditional_losses_706529?5G6H???
???
???
+
City#? 
features/City?????????	
7

CustomerID)?&
features/CustomerID?????????	
[
FavoriteChannelOfTransaction;?8
%features/FavoriteChannelOfTransaction?????????
;
FavoriteGame+?(
features/FavoriteGame?????????
A
FrequencyOFPlay.?+
features/FrequencyOFPlay?????????	
E
FrquncyOfPurchase0?-
features/FrquncyOfPurchase?????????	
=
MaxAgeOfChild,?)
features/MaxAgeOfChild?????????	
=
MinAgeOfChild,?)
features/MinAgeOfChild?????????	
;
NoOfChildren+?(
features/NoOfChildren?????????	
A
NoOfGamesBought.?+
features/NoOfGamesBought?????????	
A
NoOfGamesPlayed.?+
features/NoOfGamesPlayed?????????	
G
NoOfUnitsPurchased1?.
features/NoOfUnitsPurchased?????????	
/
Tenure%?"
features/Tenure?????????	

 
p
? "%?"
?
0?????????	
? ?
/__inference_dense_features_layer_call_fn_706208?5G6H???
???
???
+
City#? 
features/City?????????	
7

CustomerID)?&
features/CustomerID?????????	
[
FavoriteChannelOfTransaction;?8
%features/FavoriteChannelOfTransaction?????????
;
FavoriteGame+?(
features/FavoriteGame?????????
A
FrequencyOFPlay.?+
features/FrequencyOFPlay?????????	
E
FrquncyOfPurchase0?-
features/FrquncyOfPurchase?????????	
=
MaxAgeOfChild,?)
features/MaxAgeOfChild?????????	
=
MinAgeOfChild,?)
features/MinAgeOfChild?????????	
;
NoOfChildren+?(
features/NoOfChildren?????????	
A
NoOfGamesBought.?+
features/NoOfGamesBought?????????	
A
NoOfGamesPlayed.?+
features/NoOfGamesPlayed?????????	
G
NoOfUnitsPurchased1?.
features/NoOfUnitsPurchased?????????	
/
Tenure%?"
features/Tenure?????????	

 
p 
? "??????????	?
/__inference_dense_features_layer_call_fn_706233?5G6H???
???
???
+
City#? 
features/City?????????	
7

CustomerID)?&
features/CustomerID?????????	
[
FavoriteChannelOfTransaction;?8
%features/FavoriteChannelOfTransaction?????????
;
FavoriteGame+?(
features/FavoriteGame?????????
A
FrequencyOFPlay.?+
features/FrequencyOFPlay?????????	
E
FrquncyOfPurchase0?-
features/FrquncyOfPurchase?????????	
=
MaxAgeOfChild,?)
features/MaxAgeOfChild?????????	
=
MinAgeOfChild,?)
features/MinAgeOfChild?????????	
;
NoOfChildren+?(
features/NoOfChildren?????????	
A
NoOfGamesBought.?+
features/NoOfGamesBought?????????	
A
NoOfGamesPlayed.?+
features/NoOfGamesPlayed?????????	
G
NoOfUnitsPurchased1?.
features/NoOfUnitsPurchased?????????	
/
Tenure%?"
features/Tenure?????????	

 
p
? "??????????	?
A__inference_dense_layer_call_and_return_conditional_losses_706548\/?,
%?"
 ?
inputs?????????	
? "%?"
?
0?????????
? y
&__inference_dense_layer_call_fn_706538O/?,
%?"
 ?
inputs?????????	
? "???????????
F__inference_sequential_layer_call_and_return_conditional_losses_705750?5G6H???
???
???
"
City?
City?????????	
.

CustomerID ?

CustomerID?????????	
R
FavoriteChannelOfTransaction2?/
FavoriteChannelOfTransaction?????????
2
FavoriteGame"?
FavoriteGame?????????
8
FrequencyOFPlay%?"
FrequencyOFPlay?????????	
<
FrquncyOfPurchase'?$
FrquncyOfPurchase?????????	
4
MaxAgeOfChild#? 
MaxAgeOfChild?????????	
4
MinAgeOfChild#? 
MinAgeOfChild?????????	
2
NoOfChildren"?
NoOfChildren?????????	
8
NoOfGamesBought%?"
NoOfGamesBought?????????	
8
NoOfGamesPlayed%?"
NoOfGamesPlayed?????????	
>
NoOfUnitsPurchased(?%
NoOfUnitsPurchased?????????	
&
Tenure?
Tenure?????????	
p 

 
? "%?"
?
0?????????
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_705780?5G6H???
???
???
"
City?
City?????????	
.

CustomerID ?

CustomerID?????????	
R
FavoriteChannelOfTransaction2?/
FavoriteChannelOfTransaction?????????
2
FavoriteGame"?
FavoriteGame?????????
8
FrequencyOFPlay%?"
FrequencyOFPlay?????????	
<
FrquncyOfPurchase'?$
FrquncyOfPurchase?????????	
4
MaxAgeOfChild#? 
MaxAgeOfChild?????????	
4
MinAgeOfChild#? 
MinAgeOfChild?????????	
2
NoOfChildren"?
NoOfChildren?????????	
8
NoOfGamesBought%?"
NoOfGamesBought?????????	
8
NoOfGamesPlayed%?"
NoOfGamesPlayed?????????	
>
NoOfUnitsPurchased(?%
NoOfUnitsPurchased?????????	
&
Tenure?
Tenure?????????	
p

 
? "%?"
?
0?????????
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_705998?5G6H???
???
???
)
City!?
inputs/City?????????	
5

CustomerID'?$
inputs/CustomerID?????????	
Y
FavoriteChannelOfTransaction9?6
#inputs/FavoriteChannelOfTransaction?????????
9
FavoriteGame)?&
inputs/FavoriteGame?????????
?
FrequencyOFPlay,?)
inputs/FrequencyOFPlay?????????	
C
FrquncyOfPurchase.?+
inputs/FrquncyOfPurchase?????????	
;
MaxAgeOfChild*?'
inputs/MaxAgeOfChild?????????	
;
MinAgeOfChild*?'
inputs/MinAgeOfChild?????????	
9
NoOfChildren)?&
inputs/NoOfChildren?????????	
?
NoOfGamesBought,?)
inputs/NoOfGamesBought?????????	
?
NoOfGamesPlayed,?)
inputs/NoOfGamesPlayed?????????	
E
NoOfUnitsPurchased/?,
inputs/NoOfUnitsPurchased?????????	
-
Tenure#? 
inputs/Tenure?????????	
p 

 
? "%?"
?
0?????????
? ?
F__inference_sequential_layer_call_and_return_conditional_losses_706152?5G6H???
???
???
)
City!?
inputs/City?????????	
5

CustomerID'?$
inputs/CustomerID?????????	
Y
FavoriteChannelOfTransaction9?6
#inputs/FavoriteChannelOfTransaction?????????
9
FavoriteGame)?&
inputs/FavoriteGame?????????
?
FrequencyOFPlay,?)
inputs/FrequencyOFPlay?????????	
C
FrquncyOfPurchase.?+
inputs/FrquncyOfPurchase?????????	
;
MaxAgeOfChild*?'
inputs/MaxAgeOfChild?????????	
;
MinAgeOfChild*?'
inputs/MinAgeOfChild?????????	
9
NoOfChildren)?&
inputs/NoOfChildren?????????	
?
NoOfGamesBought,?)
inputs/NoOfGamesBought?????????	
?
NoOfGamesPlayed,?)
inputs/NoOfGamesPlayed?????????	
E
NoOfUnitsPurchased/?,
inputs/NoOfUnitsPurchased?????????	
-
Tenure#? 
inputs/Tenure?????????	
p

 
? "%?"
?
0?????????
? ?
+__inference_sequential_layer_call_fn_705394?5G6H???
???
???
"
City?
City?????????	
.

CustomerID ?

CustomerID?????????	
R
FavoriteChannelOfTransaction2?/
FavoriteChannelOfTransaction?????????
2
FavoriteGame"?
FavoriteGame?????????
8
FrequencyOFPlay%?"
FrequencyOFPlay?????????	
<
FrquncyOfPurchase'?$
FrquncyOfPurchase?????????	
4
MaxAgeOfChild#? 
MaxAgeOfChild?????????	
4
MinAgeOfChild#? 
MinAgeOfChild?????????	
2
NoOfChildren"?
NoOfChildren?????????	
8
NoOfGamesBought%?"
NoOfGamesBought?????????	
8
NoOfGamesPlayed%?"
NoOfGamesPlayed?????????	
>
NoOfUnitsPurchased(?%
NoOfUnitsPurchased?????????	
&
Tenure?
Tenure?????????	
p 

 
? "???????????
+__inference_sequential_layer_call_fn_705720?5G6H???
???
???
"
City?
City?????????	
.

CustomerID ?

CustomerID?????????	
R
FavoriteChannelOfTransaction2?/
FavoriteChannelOfTransaction?????????
2
FavoriteGame"?
FavoriteGame?????????
8
FrequencyOFPlay%?"
FrequencyOFPlay?????????	
<
FrquncyOfPurchase'?$
FrquncyOfPurchase?????????	
4
MaxAgeOfChild#? 
MaxAgeOfChild?????????	
4
MinAgeOfChild#? 
MinAgeOfChild?????????	
2
NoOfChildren"?
NoOfChildren?????????	
8
NoOfGamesBought%?"
NoOfGamesBought?????????	
8
NoOfGamesPlayed%?"
NoOfGamesPlayed?????????	
>
NoOfUnitsPurchased(?%
NoOfUnitsPurchased?????????	
&
Tenure?
Tenure?????????	
p

 
? "???????????
+__inference_sequential_layer_call_fn_705815?5G6H???
???
???
)
City!?
inputs/City?????????	
5

CustomerID'?$
inputs/CustomerID?????????	
Y
FavoriteChannelOfTransaction9?6
#inputs/FavoriteChannelOfTransaction?????????
9
FavoriteGame)?&
inputs/FavoriteGame?????????
?
FrequencyOFPlay,?)
inputs/FrequencyOFPlay?????????	
C
FrquncyOfPurchase.?+
inputs/FrquncyOfPurchase?????????	
;
MaxAgeOfChild*?'
inputs/MaxAgeOfChild?????????	
;
MinAgeOfChild*?'
inputs/MinAgeOfChild?????????	
9
NoOfChildren)?&
inputs/NoOfChildren?????????	
?
NoOfGamesBought,?)
inputs/NoOfGamesBought?????????	
?
NoOfGamesPlayed,?)
inputs/NoOfGamesPlayed?????????	
E
NoOfUnitsPurchased/?,
inputs/NoOfUnitsPurchased?????????	
-
Tenure#? 
inputs/Tenure?????????	
p 

 
? "???????????
+__inference_sequential_layer_call_fn_705844?5G6H???
???
???
)
City!?
inputs/City?????????	
5

CustomerID'?$
inputs/CustomerID?????????	
Y
FavoriteChannelOfTransaction9?6
#inputs/FavoriteChannelOfTransaction?????????
9
FavoriteGame)?&
inputs/FavoriteGame?????????
?
FrequencyOFPlay,?)
inputs/FrequencyOFPlay?????????	
C
FrquncyOfPurchase.?+
inputs/FrquncyOfPurchase?????????	
;
MaxAgeOfChild*?'
inputs/MaxAgeOfChild?????????	
;
MinAgeOfChild*?'
inputs/MinAgeOfChild?????????	
9
NoOfChildren)?&
inputs/NoOfChildren?????????	
?
NoOfGamesBought,?)
inputs/NoOfGamesBought?????????	
?
NoOfGamesPlayed,?)
inputs/NoOfGamesPlayed?????????	
E
NoOfUnitsPurchased/?,
inputs/NoOfUnitsPurchased?????????	
-
Tenure#? 
inputs/Tenure?????????	
p

 
? "???????????
$__inference_signature_wrapper_706183?5G6H???
? 
???
"
City?
City?????????	
.

CustomerID ?

CustomerID?????????	
R
FavoriteChannelOfTransaction2?/
FavoriteChannelOfTransaction?????????
2
FavoriteGame"?
FavoriteGame?????????
8
FrequencyOFPlay%?"
FrequencyOFPlay?????????	
<
FrquncyOfPurchase'?$
FrquncyOfPurchase?????????	
4
MaxAgeOfChild#? 
MaxAgeOfChild?????????	
4
MinAgeOfChild#? 
MinAgeOfChild?????????	
2
NoOfChildren"?
NoOfChildren?????????	
8
NoOfGamesBought%?"
NoOfGamesBought?????????	
8
NoOfGamesPlayed%?"
NoOfGamesPlayed?????????	
>
NoOfUnitsPurchased(?%
NoOfUnitsPurchased?????????	
&
Tenure?
Tenure?????????	"3?0
.
output_1"?
output_1?????????