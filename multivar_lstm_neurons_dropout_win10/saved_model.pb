ª¬
Û
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
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
delete_old_dirsbool(
?
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
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
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
0
Sigmoid
x"T
y"T"
Ttype:

2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
Á
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
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
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
-
Tanh
x"T
y"T"
Ttype:

2
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéèelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68
x
dense_8/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*
shared_namedense_8/kernel
q
"dense_8/kernel/Read/ReadVariableOpReadVariableOpdense_8/kernel*
_output_shapes

:@*
dtype0
p
dense_8/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_8/bias
i
 dense_8/bias/Read/ReadVariableOpReadVariableOpdense_8/bias*
_output_shapes
:*
dtype0
x
dense_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*
shared_namedense_9/kernel
q
"dense_9/kernel/Read/ReadVariableOpReadVariableOpdense_9/kernel*
_output_shapes

:*
dtype0
p
dense_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_9/bias
i
 dense_9/bias/Read/ReadVariableOpReadVariableOpdense_9/bias*
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

lstm_9/lstm_cell_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*+
shared_namelstm_9/lstm_cell_20/kernel

.lstm_9/lstm_cell_20/kernel/Read/ReadVariableOpReadVariableOplstm_9/lstm_cell_20/kernel*
_output_shapes
:	*
dtype0
¥
$lstm_9/lstm_cell_20/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*5
shared_name&$lstm_9/lstm_cell_20/recurrent_kernel

8lstm_9/lstm_cell_20/recurrent_kernel/Read/ReadVariableOpReadVariableOp$lstm_9/lstm_cell_20/recurrent_kernel*
_output_shapes
:	@*
dtype0

lstm_9/lstm_cell_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namelstm_9/lstm_cell_20/bias

,lstm_9/lstm_cell_20/bias/Read/ReadVariableOpReadVariableOplstm_9/lstm_cell_20/bias*
_output_shapes	
:*
dtype0
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

Adam/dense_8/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_8/kernel/m

)Adam/dense_8/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/m*
_output_shapes

:@*
dtype0
~
Adam/dense_8/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_8/bias/m
w
'Adam/dense_8/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/m*
_output_shapes
:*
dtype0

Adam/dense_9/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_9/kernel/m

)Adam/dense_9/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/m*
_output_shapes

:*
dtype0
~
Adam/dense_9/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_9/bias/m
w
'Adam/dense_9/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/m*
_output_shapes
:*
dtype0

!Adam/lstm_9/lstm_cell_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*2
shared_name#!Adam/lstm_9/lstm_cell_20/kernel/m

5Adam/lstm_9/lstm_cell_20/kernel/m/Read/ReadVariableOpReadVariableOp!Adam/lstm_9/lstm_cell_20/kernel/m*
_output_shapes
:	*
dtype0
³
+Adam/lstm_9/lstm_cell_20/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*<
shared_name-+Adam/lstm_9/lstm_cell_20/recurrent_kernel/m
¬
?Adam/lstm_9/lstm_cell_20/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp+Adam/lstm_9/lstm_cell_20/recurrent_kernel/m*
_output_shapes
:	@*
dtype0

Adam/lstm_9/lstm_cell_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/lstm_9/lstm_cell_20/bias/m

3Adam/lstm_9/lstm_cell_20/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_9/lstm_cell_20/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_8/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*&
shared_nameAdam/dense_8/kernel/v

)Adam/dense_8/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/kernel/v*
_output_shapes

:@*
dtype0
~
Adam/dense_8/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_8/bias/v
w
'Adam/dense_8/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_8/bias/v*
_output_shapes
:*
dtype0

Adam/dense_9/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*&
shared_nameAdam/dense_9/kernel/v

)Adam/dense_9/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/kernel/v*
_output_shapes

:*
dtype0
~
Adam/dense_9/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_9/bias/v
w
'Adam/dense_9/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_9/bias/v*
_output_shapes
:*
dtype0

!Adam/lstm_9/lstm_cell_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*2
shared_name#!Adam/lstm_9/lstm_cell_20/kernel/v

5Adam/lstm_9/lstm_cell_20/kernel/v/Read/ReadVariableOpReadVariableOp!Adam/lstm_9/lstm_cell_20/kernel/v*
_output_shapes
:	*
dtype0
³
+Adam/lstm_9/lstm_cell_20/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*<
shared_name-+Adam/lstm_9/lstm_cell_20/recurrent_kernel/v
¬
?Adam/lstm_9/lstm_cell_20/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp+Adam/lstm_9/lstm_cell_20/recurrent_kernel/v*
_output_shapes
:	@*
dtype0

Adam/lstm_9/lstm_cell_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/lstm_9/lstm_cell_20/bias/v

3Adam/lstm_9/lstm_cell_20/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_9/lstm_cell_20/bias/v*
_output_shapes	
:*
dtype0

NoOpNoOp
5
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*Í4
valueÃ4BÀ4 B¹4
Á
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
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
Á
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses*
¦

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
¦

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses*
Â
&iter

'beta_1

(beta_2
	)decay
*learning_ratem[m\m]m^+m_,m`-mavbvcvdve+vf,vg-vh*
5
+0
,1
-2
3
4
5
6*
5
+0
,1
-2
3
4
5
6*
* 
°
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
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
3serving_default* 
ã
4
state_size

+kernel
,recurrent_kernel
-bias
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9_random_generator
:__call__
*;&call_and_return_all_conditional_losses*
* 

+0
,1
-2*

+0
,1
-2*
* 


<states
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 
^X
VARIABLE_VALUEdense_8/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_8/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
^X
VARIABLE_VALUEdense_9/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_9/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 

Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses*
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
ZT
VARIABLE_VALUElstm_9/lstm_cell_20/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
d^
VARIABLE_VALUE$lstm_9/lstm_cell_20/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUElstm_9/lstm_cell_20/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

L0
M1*
* 
* 
* 
* 

+0
,1
-2*

+0
,1
-2*
* 

Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
5	variables
6trainable_variables
7regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*
* 
* 
* 
* 
* 

0*
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
	Stotal
	Tcount
U	variables
V	keras_api*
8
	Wtotal
	Xcount
Y	variables
Z	keras_api*
* 
* 
* 
* 
* 
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

S0
T1*

U	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*

W0
X1*

Y	variables*
{
VARIABLE_VALUEAdam/dense_8/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_8/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_9/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_9/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/lstm_9/lstm_cell_20/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/lstm_9/lstm_cell_20/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/lstm_9/lstm_cell_20/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_8/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_8/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_9/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_9/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE!Adam/lstm_9/lstm_cell_20/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE+Adam/lstm_9/lstm_cell_20/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUEAdam/lstm_9/lstm_cell_20/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_input_10Placeholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ

Ú
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_10lstm_9/lstm_cell_20/kernellstm_9/lstm_cell_20/bias$lstm_9/lstm_cell_20/recurrent_kerneldense_8/kerneldense_8/biasdense_9/kerneldense_9/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *.
f)R'
%__inference_signature_wrapper_3714314
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¡
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_8/kernel/Read/ReadVariableOp dense_8/bias/Read/ReadVariableOp"dense_9/kernel/Read/ReadVariableOp dense_9/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp.lstm_9/lstm_cell_20/kernel/Read/ReadVariableOp8lstm_9/lstm_cell_20/recurrent_kernel/Read/ReadVariableOp,lstm_9/lstm_cell_20/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp)Adam/dense_8/kernel/m/Read/ReadVariableOp'Adam/dense_8/bias/m/Read/ReadVariableOp)Adam/dense_9/kernel/m/Read/ReadVariableOp'Adam/dense_9/bias/m/Read/ReadVariableOp5Adam/lstm_9/lstm_cell_20/kernel/m/Read/ReadVariableOp?Adam/lstm_9/lstm_cell_20/recurrent_kernel/m/Read/ReadVariableOp3Adam/lstm_9/lstm_cell_20/bias/m/Read/ReadVariableOp)Adam/dense_8/kernel/v/Read/ReadVariableOp'Adam/dense_8/bias/v/Read/ReadVariableOp)Adam/dense_9/kernel/v/Read/ReadVariableOp'Adam/dense_9/bias/v/Read/ReadVariableOp5Adam/lstm_9/lstm_cell_20/kernel/v/Read/ReadVariableOp?Adam/lstm_9/lstm_cell_20/recurrent_kernel/v/Read/ReadVariableOp3Adam/lstm_9/lstm_cell_20/bias/v/Read/ReadVariableOpConst*+
Tin$
"2 	*
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
GPU 2J 8 *)
f$R"
 __inference__traced_save_3715770
Ä
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_8/kerneldense_8/biasdense_9/kerneldense_9/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_9/lstm_cell_20/kernel$lstm_9/lstm_cell_20/recurrent_kernellstm_9/lstm_cell_20/biastotalcounttotal_1count_1Adam/dense_8/kernel/mAdam/dense_8/bias/mAdam/dense_9/kernel/mAdam/dense_9/bias/m!Adam/lstm_9/lstm_cell_20/kernel/m+Adam/lstm_9/lstm_cell_20/recurrent_kernel/mAdam/lstm_9/lstm_cell_20/bias/mAdam/dense_8/kernel/vAdam/dense_8/bias/vAdam/dense_9/kernel/vAdam/dense_9/bias/v!Adam/lstm_9/lstm_cell_20/kernel/v+Adam/lstm_9/lstm_cell_20/recurrent_kernel/vAdam/lstm_9/lstm_cell_20/bias/v**
Tin#
!2*
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
GPU 2J 8 *,
f'R%
#__inference__traced_restore_3715870è
À

I__inference_sequential_9_layer_call_and_return_conditional_losses_3714293

inputsD
1lstm_9_lstm_cell_20_split_readvariableop_resource:	B
3lstm_9_lstm_cell_20_split_1_readvariableop_resource:	>
+lstm_9_lstm_cell_20_readvariableop_resource:	@8
&dense_8_matmul_readvariableop_resource:@5
'dense_8_biasadd_readvariableop_resource:8
&dense_9_matmul_readvariableop_resource:5
'dense_9_biasadd_readvariableop_resource:
identity¢dense_8/BiasAdd/ReadVariableOp¢dense_8/MatMul/ReadVariableOp¢dense_9/BiasAdd/ReadVariableOp¢dense_9/MatMul/ReadVariableOp¢"lstm_9/lstm_cell_20/ReadVariableOp¢$lstm_9/lstm_cell_20/ReadVariableOp_1¢$lstm_9/lstm_cell_20/ReadVariableOp_2¢$lstm_9/lstm_cell_20/ReadVariableOp_3¢(lstm_9/lstm_cell_20/split/ReadVariableOp¢*lstm_9/lstm_cell_20/split_1/ReadVariableOp¢lstm_9/whileB
lstm_9/ShapeShapeinputs*
T0*
_output_shapes
:d
lstm_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
lstm_9/strided_sliceStridedSlicelstm_9/Shape:output:0#lstm_9/strided_slice/stack:output:0%lstm_9/strided_slice/stack_1:output:0%lstm_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
lstm_9/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
lstm_9/zeros/packedPacklstm_9/strided_slice:output:0lstm_9/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_9/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_9/zerosFilllstm_9/zeros/packed:output:0lstm_9/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
lstm_9/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
lstm_9/zeros_1/packedPacklstm_9/strided_slice:output:0 lstm_9/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_9/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_9/zeros_1Filllstm_9/zeros_1/packed:output:0lstm_9/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@j
lstm_9/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          {
lstm_9/transpose	Transposeinputslstm_9/transpose/perm:output:0*
T0*+
_output_shapes
:
ÿÿÿÿÿÿÿÿÿR
lstm_9/Shape_1Shapelstm_9/transpose:y:0*
T0*
_output_shapes
:f
lstm_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
lstm_9/strided_slice_1StridedSlicelstm_9/Shape_1:output:0%lstm_9/strided_slice_1/stack:output:0'lstm_9/strided_slice_1/stack_1:output:0'lstm_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_9/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÉ
lstm_9/TensorArrayV2TensorListReserve+lstm_9/TensorArrayV2/element_shape:output:0lstm_9/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
<lstm_9/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   õ
.lstm_9/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_9/transpose:y:0Elstm_9/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒf
lstm_9/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_9/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_9/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_9/strided_slice_2StridedSlicelstm_9/transpose:y:0%lstm_9/strided_slice_2/stack:output:0'lstm_9/strided_slice_2/stack_1:output:0'lstm_9/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskh
#lstm_9/lstm_cell_20/ones_like/ShapeShapelstm_9/zeros:output:0*
T0*
_output_shapes
:h
#lstm_9/lstm_cell_20/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?³
lstm_9/lstm_cell_20/ones_likeFill,lstm_9/lstm_cell_20/ones_like/Shape:output:0,lstm_9/lstm_cell_20/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
!lstm_9/lstm_cell_20/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¬
lstm_9/lstm_cell_20/dropout/MulMul&lstm_9/lstm_cell_20/ones_like:output:0*lstm_9/lstm_cell_20/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
!lstm_9/lstm_cell_20/dropout/ShapeShape&lstm_9/lstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:´
8lstm_9/lstm_cell_20/dropout/random_uniform/RandomUniformRandomUniform*lstm_9/lstm_cell_20/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0o
*lstm_9/lstm_cell_20/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>â
(lstm_9/lstm_cell_20/dropout/GreaterEqualGreaterEqualAlstm_9/lstm_cell_20/dropout/random_uniform/RandomUniform:output:03lstm_9/lstm_cell_20/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 lstm_9/lstm_cell_20/dropout/CastCast,lstm_9/lstm_cell_20/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
!lstm_9/lstm_cell_20/dropout/Mul_1Mul#lstm_9/lstm_cell_20/dropout/Mul:z:0$lstm_9/lstm_cell_20/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
#lstm_9/lstm_cell_20/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?°
!lstm_9/lstm_cell_20/dropout_1/MulMul&lstm_9/lstm_cell_20/ones_like:output:0,lstm_9/lstm_cell_20/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
#lstm_9/lstm_cell_20/dropout_1/ShapeShape&lstm_9/lstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:¸
:lstm_9/lstm_cell_20/dropout_1/random_uniform/RandomUniformRandomUniform,lstm_9/lstm_cell_20/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0q
,lstm_9/lstm_cell_20/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>è
*lstm_9/lstm_cell_20/dropout_1/GreaterEqualGreaterEqualClstm_9/lstm_cell_20/dropout_1/random_uniform/RandomUniform:output:05lstm_9/lstm_cell_20/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"lstm_9/lstm_cell_20/dropout_1/CastCast.lstm_9/lstm_cell_20/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@«
#lstm_9/lstm_cell_20/dropout_1/Mul_1Mul%lstm_9/lstm_cell_20/dropout_1/Mul:z:0&lstm_9/lstm_cell_20/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
#lstm_9/lstm_cell_20/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?°
!lstm_9/lstm_cell_20/dropout_2/MulMul&lstm_9/lstm_cell_20/ones_like:output:0,lstm_9/lstm_cell_20/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
#lstm_9/lstm_cell_20/dropout_2/ShapeShape&lstm_9/lstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:¸
:lstm_9/lstm_cell_20/dropout_2/random_uniform/RandomUniformRandomUniform,lstm_9/lstm_cell_20/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0q
,lstm_9/lstm_cell_20/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>è
*lstm_9/lstm_cell_20/dropout_2/GreaterEqualGreaterEqualClstm_9/lstm_cell_20/dropout_2/random_uniform/RandomUniform:output:05lstm_9/lstm_cell_20/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"lstm_9/lstm_cell_20/dropout_2/CastCast.lstm_9/lstm_cell_20/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@«
#lstm_9/lstm_cell_20/dropout_2/Mul_1Mul%lstm_9/lstm_cell_20/dropout_2/Mul:z:0&lstm_9/lstm_cell_20/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
#lstm_9/lstm_cell_20/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?°
!lstm_9/lstm_cell_20/dropout_3/MulMul&lstm_9/lstm_cell_20/ones_like:output:0,lstm_9/lstm_cell_20/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
#lstm_9/lstm_cell_20/dropout_3/ShapeShape&lstm_9/lstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:¸
:lstm_9/lstm_cell_20/dropout_3/random_uniform/RandomUniformRandomUniform,lstm_9/lstm_cell_20/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0q
,lstm_9/lstm_cell_20/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>è
*lstm_9/lstm_cell_20/dropout_3/GreaterEqualGreaterEqualClstm_9/lstm_cell_20/dropout_3/random_uniform/RandomUniform:output:05lstm_9/lstm_cell_20/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"lstm_9/lstm_cell_20/dropout_3/CastCast.lstm_9/lstm_cell_20/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@«
#lstm_9/lstm_cell_20/dropout_3/Mul_1Mul%lstm_9/lstm_cell_20/dropout_3/Mul:z:0&lstm_9/lstm_cell_20/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
#lstm_9/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
(lstm_9/lstm_cell_20/split/ReadVariableOpReadVariableOp1lstm_9_lstm_cell_20_split_readvariableop_resource*
_output_shapes
:	*
dtype0Ú
lstm_9/lstm_cell_20/splitSplit,lstm_9/lstm_cell_20/split/split_dim:output:00lstm_9/lstm_cell_20/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split
lstm_9/lstm_cell_20/MatMulMatMullstm_9/strided_slice_2:output:0"lstm_9/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_9/lstm_cell_20/MatMul_1MatMullstm_9/strided_slice_2:output:0"lstm_9/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_9/lstm_cell_20/MatMul_2MatMullstm_9/strided_slice_2:output:0"lstm_9/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_9/lstm_cell_20/MatMul_3MatMullstm_9/strided_slice_2:output:0"lstm_9/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
%lstm_9/lstm_cell_20/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
*lstm_9/lstm_cell_20/split_1/ReadVariableOpReadVariableOp3lstm_9_lstm_cell_20_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0Ð
lstm_9/lstm_cell_20/split_1Split.lstm_9/lstm_cell_20/split_1/split_dim:output:02lstm_9/lstm_cell_20/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split¤
lstm_9/lstm_cell_20/BiasAddBiasAdd$lstm_9/lstm_cell_20/MatMul:product:0$lstm_9/lstm_cell_20/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¨
lstm_9/lstm_cell_20/BiasAdd_1BiasAdd&lstm_9/lstm_cell_20/MatMul_1:product:0$lstm_9/lstm_cell_20/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¨
lstm_9/lstm_cell_20/BiasAdd_2BiasAdd&lstm_9/lstm_cell_20/MatMul_2:product:0$lstm_9/lstm_cell_20/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¨
lstm_9/lstm_cell_20/BiasAdd_3BiasAdd&lstm_9/lstm_cell_20/MatMul_3:product:0$lstm_9/lstm_cell_20/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_9/lstm_cell_20/mulMullstm_9/zeros:output:0%lstm_9/lstm_cell_20/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_9/lstm_cell_20/mul_1Mullstm_9/zeros:output:0'lstm_9/lstm_cell_20/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_9/lstm_cell_20/mul_2Mullstm_9/zeros:output:0'lstm_9/lstm_cell_20/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_9/lstm_cell_20/mul_3Mullstm_9/zeros:output:0'lstm_9/lstm_cell_20/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"lstm_9/lstm_cell_20/ReadVariableOpReadVariableOp+lstm_9_lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0x
'lstm_9/lstm_cell_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        z
)lstm_9/lstm_cell_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   z
)lstm_9/lstm_cell_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ï
!lstm_9/lstm_cell_20/strided_sliceStridedSlice*lstm_9/lstm_cell_20/ReadVariableOp:value:00lstm_9/lstm_cell_20/strided_slice/stack:output:02lstm_9/lstm_cell_20/strided_slice/stack_1:output:02lstm_9/lstm_cell_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¡
lstm_9/lstm_cell_20/MatMul_4MatMullstm_9/lstm_cell_20/mul:z:0*lstm_9/lstm_cell_20/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
lstm_9/lstm_cell_20/addAddV2$lstm_9/lstm_cell_20/BiasAdd:output:0&lstm_9/lstm_cell_20/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
lstm_9/lstm_cell_20/SigmoidSigmoidlstm_9/lstm_cell_20/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$lstm_9/lstm_cell_20/ReadVariableOp_1ReadVariableOp+lstm_9_lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0z
)lstm_9/lstm_cell_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   |
+lstm_9/lstm_cell_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       |
+lstm_9/lstm_cell_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ù
#lstm_9/lstm_cell_20/strided_slice_1StridedSlice,lstm_9/lstm_cell_20/ReadVariableOp_1:value:02lstm_9/lstm_cell_20/strided_slice_1/stack:output:04lstm_9/lstm_cell_20/strided_slice_1/stack_1:output:04lstm_9/lstm_cell_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¥
lstm_9/lstm_cell_20/MatMul_5MatMullstm_9/lstm_cell_20/mul_1:z:0,lstm_9/lstm_cell_20/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
lstm_9/lstm_cell_20/add_1AddV2&lstm_9/lstm_cell_20/BiasAdd_1:output:0&lstm_9/lstm_cell_20/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
lstm_9/lstm_cell_20/Sigmoid_1Sigmoidlstm_9/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_9/lstm_cell_20/mul_4Mul!lstm_9/lstm_cell_20/Sigmoid_1:y:0lstm_9/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$lstm_9/lstm_cell_20/ReadVariableOp_2ReadVariableOp+lstm_9_lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0z
)lstm_9/lstm_cell_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       |
+lstm_9/lstm_cell_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   |
+lstm_9/lstm_cell_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ù
#lstm_9/lstm_cell_20/strided_slice_2StridedSlice,lstm_9/lstm_cell_20/ReadVariableOp_2:value:02lstm_9/lstm_cell_20/strided_slice_2/stack:output:04lstm_9/lstm_cell_20/strided_slice_2/stack_1:output:04lstm_9/lstm_cell_20/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¥
lstm_9/lstm_cell_20/MatMul_6MatMullstm_9/lstm_cell_20/mul_2:z:0,lstm_9/lstm_cell_20/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
lstm_9/lstm_cell_20/add_2AddV2&lstm_9/lstm_cell_20/BiasAdd_2:output:0&lstm_9/lstm_cell_20/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
lstm_9/lstm_cell_20/TanhTanhlstm_9/lstm_cell_20/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_9/lstm_cell_20/mul_5Mullstm_9/lstm_cell_20/Sigmoid:y:0lstm_9/lstm_cell_20/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_9/lstm_cell_20/add_3AddV2lstm_9/lstm_cell_20/mul_4:z:0lstm_9/lstm_cell_20/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$lstm_9/lstm_cell_20/ReadVariableOp_3ReadVariableOp+lstm_9_lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0z
)lstm_9/lstm_cell_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   |
+lstm_9/lstm_cell_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        |
+lstm_9/lstm_cell_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ù
#lstm_9/lstm_cell_20/strided_slice_3StridedSlice,lstm_9/lstm_cell_20/ReadVariableOp_3:value:02lstm_9/lstm_cell_20/strided_slice_3/stack:output:04lstm_9/lstm_cell_20/strided_slice_3/stack_1:output:04lstm_9/lstm_cell_20/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¥
lstm_9/lstm_cell_20/MatMul_7MatMullstm_9/lstm_cell_20/mul_3:z:0,lstm_9/lstm_cell_20/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
lstm_9/lstm_cell_20/add_4AddV2&lstm_9/lstm_cell_20/BiasAdd_3:output:0&lstm_9/lstm_cell_20/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
lstm_9/lstm_cell_20/Sigmoid_2Sigmoidlstm_9/lstm_cell_20/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
lstm_9/lstm_cell_20/Tanh_1Tanhlstm_9/lstm_cell_20/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_9/lstm_cell_20/mul_6Mul!lstm_9/lstm_cell_20/Sigmoid_2:y:0lstm_9/lstm_cell_20/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
$lstm_9/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Í
lstm_9/TensorArrayV2_1TensorListReserve-lstm_9/TensorArrayV2_1/element_shape:output:0lstm_9/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒM
lstm_9/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_9/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ[
lstm_9/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ü
lstm_9/whileWhile"lstm_9/while/loop_counter:output:0(lstm_9/while/maximum_iterations:output:0lstm_9/time:output:0lstm_9/TensorArrayV2_1:handle:0lstm_9/zeros:output:0lstm_9/zeros_1:output:0lstm_9/strided_slice_1:output:0>lstm_9/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_9_lstm_cell_20_split_readvariableop_resource3lstm_9_lstm_cell_20_split_1_readvariableop_resource+lstm_9_lstm_cell_20_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_9_while_body_3714121*%
condR
lstm_9_while_cond_3714120*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
7lstm_9/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ×
)lstm_9/TensorArrayV2Stack/TensorListStackTensorListStacklstm_9/while:output:3@lstm_9/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
ÿÿÿÿÿÿÿÿÿ@*
element_dtype0o
lstm_9/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿh
lstm_9/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_9/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ª
lstm_9/strided_slice_3StridedSlice2lstm_9/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_9/strided_slice_3/stack:output:0'lstm_9/strided_slice_3/stack_1:output:0'lstm_9/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskl
lstm_9/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
lstm_9/transpose_1	Transpose2lstm_9/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_9/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@b
lstm_9/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense_8/MatMulMatMullstm_9/strided_slice_3:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
dense_8/ReluReludense_8/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_9/MatMulMatMuldense_8/Relu:activations:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitydense_9/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÉ
NoOpNoOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp#^lstm_9/lstm_cell_20/ReadVariableOp%^lstm_9/lstm_cell_20/ReadVariableOp_1%^lstm_9/lstm_cell_20/ReadVariableOp_2%^lstm_9/lstm_cell_20/ReadVariableOp_3)^lstm_9/lstm_cell_20/split/ReadVariableOp+^lstm_9/lstm_cell_20/split_1/ReadVariableOp^lstm_9/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ
: : : : : : : 2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2H
"lstm_9/lstm_cell_20/ReadVariableOp"lstm_9/lstm_cell_20/ReadVariableOp2L
$lstm_9/lstm_cell_20/ReadVariableOp_1$lstm_9/lstm_cell_20/ReadVariableOp_12L
$lstm_9/lstm_cell_20/ReadVariableOp_2$lstm_9/lstm_cell_20/ReadVariableOp_22L
$lstm_9/lstm_cell_20/ReadVariableOp_3$lstm_9/lstm_cell_20/ReadVariableOp_32T
(lstm_9/lstm_cell_20/split/ReadVariableOp(lstm_9/lstm_cell_20/split/ReadVariableOp2X
*lstm_9/lstm_cell_20/split_1/ReadVariableOp*lstm_9/lstm_cell_20/split_1/ReadVariableOp2
lstm_9/whilelstm_9/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
º
È
while_cond_3712873
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3712873___redundant_placeholder05
1while_while_cond_3712873___redundant_placeholder15
1while_while_cond_3712873___redundant_placeholder25
1while_while_cond_3712873___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
ú>
¬
I__inference_lstm_cell_20_layer_call_and_return_conditional_losses_3715550

inputs
states_0
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	@
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpG
ones_like/ShapeShapestates_0*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype0
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_splitZ
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype0
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z
mulMulstates_0ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
mul_1Mulstates_0ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
mul_2Mulstates_0ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
mul_3Mulstates_0ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ë
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maske
MatMul_4MatMulmul:z:0strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      õ
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_5MatMul	mul_1:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
mul_4MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      õ
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_6MatMul	mul_2:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@U
mul_5MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      õ
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_7MatMul	mul_3:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@K
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
mul_6MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X
IdentityIdentity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_1Identity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@À
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/1
©
¶
I__inference_sequential_9_layer_call_and_return_conditional_losses_3713229

inputs!
lstm_9_3713188:	
lstm_9_3713190:	!
lstm_9_3713192:	@!
dense_8_3713207:@
dense_8_3713209:!
dense_9_3713223:
dense_9_3713225:
identity¢dense_8/StatefulPartitionedCall¢dense_9/StatefulPartitionedCall¢lstm_9/StatefulPartitionedCallý
lstm_9/StatefulPartitionedCallStatefulPartitionedCallinputslstm_9_3713188lstm_9_3713190lstm_9_3713192*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_9_layer_call_and_return_conditional_losses_3713187
dense_8/StatefulPartitionedCallStatefulPartitionedCall'lstm_9/StatefulPartitionedCall:output:0dense_8_3713207dense_8_3713209*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_3713206
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_3713223dense_9_3713225*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_3713222w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
NoOpNoOp ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall^lstm_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ
: : : : : : : 2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2@
lstm_9/StatefulPartitionedCalllstm_9/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
º
È
while_cond_3715242
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3715242___redundant_placeholder05
1while_while_cond_3715242___redundant_placeholder15
1while_while_cond_3715242___redundant_placeholder25
1while_while_cond_3715242___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
ë
Ø
&sequential_9_lstm_9_while_cond_3712343D
@sequential_9_lstm_9_while_sequential_9_lstm_9_while_loop_counterJ
Fsequential_9_lstm_9_while_sequential_9_lstm_9_while_maximum_iterations)
%sequential_9_lstm_9_while_placeholder+
'sequential_9_lstm_9_while_placeholder_1+
'sequential_9_lstm_9_while_placeholder_2+
'sequential_9_lstm_9_while_placeholder_3F
Bsequential_9_lstm_9_while_less_sequential_9_lstm_9_strided_slice_1]
Ysequential_9_lstm_9_while_sequential_9_lstm_9_while_cond_3712343___redundant_placeholder0]
Ysequential_9_lstm_9_while_sequential_9_lstm_9_while_cond_3712343___redundant_placeholder1]
Ysequential_9_lstm_9_while_sequential_9_lstm_9_while_cond_3712343___redundant_placeholder2]
Ysequential_9_lstm_9_while_sequential_9_lstm_9_while_cond_3712343___redundant_placeholder3&
"sequential_9_lstm_9_while_identity
²
sequential_9/lstm_9/while/LessLess%sequential_9_lstm_9_while_placeholderBsequential_9_lstm_9_while_less_sequential_9_lstm_9_strided_slice_1*
T0*
_output_shapes
: s
"sequential_9/lstm_9/while/IdentityIdentity"sequential_9/lstm_9/while/Less:z:0*
T0
*
_output_shapes
: "Q
"sequential_9_lstm_9_while_identity+sequential_9/lstm_9/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
ê>
ª
I__inference_lstm_cell_20_layer_call_and_return_conditional_losses_3712594

inputs

states
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	@
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpE
ones_like/ShapeShapestates*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype0
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_splitZ
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype0
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X
mulMulstatesones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z
mul_1Mulstatesones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z
mul_2Mulstatesones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z
mul_3Mulstatesones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ë
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maske
MatMul_4MatMulmul:z:0strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      õ
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_5MatMul	mul_1:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
mul_4MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      õ
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_6MatMul	mul_2:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@U
mul_5MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      õ
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_7MatMul	mul_3:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@K
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
mul_6MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X
IdentityIdentity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_1Identity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@À
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates
í
÷
.__inference_lstm_cell_20_layer_call_fn_3715475

inputs
states_0
states_1
unknown:	
	unknown_0:	
	unknown_1:	@
identity

identity_1

identity_2¢StatefulPartitionedCall©
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_20_layer_call_and_return_conditional_losses_3712815o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/1
÷
µ
(__inference_lstm_9_layer_call_fn_3714358

inputs
unknown:	
	unknown_0:	
	unknown_1:	@
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_9_layer_call_and_return_conditional_losses_3713572o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
ám
¥	
while_body_3714982
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_20_split_readvariableop_resource_0:	C
4while_lstm_cell_20_split_1_readvariableop_resource_0:	?
,while_lstm_cell_20_readvariableop_resource_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_20_split_readvariableop_resource:	A
2while_lstm_cell_20_split_1_readvariableop_resource:	=
*while_lstm_cell_20_readvariableop_resource:	@¢!while/lstm_cell_20/ReadVariableOp¢#while/lstm_cell_20/ReadVariableOp_1¢#while/lstm_cell_20/ReadVariableOp_2¢#while/lstm_cell_20/ReadVariableOp_3¢'while/lstm_cell_20/split/ReadVariableOp¢)while/lstm_cell_20/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0e
"while/lstm_cell_20/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:g
"while/lstm_cell_20/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?°
while/lstm_cell_20/ones_likeFill+while/lstm_cell_20/ones_like/Shape:output:0+while/lstm_cell_20/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
"while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
'while/lstm_cell_20/split/ReadVariableOpReadVariableOp2while_lstm_cell_20_split_readvariableop_resource_0*
_output_shapes
:	*
dtype0×
while/lstm_cell_20/splitSplit+while/lstm_cell_20/split/split_dim:output:0/while/lstm_cell_20/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_splitª
while/lstm_cell_20/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_20/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_20/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_20/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
$while/lstm_cell_20/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
)while/lstm_cell_20/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_20_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Í
while/lstm_cell_20/split_1Split-while/lstm_cell_20/split_1/split_dim:output:01while/lstm_cell_20/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split¡
while/lstm_cell_20/BiasAddBiasAdd#while/lstm_cell_20/MatMul:product:0#while/lstm_cell_20/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_20/BiasAdd_1BiasAdd%while/lstm_cell_20/MatMul_1:product:0#while/lstm_cell_20/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_20/BiasAdd_2BiasAdd%while/lstm_cell_20/MatMul_2:product:0#while/lstm_cell_20/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_20/BiasAdd_3BiasAdd%while/lstm_cell_20/MatMul_3:product:0#while/lstm_cell_20/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mulMulwhile_placeholder_2%while/lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_1Mulwhile_placeholder_2%while/lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_2Mulwhile_placeholder_2%while/lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_3Mulwhile_placeholder_2%while/lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!while/lstm_cell_20/ReadVariableOpReadVariableOp,while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0w
&while/lstm_cell_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(while/lstm_cell_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   y
(while/lstm_cell_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ê
 while/lstm_cell_20/strided_sliceStridedSlice)while/lstm_cell_20/ReadVariableOp:value:0/while/lstm_cell_20/strided_slice/stack:output:01while/lstm_cell_20/strided_slice/stack_1:output:01while/lstm_cell_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell_20/MatMul_4MatMulwhile/lstm_cell_20/mul:z:0)while/lstm_cell_20/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/addAddV2#while/lstm_cell_20/BiasAdd:output:0%while/lstm_cell_20/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
while/lstm_cell_20/SigmoidSigmoidwhile/lstm_cell_20/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_20/ReadVariableOp_1ReadVariableOp,while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   {
*while/lstm_cell_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       {
*while/lstm_cell_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_20/strided_slice_1StridedSlice+while/lstm_cell_20/ReadVariableOp_1:value:01while/lstm_cell_20/strided_slice_1/stack:output:03while/lstm_cell_20/strided_slice_1/stack_1:output:03while/lstm_cell_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_20/MatMul_5MatMulwhile/lstm_cell_20/mul_1:z:0+while/lstm_cell_20/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_20/add_1AddV2%while/lstm_cell_20/BiasAdd_1:output:0%while/lstm_cell_20/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/lstm_cell_20/Sigmoid_1Sigmoidwhile/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_4Mul while/lstm_cell_20/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_20/ReadVariableOp_2ReadVariableOp,while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       {
*while/lstm_cell_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   {
*while/lstm_cell_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_20/strided_slice_2StridedSlice+while/lstm_cell_20/ReadVariableOp_2:value:01while/lstm_cell_20/strided_slice_2/stack:output:03while/lstm_cell_20/strided_slice_2/stack_1:output:03while/lstm_cell_20/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_20/MatMul_6MatMulwhile/lstm_cell_20/mul_2:z:0+while/lstm_cell_20/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_20/add_2AddV2%while/lstm_cell_20/BiasAdd_2:output:0%while/lstm_cell_20/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
while/lstm_cell_20/TanhTanhwhile/lstm_cell_20/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_5Mulwhile/lstm_cell_20/Sigmoid:y:0while/lstm_cell_20/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/add_3AddV2while/lstm_cell_20/mul_4:z:0while/lstm_cell_20/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_20/ReadVariableOp_3ReadVariableOp,while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   {
*while/lstm_cell_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*while/lstm_cell_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_20/strided_slice_3StridedSlice+while/lstm_cell_20/ReadVariableOp_3:value:01while/lstm_cell_20/strided_slice_3/stack:output:03while/lstm_cell_20/strided_slice_3/stack_1:output:03while/lstm_cell_20/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_20/MatMul_7MatMulwhile/lstm_cell_20/mul_3:z:0+while/lstm_cell_20/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_20/add_4AddV2%while/lstm_cell_20/BiasAdd_3:output:0%while/lstm_cell_20/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/lstm_cell_20/Sigmoid_2Sigmoidwhile/lstm_cell_20/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
while/lstm_cell_20/Tanh_1Tanhwhile/lstm_cell_20/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_6Mul while/lstm_cell_20/Sigmoid_2:y:0while/lstm_cell_20/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_20/mul_6:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_20/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
while/Identity_5Identitywhile/lstm_cell_20/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸

while/NoOpNoOp"^while/lstm_cell_20/ReadVariableOp$^while/lstm_cell_20/ReadVariableOp_1$^while/lstm_cell_20/ReadVariableOp_2$^while/lstm_cell_20/ReadVariableOp_3(^while/lstm_cell_20/split/ReadVariableOp*^while/lstm_cell_20/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_20_readvariableop_resource,while_lstm_cell_20_readvariableop_resource_0"j
2while_lstm_cell_20_split_1_readvariableop_resource4while_lstm_cell_20_split_1_readvariableop_resource_0"f
0while_lstm_cell_20_split_readvariableop_resource2while_lstm_cell_20_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2F
!while/lstm_cell_20/ReadVariableOp!while/lstm_cell_20/ReadVariableOp2J
#while/lstm_cell_20/ReadVariableOp_1#while/lstm_cell_20/ReadVariableOp_12J
#while/lstm_cell_20/ReadVariableOp_2#while/lstm_cell_20/ReadVariableOp_22J
#while/lstm_cell_20/ReadVariableOp_3#while/lstm_cell_20/ReadVariableOp_32R
'while/lstm_cell_20/split/ReadVariableOp'while/lstm_cell_20/split/ReadVariableOp2V
)while/lstm_cell_20/split_1/ReadVariableOp)while/lstm_cell_20/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
®·
Ü
"__inference__wrapped_model_3712484
input_10Q
>sequential_9_lstm_9_lstm_cell_20_split_readvariableop_resource:	O
@sequential_9_lstm_9_lstm_cell_20_split_1_readvariableop_resource:	K
8sequential_9_lstm_9_lstm_cell_20_readvariableop_resource:	@E
3sequential_9_dense_8_matmul_readvariableop_resource:@B
4sequential_9_dense_8_biasadd_readvariableop_resource:E
3sequential_9_dense_9_matmul_readvariableop_resource:B
4sequential_9_dense_9_biasadd_readvariableop_resource:
identity¢+sequential_9/dense_8/BiasAdd/ReadVariableOp¢*sequential_9/dense_8/MatMul/ReadVariableOp¢+sequential_9/dense_9/BiasAdd/ReadVariableOp¢*sequential_9/dense_9/MatMul/ReadVariableOp¢/sequential_9/lstm_9/lstm_cell_20/ReadVariableOp¢1sequential_9/lstm_9/lstm_cell_20/ReadVariableOp_1¢1sequential_9/lstm_9/lstm_cell_20/ReadVariableOp_2¢1sequential_9/lstm_9/lstm_cell_20/ReadVariableOp_3¢5sequential_9/lstm_9/lstm_cell_20/split/ReadVariableOp¢7sequential_9/lstm_9/lstm_cell_20/split_1/ReadVariableOp¢sequential_9/lstm_9/whileQ
sequential_9/lstm_9/ShapeShapeinput_10*
T0*
_output_shapes
:q
'sequential_9/lstm_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)sequential_9/lstm_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)sequential_9/lstm_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:µ
!sequential_9/lstm_9/strided_sliceStridedSlice"sequential_9/lstm_9/Shape:output:00sequential_9/lstm_9/strided_slice/stack:output:02sequential_9/lstm_9/strided_slice/stack_1:output:02sequential_9/lstm_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"sequential_9/lstm_9/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@¯
 sequential_9/lstm_9/zeros/packedPack*sequential_9/lstm_9/strided_slice:output:0+sequential_9/lstm_9/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:d
sequential_9/lstm_9/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¨
sequential_9/lstm_9/zerosFill)sequential_9/lstm_9/zeros/packed:output:0(sequential_9/lstm_9/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
$sequential_9/lstm_9/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@³
"sequential_9/lstm_9/zeros_1/packedPack*sequential_9/lstm_9/strided_slice:output:0-sequential_9/lstm_9/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_9/lstm_9/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_9/lstm_9/zeros_1Fill+sequential_9/lstm_9/zeros_1/packed:output:0*sequential_9/lstm_9/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
"sequential_9/lstm_9/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
sequential_9/lstm_9/transpose	Transposeinput_10+sequential_9/lstm_9/transpose/perm:output:0*
T0*+
_output_shapes
:
ÿÿÿÿÿÿÿÿÿl
sequential_9/lstm_9/Shape_1Shape!sequential_9/lstm_9/transpose:y:0*
T0*
_output_shapes
:s
)sequential_9/lstm_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_9/lstm_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_9/lstm_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_9/lstm_9/strided_slice_1StridedSlice$sequential_9/lstm_9/Shape_1:output:02sequential_9/lstm_9/strided_slice_1/stack:output:04sequential_9/lstm_9/strided_slice_1/stack_1:output:04sequential_9/lstm_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskz
/sequential_9/lstm_9/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿð
!sequential_9/lstm_9/TensorArrayV2TensorListReserve8sequential_9/lstm_9/TensorArrayV2/element_shape:output:0,sequential_9/lstm_9/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Isequential_9/lstm_9/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
;sequential_9/lstm_9/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_9/lstm_9/transpose:y:0Rsequential_9/lstm_9/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒs
)sequential_9/lstm_9/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_9/lstm_9/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_9/lstm_9/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Í
#sequential_9/lstm_9/strided_slice_2StridedSlice!sequential_9/lstm_9/transpose:y:02sequential_9/lstm_9/strided_slice_2/stack:output:04sequential_9/lstm_9/strided_slice_2/stack_1:output:04sequential_9/lstm_9/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
0sequential_9/lstm_9/lstm_cell_20/ones_like/ShapeShape"sequential_9/lstm_9/zeros:output:0*
T0*
_output_shapes
:u
0sequential_9/lstm_9/lstm_cell_20/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Ú
*sequential_9/lstm_9/lstm_cell_20/ones_likeFill9sequential_9/lstm_9/lstm_cell_20/ones_like/Shape:output:09sequential_9/lstm_9/lstm_cell_20/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@r
0sequential_9/lstm_9/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :µ
5sequential_9/lstm_9/lstm_cell_20/split/ReadVariableOpReadVariableOp>sequential_9_lstm_9_lstm_cell_20_split_readvariableop_resource*
_output_shapes
:	*
dtype0
&sequential_9/lstm_9/lstm_cell_20/splitSplit9sequential_9/lstm_9/lstm_cell_20/split/split_dim:output:0=sequential_9/lstm_9/lstm_cell_20/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_splitÂ
'sequential_9/lstm_9/lstm_cell_20/MatMulMatMul,sequential_9/lstm_9/strided_slice_2:output:0/sequential_9/lstm_9/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ä
)sequential_9/lstm_9/lstm_cell_20/MatMul_1MatMul,sequential_9/lstm_9/strided_slice_2:output:0/sequential_9/lstm_9/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ä
)sequential_9/lstm_9/lstm_cell_20/MatMul_2MatMul,sequential_9/lstm_9/strided_slice_2:output:0/sequential_9/lstm_9/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ä
)sequential_9/lstm_9/lstm_cell_20/MatMul_3MatMul,sequential_9/lstm_9/strided_slice_2:output:0/sequential_9/lstm_9/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@t
2sequential_9/lstm_9/lstm_cell_20/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : µ
7sequential_9/lstm_9/lstm_cell_20/split_1/ReadVariableOpReadVariableOp@sequential_9_lstm_9_lstm_cell_20_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0÷
(sequential_9/lstm_9/lstm_cell_20/split_1Split;sequential_9/lstm_9/lstm_cell_20/split_1/split_dim:output:0?sequential_9/lstm_9/lstm_cell_20/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitË
(sequential_9/lstm_9/lstm_cell_20/BiasAddBiasAdd1sequential_9/lstm_9/lstm_cell_20/MatMul:product:01sequential_9/lstm_9/lstm_cell_20/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ï
*sequential_9/lstm_9/lstm_cell_20/BiasAdd_1BiasAdd3sequential_9/lstm_9/lstm_cell_20/MatMul_1:product:01sequential_9/lstm_9/lstm_cell_20/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ï
*sequential_9/lstm_9/lstm_cell_20/BiasAdd_2BiasAdd3sequential_9/lstm_9/lstm_cell_20/MatMul_2:product:01sequential_9/lstm_9/lstm_cell_20/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ï
*sequential_9/lstm_9/lstm_cell_20/BiasAdd_3BiasAdd3sequential_9/lstm_9/lstm_cell_20/MatMul_3:product:01sequential_9/lstm_9/lstm_cell_20/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¶
$sequential_9/lstm_9/lstm_cell_20/mulMul"sequential_9/lstm_9/zeros:output:03sequential_9/lstm_9/lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
&sequential_9/lstm_9/lstm_cell_20/mul_1Mul"sequential_9/lstm_9/zeros:output:03sequential_9/lstm_9/lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
&sequential_9/lstm_9/lstm_cell_20/mul_2Mul"sequential_9/lstm_9/zeros:output:03sequential_9/lstm_9/lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
&sequential_9/lstm_9/lstm_cell_20/mul_3Mul"sequential_9/lstm_9/zeros:output:03sequential_9/lstm_9/lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@©
/sequential_9/lstm_9/lstm_cell_20/ReadVariableOpReadVariableOp8sequential_9_lstm_9_lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0
4sequential_9/lstm_9/lstm_cell_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
6sequential_9/lstm_9/lstm_cell_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   
6sequential_9/lstm_9/lstm_cell_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
.sequential_9/lstm_9/lstm_cell_20/strided_sliceStridedSlice7sequential_9/lstm_9/lstm_cell_20/ReadVariableOp:value:0=sequential_9/lstm_9/lstm_cell_20/strided_slice/stack:output:0?sequential_9/lstm_9/lstm_cell_20/strided_slice/stack_1:output:0?sequential_9/lstm_9/lstm_cell_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskÈ
)sequential_9/lstm_9/lstm_cell_20/MatMul_4MatMul(sequential_9/lstm_9/lstm_cell_20/mul:z:07sequential_9/lstm_9/lstm_cell_20/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ç
$sequential_9/lstm_9/lstm_cell_20/addAddV21sequential_9/lstm_9/lstm_cell_20/BiasAdd:output:03sequential_9/lstm_9/lstm_cell_20/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(sequential_9/lstm_9/lstm_cell_20/SigmoidSigmoid(sequential_9/lstm_9/lstm_cell_20/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@«
1sequential_9/lstm_9/lstm_cell_20/ReadVariableOp_1ReadVariableOp8sequential_9_lstm_9_lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0
6sequential_9/lstm_9/lstm_cell_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   
8sequential_9/lstm_9/lstm_cell_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
8sequential_9/lstm_9/lstm_cell_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
0sequential_9/lstm_9/lstm_cell_20/strided_slice_1StridedSlice9sequential_9/lstm_9/lstm_cell_20/ReadVariableOp_1:value:0?sequential_9/lstm_9/lstm_cell_20/strided_slice_1/stack:output:0Asequential_9/lstm_9/lstm_cell_20/strided_slice_1/stack_1:output:0Asequential_9/lstm_9/lstm_cell_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskÌ
)sequential_9/lstm_9/lstm_cell_20/MatMul_5MatMul*sequential_9/lstm_9/lstm_cell_20/mul_1:z:09sequential_9/lstm_9/lstm_cell_20/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ë
&sequential_9/lstm_9/lstm_cell_20/add_1AddV23sequential_9/lstm_9/lstm_cell_20/BiasAdd_1:output:03sequential_9/lstm_9/lstm_cell_20/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
*sequential_9/lstm_9/lstm_cell_20/Sigmoid_1Sigmoid*sequential_9/lstm_9/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@µ
&sequential_9/lstm_9/lstm_cell_20/mul_4Mul.sequential_9/lstm_9/lstm_cell_20/Sigmoid_1:y:0$sequential_9/lstm_9/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@«
1sequential_9/lstm_9/lstm_cell_20/ReadVariableOp_2ReadVariableOp8sequential_9_lstm_9_lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0
6sequential_9/lstm_9/lstm_cell_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       
8sequential_9/lstm_9/lstm_cell_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   
8sequential_9/lstm_9/lstm_cell_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
0sequential_9/lstm_9/lstm_cell_20/strided_slice_2StridedSlice9sequential_9/lstm_9/lstm_cell_20/ReadVariableOp_2:value:0?sequential_9/lstm_9/lstm_cell_20/strided_slice_2/stack:output:0Asequential_9/lstm_9/lstm_cell_20/strided_slice_2/stack_1:output:0Asequential_9/lstm_9/lstm_cell_20/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskÌ
)sequential_9/lstm_9/lstm_cell_20/MatMul_6MatMul*sequential_9/lstm_9/lstm_cell_20/mul_2:z:09sequential_9/lstm_9/lstm_cell_20/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ë
&sequential_9/lstm_9/lstm_cell_20/add_2AddV23sequential_9/lstm_9/lstm_cell_20/BiasAdd_2:output:03sequential_9/lstm_9/lstm_cell_20/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%sequential_9/lstm_9/lstm_cell_20/TanhTanh*sequential_9/lstm_9/lstm_cell_20/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸
&sequential_9/lstm_9/lstm_cell_20/mul_5Mul,sequential_9/lstm_9/lstm_cell_20/Sigmoid:y:0)sequential_9/lstm_9/lstm_cell_20/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¹
&sequential_9/lstm_9/lstm_cell_20/add_3AddV2*sequential_9/lstm_9/lstm_cell_20/mul_4:z:0*sequential_9/lstm_9/lstm_cell_20/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@«
1sequential_9/lstm_9/lstm_cell_20/ReadVariableOp_3ReadVariableOp8sequential_9_lstm_9_lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0
6sequential_9/lstm_9/lstm_cell_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   
8sequential_9/lstm_9/lstm_cell_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
8sequential_9/lstm_9/lstm_cell_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
0sequential_9/lstm_9/lstm_cell_20/strided_slice_3StridedSlice9sequential_9/lstm_9/lstm_cell_20/ReadVariableOp_3:value:0?sequential_9/lstm_9/lstm_cell_20/strided_slice_3/stack:output:0Asequential_9/lstm_9/lstm_cell_20/strided_slice_3/stack_1:output:0Asequential_9/lstm_9/lstm_cell_20/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskÌ
)sequential_9/lstm_9/lstm_cell_20/MatMul_7MatMul*sequential_9/lstm_9/lstm_cell_20/mul_3:z:09sequential_9/lstm_9/lstm_cell_20/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ë
&sequential_9/lstm_9/lstm_cell_20/add_4AddV23sequential_9/lstm_9/lstm_cell_20/BiasAdd_3:output:03sequential_9/lstm_9/lstm_cell_20/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
*sequential_9/lstm_9/lstm_cell_20/Sigmoid_2Sigmoid*sequential_9/lstm_9/lstm_cell_20/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
'sequential_9/lstm_9/lstm_cell_20/Tanh_1Tanh*sequential_9/lstm_9/lstm_cell_20/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¼
&sequential_9/lstm_9/lstm_cell_20/mul_6Mul.sequential_9/lstm_9/lstm_cell_20/Sigmoid_2:y:0+sequential_9/lstm_9/lstm_cell_20/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
1sequential_9/lstm_9/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ô
#sequential_9/lstm_9/TensorArrayV2_1TensorListReserve:sequential_9/lstm_9/TensorArrayV2_1/element_shape:output:0,sequential_9/lstm_9/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒZ
sequential_9/lstm_9/timeConst*
_output_shapes
: *
dtype0*
value	B : w
,sequential_9/lstm_9/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿh
&sequential_9/lstm_9/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
sequential_9/lstm_9/whileWhile/sequential_9/lstm_9/while/loop_counter:output:05sequential_9/lstm_9/while/maximum_iterations:output:0!sequential_9/lstm_9/time:output:0,sequential_9/lstm_9/TensorArrayV2_1:handle:0"sequential_9/lstm_9/zeros:output:0$sequential_9/lstm_9/zeros_1:output:0,sequential_9/lstm_9/strided_slice_1:output:0Ksequential_9/lstm_9/TensorArrayUnstack/TensorListFromTensor:output_handle:0>sequential_9_lstm_9_lstm_cell_20_split_readvariableop_resource@sequential_9_lstm_9_lstm_cell_20_split_1_readvariableop_resource8sequential_9_lstm_9_lstm_cell_20_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *2
body*R(
&sequential_9_lstm_9_while_body_3712344*2
cond*R(
&sequential_9_lstm_9_while_cond_3712343*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
Dsequential_9/lstm_9/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   þ
6sequential_9/lstm_9/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_9/lstm_9/while:output:3Msequential_9/lstm_9/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
ÿÿÿÿÿÿÿÿÿ@*
element_dtype0|
)sequential_9/lstm_9/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿu
+sequential_9/lstm_9/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: u
+sequential_9/lstm_9/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ë
#sequential_9/lstm_9/strided_slice_3StridedSlice?sequential_9/lstm_9/TensorArrayV2Stack/TensorListStack:tensor:02sequential_9/lstm_9/strided_slice_3/stack:output:04sequential_9/lstm_9/strided_slice_3/stack_1:output:04sequential_9/lstm_9/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_masky
$sequential_9/lstm_9/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ò
sequential_9/lstm_9/transpose_1	Transpose?sequential_9/lstm_9/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_9/lstm_9/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@o
sequential_9/lstm_9/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
*sequential_9/dense_8/MatMul/ReadVariableOpReadVariableOp3sequential_9_dense_8_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0¹
sequential_9/dense_8/MatMulMatMul,sequential_9/lstm_9/strided_slice_3:output:02sequential_9/dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+sequential_9/dense_8/BiasAdd/ReadVariableOpReadVariableOp4sequential_9_dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0µ
sequential_9/dense_8/BiasAddBiasAdd%sequential_9/dense_8/MatMul:product:03sequential_9/dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿz
sequential_9/dense_8/ReluRelu%sequential_9/dense_8/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*sequential_9/dense_9/MatMul/ReadVariableOpReadVariableOp3sequential_9_dense_9_matmul_readvariableop_resource*
_output_shapes

:*
dtype0´
sequential_9/dense_9/MatMulMatMul'sequential_9/dense_8/Relu:activations:02sequential_9/dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
+sequential_9/dense_9/BiasAdd/ReadVariableOpReadVariableOp4sequential_9_dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0µ
sequential_9/dense_9/BiasAddBiasAdd%sequential_9/dense_9/MatMul:product:03sequential_9/dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿt
IdentityIdentity%sequential_9/dense_9/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿØ
NoOpNoOp,^sequential_9/dense_8/BiasAdd/ReadVariableOp+^sequential_9/dense_8/MatMul/ReadVariableOp,^sequential_9/dense_9/BiasAdd/ReadVariableOp+^sequential_9/dense_9/MatMul/ReadVariableOp0^sequential_9/lstm_9/lstm_cell_20/ReadVariableOp2^sequential_9/lstm_9/lstm_cell_20/ReadVariableOp_12^sequential_9/lstm_9/lstm_cell_20/ReadVariableOp_22^sequential_9/lstm_9/lstm_cell_20/ReadVariableOp_36^sequential_9/lstm_9/lstm_cell_20/split/ReadVariableOp8^sequential_9/lstm_9/lstm_cell_20/split_1/ReadVariableOp^sequential_9/lstm_9/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ
: : : : : : : 2Z
+sequential_9/dense_8/BiasAdd/ReadVariableOp+sequential_9/dense_8/BiasAdd/ReadVariableOp2X
*sequential_9/dense_8/MatMul/ReadVariableOp*sequential_9/dense_8/MatMul/ReadVariableOp2Z
+sequential_9/dense_9/BiasAdd/ReadVariableOp+sequential_9/dense_9/BiasAdd/ReadVariableOp2X
*sequential_9/dense_9/MatMul/ReadVariableOp*sequential_9/dense_9/MatMul/ReadVariableOp2b
/sequential_9/lstm_9/lstm_cell_20/ReadVariableOp/sequential_9/lstm_9/lstm_cell_20/ReadVariableOp2f
1sequential_9/lstm_9/lstm_cell_20/ReadVariableOp_11sequential_9/lstm_9/lstm_cell_20/ReadVariableOp_12f
1sequential_9/lstm_9/lstm_cell_20/ReadVariableOp_21sequential_9/lstm_9/lstm_cell_20/ReadVariableOp_22f
1sequential_9/lstm_9/lstm_cell_20/ReadVariableOp_31sequential_9/lstm_9/lstm_cell_20/ReadVariableOp_32n
5sequential_9/lstm_9/lstm_cell_20/split/ReadVariableOp5sequential_9/lstm_9/lstm_cell_20/split/ReadVariableOp2r
7sequential_9/lstm_9/lstm_cell_20/split_1/ReadVariableOp7sequential_9/lstm_9/lstm_cell_20/split_1/ReadVariableOp26
sequential_9/lstm_9/whilesequential_9/lstm_9/while:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
input_10
õ
¥	
while_body_3713413
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_20_split_readvariableop_resource_0:	C
4while_lstm_cell_20_split_1_readvariableop_resource_0:	?
,while_lstm_cell_20_readvariableop_resource_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_20_split_readvariableop_resource:	A
2while_lstm_cell_20_split_1_readvariableop_resource:	=
*while_lstm_cell_20_readvariableop_resource:	@¢!while/lstm_cell_20/ReadVariableOp¢#while/lstm_cell_20/ReadVariableOp_1¢#while/lstm_cell_20/ReadVariableOp_2¢#while/lstm_cell_20/ReadVariableOp_3¢'while/lstm_cell_20/split/ReadVariableOp¢)while/lstm_cell_20/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0e
"while/lstm_cell_20/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:g
"while/lstm_cell_20/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?°
while/lstm_cell_20/ones_likeFill+while/lstm_cell_20/ones_like/Shape:output:0+while/lstm_cell_20/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
 while/lstm_cell_20/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?©
while/lstm_cell_20/dropout/MulMul%while/lstm_cell_20/ones_like:output:0)while/lstm_cell_20/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
 while/lstm_cell_20/dropout/ShapeShape%while/lstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:²
7while/lstm_cell_20/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_20/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0n
)while/lstm_cell_20/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>ß
'while/lstm_cell_20/dropout/GreaterEqualGreaterEqual@while/lstm_cell_20/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_20/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/dropout/CastCast+while/lstm_cell_20/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
 while/lstm_cell_20/dropout/Mul_1Mul"while/lstm_cell_20/dropout/Mul:z:0#while/lstm_cell_20/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
"while/lstm_cell_20/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?­
 while/lstm_cell_20/dropout_1/MulMul%while/lstm_cell_20/ones_like:output:0+while/lstm_cell_20/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
"while/lstm_cell_20/dropout_1/ShapeShape%while/lstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:¶
9while/lstm_cell_20/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_20/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0p
+while/lstm_cell_20/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>å
)while/lstm_cell_20/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_20/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_20/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!while/lstm_cell_20/dropout_1/CastCast-while/lstm_cell_20/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¨
"while/lstm_cell_20/dropout_1/Mul_1Mul$while/lstm_cell_20/dropout_1/Mul:z:0%while/lstm_cell_20/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
"while/lstm_cell_20/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?­
 while/lstm_cell_20/dropout_2/MulMul%while/lstm_cell_20/ones_like:output:0+while/lstm_cell_20/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
"while/lstm_cell_20/dropout_2/ShapeShape%while/lstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:¶
9while/lstm_cell_20/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_20/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0p
+while/lstm_cell_20/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>å
)while/lstm_cell_20/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_20/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_20/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!while/lstm_cell_20/dropout_2/CastCast-while/lstm_cell_20/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¨
"while/lstm_cell_20/dropout_2/Mul_1Mul$while/lstm_cell_20/dropout_2/Mul:z:0%while/lstm_cell_20/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
"while/lstm_cell_20/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?­
 while/lstm_cell_20/dropout_3/MulMul%while/lstm_cell_20/ones_like:output:0+while/lstm_cell_20/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
"while/lstm_cell_20/dropout_3/ShapeShape%while/lstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:¶
9while/lstm_cell_20/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_20/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0p
+while/lstm_cell_20/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>å
)while/lstm_cell_20/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_20/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_20/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!while/lstm_cell_20/dropout_3/CastCast-while/lstm_cell_20/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¨
"while/lstm_cell_20/dropout_3/Mul_1Mul$while/lstm_cell_20/dropout_3/Mul:z:0%while/lstm_cell_20/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
"while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
'while/lstm_cell_20/split/ReadVariableOpReadVariableOp2while_lstm_cell_20_split_readvariableop_resource_0*
_output_shapes
:	*
dtype0×
while/lstm_cell_20/splitSplit+while/lstm_cell_20/split/split_dim:output:0/while/lstm_cell_20/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_splitª
while/lstm_cell_20/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_20/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_20/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_20/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
$while/lstm_cell_20/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
)while/lstm_cell_20/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_20_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Í
while/lstm_cell_20/split_1Split-while/lstm_cell_20/split_1/split_dim:output:01while/lstm_cell_20/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split¡
while/lstm_cell_20/BiasAddBiasAdd#while/lstm_cell_20/MatMul:product:0#while/lstm_cell_20/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_20/BiasAdd_1BiasAdd%while/lstm_cell_20/MatMul_1:product:0#while/lstm_cell_20/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_20/BiasAdd_2BiasAdd%while/lstm_cell_20/MatMul_2:product:0#while/lstm_cell_20/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_20/BiasAdd_3BiasAdd%while/lstm_cell_20/MatMul_3:product:0#while/lstm_cell_20/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mulMulwhile_placeholder_2$while/lstm_cell_20/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_1Mulwhile_placeholder_2&while/lstm_cell_20/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_2Mulwhile_placeholder_2&while/lstm_cell_20/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_3Mulwhile_placeholder_2&while/lstm_cell_20/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!while/lstm_cell_20/ReadVariableOpReadVariableOp,while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0w
&while/lstm_cell_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(while/lstm_cell_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   y
(while/lstm_cell_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ê
 while/lstm_cell_20/strided_sliceStridedSlice)while/lstm_cell_20/ReadVariableOp:value:0/while/lstm_cell_20/strided_slice/stack:output:01while/lstm_cell_20/strided_slice/stack_1:output:01while/lstm_cell_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell_20/MatMul_4MatMulwhile/lstm_cell_20/mul:z:0)while/lstm_cell_20/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/addAddV2#while/lstm_cell_20/BiasAdd:output:0%while/lstm_cell_20/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
while/lstm_cell_20/SigmoidSigmoidwhile/lstm_cell_20/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_20/ReadVariableOp_1ReadVariableOp,while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   {
*while/lstm_cell_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       {
*while/lstm_cell_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_20/strided_slice_1StridedSlice+while/lstm_cell_20/ReadVariableOp_1:value:01while/lstm_cell_20/strided_slice_1/stack:output:03while/lstm_cell_20/strided_slice_1/stack_1:output:03while/lstm_cell_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_20/MatMul_5MatMulwhile/lstm_cell_20/mul_1:z:0+while/lstm_cell_20/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_20/add_1AddV2%while/lstm_cell_20/BiasAdd_1:output:0%while/lstm_cell_20/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/lstm_cell_20/Sigmoid_1Sigmoidwhile/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_4Mul while/lstm_cell_20/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_20/ReadVariableOp_2ReadVariableOp,while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       {
*while/lstm_cell_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   {
*while/lstm_cell_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_20/strided_slice_2StridedSlice+while/lstm_cell_20/ReadVariableOp_2:value:01while/lstm_cell_20/strided_slice_2/stack:output:03while/lstm_cell_20/strided_slice_2/stack_1:output:03while/lstm_cell_20/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_20/MatMul_6MatMulwhile/lstm_cell_20/mul_2:z:0+while/lstm_cell_20/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_20/add_2AddV2%while/lstm_cell_20/BiasAdd_2:output:0%while/lstm_cell_20/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
while/lstm_cell_20/TanhTanhwhile/lstm_cell_20/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_5Mulwhile/lstm_cell_20/Sigmoid:y:0while/lstm_cell_20/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/add_3AddV2while/lstm_cell_20/mul_4:z:0while/lstm_cell_20/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_20/ReadVariableOp_3ReadVariableOp,while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   {
*while/lstm_cell_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*while/lstm_cell_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_20/strided_slice_3StridedSlice+while/lstm_cell_20/ReadVariableOp_3:value:01while/lstm_cell_20/strided_slice_3/stack:output:03while/lstm_cell_20/strided_slice_3/stack_1:output:03while/lstm_cell_20/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_20/MatMul_7MatMulwhile/lstm_cell_20/mul_3:z:0+while/lstm_cell_20/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_20/add_4AddV2%while/lstm_cell_20/BiasAdd_3:output:0%while/lstm_cell_20/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/lstm_cell_20/Sigmoid_2Sigmoidwhile/lstm_cell_20/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
while/lstm_cell_20/Tanh_1Tanhwhile/lstm_cell_20/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_6Mul while/lstm_cell_20/Sigmoid_2:y:0while/lstm_cell_20/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_20/mul_6:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_20/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
while/Identity_5Identitywhile/lstm_cell_20/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸

while/NoOpNoOp"^while/lstm_cell_20/ReadVariableOp$^while/lstm_cell_20/ReadVariableOp_1$^while/lstm_cell_20/ReadVariableOp_2$^while/lstm_cell_20/ReadVariableOp_3(^while/lstm_cell_20/split/ReadVariableOp*^while/lstm_cell_20/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_20_readvariableop_resource,while_lstm_cell_20_readvariableop_resource_0"j
2while_lstm_cell_20_split_1_readvariableop_resource4while_lstm_cell_20_split_1_readvariableop_resource_0"f
0while_lstm_cell_20_split_readvariableop_resource2while_lstm_cell_20_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2F
!while/lstm_cell_20/ReadVariableOp!while/lstm_cell_20/ReadVariableOp2J
#while/lstm_cell_20/ReadVariableOp_1#while/lstm_cell_20/ReadVariableOp_12J
#while/lstm_cell_20/ReadVariableOp_2#while/lstm_cell_20/ReadVariableOp_22J
#while/lstm_cell_20/ReadVariableOp_3#while/lstm_cell_20/ReadVariableOp_32R
'while/lstm_cell_20/split/ReadVariableOp'while/lstm_cell_20/split/ReadVariableOp2V
)while/lstm_cell_20/split_1/ReadVariableOp)while/lstm_cell_20/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
þ	
Ô
lstm_9_while_cond_3713846*
&lstm_9_while_lstm_9_while_loop_counter0
,lstm_9_while_lstm_9_while_maximum_iterations
lstm_9_while_placeholder
lstm_9_while_placeholder_1
lstm_9_while_placeholder_2
lstm_9_while_placeholder_3,
(lstm_9_while_less_lstm_9_strided_slice_1C
?lstm_9_while_lstm_9_while_cond_3713846___redundant_placeholder0C
?lstm_9_while_lstm_9_while_cond_3713846___redundant_placeholder1C
?lstm_9_while_lstm_9_while_cond_3713846___redundant_placeholder2C
?lstm_9_while_lstm_9_while_cond_3713846___redundant_placeholder3
lstm_9_while_identity
~
lstm_9/while/LessLesslstm_9_while_placeholder(lstm_9_while_less_lstm_9_strided_slice_1*
T0*
_output_shapes
: Y
lstm_9/while/IdentityIdentitylstm_9/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_9_while_identitylstm_9/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
¡y
æ
#__inference__traced_restore_3715870
file_prefix1
assignvariableop_dense_8_kernel:@-
assignvariableop_1_dense_8_bias:3
!assignvariableop_2_dense_9_kernel:-
assignvariableop_3_dense_9_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: @
-assignvariableop_9_lstm_9_lstm_cell_20_kernel:	K
8assignvariableop_10_lstm_9_lstm_cell_20_recurrent_kernel:	@;
,assignvariableop_11_lstm_9_lstm_cell_20_bias:	#
assignvariableop_12_total: #
assignvariableop_13_count: %
assignvariableop_14_total_1: %
assignvariableop_15_count_1: ;
)assignvariableop_16_adam_dense_8_kernel_m:@5
'assignvariableop_17_adam_dense_8_bias_m:;
)assignvariableop_18_adam_dense_9_kernel_m:5
'assignvariableop_19_adam_dense_9_bias_m:H
5assignvariableop_20_adam_lstm_9_lstm_cell_20_kernel_m:	R
?assignvariableop_21_adam_lstm_9_lstm_cell_20_recurrent_kernel_m:	@B
3assignvariableop_22_adam_lstm_9_lstm_cell_20_bias_m:	;
)assignvariableop_23_adam_dense_8_kernel_v:@5
'assignvariableop_24_adam_dense_8_bias_v:;
)assignvariableop_25_adam_dense_9_kernel_v:5
'assignvariableop_26_adam_dense_9_bias_v:H
5assignvariableop_27_adam_lstm_9_lstm_cell_20_kernel_v:	R
?assignvariableop_28_adam_lstm_9_lstm_cell_20_recurrent_kernel_v:	@B
3assignvariableop_29_adam_lstm_9_lstm_cell_20_bias_v:	
identity_31¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9Î
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ô
valueêBçB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH®
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B º
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes~
|:::::::::::::::::::::::::::::::*-
dtypes#
!2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_dense_8_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_8_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_9_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_9_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_iterIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_1Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_beta_2Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_adam_decayIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp%assignvariableop_8_adam_learning_rateIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOp-assignvariableop_9_lstm_9_lstm_cell_20_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:©
AssignVariableOp_10AssignVariableOp8assignvariableop_10_lstm_9_lstm_cell_20_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp,assignvariableop_11_lstm_9_lstm_cell_20_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOpassignvariableop_12_totalIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_countIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_total_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOpassignvariableop_15_count_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_dense_8_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_dense_8_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp)assignvariableop_18_adam_dense_9_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp'assignvariableop_19_adam_dense_9_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_20AssignVariableOp5assignvariableop_20_adam_lstm_9_lstm_cell_20_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_21AssignVariableOp?assignvariableop_21_adam_lstm_9_lstm_cell_20_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_22AssignVariableOp3assignvariableop_22_adam_lstm_9_lstm_cell_20_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_8_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_8_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp)assignvariableop_25_adam_dense_9_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp'assignvariableop_26_adam_dense_9_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:¦
AssignVariableOp_27AssignVariableOp5assignvariableop_27_adam_lstm_9_lstm_cell_20_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:°
AssignVariableOp_28AssignVariableOp?assignvariableop_28_adam_lstm_9_lstm_cell_20_recurrent_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:¤
AssignVariableOp_29AssignVariableOp3assignvariableop_29_adam_lstm_9_lstm_cell_20_bias_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ã
Identity_30Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_31IdentityIdentity_30:output:0^NoOp_1*
T0*
_output_shapes
: Ð
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_31Identity_31:output:0*Q
_input_shapes@
>: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
¦
á
&sequential_9_lstm_9_while_body_3712344D
@sequential_9_lstm_9_while_sequential_9_lstm_9_while_loop_counterJ
Fsequential_9_lstm_9_while_sequential_9_lstm_9_while_maximum_iterations)
%sequential_9_lstm_9_while_placeholder+
'sequential_9_lstm_9_while_placeholder_1+
'sequential_9_lstm_9_while_placeholder_2+
'sequential_9_lstm_9_while_placeholder_3C
?sequential_9_lstm_9_while_sequential_9_lstm_9_strided_slice_1_0
{sequential_9_lstm_9_while_tensorarrayv2read_tensorlistgetitem_sequential_9_lstm_9_tensorarrayunstack_tensorlistfromtensor_0Y
Fsequential_9_lstm_9_while_lstm_cell_20_split_readvariableop_resource_0:	W
Hsequential_9_lstm_9_while_lstm_cell_20_split_1_readvariableop_resource_0:	S
@sequential_9_lstm_9_while_lstm_cell_20_readvariableop_resource_0:	@&
"sequential_9_lstm_9_while_identity(
$sequential_9_lstm_9_while_identity_1(
$sequential_9_lstm_9_while_identity_2(
$sequential_9_lstm_9_while_identity_3(
$sequential_9_lstm_9_while_identity_4(
$sequential_9_lstm_9_while_identity_5A
=sequential_9_lstm_9_while_sequential_9_lstm_9_strided_slice_1}
ysequential_9_lstm_9_while_tensorarrayv2read_tensorlistgetitem_sequential_9_lstm_9_tensorarrayunstack_tensorlistfromtensorW
Dsequential_9_lstm_9_while_lstm_cell_20_split_readvariableop_resource:	U
Fsequential_9_lstm_9_while_lstm_cell_20_split_1_readvariableop_resource:	Q
>sequential_9_lstm_9_while_lstm_cell_20_readvariableop_resource:	@¢5sequential_9/lstm_9/while/lstm_cell_20/ReadVariableOp¢7sequential_9/lstm_9/while/lstm_cell_20/ReadVariableOp_1¢7sequential_9/lstm_9/while/lstm_cell_20/ReadVariableOp_2¢7sequential_9/lstm_9/while/lstm_cell_20/ReadVariableOp_3¢;sequential_9/lstm_9/while/lstm_cell_20/split/ReadVariableOp¢=sequential_9/lstm_9/while/lstm_cell_20/split_1/ReadVariableOp
Ksequential_9/lstm_9/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
=sequential_9/lstm_9/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_9_lstm_9_while_tensorarrayv2read_tensorlistgetitem_sequential_9_lstm_9_tensorarrayunstack_tensorlistfromtensor_0%sequential_9_lstm_9_while_placeholderTsequential_9/lstm_9/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
6sequential_9/lstm_9/while/lstm_cell_20/ones_like/ShapeShape'sequential_9_lstm_9_while_placeholder_2*
T0*
_output_shapes
:{
6sequential_9/lstm_9/while/lstm_cell_20/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ì
0sequential_9/lstm_9/while/lstm_cell_20/ones_likeFill?sequential_9/lstm_9/while/lstm_cell_20/ones_like/Shape:output:0?sequential_9/lstm_9/while/lstm_cell_20/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@x
6sequential_9/lstm_9/while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ã
;sequential_9/lstm_9/while/lstm_cell_20/split/ReadVariableOpReadVariableOpFsequential_9_lstm_9_while_lstm_cell_20_split_readvariableop_resource_0*
_output_shapes
:	*
dtype0
,sequential_9/lstm_9/while/lstm_cell_20/splitSplit?sequential_9/lstm_9/while/lstm_cell_20/split/split_dim:output:0Csequential_9/lstm_9/while/lstm_cell_20/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_splitæ
-sequential_9/lstm_9/while/lstm_cell_20/MatMulMatMulDsequential_9/lstm_9/while/TensorArrayV2Read/TensorListGetItem:item:05sequential_9/lstm_9/while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@è
/sequential_9/lstm_9/while/lstm_cell_20/MatMul_1MatMulDsequential_9/lstm_9/while/TensorArrayV2Read/TensorListGetItem:item:05sequential_9/lstm_9/while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@è
/sequential_9/lstm_9/while/lstm_cell_20/MatMul_2MatMulDsequential_9/lstm_9/while/TensorArrayV2Read/TensorListGetItem:item:05sequential_9/lstm_9/while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@è
/sequential_9/lstm_9/while/lstm_cell_20/MatMul_3MatMulDsequential_9/lstm_9/while/TensorArrayV2Read/TensorListGetItem:item:05sequential_9/lstm_9/while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
8sequential_9/lstm_9/while/lstm_cell_20/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ã
=sequential_9/lstm_9/while/lstm_cell_20/split_1/ReadVariableOpReadVariableOpHsequential_9_lstm_9_while_lstm_cell_20_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0
.sequential_9/lstm_9/while/lstm_cell_20/split_1SplitAsequential_9/lstm_9/while/lstm_cell_20/split_1/split_dim:output:0Esequential_9/lstm_9/while/lstm_cell_20/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitÝ
.sequential_9/lstm_9/while/lstm_cell_20/BiasAddBiasAdd7sequential_9/lstm_9/while/lstm_cell_20/MatMul:product:07sequential_9/lstm_9/while/lstm_cell_20/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@á
0sequential_9/lstm_9/while/lstm_cell_20/BiasAdd_1BiasAdd9sequential_9/lstm_9/while/lstm_cell_20/MatMul_1:product:07sequential_9/lstm_9/while/lstm_cell_20/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@á
0sequential_9/lstm_9/while/lstm_cell_20/BiasAdd_2BiasAdd9sequential_9/lstm_9/while/lstm_cell_20/MatMul_2:product:07sequential_9/lstm_9/while/lstm_cell_20/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@á
0sequential_9/lstm_9/while/lstm_cell_20/BiasAdd_3BiasAdd9sequential_9/lstm_9/while/lstm_cell_20/MatMul_3:product:07sequential_9/lstm_9/while/lstm_cell_20/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ç
*sequential_9/lstm_9/while/lstm_cell_20/mulMul'sequential_9_lstm_9_while_placeholder_29sequential_9/lstm_9/while/lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@É
,sequential_9/lstm_9/while/lstm_cell_20/mul_1Mul'sequential_9_lstm_9_while_placeholder_29sequential_9/lstm_9/while/lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@É
,sequential_9/lstm_9/while/lstm_cell_20/mul_2Mul'sequential_9_lstm_9_while_placeholder_29sequential_9/lstm_9/while/lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@É
,sequential_9/lstm_9/while/lstm_cell_20/mul_3Mul'sequential_9_lstm_9_while_placeholder_29sequential_9/lstm_9/while/lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@·
5sequential_9/lstm_9/while/lstm_cell_20/ReadVariableOpReadVariableOp@sequential_9_lstm_9_while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
:sequential_9/lstm_9/while/lstm_cell_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
<sequential_9/lstm_9/while/lstm_cell_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   
<sequential_9/lstm_9/while/lstm_cell_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ®
4sequential_9/lstm_9/while/lstm_cell_20/strided_sliceStridedSlice=sequential_9/lstm_9/while/lstm_cell_20/ReadVariableOp:value:0Csequential_9/lstm_9/while/lstm_cell_20/strided_slice/stack:output:0Esequential_9/lstm_9/while/lstm_cell_20/strided_slice/stack_1:output:0Esequential_9/lstm_9/while/lstm_cell_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskÚ
/sequential_9/lstm_9/while/lstm_cell_20/MatMul_4MatMul.sequential_9/lstm_9/while/lstm_cell_20/mul:z:0=sequential_9/lstm_9/while/lstm_cell_20/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ù
*sequential_9/lstm_9/while/lstm_cell_20/addAddV27sequential_9/lstm_9/while/lstm_cell_20/BiasAdd:output:09sequential_9/lstm_9/while/lstm_cell_20/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
.sequential_9/lstm_9/while/lstm_cell_20/SigmoidSigmoid.sequential_9/lstm_9/while/lstm_cell_20/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¹
7sequential_9/lstm_9/while/lstm_cell_20/ReadVariableOp_1ReadVariableOp@sequential_9_lstm_9_while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
<sequential_9/lstm_9/while/lstm_cell_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   
>sequential_9/lstm_9/while/lstm_cell_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
>sequential_9/lstm_9/while/lstm_cell_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¸
6sequential_9/lstm_9/while/lstm_cell_20/strided_slice_1StridedSlice?sequential_9/lstm_9/while/lstm_cell_20/ReadVariableOp_1:value:0Esequential_9/lstm_9/while/lstm_cell_20/strided_slice_1/stack:output:0Gsequential_9/lstm_9/while/lstm_cell_20/strided_slice_1/stack_1:output:0Gsequential_9/lstm_9/while/lstm_cell_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskÞ
/sequential_9/lstm_9/while/lstm_cell_20/MatMul_5MatMul0sequential_9/lstm_9/while/lstm_cell_20/mul_1:z:0?sequential_9/lstm_9/while/lstm_cell_20/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ý
,sequential_9/lstm_9/while/lstm_cell_20/add_1AddV29sequential_9/lstm_9/while/lstm_cell_20/BiasAdd_1:output:09sequential_9/lstm_9/while/lstm_cell_20/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
0sequential_9/lstm_9/while/lstm_cell_20/Sigmoid_1Sigmoid0sequential_9/lstm_9/while/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ä
,sequential_9/lstm_9/while/lstm_cell_20/mul_4Mul4sequential_9/lstm_9/while/lstm_cell_20/Sigmoid_1:y:0'sequential_9_lstm_9_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¹
7sequential_9/lstm_9/while/lstm_cell_20/ReadVariableOp_2ReadVariableOp@sequential_9_lstm_9_while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
<sequential_9/lstm_9/while/lstm_cell_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       
>sequential_9/lstm_9/while/lstm_cell_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   
>sequential_9/lstm_9/while/lstm_cell_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¸
6sequential_9/lstm_9/while/lstm_cell_20/strided_slice_2StridedSlice?sequential_9/lstm_9/while/lstm_cell_20/ReadVariableOp_2:value:0Esequential_9/lstm_9/while/lstm_cell_20/strided_slice_2/stack:output:0Gsequential_9/lstm_9/while/lstm_cell_20/strided_slice_2/stack_1:output:0Gsequential_9/lstm_9/while/lstm_cell_20/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskÞ
/sequential_9/lstm_9/while/lstm_cell_20/MatMul_6MatMul0sequential_9/lstm_9/while/lstm_cell_20/mul_2:z:0?sequential_9/lstm_9/while/lstm_cell_20/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ý
,sequential_9/lstm_9/while/lstm_cell_20/add_2AddV29sequential_9/lstm_9/while/lstm_cell_20/BiasAdd_2:output:09sequential_9/lstm_9/while/lstm_cell_20/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
+sequential_9/lstm_9/while/lstm_cell_20/TanhTanh0sequential_9/lstm_9/while/lstm_cell_20/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ê
,sequential_9/lstm_9/while/lstm_cell_20/mul_5Mul2sequential_9/lstm_9/while/lstm_cell_20/Sigmoid:y:0/sequential_9/lstm_9/while/lstm_cell_20/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ë
,sequential_9/lstm_9/while/lstm_cell_20/add_3AddV20sequential_9/lstm_9/while/lstm_cell_20/mul_4:z:00sequential_9/lstm_9/while/lstm_cell_20/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¹
7sequential_9/lstm_9/while/lstm_cell_20/ReadVariableOp_3ReadVariableOp@sequential_9_lstm_9_while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
<sequential_9/lstm_9/while/lstm_cell_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   
>sequential_9/lstm_9/while/lstm_cell_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
>sequential_9/lstm_9/while/lstm_cell_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¸
6sequential_9/lstm_9/while/lstm_cell_20/strided_slice_3StridedSlice?sequential_9/lstm_9/while/lstm_cell_20/ReadVariableOp_3:value:0Esequential_9/lstm_9/while/lstm_cell_20/strided_slice_3/stack:output:0Gsequential_9/lstm_9/while/lstm_cell_20/strided_slice_3/stack_1:output:0Gsequential_9/lstm_9/while/lstm_cell_20/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskÞ
/sequential_9/lstm_9/while/lstm_cell_20/MatMul_7MatMul0sequential_9/lstm_9/while/lstm_cell_20/mul_3:z:0?sequential_9/lstm_9/while/lstm_cell_20/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ý
,sequential_9/lstm_9/while/lstm_cell_20/add_4AddV29sequential_9/lstm_9/while/lstm_cell_20/BiasAdd_3:output:09sequential_9/lstm_9/while/lstm_cell_20/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
0sequential_9/lstm_9/while/lstm_cell_20/Sigmoid_2Sigmoid0sequential_9/lstm_9/while/lstm_cell_20/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
-sequential_9/lstm_9/while/lstm_cell_20/Tanh_1Tanh0sequential_9/lstm_9/while/lstm_cell_20/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Î
,sequential_9/lstm_9/while/lstm_cell_20/mul_6Mul4sequential_9/lstm_9/while/lstm_cell_20/Sigmoid_2:y:01sequential_9/lstm_9/while/lstm_cell_20/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
>sequential_9/lstm_9/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_9_lstm_9_while_placeholder_1%sequential_9_lstm_9_while_placeholder0sequential_9/lstm_9/while/lstm_cell_20/mul_6:z:0*
_output_shapes
: *
element_dtype0:éèÒa
sequential_9/lstm_9/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_9/lstm_9/while/addAddV2%sequential_9_lstm_9_while_placeholder(sequential_9/lstm_9/while/add/y:output:0*
T0*
_output_shapes
: c
!sequential_9/lstm_9/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :·
sequential_9/lstm_9/while/add_1AddV2@sequential_9_lstm_9_while_sequential_9_lstm_9_while_loop_counter*sequential_9/lstm_9/while/add_1/y:output:0*
T0*
_output_shapes
: 
"sequential_9/lstm_9/while/IdentityIdentity#sequential_9/lstm_9/while/add_1:z:0^sequential_9/lstm_9/while/NoOp*
T0*
_output_shapes
: º
$sequential_9/lstm_9/while/Identity_1IdentityFsequential_9_lstm_9_while_sequential_9_lstm_9_while_maximum_iterations^sequential_9/lstm_9/while/NoOp*
T0*
_output_shapes
: 
$sequential_9/lstm_9/while/Identity_2Identity!sequential_9/lstm_9/while/add:z:0^sequential_9/lstm_9/while/NoOp*
T0*
_output_shapes
: Õ
$sequential_9/lstm_9/while/Identity_3IdentityNsequential_9/lstm_9/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^sequential_9/lstm_9/while/NoOp*
T0*
_output_shapes
: :éèÒµ
$sequential_9/lstm_9/while/Identity_4Identity0sequential_9/lstm_9/while/lstm_cell_20/mul_6:z:0^sequential_9/lstm_9/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@µ
$sequential_9/lstm_9/while/Identity_5Identity0sequential_9/lstm_9/while/lstm_cell_20/add_3:z:0^sequential_9/lstm_9/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ä
sequential_9/lstm_9/while/NoOpNoOp6^sequential_9/lstm_9/while/lstm_cell_20/ReadVariableOp8^sequential_9/lstm_9/while/lstm_cell_20/ReadVariableOp_18^sequential_9/lstm_9/while/lstm_cell_20/ReadVariableOp_28^sequential_9/lstm_9/while/lstm_cell_20/ReadVariableOp_3<^sequential_9/lstm_9/while/lstm_cell_20/split/ReadVariableOp>^sequential_9/lstm_9/while/lstm_cell_20/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "Q
"sequential_9_lstm_9_while_identity+sequential_9/lstm_9/while/Identity:output:0"U
$sequential_9_lstm_9_while_identity_1-sequential_9/lstm_9/while/Identity_1:output:0"U
$sequential_9_lstm_9_while_identity_2-sequential_9/lstm_9/while/Identity_2:output:0"U
$sequential_9_lstm_9_while_identity_3-sequential_9/lstm_9/while/Identity_3:output:0"U
$sequential_9_lstm_9_while_identity_4-sequential_9/lstm_9/while/Identity_4:output:0"U
$sequential_9_lstm_9_while_identity_5-sequential_9/lstm_9/while/Identity_5:output:0"
>sequential_9_lstm_9_while_lstm_cell_20_readvariableop_resource@sequential_9_lstm_9_while_lstm_cell_20_readvariableop_resource_0"
Fsequential_9_lstm_9_while_lstm_cell_20_split_1_readvariableop_resourceHsequential_9_lstm_9_while_lstm_cell_20_split_1_readvariableop_resource_0"
Dsequential_9_lstm_9_while_lstm_cell_20_split_readvariableop_resourceFsequential_9_lstm_9_while_lstm_cell_20_split_readvariableop_resource_0"
=sequential_9_lstm_9_while_sequential_9_lstm_9_strided_slice_1?sequential_9_lstm_9_while_sequential_9_lstm_9_strided_slice_1_0"ø
ysequential_9_lstm_9_while_tensorarrayv2read_tensorlistgetitem_sequential_9_lstm_9_tensorarrayunstack_tensorlistfromtensor{sequential_9_lstm_9_while_tensorarrayv2read_tensorlistgetitem_sequential_9_lstm_9_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2n
5sequential_9/lstm_9/while/lstm_cell_20/ReadVariableOp5sequential_9/lstm_9/while/lstm_cell_20/ReadVariableOp2r
7sequential_9/lstm_9/while/lstm_cell_20/ReadVariableOp_17sequential_9/lstm_9/while/lstm_cell_20/ReadVariableOp_12r
7sequential_9/lstm_9/while/lstm_cell_20/ReadVariableOp_27sequential_9/lstm_9/while/lstm_cell_20/ReadVariableOp_22r
7sequential_9/lstm_9/while/lstm_cell_20/ReadVariableOp_37sequential_9/lstm_9/while/lstm_cell_20/ReadVariableOp_32z
;sequential_9/lstm_9/while/lstm_cell_20/split/ReadVariableOp;sequential_9/lstm_9/while/lstm_cell_20/split/ReadVariableOp2~
=sequential_9/lstm_9/while/lstm_cell_20/split_1/ReadVariableOp=sequential_9/lstm_9/while/lstm_cell_20/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
|

lstm_9_while_body_3713847*
&lstm_9_while_lstm_9_while_loop_counter0
,lstm_9_while_lstm_9_while_maximum_iterations
lstm_9_while_placeholder
lstm_9_while_placeholder_1
lstm_9_while_placeholder_2
lstm_9_while_placeholder_3)
%lstm_9_while_lstm_9_strided_slice_1_0e
alstm_9_while_tensorarrayv2read_tensorlistgetitem_lstm_9_tensorarrayunstack_tensorlistfromtensor_0L
9lstm_9_while_lstm_cell_20_split_readvariableop_resource_0:	J
;lstm_9_while_lstm_cell_20_split_1_readvariableop_resource_0:	F
3lstm_9_while_lstm_cell_20_readvariableop_resource_0:	@
lstm_9_while_identity
lstm_9_while_identity_1
lstm_9_while_identity_2
lstm_9_while_identity_3
lstm_9_while_identity_4
lstm_9_while_identity_5'
#lstm_9_while_lstm_9_strided_slice_1c
_lstm_9_while_tensorarrayv2read_tensorlistgetitem_lstm_9_tensorarrayunstack_tensorlistfromtensorJ
7lstm_9_while_lstm_cell_20_split_readvariableop_resource:	H
9lstm_9_while_lstm_cell_20_split_1_readvariableop_resource:	D
1lstm_9_while_lstm_cell_20_readvariableop_resource:	@¢(lstm_9/while/lstm_cell_20/ReadVariableOp¢*lstm_9/while/lstm_cell_20/ReadVariableOp_1¢*lstm_9/while/lstm_cell_20/ReadVariableOp_2¢*lstm_9/while/lstm_cell_20/ReadVariableOp_3¢.lstm_9/while/lstm_cell_20/split/ReadVariableOp¢0lstm_9/while/lstm_cell_20/split_1/ReadVariableOp
>lstm_9/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   É
0lstm_9/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_9_while_tensorarrayv2read_tensorlistgetitem_lstm_9_tensorarrayunstack_tensorlistfromtensor_0lstm_9_while_placeholderGlstm_9/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0s
)lstm_9/while/lstm_cell_20/ones_like/ShapeShapelstm_9_while_placeholder_2*
T0*
_output_shapes
:n
)lstm_9/while/lstm_cell_20/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Å
#lstm_9/while/lstm_cell_20/ones_likeFill2lstm_9/while/lstm_cell_20/ones_like/Shape:output:02lstm_9/while/lstm_cell_20/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
)lstm_9/while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
.lstm_9/while/lstm_cell_20/split/ReadVariableOpReadVariableOp9lstm_9_while_lstm_cell_20_split_readvariableop_resource_0*
_output_shapes
:	*
dtype0ì
lstm_9/while/lstm_cell_20/splitSplit2lstm_9/while/lstm_cell_20/split/split_dim:output:06lstm_9/while/lstm_cell_20/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split¿
 lstm_9/while/lstm_cell_20/MatMulMatMul7lstm_9/while/TensorArrayV2Read/TensorListGetItem:item:0(lstm_9/while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Á
"lstm_9/while/lstm_cell_20/MatMul_1MatMul7lstm_9/while/TensorArrayV2Read/TensorListGetItem:item:0(lstm_9/while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Á
"lstm_9/while/lstm_cell_20/MatMul_2MatMul7lstm_9/while/TensorArrayV2Read/TensorListGetItem:item:0(lstm_9/while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Á
"lstm_9/while/lstm_cell_20/MatMul_3MatMul7lstm_9/while/TensorArrayV2Read/TensorListGetItem:item:0(lstm_9/while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@m
+lstm_9/while/lstm_cell_20/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ©
0lstm_9/while/lstm_cell_20/split_1/ReadVariableOpReadVariableOp;lstm_9_while_lstm_cell_20_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0â
!lstm_9/while/lstm_cell_20/split_1Split4lstm_9/while/lstm_cell_20/split_1/split_dim:output:08lstm_9/while/lstm_cell_20/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split¶
!lstm_9/while/lstm_cell_20/BiasAddBiasAdd*lstm_9/while/lstm_cell_20/MatMul:product:0*lstm_9/while/lstm_cell_20/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@º
#lstm_9/while/lstm_cell_20/BiasAdd_1BiasAdd,lstm_9/while/lstm_cell_20/MatMul_1:product:0*lstm_9/while/lstm_cell_20/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@º
#lstm_9/while/lstm_cell_20/BiasAdd_2BiasAdd,lstm_9/while/lstm_cell_20/MatMul_2:product:0*lstm_9/while/lstm_cell_20/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@º
#lstm_9/while/lstm_cell_20/BiasAdd_3BiasAdd,lstm_9/while/lstm_cell_20/MatMul_3:product:0*lstm_9/while/lstm_cell_20/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
lstm_9/while/lstm_cell_20/mulMullstm_9_while_placeholder_2,lstm_9/while/lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
lstm_9/while/lstm_cell_20/mul_1Mullstm_9_while_placeholder_2,lstm_9/while/lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
lstm_9/while/lstm_cell_20/mul_2Mullstm_9_while_placeholder_2,lstm_9/while/lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
lstm_9/while/lstm_cell_20/mul_3Mullstm_9_while_placeholder_2,lstm_9/while/lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(lstm_9/while/lstm_cell_20/ReadVariableOpReadVariableOp3lstm_9_while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0~
-lstm_9/while/lstm_cell_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
/lstm_9/while/lstm_cell_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   
/lstm_9/while/lstm_cell_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      í
'lstm_9/while/lstm_cell_20/strided_sliceStridedSlice0lstm_9/while/lstm_cell_20/ReadVariableOp:value:06lstm_9/while/lstm_cell_20/strided_slice/stack:output:08lstm_9/while/lstm_cell_20/strided_slice/stack_1:output:08lstm_9/while/lstm_cell_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask³
"lstm_9/while/lstm_cell_20/MatMul_4MatMul!lstm_9/while/lstm_cell_20/mul:z:00lstm_9/while/lstm_cell_20/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@²
lstm_9/while/lstm_cell_20/addAddV2*lstm_9/while/lstm_cell_20/BiasAdd:output:0,lstm_9/while/lstm_cell_20/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!lstm_9/while/lstm_cell_20/SigmoidSigmoid!lstm_9/while/lstm_cell_20/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
*lstm_9/while/lstm_cell_20/ReadVariableOp_1ReadVariableOp3lstm_9_while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
/lstm_9/while/lstm_cell_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   
1lstm_9/while/lstm_cell_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
1lstm_9/while/lstm_cell_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
)lstm_9/while/lstm_cell_20/strided_slice_1StridedSlice2lstm_9/while/lstm_cell_20/ReadVariableOp_1:value:08lstm_9/while/lstm_cell_20/strided_slice_1/stack:output:0:lstm_9/while/lstm_cell_20/strided_slice_1/stack_1:output:0:lstm_9/while/lstm_cell_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask·
"lstm_9/while/lstm_cell_20/MatMul_5MatMul#lstm_9/while/lstm_cell_20/mul_1:z:02lstm_9/while/lstm_cell_20/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¶
lstm_9/while/lstm_cell_20/add_1AddV2,lstm_9/while/lstm_cell_20/BiasAdd_1:output:0,lstm_9/while/lstm_cell_20/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#lstm_9/while/lstm_cell_20/Sigmoid_1Sigmoid#lstm_9/while/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_9/while/lstm_cell_20/mul_4Mul'lstm_9/while/lstm_cell_20/Sigmoid_1:y:0lstm_9_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
*lstm_9/while/lstm_cell_20/ReadVariableOp_2ReadVariableOp3lstm_9_while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
/lstm_9/while/lstm_cell_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       
1lstm_9/while/lstm_cell_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   
1lstm_9/while/lstm_cell_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
)lstm_9/while/lstm_cell_20/strided_slice_2StridedSlice2lstm_9/while/lstm_cell_20/ReadVariableOp_2:value:08lstm_9/while/lstm_cell_20/strided_slice_2/stack:output:0:lstm_9/while/lstm_cell_20/strided_slice_2/stack_1:output:0:lstm_9/while/lstm_cell_20/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask·
"lstm_9/while/lstm_cell_20/MatMul_6MatMul#lstm_9/while/lstm_cell_20/mul_2:z:02lstm_9/while/lstm_cell_20/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¶
lstm_9/while/lstm_cell_20/add_2AddV2,lstm_9/while/lstm_cell_20/BiasAdd_2:output:0,lstm_9/while/lstm_cell_20/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_9/while/lstm_cell_20/TanhTanh#lstm_9/while/lstm_cell_20/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@£
lstm_9/while/lstm_cell_20/mul_5Mul%lstm_9/while/lstm_cell_20/Sigmoid:y:0"lstm_9/while/lstm_cell_20/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
lstm_9/while/lstm_cell_20/add_3AddV2#lstm_9/while/lstm_cell_20/mul_4:z:0#lstm_9/while/lstm_cell_20/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
*lstm_9/while/lstm_cell_20/ReadVariableOp_3ReadVariableOp3lstm_9_while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
/lstm_9/while/lstm_cell_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   
1lstm_9/while/lstm_cell_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
1lstm_9/while/lstm_cell_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
)lstm_9/while/lstm_cell_20/strided_slice_3StridedSlice2lstm_9/while/lstm_cell_20/ReadVariableOp_3:value:08lstm_9/while/lstm_cell_20/strided_slice_3/stack:output:0:lstm_9/while/lstm_cell_20/strided_slice_3/stack_1:output:0:lstm_9/while/lstm_cell_20/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask·
"lstm_9/while/lstm_cell_20/MatMul_7MatMul#lstm_9/while/lstm_cell_20/mul_3:z:02lstm_9/while/lstm_cell_20/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¶
lstm_9/while/lstm_cell_20/add_4AddV2,lstm_9/while/lstm_cell_20/BiasAdd_3:output:0,lstm_9/while/lstm_cell_20/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#lstm_9/while/lstm_cell_20/Sigmoid_2Sigmoid#lstm_9/while/lstm_cell_20/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 lstm_9/while/lstm_cell_20/Tanh_1Tanh#lstm_9/while/lstm_cell_20/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@§
lstm_9/while/lstm_cell_20/mul_6Mul'lstm_9/while/lstm_cell_20/Sigmoid_2:y:0$lstm_9/while/lstm_cell_20/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@á
1lstm_9/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_9_while_placeholder_1lstm_9_while_placeholder#lstm_9/while/lstm_cell_20/mul_6:z:0*
_output_shapes
: *
element_dtype0:éèÒT
lstm_9/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_9/while/addAddV2lstm_9_while_placeholderlstm_9/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_9/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_9/while/add_1AddV2&lstm_9_while_lstm_9_while_loop_counterlstm_9/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_9/while/IdentityIdentitylstm_9/while/add_1:z:0^lstm_9/while/NoOp*
T0*
_output_shapes
: 
lstm_9/while/Identity_1Identity,lstm_9_while_lstm_9_while_maximum_iterations^lstm_9/while/NoOp*
T0*
_output_shapes
: n
lstm_9/while/Identity_2Identitylstm_9/while/add:z:0^lstm_9/while/NoOp*
T0*
_output_shapes
: ®
lstm_9/while/Identity_3IdentityAlstm_9/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_9/while/NoOp*
T0*
_output_shapes
: :éèÒ
lstm_9/while/Identity_4Identity#lstm_9/while/lstm_cell_20/mul_6:z:0^lstm_9/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_9/while/Identity_5Identity#lstm_9/while/lstm_cell_20/add_3:z:0^lstm_9/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@é
lstm_9/while/NoOpNoOp)^lstm_9/while/lstm_cell_20/ReadVariableOp+^lstm_9/while/lstm_cell_20/ReadVariableOp_1+^lstm_9/while/lstm_cell_20/ReadVariableOp_2+^lstm_9/while/lstm_cell_20/ReadVariableOp_3/^lstm_9/while/lstm_cell_20/split/ReadVariableOp1^lstm_9/while/lstm_cell_20/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_9_while_identitylstm_9/while/Identity:output:0";
lstm_9_while_identity_1 lstm_9/while/Identity_1:output:0";
lstm_9_while_identity_2 lstm_9/while/Identity_2:output:0";
lstm_9_while_identity_3 lstm_9/while/Identity_3:output:0";
lstm_9_while_identity_4 lstm_9/while/Identity_4:output:0";
lstm_9_while_identity_5 lstm_9/while/Identity_5:output:0"L
#lstm_9_while_lstm_9_strided_slice_1%lstm_9_while_lstm_9_strided_slice_1_0"h
1lstm_9_while_lstm_cell_20_readvariableop_resource3lstm_9_while_lstm_cell_20_readvariableop_resource_0"x
9lstm_9_while_lstm_cell_20_split_1_readvariableop_resource;lstm_9_while_lstm_cell_20_split_1_readvariableop_resource_0"t
7lstm_9_while_lstm_cell_20_split_readvariableop_resource9lstm_9_while_lstm_cell_20_split_readvariableop_resource_0"Ä
_lstm_9_while_tensorarrayv2read_tensorlistgetitem_lstm_9_tensorarrayunstack_tensorlistfromtensoralstm_9_while_tensorarrayv2read_tensorlistgetitem_lstm_9_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2T
(lstm_9/while/lstm_cell_20/ReadVariableOp(lstm_9/while/lstm_cell_20/ReadVariableOp2X
*lstm_9/while/lstm_cell_20/ReadVariableOp_1*lstm_9/while/lstm_cell_20/ReadVariableOp_12X
*lstm_9/while/lstm_cell_20/ReadVariableOp_2*lstm_9/while/lstm_cell_20/ReadVariableOp_22X
*lstm_9/while/lstm_cell_20/ReadVariableOp_3*lstm_9/while/lstm_cell_20/ReadVariableOp_32`
.lstm_9/while/lstm_cell_20/split/ReadVariableOp.lstm_9/while/lstm_cell_20/split/ReadVariableOp2d
0lstm_9/while/lstm_cell_20/split_1/ReadVariableOp0lstm_9/while/lstm_cell_20/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 


õ
D__inference_dense_8_layer_call_and_return_conditional_losses_3715422

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs

·
(__inference_lstm_9_layer_call_fn_3714336
inputs_0
unknown:	
	unknown_0:	
	unknown_1:	@
identity¢StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_9_layer_call_and_return_conditional_losses_3712943o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
±	
©
.__inference_sequential_9_layer_call_fn_3713659
input_10
unknown:	
	unknown_0:	
	unknown_1:	@
	unknown_2:@
	unknown_3:
	unknown_4:
	unknown_5:
identity¢StatefulPartitionedCall¡
StatefulPartitionedCallStatefulPartitionedCallinput_10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_9_layer_call_and_return_conditional_losses_3713623o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ
: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
input_10
ö[
¬
I__inference_lstm_cell_20_layer_call_and_return_conditional_losses_3715657

inputs
states_0
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	@
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpG
ones_like/ShapeShapestates_0*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?p
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@O
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@T
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?t
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¬
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@T
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?t
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¬
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@T
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?t
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¬
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype0
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_splitZ
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype0
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
mulMulstates_0dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@]
mul_1Mulstates_0dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@]
mul_2Mulstates_0dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@]
mul_3Mulstates_0dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ë
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maske
MatMul_4MatMulmul:z:0strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      õ
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_5MatMul	mul_1:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
mul_4MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      õ
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_6MatMul	mul_2:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@U
mul_5MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      õ
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_7MatMul	mul_3:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@K
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
mul_6MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X
IdentityIdentity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_1Identity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@À
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/1
ºz
ç
C__inference_lstm_9_layer_call_and_return_conditional_losses_3715109

inputs=
*lstm_cell_20_split_readvariableop_resource:	;
,lstm_cell_20_split_1_readvariableop_resource:	7
$lstm_cell_20_readvariableop_resource:	@
identity¢lstm_cell_20/ReadVariableOp¢lstm_cell_20/ReadVariableOp_1¢lstm_cell_20/ReadVariableOp_2¢lstm_cell_20/ReadVariableOp_3¢!lstm_cell_20/split/ReadVariableOp¢#lstm_cell_20/split_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskZ
lstm_cell_20/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:a
lstm_cell_20/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell_20/ones_likeFill%lstm_cell_20/ones_like/Shape:output:0%lstm_cell_20/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_cell_20/split/ReadVariableOpReadVariableOp*lstm_cell_20_split_readvariableop_resource*
_output_shapes
:	*
dtype0Å
lstm_cell_20/splitSplit%lstm_cell_20/split/split_dim:output:0)lstm_cell_20/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split
lstm_cell_20/MatMulMatMulstrided_slice_2:output:0lstm_cell_20/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_20/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_20/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_20/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
lstm_cell_20/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
#lstm_cell_20/split_1/ReadVariableOpReadVariableOp,lstm_cell_20_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0»
lstm_cell_20/split_1Split'lstm_cell_20/split_1/split_dim:output:0+lstm_cell_20/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
lstm_cell_20/BiasAddBiasAddlstm_cell_20/MatMul:product:0lstm_cell_20/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/BiasAdd_1BiasAddlstm_cell_20/MatMul_1:product:0lstm_cell_20/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/BiasAdd_2BiasAddlstm_cell_20/MatMul_2:product:0lstm_cell_20/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/BiasAdd_3BiasAddlstm_cell_20/MatMul_3:product:0lstm_cell_20/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
lstm_cell_20/mulMulzeros:output:0lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_cell_20/mul_1Mulzeros:output:0lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_cell_20/mul_2Mulzeros:output:0lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_cell_20/mul_3Mulzeros:output:0lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/ReadVariableOpReadVariableOp$lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0q
 lstm_cell_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        s
"lstm_cell_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   s
"lstm_cell_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¬
lstm_cell_20/strided_sliceStridedSlice#lstm_cell_20/ReadVariableOp:value:0)lstm_cell_20/strided_slice/stack:output:0+lstm_cell_20/strided_slice/stack_1:output:0+lstm_cell_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_20/MatMul_4MatMullstm_cell_20/mul:z:0#lstm_cell_20/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/addAddV2lstm_cell_20/BiasAdd:output:0lstm_cell_20/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
lstm_cell_20/SigmoidSigmoidlstm_cell_20/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/ReadVariableOp_1ReadVariableOp$lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   u
$lstm_cell_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       u
$lstm_cell_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_20/strided_slice_1StridedSlice%lstm_cell_20/ReadVariableOp_1:value:0+lstm_cell_20/strided_slice_1/stack:output:0-lstm_cell_20/strided_slice_1/stack_1:output:0-lstm_cell_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_20/MatMul_5MatMullstm_cell_20/mul_1:z:0%lstm_cell_20/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/add_1AddV2lstm_cell_20/BiasAdd_1:output:0lstm_cell_20/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_20/Sigmoid_1Sigmoidlstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
lstm_cell_20/mul_4Mullstm_cell_20/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/ReadVariableOp_2ReadVariableOp$lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       u
$lstm_cell_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   u
$lstm_cell_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_20/strided_slice_2StridedSlice%lstm_cell_20/ReadVariableOp_2:value:0+lstm_cell_20/strided_slice_2/stack:output:0-lstm_cell_20/strided_slice_2/stack_1:output:0-lstm_cell_20/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_20/MatMul_6MatMullstm_cell_20/mul_2:z:0%lstm_cell_20/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/add_2AddV2lstm_cell_20/BiasAdd_2:output:0lstm_cell_20/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
lstm_cell_20/TanhTanhlstm_cell_20/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_cell_20/mul_5Mullstm_cell_20/Sigmoid:y:0lstm_cell_20/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell_20/add_3AddV2lstm_cell_20/mul_4:z:0lstm_cell_20/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/ReadVariableOp_3ReadVariableOp$lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   u
$lstm_cell_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        u
$lstm_cell_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_20/strided_slice_3StridedSlice%lstm_cell_20/ReadVariableOp_3:value:0+lstm_cell_20/strided_slice_3/stack:output:0-lstm_cell_20/strided_slice_3/stack_1:output:0-lstm_cell_20/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_20/MatMul_7MatMullstm_cell_20/mul_3:z:0%lstm_cell_20/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/add_4AddV2lstm_cell_20/BiasAdd_3:output:0lstm_cell_20/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_20/Sigmoid_2Sigmoidlstm_cell_20/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
lstm_cell_20/Tanh_1Tanhlstm_cell_20/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/mul_6Mullstm_cell_20/Sigmoid_2:y:0lstm_cell_20/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ú
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_20_split_readvariableop_resource,lstm_cell_20_split_1_readvariableop_resource$lstm_cell_20_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_3714982*
condR
while_cond_3714981*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
ÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^lstm_cell_20/ReadVariableOp^lstm_cell_20/ReadVariableOp_1^lstm_cell_20/ReadVariableOp_2^lstm_cell_20/ReadVariableOp_3"^lstm_cell_20/split/ReadVariableOp$^lstm_cell_20/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : : 2:
lstm_cell_20/ReadVariableOplstm_cell_20/ReadVariableOp2>
lstm_cell_20/ReadVariableOp_1lstm_cell_20/ReadVariableOp_12>
lstm_cell_20/ReadVariableOp_2lstm_cell_20/ReadVariableOp_22>
lstm_cell_20/ReadVariableOp_3lstm_cell_20/ReadVariableOp_32F
!lstm_cell_20/split/ReadVariableOp!lstm_cell_20/split/ReadVariableOp2J
#lstm_cell_20/split_1/ReadVariableOp#lstm_cell_20/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
í
÷
.__inference_lstm_cell_20_layer_call_fn_3715458

inputs
states_0
states_1
unknown:	
	unknown_0:	
	unknown_1:	@
identity

identity_1

identity_2¢StatefulPartitionedCall©
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_20_layer_call_and_return_conditional_losses_3712594o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/0:QM
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"
_user_specified_name
states/1
õ
¥	
while_body_3714721
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_20_split_readvariableop_resource_0:	C
4while_lstm_cell_20_split_1_readvariableop_resource_0:	?
,while_lstm_cell_20_readvariableop_resource_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_20_split_readvariableop_resource:	A
2while_lstm_cell_20_split_1_readvariableop_resource:	=
*while_lstm_cell_20_readvariableop_resource:	@¢!while/lstm_cell_20/ReadVariableOp¢#while/lstm_cell_20/ReadVariableOp_1¢#while/lstm_cell_20/ReadVariableOp_2¢#while/lstm_cell_20/ReadVariableOp_3¢'while/lstm_cell_20/split/ReadVariableOp¢)while/lstm_cell_20/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0e
"while/lstm_cell_20/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:g
"while/lstm_cell_20/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?°
while/lstm_cell_20/ones_likeFill+while/lstm_cell_20/ones_like/Shape:output:0+while/lstm_cell_20/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
 while/lstm_cell_20/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?©
while/lstm_cell_20/dropout/MulMul%while/lstm_cell_20/ones_like:output:0)while/lstm_cell_20/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
 while/lstm_cell_20/dropout/ShapeShape%while/lstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:²
7while/lstm_cell_20/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_20/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0n
)while/lstm_cell_20/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>ß
'while/lstm_cell_20/dropout/GreaterEqualGreaterEqual@while/lstm_cell_20/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_20/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/dropout/CastCast+while/lstm_cell_20/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
 while/lstm_cell_20/dropout/Mul_1Mul"while/lstm_cell_20/dropout/Mul:z:0#while/lstm_cell_20/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
"while/lstm_cell_20/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?­
 while/lstm_cell_20/dropout_1/MulMul%while/lstm_cell_20/ones_like:output:0+while/lstm_cell_20/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
"while/lstm_cell_20/dropout_1/ShapeShape%while/lstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:¶
9while/lstm_cell_20/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_20/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0p
+while/lstm_cell_20/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>å
)while/lstm_cell_20/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_20/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_20/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!while/lstm_cell_20/dropout_1/CastCast-while/lstm_cell_20/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¨
"while/lstm_cell_20/dropout_1/Mul_1Mul$while/lstm_cell_20/dropout_1/Mul:z:0%while/lstm_cell_20/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
"while/lstm_cell_20/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?­
 while/lstm_cell_20/dropout_2/MulMul%while/lstm_cell_20/ones_like:output:0+while/lstm_cell_20/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
"while/lstm_cell_20/dropout_2/ShapeShape%while/lstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:¶
9while/lstm_cell_20/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_20/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0p
+while/lstm_cell_20/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>å
)while/lstm_cell_20/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_20/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_20/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!while/lstm_cell_20/dropout_2/CastCast-while/lstm_cell_20/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¨
"while/lstm_cell_20/dropout_2/Mul_1Mul$while/lstm_cell_20/dropout_2/Mul:z:0%while/lstm_cell_20/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
"while/lstm_cell_20/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?­
 while/lstm_cell_20/dropout_3/MulMul%while/lstm_cell_20/ones_like:output:0+while/lstm_cell_20/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
"while/lstm_cell_20/dropout_3/ShapeShape%while/lstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:¶
9while/lstm_cell_20/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_20/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0p
+while/lstm_cell_20/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>å
)while/lstm_cell_20/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_20/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_20/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!while/lstm_cell_20/dropout_3/CastCast-while/lstm_cell_20/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¨
"while/lstm_cell_20/dropout_3/Mul_1Mul$while/lstm_cell_20/dropout_3/Mul:z:0%while/lstm_cell_20/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
"while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
'while/lstm_cell_20/split/ReadVariableOpReadVariableOp2while_lstm_cell_20_split_readvariableop_resource_0*
_output_shapes
:	*
dtype0×
while/lstm_cell_20/splitSplit+while/lstm_cell_20/split/split_dim:output:0/while/lstm_cell_20/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_splitª
while/lstm_cell_20/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_20/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_20/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_20/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
$while/lstm_cell_20/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
)while/lstm_cell_20/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_20_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Í
while/lstm_cell_20/split_1Split-while/lstm_cell_20/split_1/split_dim:output:01while/lstm_cell_20/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split¡
while/lstm_cell_20/BiasAddBiasAdd#while/lstm_cell_20/MatMul:product:0#while/lstm_cell_20/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_20/BiasAdd_1BiasAdd%while/lstm_cell_20/MatMul_1:product:0#while/lstm_cell_20/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_20/BiasAdd_2BiasAdd%while/lstm_cell_20/MatMul_2:product:0#while/lstm_cell_20/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_20/BiasAdd_3BiasAdd%while/lstm_cell_20/MatMul_3:product:0#while/lstm_cell_20/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mulMulwhile_placeholder_2$while/lstm_cell_20/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_1Mulwhile_placeholder_2&while/lstm_cell_20/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_2Mulwhile_placeholder_2&while/lstm_cell_20/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_3Mulwhile_placeholder_2&while/lstm_cell_20/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!while/lstm_cell_20/ReadVariableOpReadVariableOp,while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0w
&while/lstm_cell_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(while/lstm_cell_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   y
(while/lstm_cell_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ê
 while/lstm_cell_20/strided_sliceStridedSlice)while/lstm_cell_20/ReadVariableOp:value:0/while/lstm_cell_20/strided_slice/stack:output:01while/lstm_cell_20/strided_slice/stack_1:output:01while/lstm_cell_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell_20/MatMul_4MatMulwhile/lstm_cell_20/mul:z:0)while/lstm_cell_20/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/addAddV2#while/lstm_cell_20/BiasAdd:output:0%while/lstm_cell_20/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
while/lstm_cell_20/SigmoidSigmoidwhile/lstm_cell_20/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_20/ReadVariableOp_1ReadVariableOp,while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   {
*while/lstm_cell_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       {
*while/lstm_cell_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_20/strided_slice_1StridedSlice+while/lstm_cell_20/ReadVariableOp_1:value:01while/lstm_cell_20/strided_slice_1/stack:output:03while/lstm_cell_20/strided_slice_1/stack_1:output:03while/lstm_cell_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_20/MatMul_5MatMulwhile/lstm_cell_20/mul_1:z:0+while/lstm_cell_20/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_20/add_1AddV2%while/lstm_cell_20/BiasAdd_1:output:0%while/lstm_cell_20/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/lstm_cell_20/Sigmoid_1Sigmoidwhile/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_4Mul while/lstm_cell_20/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_20/ReadVariableOp_2ReadVariableOp,while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       {
*while/lstm_cell_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   {
*while/lstm_cell_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_20/strided_slice_2StridedSlice+while/lstm_cell_20/ReadVariableOp_2:value:01while/lstm_cell_20/strided_slice_2/stack:output:03while/lstm_cell_20/strided_slice_2/stack_1:output:03while/lstm_cell_20/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_20/MatMul_6MatMulwhile/lstm_cell_20/mul_2:z:0+while/lstm_cell_20/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_20/add_2AddV2%while/lstm_cell_20/BiasAdd_2:output:0%while/lstm_cell_20/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
while/lstm_cell_20/TanhTanhwhile/lstm_cell_20/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_5Mulwhile/lstm_cell_20/Sigmoid:y:0while/lstm_cell_20/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/add_3AddV2while/lstm_cell_20/mul_4:z:0while/lstm_cell_20/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_20/ReadVariableOp_3ReadVariableOp,while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   {
*while/lstm_cell_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*while/lstm_cell_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_20/strided_slice_3StridedSlice+while/lstm_cell_20/ReadVariableOp_3:value:01while/lstm_cell_20/strided_slice_3/stack:output:03while/lstm_cell_20/strided_slice_3/stack_1:output:03while/lstm_cell_20/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_20/MatMul_7MatMulwhile/lstm_cell_20/mul_3:z:0+while/lstm_cell_20/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_20/add_4AddV2%while/lstm_cell_20/BiasAdd_3:output:0%while/lstm_cell_20/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/lstm_cell_20/Sigmoid_2Sigmoidwhile/lstm_cell_20/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
while/lstm_cell_20/Tanh_1Tanhwhile/lstm_cell_20/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_6Mul while/lstm_cell_20/Sigmoid_2:y:0while/lstm_cell_20/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_20/mul_6:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_20/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
while/Identity_5Identitywhile/lstm_cell_20/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸

while/NoOpNoOp"^while/lstm_cell_20/ReadVariableOp$^while/lstm_cell_20/ReadVariableOp_1$^while/lstm_cell_20/ReadVariableOp_2$^while/lstm_cell_20/ReadVariableOp_3(^while/lstm_cell_20/split/ReadVariableOp*^while/lstm_cell_20/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_20_readvariableop_resource,while_lstm_cell_20_readvariableop_resource_0"j
2while_lstm_cell_20_split_1_readvariableop_resource4while_lstm_cell_20_split_1_readvariableop_resource_0"f
0while_lstm_cell_20_split_readvariableop_resource2while_lstm_cell_20_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2F
!while/lstm_cell_20/ReadVariableOp!while/lstm_cell_20/ReadVariableOp2J
#while/lstm_cell_20/ReadVariableOp_1#while/lstm_cell_20/ReadVariableOp_12J
#while/lstm_cell_20/ReadVariableOp_2#while/lstm_cell_20/ReadVariableOp_22J
#while/lstm_cell_20/ReadVariableOp_3#while/lstm_cell_20/ReadVariableOp_32R
'while/lstm_cell_20/split/ReadVariableOp'while/lstm_cell_20/split/ReadVariableOp2V
)while/lstm_cell_20/split_1/ReadVariableOp)while/lstm_cell_20/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
ïz
é
C__inference_lstm_9_layer_call_and_return_conditional_losses_3714587
inputs_0=
*lstm_cell_20_split_readvariableop_resource:	;
,lstm_cell_20_split_1_readvariableop_resource:	7
$lstm_cell_20_readvariableop_resource:	@
identity¢lstm_cell_20/ReadVariableOp¢lstm_cell_20/ReadVariableOp_1¢lstm_cell_20/ReadVariableOp_2¢lstm_cell_20/ReadVariableOp_3¢!lstm_cell_20/split/ReadVariableOp¢#lstm_cell_20/split_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskZ
lstm_cell_20/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:a
lstm_cell_20/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell_20/ones_likeFill%lstm_cell_20/ones_like/Shape:output:0%lstm_cell_20/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_cell_20/split/ReadVariableOpReadVariableOp*lstm_cell_20_split_readvariableop_resource*
_output_shapes
:	*
dtype0Å
lstm_cell_20/splitSplit%lstm_cell_20/split/split_dim:output:0)lstm_cell_20/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split
lstm_cell_20/MatMulMatMulstrided_slice_2:output:0lstm_cell_20/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_20/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_20/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_20/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
lstm_cell_20/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
#lstm_cell_20/split_1/ReadVariableOpReadVariableOp,lstm_cell_20_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0»
lstm_cell_20/split_1Split'lstm_cell_20/split_1/split_dim:output:0+lstm_cell_20/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
lstm_cell_20/BiasAddBiasAddlstm_cell_20/MatMul:product:0lstm_cell_20/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/BiasAdd_1BiasAddlstm_cell_20/MatMul_1:product:0lstm_cell_20/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/BiasAdd_2BiasAddlstm_cell_20/MatMul_2:product:0lstm_cell_20/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/BiasAdd_3BiasAddlstm_cell_20/MatMul_3:product:0lstm_cell_20/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
lstm_cell_20/mulMulzeros:output:0lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_cell_20/mul_1Mulzeros:output:0lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_cell_20/mul_2Mulzeros:output:0lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_cell_20/mul_3Mulzeros:output:0lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/ReadVariableOpReadVariableOp$lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0q
 lstm_cell_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        s
"lstm_cell_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   s
"lstm_cell_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¬
lstm_cell_20/strided_sliceStridedSlice#lstm_cell_20/ReadVariableOp:value:0)lstm_cell_20/strided_slice/stack:output:0+lstm_cell_20/strided_slice/stack_1:output:0+lstm_cell_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_20/MatMul_4MatMullstm_cell_20/mul:z:0#lstm_cell_20/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/addAddV2lstm_cell_20/BiasAdd:output:0lstm_cell_20/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
lstm_cell_20/SigmoidSigmoidlstm_cell_20/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/ReadVariableOp_1ReadVariableOp$lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   u
$lstm_cell_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       u
$lstm_cell_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_20/strided_slice_1StridedSlice%lstm_cell_20/ReadVariableOp_1:value:0+lstm_cell_20/strided_slice_1/stack:output:0-lstm_cell_20/strided_slice_1/stack_1:output:0-lstm_cell_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_20/MatMul_5MatMullstm_cell_20/mul_1:z:0%lstm_cell_20/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/add_1AddV2lstm_cell_20/BiasAdd_1:output:0lstm_cell_20/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_20/Sigmoid_1Sigmoidlstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
lstm_cell_20/mul_4Mullstm_cell_20/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/ReadVariableOp_2ReadVariableOp$lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       u
$lstm_cell_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   u
$lstm_cell_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_20/strided_slice_2StridedSlice%lstm_cell_20/ReadVariableOp_2:value:0+lstm_cell_20/strided_slice_2/stack:output:0-lstm_cell_20/strided_slice_2/stack_1:output:0-lstm_cell_20/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_20/MatMul_6MatMullstm_cell_20/mul_2:z:0%lstm_cell_20/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/add_2AddV2lstm_cell_20/BiasAdd_2:output:0lstm_cell_20/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
lstm_cell_20/TanhTanhlstm_cell_20/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_cell_20/mul_5Mullstm_cell_20/Sigmoid:y:0lstm_cell_20/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell_20/add_3AddV2lstm_cell_20/mul_4:z:0lstm_cell_20/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/ReadVariableOp_3ReadVariableOp$lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   u
$lstm_cell_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        u
$lstm_cell_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_20/strided_slice_3StridedSlice%lstm_cell_20/ReadVariableOp_3:value:0+lstm_cell_20/strided_slice_3/stack:output:0-lstm_cell_20/strided_slice_3/stack_1:output:0-lstm_cell_20/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_20/MatMul_7MatMullstm_cell_20/mul_3:z:0%lstm_cell_20/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/add_4AddV2lstm_cell_20/BiasAdd_3:output:0lstm_cell_20/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_20/Sigmoid_2Sigmoidlstm_cell_20/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
lstm_cell_20/Tanh_1Tanhlstm_cell_20/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/mul_6Mullstm_cell_20/Sigmoid_2:y:0lstm_cell_20/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ú
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_20_split_readvariableop_resource,lstm_cell_20_split_1_readvariableop_resource$lstm_cell_20_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_3714460*
condR
while_cond_3714459*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^lstm_cell_20/ReadVariableOp^lstm_cell_20/ReadVariableOp_1^lstm_cell_20/ReadVariableOp_2^lstm_cell_20/ReadVariableOp_3"^lstm_cell_20/split/ReadVariableOp$^lstm_cell_20/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2:
lstm_cell_20/ReadVariableOplstm_cell_20/ReadVariableOp2>
lstm_cell_20/ReadVariableOp_1lstm_cell_20/ReadVariableOp_12>
lstm_cell_20/ReadVariableOp_2lstm_cell_20/ReadVariableOp_22>
lstm_cell_20/ReadVariableOp_3lstm_cell_20/ReadVariableOp_32F
!lstm_cell_20/split/ReadVariableOp!lstm_cell_20/split/ReadVariableOp2J
#lstm_cell_20/split_1/ReadVariableOp#lstm_cell_20/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
õ
¥	
while_body_3715243
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_20_split_readvariableop_resource_0:	C
4while_lstm_cell_20_split_1_readvariableop_resource_0:	?
,while_lstm_cell_20_readvariableop_resource_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_20_split_readvariableop_resource:	A
2while_lstm_cell_20_split_1_readvariableop_resource:	=
*while_lstm_cell_20_readvariableop_resource:	@¢!while/lstm_cell_20/ReadVariableOp¢#while/lstm_cell_20/ReadVariableOp_1¢#while/lstm_cell_20/ReadVariableOp_2¢#while/lstm_cell_20/ReadVariableOp_3¢'while/lstm_cell_20/split/ReadVariableOp¢)while/lstm_cell_20/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0e
"while/lstm_cell_20/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:g
"while/lstm_cell_20/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?°
while/lstm_cell_20/ones_likeFill+while/lstm_cell_20/ones_like/Shape:output:0+while/lstm_cell_20/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
 while/lstm_cell_20/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?©
while/lstm_cell_20/dropout/MulMul%while/lstm_cell_20/ones_like:output:0)while/lstm_cell_20/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
 while/lstm_cell_20/dropout/ShapeShape%while/lstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:²
7while/lstm_cell_20/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_20/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0n
)while/lstm_cell_20/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>ß
'while/lstm_cell_20/dropout/GreaterEqualGreaterEqual@while/lstm_cell_20/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_20/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/dropout/CastCast+while/lstm_cell_20/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
 while/lstm_cell_20/dropout/Mul_1Mul"while/lstm_cell_20/dropout/Mul:z:0#while/lstm_cell_20/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
"while/lstm_cell_20/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?­
 while/lstm_cell_20/dropout_1/MulMul%while/lstm_cell_20/ones_like:output:0+while/lstm_cell_20/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
"while/lstm_cell_20/dropout_1/ShapeShape%while/lstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:¶
9while/lstm_cell_20/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_20/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0p
+while/lstm_cell_20/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>å
)while/lstm_cell_20/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_20/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_20/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!while/lstm_cell_20/dropout_1/CastCast-while/lstm_cell_20/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¨
"while/lstm_cell_20/dropout_1/Mul_1Mul$while/lstm_cell_20/dropout_1/Mul:z:0%while/lstm_cell_20/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
"while/lstm_cell_20/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?­
 while/lstm_cell_20/dropout_2/MulMul%while/lstm_cell_20/ones_like:output:0+while/lstm_cell_20/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
"while/lstm_cell_20/dropout_2/ShapeShape%while/lstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:¶
9while/lstm_cell_20/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_20/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0p
+while/lstm_cell_20/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>å
)while/lstm_cell_20/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_20/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_20/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!while/lstm_cell_20/dropout_2/CastCast-while/lstm_cell_20/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¨
"while/lstm_cell_20/dropout_2/Mul_1Mul$while/lstm_cell_20/dropout_2/Mul:z:0%while/lstm_cell_20/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
"while/lstm_cell_20/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?­
 while/lstm_cell_20/dropout_3/MulMul%while/lstm_cell_20/ones_like:output:0+while/lstm_cell_20/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
"while/lstm_cell_20/dropout_3/ShapeShape%while/lstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:¶
9while/lstm_cell_20/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_20/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0p
+while/lstm_cell_20/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>å
)while/lstm_cell_20/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_20/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_20/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!while/lstm_cell_20/dropout_3/CastCast-while/lstm_cell_20/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¨
"while/lstm_cell_20/dropout_3/Mul_1Mul$while/lstm_cell_20/dropout_3/Mul:z:0%while/lstm_cell_20/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
"while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
'while/lstm_cell_20/split/ReadVariableOpReadVariableOp2while_lstm_cell_20_split_readvariableop_resource_0*
_output_shapes
:	*
dtype0×
while/lstm_cell_20/splitSplit+while/lstm_cell_20/split/split_dim:output:0/while/lstm_cell_20/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_splitª
while/lstm_cell_20/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_20/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_20/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_20/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
$while/lstm_cell_20/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
)while/lstm_cell_20/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_20_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Í
while/lstm_cell_20/split_1Split-while/lstm_cell_20/split_1/split_dim:output:01while/lstm_cell_20/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split¡
while/lstm_cell_20/BiasAddBiasAdd#while/lstm_cell_20/MatMul:product:0#while/lstm_cell_20/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_20/BiasAdd_1BiasAdd%while/lstm_cell_20/MatMul_1:product:0#while/lstm_cell_20/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_20/BiasAdd_2BiasAdd%while/lstm_cell_20/MatMul_2:product:0#while/lstm_cell_20/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_20/BiasAdd_3BiasAdd%while/lstm_cell_20/MatMul_3:product:0#while/lstm_cell_20/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mulMulwhile_placeholder_2$while/lstm_cell_20/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_1Mulwhile_placeholder_2&while/lstm_cell_20/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_2Mulwhile_placeholder_2&while/lstm_cell_20/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_3Mulwhile_placeholder_2&while/lstm_cell_20/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!while/lstm_cell_20/ReadVariableOpReadVariableOp,while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0w
&while/lstm_cell_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(while/lstm_cell_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   y
(while/lstm_cell_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ê
 while/lstm_cell_20/strided_sliceStridedSlice)while/lstm_cell_20/ReadVariableOp:value:0/while/lstm_cell_20/strided_slice/stack:output:01while/lstm_cell_20/strided_slice/stack_1:output:01while/lstm_cell_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell_20/MatMul_4MatMulwhile/lstm_cell_20/mul:z:0)while/lstm_cell_20/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/addAddV2#while/lstm_cell_20/BiasAdd:output:0%while/lstm_cell_20/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
while/lstm_cell_20/SigmoidSigmoidwhile/lstm_cell_20/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_20/ReadVariableOp_1ReadVariableOp,while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   {
*while/lstm_cell_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       {
*while/lstm_cell_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_20/strided_slice_1StridedSlice+while/lstm_cell_20/ReadVariableOp_1:value:01while/lstm_cell_20/strided_slice_1/stack:output:03while/lstm_cell_20/strided_slice_1/stack_1:output:03while/lstm_cell_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_20/MatMul_5MatMulwhile/lstm_cell_20/mul_1:z:0+while/lstm_cell_20/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_20/add_1AddV2%while/lstm_cell_20/BiasAdd_1:output:0%while/lstm_cell_20/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/lstm_cell_20/Sigmoid_1Sigmoidwhile/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_4Mul while/lstm_cell_20/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_20/ReadVariableOp_2ReadVariableOp,while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       {
*while/lstm_cell_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   {
*while/lstm_cell_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_20/strided_slice_2StridedSlice+while/lstm_cell_20/ReadVariableOp_2:value:01while/lstm_cell_20/strided_slice_2/stack:output:03while/lstm_cell_20/strided_slice_2/stack_1:output:03while/lstm_cell_20/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_20/MatMul_6MatMulwhile/lstm_cell_20/mul_2:z:0+while/lstm_cell_20/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_20/add_2AddV2%while/lstm_cell_20/BiasAdd_2:output:0%while/lstm_cell_20/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
while/lstm_cell_20/TanhTanhwhile/lstm_cell_20/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_5Mulwhile/lstm_cell_20/Sigmoid:y:0while/lstm_cell_20/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/add_3AddV2while/lstm_cell_20/mul_4:z:0while/lstm_cell_20/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_20/ReadVariableOp_3ReadVariableOp,while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   {
*while/lstm_cell_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*while/lstm_cell_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_20/strided_slice_3StridedSlice+while/lstm_cell_20/ReadVariableOp_3:value:01while/lstm_cell_20/strided_slice_3/stack:output:03while/lstm_cell_20/strided_slice_3/stack_1:output:03while/lstm_cell_20/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_20/MatMul_7MatMulwhile/lstm_cell_20/mul_3:z:0+while/lstm_cell_20/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_20/add_4AddV2%while/lstm_cell_20/BiasAdd_3:output:0%while/lstm_cell_20/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/lstm_cell_20/Sigmoid_2Sigmoidwhile/lstm_cell_20/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
while/lstm_cell_20/Tanh_1Tanhwhile/lstm_cell_20/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_6Mul while/lstm_cell_20/Sigmoid_2:y:0while/lstm_cell_20/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_20/mul_6:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_20/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
while/Identity_5Identitywhile/lstm_cell_20/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸

while/NoOpNoOp"^while/lstm_cell_20/ReadVariableOp$^while/lstm_cell_20/ReadVariableOp_1$^while/lstm_cell_20/ReadVariableOp_2$^while/lstm_cell_20/ReadVariableOp_3(^while/lstm_cell_20/split/ReadVariableOp*^while/lstm_cell_20/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_20_readvariableop_resource,while_lstm_cell_20_readvariableop_resource_0"j
2while_lstm_cell_20_split_1_readvariableop_resource4while_lstm_cell_20_split_1_readvariableop_resource_0"f
0while_lstm_cell_20_split_readvariableop_resource2while_lstm_cell_20_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2F
!while/lstm_cell_20/ReadVariableOp!while/lstm_cell_20/ReadVariableOp2J
#while/lstm_cell_20/ReadVariableOp_1#while/lstm_cell_20/ReadVariableOp_12J
#while/lstm_cell_20/ReadVariableOp_2#while/lstm_cell_20/ReadVariableOp_22J
#while/lstm_cell_20/ReadVariableOp_3#while/lstm_cell_20/ReadVariableOp_32R
'while/lstm_cell_20/split/ReadVariableOp'while/lstm_cell_20/split/ReadVariableOp2V
)while/lstm_cell_20/split_1/ReadVariableOp)while/lstm_cell_20/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
öA

 __inference__traced_save_3715770
file_prefix-
)savev2_dense_8_kernel_read_readvariableop+
'savev2_dense_8_bias_read_readvariableop-
)savev2_dense_9_kernel_read_readvariableop+
'savev2_dense_9_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop9
5savev2_lstm_9_lstm_cell_20_kernel_read_readvariableopC
?savev2_lstm_9_lstm_cell_20_recurrent_kernel_read_readvariableop7
3savev2_lstm_9_lstm_cell_20_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop4
0savev2_adam_dense_8_kernel_m_read_readvariableop2
.savev2_adam_dense_8_bias_m_read_readvariableop4
0savev2_adam_dense_9_kernel_m_read_readvariableop2
.savev2_adam_dense_9_bias_m_read_readvariableop@
<savev2_adam_lstm_9_lstm_cell_20_kernel_m_read_readvariableopJ
Fsavev2_adam_lstm_9_lstm_cell_20_recurrent_kernel_m_read_readvariableop>
:savev2_adam_lstm_9_lstm_cell_20_bias_m_read_readvariableop4
0savev2_adam_dense_8_kernel_v_read_readvariableop2
.savev2_adam_dense_8_bias_v_read_readvariableop4
0savev2_adam_dense_9_kernel_v_read_readvariableop2
.savev2_adam_dense_9_bias_v_read_readvariableop@
<savev2_adam_lstm_9_lstm_cell_20_kernel_v_read_readvariableopJ
Fsavev2_adam_lstm_9_lstm_cell_20_recurrent_kernel_v_read_readvariableop>
:savev2_adam_lstm_9_lstm_cell_20_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: Ë
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*ô
valueêBçB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH«
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Q
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_8_kernel_read_readvariableop'savev2_dense_8_bias_read_readvariableop)savev2_dense_9_kernel_read_readvariableop'savev2_dense_9_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop5savev2_lstm_9_lstm_cell_20_kernel_read_readvariableop?savev2_lstm_9_lstm_cell_20_recurrent_kernel_read_readvariableop3savev2_lstm_9_lstm_cell_20_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop0savev2_adam_dense_8_kernel_m_read_readvariableop.savev2_adam_dense_8_bias_m_read_readvariableop0savev2_adam_dense_9_kernel_m_read_readvariableop.savev2_adam_dense_9_bias_m_read_readvariableop<savev2_adam_lstm_9_lstm_cell_20_kernel_m_read_readvariableopFsavev2_adam_lstm_9_lstm_cell_20_recurrent_kernel_m_read_readvariableop:savev2_adam_lstm_9_lstm_cell_20_bias_m_read_readvariableop0savev2_adam_dense_8_kernel_v_read_readvariableop.savev2_adam_dense_8_bias_v_read_readvariableop0savev2_adam_dense_9_kernel_v_read_readvariableop.savev2_adam_dense_9_bias_v_read_readvariableop<savev2_adam_lstm_9_lstm_cell_20_kernel_v_read_readvariableopFsavev2_adam_lstm_9_lstm_cell_20_recurrent_kernel_v_read_readvariableop:savev2_adam_lstm_9_lstm_cell_20_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *-
dtypes#
!2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*â
_input_shapesÐ
Í: :@:::: : : : : :	:	@:: : : : :@::::	:	@::@::::	:	@:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:$ 

_output_shapes

:@: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::
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
: :%
!

_output_shapes
:	:%!

_output_shapes
:	@:!

_output_shapes	
::
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
: :$ 

_output_shapes

:@: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::%!

_output_shapes
:	:%!

_output_shapes
:	@:!

_output_shapes	
::$ 

_output_shapes

:@: 

_output_shapes
::$ 

_output_shapes

:: 

_output_shapes
::%!

_output_shapes
:	:%!

_output_shapes
:	@:!

_output_shapes	
::

_output_shapes
: 
ám
¥	
while_body_3713060
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_20_split_readvariableop_resource_0:	C
4while_lstm_cell_20_split_1_readvariableop_resource_0:	?
,while_lstm_cell_20_readvariableop_resource_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_20_split_readvariableop_resource:	A
2while_lstm_cell_20_split_1_readvariableop_resource:	=
*while_lstm_cell_20_readvariableop_resource:	@¢!while/lstm_cell_20/ReadVariableOp¢#while/lstm_cell_20/ReadVariableOp_1¢#while/lstm_cell_20/ReadVariableOp_2¢#while/lstm_cell_20/ReadVariableOp_3¢'while/lstm_cell_20/split/ReadVariableOp¢)while/lstm_cell_20/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0e
"while/lstm_cell_20/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:g
"while/lstm_cell_20/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?°
while/lstm_cell_20/ones_likeFill+while/lstm_cell_20/ones_like/Shape:output:0+while/lstm_cell_20/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
"while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
'while/lstm_cell_20/split/ReadVariableOpReadVariableOp2while_lstm_cell_20_split_readvariableop_resource_0*
_output_shapes
:	*
dtype0×
while/lstm_cell_20/splitSplit+while/lstm_cell_20/split/split_dim:output:0/while/lstm_cell_20/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_splitª
while/lstm_cell_20/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_20/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_20/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_20/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
$while/lstm_cell_20/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
)while/lstm_cell_20/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_20_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Í
while/lstm_cell_20/split_1Split-while/lstm_cell_20/split_1/split_dim:output:01while/lstm_cell_20/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split¡
while/lstm_cell_20/BiasAddBiasAdd#while/lstm_cell_20/MatMul:product:0#while/lstm_cell_20/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_20/BiasAdd_1BiasAdd%while/lstm_cell_20/MatMul_1:product:0#while/lstm_cell_20/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_20/BiasAdd_2BiasAdd%while/lstm_cell_20/MatMul_2:product:0#while/lstm_cell_20/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_20/BiasAdd_3BiasAdd%while/lstm_cell_20/MatMul_3:product:0#while/lstm_cell_20/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mulMulwhile_placeholder_2%while/lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_1Mulwhile_placeholder_2%while/lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_2Mulwhile_placeholder_2%while/lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_3Mulwhile_placeholder_2%while/lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!while/lstm_cell_20/ReadVariableOpReadVariableOp,while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0w
&while/lstm_cell_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(while/lstm_cell_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   y
(while/lstm_cell_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ê
 while/lstm_cell_20/strided_sliceStridedSlice)while/lstm_cell_20/ReadVariableOp:value:0/while/lstm_cell_20/strided_slice/stack:output:01while/lstm_cell_20/strided_slice/stack_1:output:01while/lstm_cell_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell_20/MatMul_4MatMulwhile/lstm_cell_20/mul:z:0)while/lstm_cell_20/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/addAddV2#while/lstm_cell_20/BiasAdd:output:0%while/lstm_cell_20/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
while/lstm_cell_20/SigmoidSigmoidwhile/lstm_cell_20/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_20/ReadVariableOp_1ReadVariableOp,while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   {
*while/lstm_cell_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       {
*while/lstm_cell_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_20/strided_slice_1StridedSlice+while/lstm_cell_20/ReadVariableOp_1:value:01while/lstm_cell_20/strided_slice_1/stack:output:03while/lstm_cell_20/strided_slice_1/stack_1:output:03while/lstm_cell_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_20/MatMul_5MatMulwhile/lstm_cell_20/mul_1:z:0+while/lstm_cell_20/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_20/add_1AddV2%while/lstm_cell_20/BiasAdd_1:output:0%while/lstm_cell_20/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/lstm_cell_20/Sigmoid_1Sigmoidwhile/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_4Mul while/lstm_cell_20/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_20/ReadVariableOp_2ReadVariableOp,while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       {
*while/lstm_cell_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   {
*while/lstm_cell_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_20/strided_slice_2StridedSlice+while/lstm_cell_20/ReadVariableOp_2:value:01while/lstm_cell_20/strided_slice_2/stack:output:03while/lstm_cell_20/strided_slice_2/stack_1:output:03while/lstm_cell_20/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_20/MatMul_6MatMulwhile/lstm_cell_20/mul_2:z:0+while/lstm_cell_20/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_20/add_2AddV2%while/lstm_cell_20/BiasAdd_2:output:0%while/lstm_cell_20/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
while/lstm_cell_20/TanhTanhwhile/lstm_cell_20/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_5Mulwhile/lstm_cell_20/Sigmoid:y:0while/lstm_cell_20/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/add_3AddV2while/lstm_cell_20/mul_4:z:0while/lstm_cell_20/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_20/ReadVariableOp_3ReadVariableOp,while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   {
*while/lstm_cell_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*while/lstm_cell_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_20/strided_slice_3StridedSlice+while/lstm_cell_20/ReadVariableOp_3:value:01while/lstm_cell_20/strided_slice_3/stack:output:03while/lstm_cell_20/strided_slice_3/stack_1:output:03while/lstm_cell_20/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_20/MatMul_7MatMulwhile/lstm_cell_20/mul_3:z:0+while/lstm_cell_20/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_20/add_4AddV2%while/lstm_cell_20/BiasAdd_3:output:0%while/lstm_cell_20/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/lstm_cell_20/Sigmoid_2Sigmoidwhile/lstm_cell_20/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
while/lstm_cell_20/Tanh_1Tanhwhile/lstm_cell_20/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_6Mul while/lstm_cell_20/Sigmoid_2:y:0while/lstm_cell_20/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_20/mul_6:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_20/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
while/Identity_5Identitywhile/lstm_cell_20/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸

while/NoOpNoOp"^while/lstm_cell_20/ReadVariableOp$^while/lstm_cell_20/ReadVariableOp_1$^while/lstm_cell_20/ReadVariableOp_2$^while/lstm_cell_20/ReadVariableOp_3(^while/lstm_cell_20/split/ReadVariableOp*^while/lstm_cell_20/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_20_readvariableop_resource,while_lstm_cell_20_readvariableop_resource_0"j
2while_lstm_cell_20_split_1_readvariableop_resource4while_lstm_cell_20_split_1_readvariableop_resource_0"f
0while_lstm_cell_20_split_readvariableop_resource2while_lstm_cell_20_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2F
!while/lstm_cell_20/ReadVariableOp!while/lstm_cell_20/ReadVariableOp2J
#while/lstm_cell_20/ReadVariableOp_1#while/lstm_cell_20/ReadVariableOp_12J
#while/lstm_cell_20/ReadVariableOp_2#while/lstm_cell_20/ReadVariableOp_22J
#while/lstm_cell_20/ReadVariableOp_3#while/lstm_cell_20/ReadVariableOp_32R
'while/lstm_cell_20/split/ReadVariableOp'while/lstm_cell_20/split/ReadVariableOp2V
)while/lstm_cell_20/split_1/ReadVariableOp)while/lstm_cell_20/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
¯
¸
I__inference_sequential_9_layer_call_and_return_conditional_losses_3713680
input_10!
lstm_9_3713662:	
lstm_9_3713664:	!
lstm_9_3713666:	@!
dense_8_3713669:@
dense_8_3713671:!
dense_9_3713674:
dense_9_3713676:
identity¢dense_8/StatefulPartitionedCall¢dense_9/StatefulPartitionedCall¢lstm_9/StatefulPartitionedCallÿ
lstm_9/StatefulPartitionedCallStatefulPartitionedCallinput_10lstm_9_3713662lstm_9_3713664lstm_9_3713666*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_9_layer_call_and_return_conditional_losses_3713187
dense_8/StatefulPartitionedCallStatefulPartitionedCall'lstm_9/StatefulPartitionedCall:output:0dense_8_3713669dense_8_3713671*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_3713206
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_3713674dense_9_3713676*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_3713222w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
NoOpNoOp ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall^lstm_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ
: : : : : : : 2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2@
lstm_9/StatefulPartitionedCalllstm_9/StatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
input_10
¶
ç
C__inference_lstm_9_layer_call_and_return_conditional_losses_3715402

inputs=
*lstm_cell_20_split_readvariableop_resource:	;
,lstm_cell_20_split_1_readvariableop_resource:	7
$lstm_cell_20_readvariableop_resource:	@
identity¢lstm_cell_20/ReadVariableOp¢lstm_cell_20/ReadVariableOp_1¢lstm_cell_20/ReadVariableOp_2¢lstm_cell_20/ReadVariableOp_3¢!lstm_cell_20/split/ReadVariableOp¢#lstm_cell_20/split_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskZ
lstm_cell_20/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:a
lstm_cell_20/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell_20/ones_likeFill%lstm_cell_20/ones_like/Shape:output:0%lstm_cell_20/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
lstm_cell_20/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_20/dropout/MulMullstm_cell_20/ones_like:output:0#lstm_cell_20/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
lstm_cell_20/dropout/ShapeShapelstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:¦
1lstm_cell_20/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_20/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0h
#lstm_cell_20/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Í
!lstm_cell_20/dropout/GreaterEqualGreaterEqual:lstm_cell_20/dropout/random_uniform/RandomUniform:output:0,lstm_cell_20/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/dropout/CastCast%lstm_cell_20/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/dropout/Mul_1Mullstm_cell_20/dropout/Mul:z:0lstm_cell_20/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
lstm_cell_20/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_20/dropout_1/MulMullstm_cell_20/ones_like:output:0%lstm_cell_20/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_20/dropout_1/ShapeShapelstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:ª
3lstm_cell_20/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_20/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0j
%lstm_cell_20/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ó
#lstm_cell_20/dropout_1/GreaterEqualGreaterEqual<lstm_cell_20/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_20/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/dropout_1/CastCast'lstm_cell_20/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/dropout_1/Mul_1Mullstm_cell_20/dropout_1/Mul:z:0lstm_cell_20/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
lstm_cell_20/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_20/dropout_2/MulMullstm_cell_20/ones_like:output:0%lstm_cell_20/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_20/dropout_2/ShapeShapelstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:ª
3lstm_cell_20/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_20/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0j
%lstm_cell_20/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ó
#lstm_cell_20/dropout_2/GreaterEqualGreaterEqual<lstm_cell_20/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_20/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/dropout_2/CastCast'lstm_cell_20/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/dropout_2/Mul_1Mullstm_cell_20/dropout_2/Mul:z:0lstm_cell_20/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
lstm_cell_20/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_20/dropout_3/MulMullstm_cell_20/ones_like:output:0%lstm_cell_20/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_20/dropout_3/ShapeShapelstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:ª
3lstm_cell_20/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_20/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0j
%lstm_cell_20/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ó
#lstm_cell_20/dropout_3/GreaterEqualGreaterEqual<lstm_cell_20/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_20/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/dropout_3/CastCast'lstm_cell_20/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/dropout_3/Mul_1Mullstm_cell_20/dropout_3/Mul:z:0lstm_cell_20/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_cell_20/split/ReadVariableOpReadVariableOp*lstm_cell_20_split_readvariableop_resource*
_output_shapes
:	*
dtype0Å
lstm_cell_20/splitSplit%lstm_cell_20/split/split_dim:output:0)lstm_cell_20/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split
lstm_cell_20/MatMulMatMulstrided_slice_2:output:0lstm_cell_20/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_20/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_20/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_20/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
lstm_cell_20/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
#lstm_cell_20/split_1/ReadVariableOpReadVariableOp,lstm_cell_20_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0»
lstm_cell_20/split_1Split'lstm_cell_20/split_1/split_dim:output:0+lstm_cell_20/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
lstm_cell_20/BiasAddBiasAddlstm_cell_20/MatMul:product:0lstm_cell_20/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/BiasAdd_1BiasAddlstm_cell_20/MatMul_1:product:0lstm_cell_20/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/BiasAdd_2BiasAddlstm_cell_20/MatMul_2:product:0lstm_cell_20/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/BiasAdd_3BiasAddlstm_cell_20/MatMul_3:product:0lstm_cell_20/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
lstm_cell_20/mulMulzeros:output:0lstm_cell_20/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell_20/mul_1Mulzeros:output:0 lstm_cell_20/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell_20/mul_2Mulzeros:output:0 lstm_cell_20/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell_20/mul_3Mulzeros:output:0 lstm_cell_20/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/ReadVariableOpReadVariableOp$lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0q
 lstm_cell_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        s
"lstm_cell_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   s
"lstm_cell_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¬
lstm_cell_20/strided_sliceStridedSlice#lstm_cell_20/ReadVariableOp:value:0)lstm_cell_20/strided_slice/stack:output:0+lstm_cell_20/strided_slice/stack_1:output:0+lstm_cell_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_20/MatMul_4MatMullstm_cell_20/mul:z:0#lstm_cell_20/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/addAddV2lstm_cell_20/BiasAdd:output:0lstm_cell_20/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
lstm_cell_20/SigmoidSigmoidlstm_cell_20/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/ReadVariableOp_1ReadVariableOp$lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   u
$lstm_cell_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       u
$lstm_cell_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_20/strided_slice_1StridedSlice%lstm_cell_20/ReadVariableOp_1:value:0+lstm_cell_20/strided_slice_1/stack:output:0-lstm_cell_20/strided_slice_1/stack_1:output:0-lstm_cell_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_20/MatMul_5MatMullstm_cell_20/mul_1:z:0%lstm_cell_20/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/add_1AddV2lstm_cell_20/BiasAdd_1:output:0lstm_cell_20/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_20/Sigmoid_1Sigmoidlstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
lstm_cell_20/mul_4Mullstm_cell_20/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/ReadVariableOp_2ReadVariableOp$lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       u
$lstm_cell_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   u
$lstm_cell_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_20/strided_slice_2StridedSlice%lstm_cell_20/ReadVariableOp_2:value:0+lstm_cell_20/strided_slice_2/stack:output:0-lstm_cell_20/strided_slice_2/stack_1:output:0-lstm_cell_20/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_20/MatMul_6MatMullstm_cell_20/mul_2:z:0%lstm_cell_20/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/add_2AddV2lstm_cell_20/BiasAdd_2:output:0lstm_cell_20/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
lstm_cell_20/TanhTanhlstm_cell_20/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_cell_20/mul_5Mullstm_cell_20/Sigmoid:y:0lstm_cell_20/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell_20/add_3AddV2lstm_cell_20/mul_4:z:0lstm_cell_20/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/ReadVariableOp_3ReadVariableOp$lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   u
$lstm_cell_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        u
$lstm_cell_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_20/strided_slice_3StridedSlice%lstm_cell_20/ReadVariableOp_3:value:0+lstm_cell_20/strided_slice_3/stack:output:0-lstm_cell_20/strided_slice_3/stack_1:output:0-lstm_cell_20/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_20/MatMul_7MatMullstm_cell_20/mul_3:z:0%lstm_cell_20/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/add_4AddV2lstm_cell_20/BiasAdd_3:output:0lstm_cell_20/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_20/Sigmoid_2Sigmoidlstm_cell_20/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
lstm_cell_20/Tanh_1Tanhlstm_cell_20/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/mul_6Mullstm_cell_20/Sigmoid_2:y:0lstm_cell_20/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ú
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_20_split_readvariableop_resource,lstm_cell_20_split_1_readvariableop_resource$lstm_cell_20_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_3715243*
condR
while_cond_3715242*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
ÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^lstm_cell_20/ReadVariableOp^lstm_cell_20/ReadVariableOp_1^lstm_cell_20/ReadVariableOp_2^lstm_cell_20/ReadVariableOp_3"^lstm_cell_20/split/ReadVariableOp$^lstm_cell_20/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : : 2:
lstm_cell_20/ReadVariableOplstm_cell_20/ReadVariableOp2>
lstm_cell_20/ReadVariableOp_1lstm_cell_20/ReadVariableOp_12>
lstm_cell_20/ReadVariableOp_2lstm_cell_20/ReadVariableOp_22>
lstm_cell_20/ReadVariableOp_3lstm_cell_20/ReadVariableOp_32F
!lstm_cell_20/split/ReadVariableOp!lstm_cell_20/split/ReadVariableOp2J
#lstm_cell_20/split_1/ReadVariableOp#lstm_cell_20/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
÷
µ
(__inference_lstm_9_layer_call_fn_3714347

inputs
unknown:	
	unknown_0:	
	unknown_1:	@
identity¢StatefulPartitionedCallå
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_9_layer_call_and_return_conditional_losses_3713187o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
ám
¥	
while_body_3714460
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_20_split_readvariableop_resource_0:	C
4while_lstm_cell_20_split_1_readvariableop_resource_0:	?
,while_lstm_cell_20_readvariableop_resource_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_20_split_readvariableop_resource:	A
2while_lstm_cell_20_split_1_readvariableop_resource:	=
*while_lstm_cell_20_readvariableop_resource:	@¢!while/lstm_cell_20/ReadVariableOp¢#while/lstm_cell_20/ReadVariableOp_1¢#while/lstm_cell_20/ReadVariableOp_2¢#while/lstm_cell_20/ReadVariableOp_3¢'while/lstm_cell_20/split/ReadVariableOp¢)while/lstm_cell_20/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0e
"while/lstm_cell_20/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:g
"while/lstm_cell_20/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?°
while/lstm_cell_20/ones_likeFill+while/lstm_cell_20/ones_like/Shape:output:0+while/lstm_cell_20/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
"while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
'while/lstm_cell_20/split/ReadVariableOpReadVariableOp2while_lstm_cell_20_split_readvariableop_resource_0*
_output_shapes
:	*
dtype0×
while/lstm_cell_20/splitSplit+while/lstm_cell_20/split/split_dim:output:0/while/lstm_cell_20/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_splitª
while/lstm_cell_20/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_20/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_20/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_20/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
$while/lstm_cell_20/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
)while/lstm_cell_20/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_20_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Í
while/lstm_cell_20/split_1Split-while/lstm_cell_20/split_1/split_dim:output:01while/lstm_cell_20/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split¡
while/lstm_cell_20/BiasAddBiasAdd#while/lstm_cell_20/MatMul:product:0#while/lstm_cell_20/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_20/BiasAdd_1BiasAdd%while/lstm_cell_20/MatMul_1:product:0#while/lstm_cell_20/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_20/BiasAdd_2BiasAdd%while/lstm_cell_20/MatMul_2:product:0#while/lstm_cell_20/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_20/BiasAdd_3BiasAdd%while/lstm_cell_20/MatMul_3:product:0#while/lstm_cell_20/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mulMulwhile_placeholder_2%while/lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_1Mulwhile_placeholder_2%while/lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_2Mulwhile_placeholder_2%while/lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_3Mulwhile_placeholder_2%while/lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!while/lstm_cell_20/ReadVariableOpReadVariableOp,while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0w
&while/lstm_cell_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(while/lstm_cell_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   y
(while/lstm_cell_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ê
 while/lstm_cell_20/strided_sliceStridedSlice)while/lstm_cell_20/ReadVariableOp:value:0/while/lstm_cell_20/strided_slice/stack:output:01while/lstm_cell_20/strided_slice/stack_1:output:01while/lstm_cell_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell_20/MatMul_4MatMulwhile/lstm_cell_20/mul:z:0)while/lstm_cell_20/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/addAddV2#while/lstm_cell_20/BiasAdd:output:0%while/lstm_cell_20/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
while/lstm_cell_20/SigmoidSigmoidwhile/lstm_cell_20/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_20/ReadVariableOp_1ReadVariableOp,while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   {
*while/lstm_cell_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       {
*while/lstm_cell_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_20/strided_slice_1StridedSlice+while/lstm_cell_20/ReadVariableOp_1:value:01while/lstm_cell_20/strided_slice_1/stack:output:03while/lstm_cell_20/strided_slice_1/stack_1:output:03while/lstm_cell_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_20/MatMul_5MatMulwhile/lstm_cell_20/mul_1:z:0+while/lstm_cell_20/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_20/add_1AddV2%while/lstm_cell_20/BiasAdd_1:output:0%while/lstm_cell_20/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/lstm_cell_20/Sigmoid_1Sigmoidwhile/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_4Mul while/lstm_cell_20/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_20/ReadVariableOp_2ReadVariableOp,while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       {
*while/lstm_cell_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   {
*while/lstm_cell_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_20/strided_slice_2StridedSlice+while/lstm_cell_20/ReadVariableOp_2:value:01while/lstm_cell_20/strided_slice_2/stack:output:03while/lstm_cell_20/strided_slice_2/stack_1:output:03while/lstm_cell_20/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_20/MatMul_6MatMulwhile/lstm_cell_20/mul_2:z:0+while/lstm_cell_20/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_20/add_2AddV2%while/lstm_cell_20/BiasAdd_2:output:0%while/lstm_cell_20/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
while/lstm_cell_20/TanhTanhwhile/lstm_cell_20/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_5Mulwhile/lstm_cell_20/Sigmoid:y:0while/lstm_cell_20/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/add_3AddV2while/lstm_cell_20/mul_4:z:0while/lstm_cell_20/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_20/ReadVariableOp_3ReadVariableOp,while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   {
*while/lstm_cell_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*while/lstm_cell_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_20/strided_slice_3StridedSlice+while/lstm_cell_20/ReadVariableOp_3:value:01while/lstm_cell_20/strided_slice_3/stack:output:03while/lstm_cell_20/strided_slice_3/stack_1:output:03while/lstm_cell_20/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_20/MatMul_7MatMulwhile/lstm_cell_20/mul_3:z:0+while/lstm_cell_20/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_20/add_4AddV2%while/lstm_cell_20/BiasAdd_3:output:0%while/lstm_cell_20/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/lstm_cell_20/Sigmoid_2Sigmoidwhile/lstm_cell_20/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
while/lstm_cell_20/Tanh_1Tanhwhile/lstm_cell_20/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_20/mul_6Mul while/lstm_cell_20/Sigmoid_2:y:0while/lstm_cell_20/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_20/mul_6:z:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒy
while/Identity_4Identitywhile/lstm_cell_20/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
while/Identity_5Identitywhile/lstm_cell_20/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸

while/NoOpNoOp"^while/lstm_cell_20/ReadVariableOp$^while/lstm_cell_20/ReadVariableOp_1$^while/lstm_cell_20/ReadVariableOp_2$^while/lstm_cell_20/ReadVariableOp_3(^while/lstm_cell_20/split/ReadVariableOp*^while/lstm_cell_20/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_20_readvariableop_resource,while_lstm_cell_20_readvariableop_resource_0"j
2while_lstm_cell_20_split_1_readvariableop_resource4while_lstm_cell_20_split_1_readvariableop_resource_0"f
0while_lstm_cell_20_split_readvariableop_resource2while_lstm_cell_20_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2F
!while/lstm_cell_20/ReadVariableOp!while/lstm_cell_20/ReadVariableOp2J
#while/lstm_cell_20/ReadVariableOp_1#while/lstm_cell_20/ReadVariableOp_12J
#while/lstm_cell_20/ReadVariableOp_2#while/lstm_cell_20/ReadVariableOp_22J
#while/lstm_cell_20/ReadVariableOp_3#while/lstm_cell_20/ReadVariableOp_32R
'while/lstm_cell_20/split/ReadVariableOp'while/lstm_cell_20/split/ReadVariableOp2V
)while/lstm_cell_20/split_1/ReadVariableOp)while/lstm_cell_20/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
Ç	
õ
D__inference_dense_9_layer_call_and_return_conditional_losses_3713222

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
È
while_cond_3714720
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3714720___redundant_placeholder05
1while_while_cond_3714720___redundant_placeholder15
1while_while_cond_3714720___redundant_placeholder25
1while_while_cond_3714720___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:


õ
D__inference_dense_8_layer_call_and_return_conditional_losses_3713206

inputs0
matmul_readvariableop_resource:@-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿP
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
IdentityIdentityRelu:activations:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
º
È
while_cond_3714981
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3714981___redundant_placeholder05
1while_while_cond_3714981___redundant_placeholder15
1while_while_cond_3714981___redundant_placeholder25
1while_while_cond_3714981___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
¯

I__inference_sequential_9_layer_call_and_return_conditional_losses_3713987

inputsD
1lstm_9_lstm_cell_20_split_readvariableop_resource:	B
3lstm_9_lstm_cell_20_split_1_readvariableop_resource:	>
+lstm_9_lstm_cell_20_readvariableop_resource:	@8
&dense_8_matmul_readvariableop_resource:@5
'dense_8_biasadd_readvariableop_resource:8
&dense_9_matmul_readvariableop_resource:5
'dense_9_biasadd_readvariableop_resource:
identity¢dense_8/BiasAdd/ReadVariableOp¢dense_8/MatMul/ReadVariableOp¢dense_9/BiasAdd/ReadVariableOp¢dense_9/MatMul/ReadVariableOp¢"lstm_9/lstm_cell_20/ReadVariableOp¢$lstm_9/lstm_cell_20/ReadVariableOp_1¢$lstm_9/lstm_cell_20/ReadVariableOp_2¢$lstm_9/lstm_cell_20/ReadVariableOp_3¢(lstm_9/lstm_cell_20/split/ReadVariableOp¢*lstm_9/lstm_cell_20/split_1/ReadVariableOp¢lstm_9/whileB
lstm_9/ShapeShapeinputs*
T0*
_output_shapes
:d
lstm_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: f
lstm_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:f
lstm_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ô
lstm_9/strided_sliceStridedSlicelstm_9/Shape:output:0#lstm_9/strided_slice/stack:output:0%lstm_9/strided_slice/stack_1:output:0%lstm_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskW
lstm_9/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
lstm_9/zeros/packedPacklstm_9/strided_slice:output:0lstm_9/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:W
lstm_9/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_9/zerosFilllstm_9/zeros/packed:output:0lstm_9/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
lstm_9/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
lstm_9/zeros_1/packedPacklstm_9/strided_slice:output:0 lstm_9/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Y
lstm_9/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_9/zeros_1Filllstm_9/zeros_1/packed:output:0lstm_9/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@j
lstm_9/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          {
lstm_9/transpose	Transposeinputslstm_9/transpose/perm:output:0*
T0*+
_output_shapes
:
ÿÿÿÿÿÿÿÿÿR
lstm_9/Shape_1Shapelstm_9/transpose:y:0*
T0*
_output_shapes
:f
lstm_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
lstm_9/strided_slice_1StridedSlicelstm_9/Shape_1:output:0%lstm_9/strided_slice_1/stack:output:0'lstm_9/strided_slice_1/stack_1:output:0'lstm_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskm
"lstm_9/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÉ
lstm_9/TensorArrayV2TensorListReserve+lstm_9/TensorArrayV2/element_shape:output:0lstm_9/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
<lstm_9/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   õ
.lstm_9/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_9/transpose:y:0Elstm_9/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒf
lstm_9/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: h
lstm_9/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:h
lstm_9/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_9/strided_slice_2StridedSlicelstm_9/transpose:y:0%lstm_9/strided_slice_2/stack:output:0'lstm_9/strided_slice_2/stack_1:output:0'lstm_9/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskh
#lstm_9/lstm_cell_20/ones_like/ShapeShapelstm_9/zeros:output:0*
T0*
_output_shapes
:h
#lstm_9/lstm_cell_20/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?³
lstm_9/lstm_cell_20/ones_likeFill,lstm_9/lstm_cell_20/ones_like/Shape:output:0,lstm_9/lstm_cell_20/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
#lstm_9/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
(lstm_9/lstm_cell_20/split/ReadVariableOpReadVariableOp1lstm_9_lstm_cell_20_split_readvariableop_resource*
_output_shapes
:	*
dtype0Ú
lstm_9/lstm_cell_20/splitSplit,lstm_9/lstm_cell_20/split/split_dim:output:00lstm_9/lstm_cell_20/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split
lstm_9/lstm_cell_20/MatMulMatMullstm_9/strided_slice_2:output:0"lstm_9/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_9/lstm_cell_20/MatMul_1MatMullstm_9/strided_slice_2:output:0"lstm_9/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_9/lstm_cell_20/MatMul_2MatMullstm_9/strided_slice_2:output:0"lstm_9/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_9/lstm_cell_20/MatMul_3MatMullstm_9/strided_slice_2:output:0"lstm_9/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
%lstm_9/lstm_cell_20/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
*lstm_9/lstm_cell_20/split_1/ReadVariableOpReadVariableOp3lstm_9_lstm_cell_20_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0Ð
lstm_9/lstm_cell_20/split_1Split.lstm_9/lstm_cell_20/split_1/split_dim:output:02lstm_9/lstm_cell_20/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split¤
lstm_9/lstm_cell_20/BiasAddBiasAdd$lstm_9/lstm_cell_20/MatMul:product:0$lstm_9/lstm_cell_20/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¨
lstm_9/lstm_cell_20/BiasAdd_1BiasAdd&lstm_9/lstm_cell_20/MatMul_1:product:0$lstm_9/lstm_cell_20/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¨
lstm_9/lstm_cell_20/BiasAdd_2BiasAdd&lstm_9/lstm_cell_20/MatMul_2:product:0$lstm_9/lstm_cell_20/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¨
lstm_9/lstm_cell_20/BiasAdd_3BiasAdd&lstm_9/lstm_cell_20/MatMul_3:product:0$lstm_9/lstm_cell_20/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_9/lstm_cell_20/mulMullstm_9/zeros:output:0&lstm_9/lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_9/lstm_cell_20/mul_1Mullstm_9/zeros:output:0&lstm_9/lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_9/lstm_cell_20/mul_2Mullstm_9/zeros:output:0&lstm_9/lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_9/lstm_cell_20/mul_3Mullstm_9/zeros:output:0&lstm_9/lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"lstm_9/lstm_cell_20/ReadVariableOpReadVariableOp+lstm_9_lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0x
'lstm_9/lstm_cell_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        z
)lstm_9/lstm_cell_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   z
)lstm_9/lstm_cell_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ï
!lstm_9/lstm_cell_20/strided_sliceStridedSlice*lstm_9/lstm_cell_20/ReadVariableOp:value:00lstm_9/lstm_cell_20/strided_slice/stack:output:02lstm_9/lstm_cell_20/strided_slice/stack_1:output:02lstm_9/lstm_cell_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¡
lstm_9/lstm_cell_20/MatMul_4MatMullstm_9/lstm_cell_20/mul:z:0*lstm_9/lstm_cell_20/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
lstm_9/lstm_cell_20/addAddV2$lstm_9/lstm_cell_20/BiasAdd:output:0&lstm_9/lstm_cell_20/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
lstm_9/lstm_cell_20/SigmoidSigmoidlstm_9/lstm_cell_20/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$lstm_9/lstm_cell_20/ReadVariableOp_1ReadVariableOp+lstm_9_lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0z
)lstm_9/lstm_cell_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   |
+lstm_9/lstm_cell_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       |
+lstm_9/lstm_cell_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ù
#lstm_9/lstm_cell_20/strided_slice_1StridedSlice,lstm_9/lstm_cell_20/ReadVariableOp_1:value:02lstm_9/lstm_cell_20/strided_slice_1/stack:output:04lstm_9/lstm_cell_20/strided_slice_1/stack_1:output:04lstm_9/lstm_cell_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¥
lstm_9/lstm_cell_20/MatMul_5MatMullstm_9/lstm_cell_20/mul_1:z:0,lstm_9/lstm_cell_20/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
lstm_9/lstm_cell_20/add_1AddV2&lstm_9/lstm_cell_20/BiasAdd_1:output:0&lstm_9/lstm_cell_20/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
lstm_9/lstm_cell_20/Sigmoid_1Sigmoidlstm_9/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_9/lstm_cell_20/mul_4Mul!lstm_9/lstm_cell_20/Sigmoid_1:y:0lstm_9/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$lstm_9/lstm_cell_20/ReadVariableOp_2ReadVariableOp+lstm_9_lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0z
)lstm_9/lstm_cell_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       |
+lstm_9/lstm_cell_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   |
+lstm_9/lstm_cell_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ù
#lstm_9/lstm_cell_20/strided_slice_2StridedSlice,lstm_9/lstm_cell_20/ReadVariableOp_2:value:02lstm_9/lstm_cell_20/strided_slice_2/stack:output:04lstm_9/lstm_cell_20/strided_slice_2/stack_1:output:04lstm_9/lstm_cell_20/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¥
lstm_9/lstm_cell_20/MatMul_6MatMullstm_9/lstm_cell_20/mul_2:z:0,lstm_9/lstm_cell_20/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
lstm_9/lstm_cell_20/add_2AddV2&lstm_9/lstm_cell_20/BiasAdd_2:output:0&lstm_9/lstm_cell_20/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
lstm_9/lstm_cell_20/TanhTanhlstm_9/lstm_cell_20/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_9/lstm_cell_20/mul_5Mullstm_9/lstm_cell_20/Sigmoid:y:0lstm_9/lstm_cell_20/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_9/lstm_cell_20/add_3AddV2lstm_9/lstm_cell_20/mul_4:z:0lstm_9/lstm_cell_20/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$lstm_9/lstm_cell_20/ReadVariableOp_3ReadVariableOp+lstm_9_lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0z
)lstm_9/lstm_cell_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   |
+lstm_9/lstm_cell_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        |
+lstm_9/lstm_cell_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ù
#lstm_9/lstm_cell_20/strided_slice_3StridedSlice,lstm_9/lstm_cell_20/ReadVariableOp_3:value:02lstm_9/lstm_cell_20/strided_slice_3/stack:output:04lstm_9/lstm_cell_20/strided_slice_3/stack_1:output:04lstm_9/lstm_cell_20/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¥
lstm_9/lstm_cell_20/MatMul_7MatMullstm_9/lstm_cell_20/mul_3:z:0,lstm_9/lstm_cell_20/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
lstm_9/lstm_cell_20/add_4AddV2&lstm_9/lstm_cell_20/BiasAdd_3:output:0&lstm_9/lstm_cell_20/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
lstm_9/lstm_cell_20/Sigmoid_2Sigmoidlstm_9/lstm_cell_20/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
lstm_9/lstm_cell_20/Tanh_1Tanhlstm_9/lstm_cell_20/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_9/lstm_cell_20/mul_6Mul!lstm_9/lstm_cell_20/Sigmoid_2:y:0lstm_9/lstm_cell_20/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
$lstm_9/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Í
lstm_9/TensorArrayV2_1TensorListReserve-lstm_9/TensorArrayV2_1/element_shape:output:0lstm_9/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒM
lstm_9/timeConst*
_output_shapes
: *
dtype0*
value	B : j
lstm_9/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ[
lstm_9/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ü
lstm_9/whileWhile"lstm_9/while/loop_counter:output:0(lstm_9/while/maximum_iterations:output:0lstm_9/time:output:0lstm_9/TensorArrayV2_1:handle:0lstm_9/zeros:output:0lstm_9/zeros_1:output:0lstm_9/strided_slice_1:output:0>lstm_9/TensorArrayUnstack/TensorListFromTensor:output_handle:01lstm_9_lstm_cell_20_split_readvariableop_resource3lstm_9_lstm_cell_20_split_1_readvariableop_resource+lstm_9_lstm_cell_20_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *%
bodyR
lstm_9_while_body_3713847*%
condR
lstm_9_while_cond_3713846*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
7lstm_9/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ×
)lstm_9/TensorArrayV2Stack/TensorListStackTensorListStacklstm_9/while:output:3@lstm_9/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
ÿÿÿÿÿÿÿÿÿ@*
element_dtype0o
lstm_9/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿh
lstm_9/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: h
lstm_9/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ª
lstm_9/strided_slice_3StridedSlice2lstm_9/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_9/strided_slice_3/stack:output:0'lstm_9/strided_slice_3/stack_1:output:0'lstm_9/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskl
lstm_9/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          «
lstm_9/transpose_1	Transpose2lstm_9/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_9/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@b
lstm_9/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_8/MatMul/ReadVariableOpReadVariableOp&dense_8_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense_8/MatMulMatMullstm_9/strided_slice_3:output:0%dense_8/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_8/BiasAdd/ReadVariableOpReadVariableOp'dense_8_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_8/BiasAddBiasAdddense_8/MatMul:product:0&dense_8/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
dense_8/ReluReludense_8/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_9/MatMul/ReadVariableOpReadVariableOp&dense_9_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_9/MatMulMatMuldense_8/Relu:activations:0%dense_9/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_9/BiasAdd/ReadVariableOpReadVariableOp'dense_9_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_9/BiasAddBiasAdddense_9/MatMul:product:0&dense_9/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
IdentityIdentitydense_9/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÉ
NoOpNoOp^dense_8/BiasAdd/ReadVariableOp^dense_8/MatMul/ReadVariableOp^dense_9/BiasAdd/ReadVariableOp^dense_9/MatMul/ReadVariableOp#^lstm_9/lstm_cell_20/ReadVariableOp%^lstm_9/lstm_cell_20/ReadVariableOp_1%^lstm_9/lstm_cell_20/ReadVariableOp_2%^lstm_9/lstm_cell_20/ReadVariableOp_3)^lstm_9/lstm_cell_20/split/ReadVariableOp+^lstm_9/lstm_cell_20/split_1/ReadVariableOp^lstm_9/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ
: : : : : : : 2@
dense_8/BiasAdd/ReadVariableOpdense_8/BiasAdd/ReadVariableOp2>
dense_8/MatMul/ReadVariableOpdense_8/MatMul/ReadVariableOp2@
dense_9/BiasAdd/ReadVariableOpdense_9/BiasAdd/ReadVariableOp2>
dense_9/MatMul/ReadVariableOpdense_9/MatMul/ReadVariableOp2H
"lstm_9/lstm_cell_20/ReadVariableOp"lstm_9/lstm_cell_20/ReadVariableOp2L
$lstm_9/lstm_cell_20/ReadVariableOp_1$lstm_9/lstm_cell_20/ReadVariableOp_12L
$lstm_9/lstm_cell_20/ReadVariableOp_2$lstm_9/lstm_cell_20/ReadVariableOp_22L
$lstm_9/lstm_cell_20/ReadVariableOp_3$lstm_9/lstm_cell_20/ReadVariableOp_32T
(lstm_9/lstm_cell_20/split/ReadVariableOp(lstm_9/lstm_cell_20/split/ReadVariableOp2X
*lstm_9/lstm_cell_20/split_1/ReadVariableOp*lstm_9/lstm_cell_20/split_1/ReadVariableOp2
lstm_9/whilelstm_9/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
#
ê
while_body_3712608
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_20_3712632_0:	+
while_lstm_cell_20_3712634_0:	/
while_lstm_cell_20_3712636_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_20_3712632:	)
while_lstm_cell_20_3712634:	-
while_lstm_cell_20_3712636:	@¢*while/lstm_cell_20/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0·
*while/lstm_cell_20/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_20_3712632_0while_lstm_cell_20_3712634_0while_lstm_cell_20_3712636_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_20_layer_call_and_return_conditional_losses_3712594Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_20/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity3while/lstm_cell_20/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/Identity_5Identity3while/lstm_cell_20/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y

while/NoOpNoOp+^while/lstm_cell_20/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_20_3712632while_lstm_cell_20_3712632_0":
while_lstm_cell_20_3712634while_lstm_cell_20_3712634_0":
while_lstm_cell_20_3712636while_lstm_cell_20_3712636_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2X
*while/lstm_cell_20/StatefulPartitionedCall*while/lstm_cell_20/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
8

C__inference_lstm_9_layer_call_and_return_conditional_losses_3712677

inputs'
lstm_cell_20_3712595:	#
lstm_cell_20_3712597:	'
lstm_cell_20_3712599:	@
identity¢$lstm_cell_20/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskù
$lstm_cell_20/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_20_3712595lstm_cell_20_3712597lstm_cell_20_3712599*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_20_layer_call_and_return_conditional_losses_3712594n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¼
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_20_3712595lstm_cell_20_3712597lstm_cell_20_3712599*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_3712608*
condR
while_cond_3712607*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
NoOpNoOp%^lstm_cell_20/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_20/StatefulPartitionedCall$lstm_cell_20/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
©
¶
I__inference_sequential_9_layer_call_and_return_conditional_losses_3713623

inputs!
lstm_9_3713605:	
lstm_9_3713607:	!
lstm_9_3713609:	@!
dense_8_3713612:@
dense_8_3713614:!
dense_9_3713617:
dense_9_3713619:
identity¢dense_8/StatefulPartitionedCall¢dense_9/StatefulPartitionedCall¢lstm_9/StatefulPartitionedCallý
lstm_9/StatefulPartitionedCallStatefulPartitionedCallinputslstm_9_3713605lstm_9_3713607lstm_9_3713609*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_9_layer_call_and_return_conditional_losses_3713572
dense_8/StatefulPartitionedCallStatefulPartitionedCall'lstm_9/StatefulPartitionedCall:output:0dense_8_3713612dense_8_3713614*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_3713206
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_3713617dense_9_3713619*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_3713222w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
NoOpNoOp ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall^lstm_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ
: : : : : : : 2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2@
lstm_9/StatefulPartitionedCalllstm_9/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
ë
é
C__inference_lstm_9_layer_call_and_return_conditional_losses_3714880
inputs_0=
*lstm_cell_20_split_readvariableop_resource:	;
,lstm_cell_20_split_1_readvariableop_resource:	7
$lstm_cell_20_readvariableop_resource:	@
identity¢lstm_cell_20/ReadVariableOp¢lstm_cell_20/ReadVariableOp_1¢lstm_cell_20/ReadVariableOp_2¢lstm_cell_20/ReadVariableOp_3¢!lstm_cell_20/split/ReadVariableOp¢#lstm_cell_20/split_1/ReadVariableOp¢while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskZ
lstm_cell_20/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:a
lstm_cell_20/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell_20/ones_likeFill%lstm_cell_20/ones_like/Shape:output:0%lstm_cell_20/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
lstm_cell_20/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_20/dropout/MulMullstm_cell_20/ones_like:output:0#lstm_cell_20/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
lstm_cell_20/dropout/ShapeShapelstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:¦
1lstm_cell_20/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_20/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0h
#lstm_cell_20/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Í
!lstm_cell_20/dropout/GreaterEqualGreaterEqual:lstm_cell_20/dropout/random_uniform/RandomUniform:output:0,lstm_cell_20/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/dropout/CastCast%lstm_cell_20/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/dropout/Mul_1Mullstm_cell_20/dropout/Mul:z:0lstm_cell_20/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
lstm_cell_20/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_20/dropout_1/MulMullstm_cell_20/ones_like:output:0%lstm_cell_20/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_20/dropout_1/ShapeShapelstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:ª
3lstm_cell_20/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_20/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0j
%lstm_cell_20/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ó
#lstm_cell_20/dropout_1/GreaterEqualGreaterEqual<lstm_cell_20/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_20/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/dropout_1/CastCast'lstm_cell_20/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/dropout_1/Mul_1Mullstm_cell_20/dropout_1/Mul:z:0lstm_cell_20/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
lstm_cell_20/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_20/dropout_2/MulMullstm_cell_20/ones_like:output:0%lstm_cell_20/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_20/dropout_2/ShapeShapelstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:ª
3lstm_cell_20/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_20/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0j
%lstm_cell_20/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ó
#lstm_cell_20/dropout_2/GreaterEqualGreaterEqual<lstm_cell_20/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_20/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/dropout_2/CastCast'lstm_cell_20/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/dropout_2/Mul_1Mullstm_cell_20/dropout_2/Mul:z:0lstm_cell_20/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
lstm_cell_20/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_20/dropout_3/MulMullstm_cell_20/ones_like:output:0%lstm_cell_20/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_20/dropout_3/ShapeShapelstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:ª
3lstm_cell_20/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_20/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0j
%lstm_cell_20/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ó
#lstm_cell_20/dropout_3/GreaterEqualGreaterEqual<lstm_cell_20/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_20/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/dropout_3/CastCast'lstm_cell_20/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/dropout_3/Mul_1Mullstm_cell_20/dropout_3/Mul:z:0lstm_cell_20/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_cell_20/split/ReadVariableOpReadVariableOp*lstm_cell_20_split_readvariableop_resource*
_output_shapes
:	*
dtype0Å
lstm_cell_20/splitSplit%lstm_cell_20/split/split_dim:output:0)lstm_cell_20/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split
lstm_cell_20/MatMulMatMulstrided_slice_2:output:0lstm_cell_20/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_20/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_20/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_20/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
lstm_cell_20/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
#lstm_cell_20/split_1/ReadVariableOpReadVariableOp,lstm_cell_20_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0»
lstm_cell_20/split_1Split'lstm_cell_20/split_1/split_dim:output:0+lstm_cell_20/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
lstm_cell_20/BiasAddBiasAddlstm_cell_20/MatMul:product:0lstm_cell_20/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/BiasAdd_1BiasAddlstm_cell_20/MatMul_1:product:0lstm_cell_20/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/BiasAdd_2BiasAddlstm_cell_20/MatMul_2:product:0lstm_cell_20/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/BiasAdd_3BiasAddlstm_cell_20/MatMul_3:product:0lstm_cell_20/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
lstm_cell_20/mulMulzeros:output:0lstm_cell_20/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell_20/mul_1Mulzeros:output:0 lstm_cell_20/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell_20/mul_2Mulzeros:output:0 lstm_cell_20/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell_20/mul_3Mulzeros:output:0 lstm_cell_20/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/ReadVariableOpReadVariableOp$lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0q
 lstm_cell_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        s
"lstm_cell_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   s
"lstm_cell_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¬
lstm_cell_20/strided_sliceStridedSlice#lstm_cell_20/ReadVariableOp:value:0)lstm_cell_20/strided_slice/stack:output:0+lstm_cell_20/strided_slice/stack_1:output:0+lstm_cell_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_20/MatMul_4MatMullstm_cell_20/mul:z:0#lstm_cell_20/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/addAddV2lstm_cell_20/BiasAdd:output:0lstm_cell_20/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
lstm_cell_20/SigmoidSigmoidlstm_cell_20/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/ReadVariableOp_1ReadVariableOp$lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   u
$lstm_cell_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       u
$lstm_cell_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_20/strided_slice_1StridedSlice%lstm_cell_20/ReadVariableOp_1:value:0+lstm_cell_20/strided_slice_1/stack:output:0-lstm_cell_20/strided_slice_1/stack_1:output:0-lstm_cell_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_20/MatMul_5MatMullstm_cell_20/mul_1:z:0%lstm_cell_20/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/add_1AddV2lstm_cell_20/BiasAdd_1:output:0lstm_cell_20/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_20/Sigmoid_1Sigmoidlstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
lstm_cell_20/mul_4Mullstm_cell_20/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/ReadVariableOp_2ReadVariableOp$lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       u
$lstm_cell_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   u
$lstm_cell_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_20/strided_slice_2StridedSlice%lstm_cell_20/ReadVariableOp_2:value:0+lstm_cell_20/strided_slice_2/stack:output:0-lstm_cell_20/strided_slice_2/stack_1:output:0-lstm_cell_20/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_20/MatMul_6MatMullstm_cell_20/mul_2:z:0%lstm_cell_20/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/add_2AddV2lstm_cell_20/BiasAdd_2:output:0lstm_cell_20/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
lstm_cell_20/TanhTanhlstm_cell_20/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_cell_20/mul_5Mullstm_cell_20/Sigmoid:y:0lstm_cell_20/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell_20/add_3AddV2lstm_cell_20/mul_4:z:0lstm_cell_20/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/ReadVariableOp_3ReadVariableOp$lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   u
$lstm_cell_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        u
$lstm_cell_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_20/strided_slice_3StridedSlice%lstm_cell_20/ReadVariableOp_3:value:0+lstm_cell_20/strided_slice_3/stack:output:0-lstm_cell_20/strided_slice_3/stack_1:output:0-lstm_cell_20/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_20/MatMul_7MatMullstm_cell_20/mul_3:z:0%lstm_cell_20/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/add_4AddV2lstm_cell_20/BiasAdd_3:output:0lstm_cell_20/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_20/Sigmoid_2Sigmoidlstm_cell_20/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
lstm_cell_20/Tanh_1Tanhlstm_cell_20/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/mul_6Mullstm_cell_20/Sigmoid_2:y:0lstm_cell_20/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ú
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_20_split_readvariableop_resource,lstm_cell_20_split_1_readvariableop_resource$lstm_cell_20_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_3714721*
condR
while_cond_3714720*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^lstm_cell_20/ReadVariableOp^lstm_cell_20/ReadVariableOp_1^lstm_cell_20/ReadVariableOp_2^lstm_cell_20/ReadVariableOp_3"^lstm_cell_20/split/ReadVariableOp$^lstm_cell_20/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2:
lstm_cell_20/ReadVariableOplstm_cell_20/ReadVariableOp2>
lstm_cell_20/ReadVariableOp_1lstm_cell_20/ReadVariableOp_12>
lstm_cell_20/ReadVariableOp_2lstm_cell_20/ReadVariableOp_22>
lstm_cell_20/ReadVariableOp_3lstm_cell_20/ReadVariableOp_32F
!lstm_cell_20/split/ReadVariableOp!lstm_cell_20/split/ReadVariableOp2J
#lstm_cell_20/split_1/ReadVariableOp#lstm_cell_20/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
±	
©
.__inference_sequential_9_layer_call_fn_3713246
input_10
unknown:	
	unknown_0:	
	unknown_1:	@
	unknown_2:@
	unknown_3:
	unknown_4:
	unknown_5:
identity¢StatefulPartitionedCall¡
StatefulPartitionedCallStatefulPartitionedCallinput_10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_9_layer_call_and_return_conditional_losses_3713229o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ
: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
input_10
Â

)__inference_dense_9_layer_call_fn_3715431

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_3713222o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þ	
Ô
lstm_9_while_cond_3714120*
&lstm_9_while_lstm_9_while_loop_counter0
,lstm_9_while_lstm_9_while_maximum_iterations
lstm_9_while_placeholder
lstm_9_while_placeholder_1
lstm_9_while_placeholder_2
lstm_9_while_placeholder_3,
(lstm_9_while_less_lstm_9_strided_slice_1C
?lstm_9_while_lstm_9_while_cond_3714120___redundant_placeholder0C
?lstm_9_while_lstm_9_while_cond_3714120___redundant_placeholder1C
?lstm_9_while_lstm_9_while_cond_3714120___redundant_placeholder2C
?lstm_9_while_lstm_9_while_cond_3714120___redundant_placeholder3
lstm_9_while_identity
~
lstm_9/while/LessLesslstm_9_while_placeholder(lstm_9_while_less_lstm_9_strided_slice_1*
T0*
_output_shapes
: Y
lstm_9/while/IdentityIdentitylstm_9/while/Less:z:0*
T0
*
_output_shapes
: "7
lstm_9_while_identitylstm_9/while/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
ºz
ç
C__inference_lstm_9_layer_call_and_return_conditional_losses_3713187

inputs=
*lstm_cell_20_split_readvariableop_resource:	;
,lstm_cell_20_split_1_readvariableop_resource:	7
$lstm_cell_20_readvariableop_resource:	@
identity¢lstm_cell_20/ReadVariableOp¢lstm_cell_20/ReadVariableOp_1¢lstm_cell_20/ReadVariableOp_2¢lstm_cell_20/ReadVariableOp_3¢!lstm_cell_20/split/ReadVariableOp¢#lstm_cell_20/split_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskZ
lstm_cell_20/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:a
lstm_cell_20/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell_20/ones_likeFill%lstm_cell_20/ones_like/Shape:output:0%lstm_cell_20/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_cell_20/split/ReadVariableOpReadVariableOp*lstm_cell_20_split_readvariableop_resource*
_output_shapes
:	*
dtype0Å
lstm_cell_20/splitSplit%lstm_cell_20/split/split_dim:output:0)lstm_cell_20/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split
lstm_cell_20/MatMulMatMulstrided_slice_2:output:0lstm_cell_20/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_20/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_20/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_20/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
lstm_cell_20/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
#lstm_cell_20/split_1/ReadVariableOpReadVariableOp,lstm_cell_20_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0»
lstm_cell_20/split_1Split'lstm_cell_20/split_1/split_dim:output:0+lstm_cell_20/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
lstm_cell_20/BiasAddBiasAddlstm_cell_20/MatMul:product:0lstm_cell_20/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/BiasAdd_1BiasAddlstm_cell_20/MatMul_1:product:0lstm_cell_20/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/BiasAdd_2BiasAddlstm_cell_20/MatMul_2:product:0lstm_cell_20/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/BiasAdd_3BiasAddlstm_cell_20/MatMul_3:product:0lstm_cell_20/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
lstm_cell_20/mulMulzeros:output:0lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_cell_20/mul_1Mulzeros:output:0lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_cell_20/mul_2Mulzeros:output:0lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_cell_20/mul_3Mulzeros:output:0lstm_cell_20/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/ReadVariableOpReadVariableOp$lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0q
 lstm_cell_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        s
"lstm_cell_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   s
"lstm_cell_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¬
lstm_cell_20/strided_sliceStridedSlice#lstm_cell_20/ReadVariableOp:value:0)lstm_cell_20/strided_slice/stack:output:0+lstm_cell_20/strided_slice/stack_1:output:0+lstm_cell_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_20/MatMul_4MatMullstm_cell_20/mul:z:0#lstm_cell_20/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/addAddV2lstm_cell_20/BiasAdd:output:0lstm_cell_20/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
lstm_cell_20/SigmoidSigmoidlstm_cell_20/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/ReadVariableOp_1ReadVariableOp$lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   u
$lstm_cell_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       u
$lstm_cell_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_20/strided_slice_1StridedSlice%lstm_cell_20/ReadVariableOp_1:value:0+lstm_cell_20/strided_slice_1/stack:output:0-lstm_cell_20/strided_slice_1/stack_1:output:0-lstm_cell_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_20/MatMul_5MatMullstm_cell_20/mul_1:z:0%lstm_cell_20/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/add_1AddV2lstm_cell_20/BiasAdd_1:output:0lstm_cell_20/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_20/Sigmoid_1Sigmoidlstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
lstm_cell_20/mul_4Mullstm_cell_20/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/ReadVariableOp_2ReadVariableOp$lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       u
$lstm_cell_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   u
$lstm_cell_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_20/strided_slice_2StridedSlice%lstm_cell_20/ReadVariableOp_2:value:0+lstm_cell_20/strided_slice_2/stack:output:0-lstm_cell_20/strided_slice_2/stack_1:output:0-lstm_cell_20/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_20/MatMul_6MatMullstm_cell_20/mul_2:z:0%lstm_cell_20/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/add_2AddV2lstm_cell_20/BiasAdd_2:output:0lstm_cell_20/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
lstm_cell_20/TanhTanhlstm_cell_20/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_cell_20/mul_5Mullstm_cell_20/Sigmoid:y:0lstm_cell_20/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell_20/add_3AddV2lstm_cell_20/mul_4:z:0lstm_cell_20/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/ReadVariableOp_3ReadVariableOp$lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   u
$lstm_cell_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        u
$lstm_cell_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_20/strided_slice_3StridedSlice%lstm_cell_20/ReadVariableOp_3:value:0+lstm_cell_20/strided_slice_3/stack:output:0-lstm_cell_20/strided_slice_3/stack_1:output:0-lstm_cell_20/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_20/MatMul_7MatMullstm_cell_20/mul_3:z:0%lstm_cell_20/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/add_4AddV2lstm_cell_20/BiasAdd_3:output:0lstm_cell_20/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_20/Sigmoid_2Sigmoidlstm_cell_20/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
lstm_cell_20/Tanh_1Tanhlstm_cell_20/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/mul_6Mullstm_cell_20/Sigmoid_2:y:0lstm_cell_20/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ú
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_20_split_readvariableop_resource,lstm_cell_20_split_1_readvariableop_resource$lstm_cell_20_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_3713060*
condR
while_cond_3713059*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
ÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^lstm_cell_20/ReadVariableOp^lstm_cell_20/ReadVariableOp_1^lstm_cell_20/ReadVariableOp_2^lstm_cell_20/ReadVariableOp_3"^lstm_cell_20/split/ReadVariableOp$^lstm_cell_20/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : : 2:
lstm_cell_20/ReadVariableOplstm_cell_20/ReadVariableOp2>
lstm_cell_20/ReadVariableOp_1lstm_cell_20/ReadVariableOp_12>
lstm_cell_20/ReadVariableOp_2lstm_cell_20/ReadVariableOp_22>
lstm_cell_20/ReadVariableOp_3lstm_cell_20/ReadVariableOp_32F
!lstm_cell_20/split/ReadVariableOp!lstm_cell_20/split/ReadVariableOp2J
#lstm_cell_20/split_1/ReadVariableOp#lstm_cell_20/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
Ç	
õ
D__inference_dense_9_layer_call_and_return_conditional_losses_3715441

inputs0
matmul_readvariableop_resource:-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«	
§
.__inference_sequential_9_layer_call_fn_3713726

inputs
unknown:	
	unknown_0:	
	unknown_1:	@
	unknown_2:@
	unknown_3:
	unknown_4:
	unknown_5:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_9_layer_call_and_return_conditional_losses_3713229o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ
: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs

·
(__inference_lstm_9_layer_call_fn_3714325
inputs_0
unknown:	
	unknown_0:	
	unknown_1:	@
identity¢StatefulPartitionedCallç
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_9_layer_call_and_return_conditional_losses_3712677o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
º
È
while_cond_3713412
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3713412___redundant_placeholder05
1while_while_cond_3713412___redundant_placeholder15
1while_while_cond_3713412___redundant_placeholder25
1while_while_cond_3713412___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
õ¦

lstm_9_while_body_3714121*
&lstm_9_while_lstm_9_while_loop_counter0
,lstm_9_while_lstm_9_while_maximum_iterations
lstm_9_while_placeholder
lstm_9_while_placeholder_1
lstm_9_while_placeholder_2
lstm_9_while_placeholder_3)
%lstm_9_while_lstm_9_strided_slice_1_0e
alstm_9_while_tensorarrayv2read_tensorlistgetitem_lstm_9_tensorarrayunstack_tensorlistfromtensor_0L
9lstm_9_while_lstm_cell_20_split_readvariableop_resource_0:	J
;lstm_9_while_lstm_cell_20_split_1_readvariableop_resource_0:	F
3lstm_9_while_lstm_cell_20_readvariableop_resource_0:	@
lstm_9_while_identity
lstm_9_while_identity_1
lstm_9_while_identity_2
lstm_9_while_identity_3
lstm_9_while_identity_4
lstm_9_while_identity_5'
#lstm_9_while_lstm_9_strided_slice_1c
_lstm_9_while_tensorarrayv2read_tensorlistgetitem_lstm_9_tensorarrayunstack_tensorlistfromtensorJ
7lstm_9_while_lstm_cell_20_split_readvariableop_resource:	H
9lstm_9_while_lstm_cell_20_split_1_readvariableop_resource:	D
1lstm_9_while_lstm_cell_20_readvariableop_resource:	@¢(lstm_9/while/lstm_cell_20/ReadVariableOp¢*lstm_9/while/lstm_cell_20/ReadVariableOp_1¢*lstm_9/while/lstm_cell_20/ReadVariableOp_2¢*lstm_9/while/lstm_cell_20/ReadVariableOp_3¢.lstm_9/while/lstm_cell_20/split/ReadVariableOp¢0lstm_9/while/lstm_cell_20/split_1/ReadVariableOp
>lstm_9/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   É
0lstm_9/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_9_while_tensorarrayv2read_tensorlistgetitem_lstm_9_tensorarrayunstack_tensorlistfromtensor_0lstm_9_while_placeholderGlstm_9/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0s
)lstm_9/while/lstm_cell_20/ones_like/ShapeShapelstm_9_while_placeholder_2*
T0*
_output_shapes
:n
)lstm_9/while/lstm_cell_20/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?Å
#lstm_9/while/lstm_cell_20/ones_likeFill2lstm_9/while/lstm_cell_20/ones_like/Shape:output:02lstm_9/while/lstm_cell_20/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
'lstm_9/while/lstm_cell_20/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¾
%lstm_9/while/lstm_cell_20/dropout/MulMul,lstm_9/while/lstm_cell_20/ones_like:output:00lstm_9/while/lstm_cell_20/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
'lstm_9/while/lstm_cell_20/dropout/ShapeShape,lstm_9/while/lstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:À
>lstm_9/while/lstm_cell_20/dropout/random_uniform/RandomUniformRandomUniform0lstm_9/while/lstm_cell_20/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0u
0lstm_9/while/lstm_cell_20/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>ô
.lstm_9/while/lstm_cell_20/dropout/GreaterEqualGreaterEqualGlstm_9/while/lstm_cell_20/dropout/random_uniform/RandomUniform:output:09lstm_9/while/lstm_cell_20/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@£
&lstm_9/while/lstm_cell_20/dropout/CastCast2lstm_9/while/lstm_cell_20/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@·
'lstm_9/while/lstm_cell_20/dropout/Mul_1Mul)lstm_9/while/lstm_cell_20/dropout/Mul:z:0*lstm_9/while/lstm_cell_20/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
)lstm_9/while/lstm_cell_20/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Â
'lstm_9/while/lstm_cell_20/dropout_1/MulMul,lstm_9/while/lstm_cell_20/ones_like:output:02lstm_9/while/lstm_cell_20/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)lstm_9/while/lstm_cell_20/dropout_1/ShapeShape,lstm_9/while/lstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:Ä
@lstm_9/while/lstm_cell_20/dropout_1/random_uniform/RandomUniformRandomUniform2lstm_9/while/lstm_cell_20/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0w
2lstm_9/while/lstm_cell_20/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>ú
0lstm_9/while/lstm_cell_20/dropout_1/GreaterEqualGreaterEqualIlstm_9/while/lstm_cell_20/dropout_1/random_uniform/RandomUniform:output:0;lstm_9/while/lstm_cell_20/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@§
(lstm_9/while/lstm_cell_20/dropout_1/CastCast4lstm_9/while/lstm_cell_20/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@½
)lstm_9/while/lstm_cell_20/dropout_1/Mul_1Mul+lstm_9/while/lstm_cell_20/dropout_1/Mul:z:0,lstm_9/while/lstm_cell_20/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
)lstm_9/while/lstm_cell_20/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Â
'lstm_9/while/lstm_cell_20/dropout_2/MulMul,lstm_9/while/lstm_cell_20/ones_like:output:02lstm_9/while/lstm_cell_20/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)lstm_9/while/lstm_cell_20/dropout_2/ShapeShape,lstm_9/while/lstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:Ä
@lstm_9/while/lstm_cell_20/dropout_2/random_uniform/RandomUniformRandomUniform2lstm_9/while/lstm_cell_20/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0w
2lstm_9/while/lstm_cell_20/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>ú
0lstm_9/while/lstm_cell_20/dropout_2/GreaterEqualGreaterEqualIlstm_9/while/lstm_cell_20/dropout_2/random_uniform/RandomUniform:output:0;lstm_9/while/lstm_cell_20/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@§
(lstm_9/while/lstm_cell_20/dropout_2/CastCast4lstm_9/while/lstm_cell_20/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@½
)lstm_9/while/lstm_cell_20/dropout_2/Mul_1Mul+lstm_9/while/lstm_cell_20/dropout_2/Mul:z:0,lstm_9/while/lstm_cell_20/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
)lstm_9/while/lstm_cell_20/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Â
'lstm_9/while/lstm_cell_20/dropout_3/MulMul,lstm_9/while/lstm_cell_20/ones_like:output:02lstm_9/while/lstm_cell_20/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)lstm_9/while/lstm_cell_20/dropout_3/ShapeShape,lstm_9/while/lstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:Ä
@lstm_9/while/lstm_cell_20/dropout_3/random_uniform/RandomUniformRandomUniform2lstm_9/while/lstm_cell_20/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0w
2lstm_9/while/lstm_cell_20/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>ú
0lstm_9/while/lstm_cell_20/dropout_3/GreaterEqualGreaterEqualIlstm_9/while/lstm_cell_20/dropout_3/random_uniform/RandomUniform:output:0;lstm_9/while/lstm_cell_20/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@§
(lstm_9/while/lstm_cell_20/dropout_3/CastCast4lstm_9/while/lstm_cell_20/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@½
)lstm_9/while/lstm_cell_20/dropout_3/Mul_1Mul+lstm_9/while/lstm_cell_20/dropout_3/Mul:z:0,lstm_9/while/lstm_cell_20/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
)lstm_9/while/lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
.lstm_9/while/lstm_cell_20/split/ReadVariableOpReadVariableOp9lstm_9_while_lstm_cell_20_split_readvariableop_resource_0*
_output_shapes
:	*
dtype0ì
lstm_9/while/lstm_cell_20/splitSplit2lstm_9/while/lstm_cell_20/split/split_dim:output:06lstm_9/while/lstm_cell_20/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split¿
 lstm_9/while/lstm_cell_20/MatMulMatMul7lstm_9/while/TensorArrayV2Read/TensorListGetItem:item:0(lstm_9/while/lstm_cell_20/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Á
"lstm_9/while/lstm_cell_20/MatMul_1MatMul7lstm_9/while/TensorArrayV2Read/TensorListGetItem:item:0(lstm_9/while/lstm_cell_20/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Á
"lstm_9/while/lstm_cell_20/MatMul_2MatMul7lstm_9/while/TensorArrayV2Read/TensorListGetItem:item:0(lstm_9/while/lstm_cell_20/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Á
"lstm_9/while/lstm_cell_20/MatMul_3MatMul7lstm_9/while/TensorArrayV2Read/TensorListGetItem:item:0(lstm_9/while/lstm_cell_20/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@m
+lstm_9/while/lstm_cell_20/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ©
0lstm_9/while/lstm_cell_20/split_1/ReadVariableOpReadVariableOp;lstm_9_while_lstm_cell_20_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0â
!lstm_9/while/lstm_cell_20/split_1Split4lstm_9/while/lstm_cell_20/split_1/split_dim:output:08lstm_9/while/lstm_cell_20/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split¶
!lstm_9/while/lstm_cell_20/BiasAddBiasAdd*lstm_9/while/lstm_cell_20/MatMul:product:0*lstm_9/while/lstm_cell_20/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@º
#lstm_9/while/lstm_cell_20/BiasAdd_1BiasAdd,lstm_9/while/lstm_cell_20/MatMul_1:product:0*lstm_9/while/lstm_cell_20/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@º
#lstm_9/while/lstm_cell_20/BiasAdd_2BiasAdd,lstm_9/while/lstm_cell_20/MatMul_2:product:0*lstm_9/while/lstm_cell_20/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@º
#lstm_9/while/lstm_cell_20/BiasAdd_3BiasAdd,lstm_9/while/lstm_cell_20/MatMul_3:product:0*lstm_9/while/lstm_cell_20/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_9/while/lstm_cell_20/mulMullstm_9_while_placeholder_2+lstm_9/while/lstm_cell_20/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@£
lstm_9/while/lstm_cell_20/mul_1Mullstm_9_while_placeholder_2-lstm_9/while/lstm_cell_20/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@£
lstm_9/while/lstm_cell_20/mul_2Mullstm_9_while_placeholder_2-lstm_9/while/lstm_cell_20/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@£
lstm_9/while/lstm_cell_20/mul_3Mullstm_9_while_placeholder_2-lstm_9/while/lstm_cell_20/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(lstm_9/while/lstm_cell_20/ReadVariableOpReadVariableOp3lstm_9_while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0~
-lstm_9/while/lstm_cell_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
/lstm_9/while/lstm_cell_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   
/lstm_9/while/lstm_cell_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      í
'lstm_9/while/lstm_cell_20/strided_sliceStridedSlice0lstm_9/while/lstm_cell_20/ReadVariableOp:value:06lstm_9/while/lstm_cell_20/strided_slice/stack:output:08lstm_9/while/lstm_cell_20/strided_slice/stack_1:output:08lstm_9/while/lstm_cell_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask³
"lstm_9/while/lstm_cell_20/MatMul_4MatMul!lstm_9/while/lstm_cell_20/mul:z:00lstm_9/while/lstm_cell_20/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@²
lstm_9/while/lstm_cell_20/addAddV2*lstm_9/while/lstm_cell_20/BiasAdd:output:0,lstm_9/while/lstm_cell_20/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!lstm_9/while/lstm_cell_20/SigmoidSigmoid!lstm_9/while/lstm_cell_20/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
*lstm_9/while/lstm_cell_20/ReadVariableOp_1ReadVariableOp3lstm_9_while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
/lstm_9/while/lstm_cell_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   
1lstm_9/while/lstm_cell_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
1lstm_9/while/lstm_cell_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
)lstm_9/while/lstm_cell_20/strided_slice_1StridedSlice2lstm_9/while/lstm_cell_20/ReadVariableOp_1:value:08lstm_9/while/lstm_cell_20/strided_slice_1/stack:output:0:lstm_9/while/lstm_cell_20/strided_slice_1/stack_1:output:0:lstm_9/while/lstm_cell_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask·
"lstm_9/while/lstm_cell_20/MatMul_5MatMul#lstm_9/while/lstm_cell_20/mul_1:z:02lstm_9/while/lstm_cell_20/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¶
lstm_9/while/lstm_cell_20/add_1AddV2,lstm_9/while/lstm_cell_20/BiasAdd_1:output:0,lstm_9/while/lstm_cell_20/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#lstm_9/while/lstm_cell_20/Sigmoid_1Sigmoid#lstm_9/while/lstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_9/while/lstm_cell_20/mul_4Mul'lstm_9/while/lstm_cell_20/Sigmoid_1:y:0lstm_9_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
*lstm_9/while/lstm_cell_20/ReadVariableOp_2ReadVariableOp3lstm_9_while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
/lstm_9/while/lstm_cell_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       
1lstm_9/while/lstm_cell_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   
1lstm_9/while/lstm_cell_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
)lstm_9/while/lstm_cell_20/strided_slice_2StridedSlice2lstm_9/while/lstm_cell_20/ReadVariableOp_2:value:08lstm_9/while/lstm_cell_20/strided_slice_2/stack:output:0:lstm_9/while/lstm_cell_20/strided_slice_2/stack_1:output:0:lstm_9/while/lstm_cell_20/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask·
"lstm_9/while/lstm_cell_20/MatMul_6MatMul#lstm_9/while/lstm_cell_20/mul_2:z:02lstm_9/while/lstm_cell_20/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¶
lstm_9/while/lstm_cell_20/add_2AddV2,lstm_9/while/lstm_cell_20/BiasAdd_2:output:0,lstm_9/while/lstm_cell_20/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_9/while/lstm_cell_20/TanhTanh#lstm_9/while/lstm_cell_20/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@£
lstm_9/while/lstm_cell_20/mul_5Mul%lstm_9/while/lstm_cell_20/Sigmoid:y:0"lstm_9/while/lstm_cell_20/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¤
lstm_9/while/lstm_cell_20/add_3AddV2#lstm_9/while/lstm_cell_20/mul_4:z:0#lstm_9/while/lstm_cell_20/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
*lstm_9/while/lstm_cell_20/ReadVariableOp_3ReadVariableOp3lstm_9_while_lstm_cell_20_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
/lstm_9/while/lstm_cell_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   
1lstm_9/while/lstm_cell_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
1lstm_9/while/lstm_cell_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÷
)lstm_9/while/lstm_cell_20/strided_slice_3StridedSlice2lstm_9/while/lstm_cell_20/ReadVariableOp_3:value:08lstm_9/while/lstm_cell_20/strided_slice_3/stack:output:0:lstm_9/while/lstm_cell_20/strided_slice_3/stack_1:output:0:lstm_9/while/lstm_cell_20/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask·
"lstm_9/while/lstm_cell_20/MatMul_7MatMul#lstm_9/while/lstm_cell_20/mul_3:z:02lstm_9/while/lstm_cell_20/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¶
lstm_9/while/lstm_cell_20/add_4AddV2,lstm_9/while/lstm_cell_20/BiasAdd_3:output:0,lstm_9/while/lstm_cell_20/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#lstm_9/while/lstm_cell_20/Sigmoid_2Sigmoid#lstm_9/while/lstm_cell_20/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 lstm_9/while/lstm_cell_20/Tanh_1Tanh#lstm_9/while/lstm_cell_20/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@§
lstm_9/while/lstm_cell_20/mul_6Mul'lstm_9/while/lstm_cell_20/Sigmoid_2:y:0$lstm_9/while/lstm_cell_20/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@á
1lstm_9/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_9_while_placeholder_1lstm_9_while_placeholder#lstm_9/while/lstm_cell_20/mul_6:z:0*
_output_shapes
: *
element_dtype0:éèÒT
lstm_9/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :q
lstm_9/while/addAddV2lstm_9_while_placeholderlstm_9/while/add/y:output:0*
T0*
_output_shapes
: V
lstm_9/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_9/while/add_1AddV2&lstm_9_while_lstm_9_while_loop_counterlstm_9/while/add_1/y:output:0*
T0*
_output_shapes
: n
lstm_9/while/IdentityIdentitylstm_9/while/add_1:z:0^lstm_9/while/NoOp*
T0*
_output_shapes
: 
lstm_9/while/Identity_1Identity,lstm_9_while_lstm_9_while_maximum_iterations^lstm_9/while/NoOp*
T0*
_output_shapes
: n
lstm_9/while/Identity_2Identitylstm_9/while/add:z:0^lstm_9/while/NoOp*
T0*
_output_shapes
: ®
lstm_9/while/Identity_3IdentityAlstm_9/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_9/while/NoOp*
T0*
_output_shapes
: :éèÒ
lstm_9/while/Identity_4Identity#lstm_9/while/lstm_cell_20/mul_6:z:0^lstm_9/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_9/while/Identity_5Identity#lstm_9/while/lstm_cell_20/add_3:z:0^lstm_9/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@é
lstm_9/while/NoOpNoOp)^lstm_9/while/lstm_cell_20/ReadVariableOp+^lstm_9/while/lstm_cell_20/ReadVariableOp_1+^lstm_9/while/lstm_cell_20/ReadVariableOp_2+^lstm_9/while/lstm_cell_20/ReadVariableOp_3/^lstm_9/while/lstm_cell_20/split/ReadVariableOp1^lstm_9/while/lstm_cell_20/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "7
lstm_9_while_identitylstm_9/while/Identity:output:0";
lstm_9_while_identity_1 lstm_9/while/Identity_1:output:0";
lstm_9_while_identity_2 lstm_9/while/Identity_2:output:0";
lstm_9_while_identity_3 lstm_9/while/Identity_3:output:0";
lstm_9_while_identity_4 lstm_9/while/Identity_4:output:0";
lstm_9_while_identity_5 lstm_9/while/Identity_5:output:0"L
#lstm_9_while_lstm_9_strided_slice_1%lstm_9_while_lstm_9_strided_slice_1_0"h
1lstm_9_while_lstm_cell_20_readvariableop_resource3lstm_9_while_lstm_cell_20_readvariableop_resource_0"x
9lstm_9_while_lstm_cell_20_split_1_readvariableop_resource;lstm_9_while_lstm_cell_20_split_1_readvariableop_resource_0"t
7lstm_9_while_lstm_cell_20_split_readvariableop_resource9lstm_9_while_lstm_cell_20_split_readvariableop_resource_0"Ä
_lstm_9_while_tensorarrayv2read_tensorlistgetitem_lstm_9_tensorarrayunstack_tensorlistfromtensoralstm_9_while_tensorarrayv2read_tensorlistgetitem_lstm_9_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2T
(lstm_9/while/lstm_cell_20/ReadVariableOp(lstm_9/while/lstm_cell_20/ReadVariableOp2X
*lstm_9/while/lstm_cell_20/ReadVariableOp_1*lstm_9/while/lstm_cell_20/ReadVariableOp_12X
*lstm_9/while/lstm_cell_20/ReadVariableOp_2*lstm_9/while/lstm_cell_20/ReadVariableOp_22X
*lstm_9/while/lstm_cell_20/ReadVariableOp_3*lstm_9/while/lstm_cell_20/ReadVariableOp_32`
.lstm_9/while/lstm_cell_20/split/ReadVariableOp.lstm_9/while/lstm_cell_20/split/ReadVariableOp2d
0lstm_9/while/lstm_cell_20/split_1/ReadVariableOp0lstm_9/while/lstm_cell_20/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
Â

)__inference_dense_8_layer_call_fn_3715411

inputs
unknown:@
	unknown_0:
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_3713206o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:ÿÿÿÿÿÿÿÿÿ@: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_nameinputs
	
 
%__inference_signature_wrapper_3714314
input_10
unknown:	
	unknown_0:	
	unknown_1:	@
	unknown_2:@
	unknown_3:
	unknown_4:
	unknown_5:
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinput_10unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference__wrapped_model_3712484o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ
: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
input_10
¶
ç
C__inference_lstm_9_layer_call_and_return_conditional_losses_3713572

inputs=
*lstm_cell_20_split_readvariableop_resource:	;
,lstm_cell_20_split_1_readvariableop_resource:	7
$lstm_cell_20_readvariableop_resource:	@
identity¢lstm_cell_20/ReadVariableOp¢lstm_cell_20/ReadVariableOp_1¢lstm_cell_20/ReadVariableOp_2¢lstm_cell_20/ReadVariableOp_3¢!lstm_cell_20/split/ReadVariableOp¢#lstm_cell_20/split_1/ReadVariableOp¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:
ÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskZ
lstm_cell_20/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:a
lstm_cell_20/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell_20/ones_likeFill%lstm_cell_20/ones_like/Shape:output:0%lstm_cell_20/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
lstm_cell_20/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_20/dropout/MulMullstm_cell_20/ones_like:output:0#lstm_cell_20/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
lstm_cell_20/dropout/ShapeShapelstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:¦
1lstm_cell_20/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_20/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0h
#lstm_cell_20/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Í
!lstm_cell_20/dropout/GreaterEqualGreaterEqual:lstm_cell_20/dropout/random_uniform/RandomUniform:output:0,lstm_cell_20/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/dropout/CastCast%lstm_cell_20/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/dropout/Mul_1Mullstm_cell_20/dropout/Mul:z:0lstm_cell_20/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
lstm_cell_20/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_20/dropout_1/MulMullstm_cell_20/ones_like:output:0%lstm_cell_20/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_20/dropout_1/ShapeShapelstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:ª
3lstm_cell_20/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_20/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0j
%lstm_cell_20/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ó
#lstm_cell_20/dropout_1/GreaterEqualGreaterEqual<lstm_cell_20/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_20/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/dropout_1/CastCast'lstm_cell_20/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/dropout_1/Mul_1Mullstm_cell_20/dropout_1/Mul:z:0lstm_cell_20/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
lstm_cell_20/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_20/dropout_2/MulMullstm_cell_20/ones_like:output:0%lstm_cell_20/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_20/dropout_2/ShapeShapelstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:ª
3lstm_cell_20/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_20/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0j
%lstm_cell_20/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ó
#lstm_cell_20/dropout_2/GreaterEqualGreaterEqual<lstm_cell_20/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_20/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/dropout_2/CastCast'lstm_cell_20/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/dropout_2/Mul_1Mullstm_cell_20/dropout_2/Mul:z:0lstm_cell_20/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
lstm_cell_20/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_20/dropout_3/MulMullstm_cell_20/ones_like:output:0%lstm_cell_20/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_20/dropout_3/ShapeShapelstm_cell_20/ones_like:output:0*
T0*
_output_shapes
:ª
3lstm_cell_20/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_20/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0j
%lstm_cell_20/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ó
#lstm_cell_20/dropout_3/GreaterEqualGreaterEqual<lstm_cell_20/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_20/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/dropout_3/CastCast'lstm_cell_20/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/dropout_3/Mul_1Mullstm_cell_20/dropout_3/Mul:z:0lstm_cell_20/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
lstm_cell_20/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_cell_20/split/ReadVariableOpReadVariableOp*lstm_cell_20_split_readvariableop_resource*
_output_shapes
:	*
dtype0Å
lstm_cell_20/splitSplit%lstm_cell_20/split/split_dim:output:0)lstm_cell_20/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split
lstm_cell_20/MatMulMatMulstrided_slice_2:output:0lstm_cell_20/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_20/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_20/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_20/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
lstm_cell_20/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
#lstm_cell_20/split_1/ReadVariableOpReadVariableOp,lstm_cell_20_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0»
lstm_cell_20/split_1Split'lstm_cell_20/split_1/split_dim:output:0+lstm_cell_20/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
lstm_cell_20/BiasAddBiasAddlstm_cell_20/MatMul:product:0lstm_cell_20/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/BiasAdd_1BiasAddlstm_cell_20/MatMul_1:product:0lstm_cell_20/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/BiasAdd_2BiasAddlstm_cell_20/MatMul_2:product:0lstm_cell_20/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/BiasAdd_3BiasAddlstm_cell_20/MatMul_3:product:0lstm_cell_20/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
lstm_cell_20/mulMulzeros:output:0lstm_cell_20/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell_20/mul_1Mulzeros:output:0 lstm_cell_20/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell_20/mul_2Mulzeros:output:0 lstm_cell_20/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell_20/mul_3Mulzeros:output:0 lstm_cell_20/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/ReadVariableOpReadVariableOp$lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0q
 lstm_cell_20/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        s
"lstm_cell_20/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   s
"lstm_cell_20/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¬
lstm_cell_20/strided_sliceStridedSlice#lstm_cell_20/ReadVariableOp:value:0)lstm_cell_20/strided_slice/stack:output:0+lstm_cell_20/strided_slice/stack_1:output:0+lstm_cell_20/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_20/MatMul_4MatMullstm_cell_20/mul:z:0#lstm_cell_20/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/addAddV2lstm_cell_20/BiasAdd:output:0lstm_cell_20/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
lstm_cell_20/SigmoidSigmoidlstm_cell_20/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/ReadVariableOp_1ReadVariableOp$lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_20/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   u
$lstm_cell_20/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       u
$lstm_cell_20/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_20/strided_slice_1StridedSlice%lstm_cell_20/ReadVariableOp_1:value:0+lstm_cell_20/strided_slice_1/stack:output:0-lstm_cell_20/strided_slice_1/stack_1:output:0-lstm_cell_20/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_20/MatMul_5MatMullstm_cell_20/mul_1:z:0%lstm_cell_20/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/add_1AddV2lstm_cell_20/BiasAdd_1:output:0lstm_cell_20/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_20/Sigmoid_1Sigmoidlstm_cell_20/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
lstm_cell_20/mul_4Mullstm_cell_20/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/ReadVariableOp_2ReadVariableOp$lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_20/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       u
$lstm_cell_20/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   u
$lstm_cell_20/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_20/strided_slice_2StridedSlice%lstm_cell_20/ReadVariableOp_2:value:0+lstm_cell_20/strided_slice_2/stack:output:0-lstm_cell_20/strided_slice_2/stack_1:output:0-lstm_cell_20/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_20/MatMul_6MatMullstm_cell_20/mul_2:z:0%lstm_cell_20/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/add_2AddV2lstm_cell_20/BiasAdd_2:output:0lstm_cell_20/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
lstm_cell_20/TanhTanhlstm_cell_20/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_cell_20/mul_5Mullstm_cell_20/Sigmoid:y:0lstm_cell_20/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell_20/add_3AddV2lstm_cell_20/mul_4:z:0lstm_cell_20/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/ReadVariableOp_3ReadVariableOp$lstm_cell_20_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_20/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   u
$lstm_cell_20/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        u
$lstm_cell_20/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_20/strided_slice_3StridedSlice%lstm_cell_20/ReadVariableOp_3:value:0+lstm_cell_20/strided_slice_3/stack:output:0-lstm_cell_20/strided_slice_3/stack_1:output:0-lstm_cell_20/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_20/MatMul_7MatMullstm_cell_20/mul_3:z:0%lstm_cell_20/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/add_4AddV2lstm_cell_20/BiasAdd_3:output:0lstm_cell_20/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_20/Sigmoid_2Sigmoidlstm_cell_20/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
lstm_cell_20/Tanh_1Tanhlstm_cell_20/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_20/mul_6Mullstm_cell_20/Sigmoid_2:y:0lstm_cell_20/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ú
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_20_split_readvariableop_resource,lstm_cell_20_split_1_readvariableop_resource$lstm_cell_20_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_3713413*
condR
while_cond_3713412*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Â
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
ÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
NoOpNoOp^lstm_cell_20/ReadVariableOp^lstm_cell_20/ReadVariableOp_1^lstm_cell_20/ReadVariableOp_2^lstm_cell_20/ReadVariableOp_3"^lstm_cell_20/split/ReadVariableOp$^lstm_cell_20/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : : 2:
lstm_cell_20/ReadVariableOplstm_cell_20/ReadVariableOp2>
lstm_cell_20/ReadVariableOp_1lstm_cell_20/ReadVariableOp_12>
lstm_cell_20/ReadVariableOp_2lstm_cell_20/ReadVariableOp_22>
lstm_cell_20/ReadVariableOp_3lstm_cell_20/ReadVariableOp_32F
!lstm_cell_20/split/ReadVariableOp!lstm_cell_20/split/ReadVariableOp2J
#lstm_cell_20/split_1/ReadVariableOp#lstm_cell_20/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
æ[
ª
I__inference_lstm_cell_20_layer_call_and_return_conditional_losses_3712815

inputs

states
states_10
split_readvariableop_resource:	.
split_1_readvariableop_resource:	*
readvariableop_resource:	@
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpE
ones_like/ShapeShapestates*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?p
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@O
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¦
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@T
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?t
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¬
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@T
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?t
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¬
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@T
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?t
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0]
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>¬
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :s
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource*
_output_shapes
:	*
dtype0
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_splitZ
MatMulMatMulinputssplit:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
MatMul_1MatMulinputssplit:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
MatMul_2MatMulinputssplit:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@\
MatMul_3MatMulinputssplit:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@S
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : s
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype0
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splith
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
mulMulstatesdropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[
mul_1Mulstatesdropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[
mul_2Mulstatesdropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@[
mul_3Mulstatesdropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype0d
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        f
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   f
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ë
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maske
MatMul_4MatMulmul:z:0strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@M
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
ReadVariableOp_1ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype0f
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   h
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      õ
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_5MatMul	mul_1:z:0strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@W
mul_4MulSigmoid_1:y:0states_1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
ReadVariableOp_2ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype0f
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       h
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   h
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      õ
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_6MatMul	mul_2:z:0strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@I
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@U
mul_5MulSigmoid:y:0Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@V
add_3AddV2	mul_4:z:0	mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
ReadVariableOp_3ReadVariableOpreadvariableop_resource*
_output_shapes
:	@*
dtype0f
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   h
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        h
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      õ
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maski
MatMul_7MatMul	mul_3:z:0strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Q
	Sigmoid_2Sigmoid	add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@K
Tanh_1Tanh	add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Y
mul_6MulSigmoid_2:y:0
Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@X
IdentityIdentity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_1Identity	mul_6:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z

Identity_2Identity	add_3:z:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@À
NoOpNoOp^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*R
_input_shapesA
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates
º
È
while_cond_3714459
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3714459___redundant_placeholder05
1while_while_cond_3714459___redundant_placeholder15
1while_while_cond_3714459___redundant_placeholder25
1while_while_cond_3714459___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
º
È
while_cond_3713059
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3713059___redundant_placeholder05
1while_while_cond_3713059___redundant_placeholder15
1while_while_cond_3713059___redundant_placeholder25
1while_while_cond_3713059___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:
¯
¸
I__inference_sequential_9_layer_call_and_return_conditional_losses_3713701
input_10!
lstm_9_3713683:	
lstm_9_3713685:	!
lstm_9_3713687:	@!
dense_8_3713690:@
dense_8_3713692:!
dense_9_3713695:
dense_9_3713697:
identity¢dense_8/StatefulPartitionedCall¢dense_9/StatefulPartitionedCall¢lstm_9/StatefulPartitionedCallÿ
lstm_9/StatefulPartitionedCallStatefulPartitionedCallinput_10lstm_9_3713683lstm_9_3713685lstm_9_3713687*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_lstm_9_layer_call_and_return_conditional_losses_3713572
dense_8/StatefulPartitionedCallStatefulPartitionedCall'lstm_9/StatefulPartitionedCall:output:0dense_8_3713690dense_8_3713692*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_8_layer_call_and_return_conditional_losses_3713206
dense_9/StatefulPartitionedCallStatefulPartitionedCall(dense_8/StatefulPartitionedCall:output:0dense_9_3713695dense_9_3713697*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_dense_9_layer_call_and_return_conditional_losses_3713222w
IdentityIdentity(dense_9/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ«
NoOpNoOp ^dense_8/StatefulPartitionedCall ^dense_9/StatefulPartitionedCall^lstm_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ
: : : : : : : 2B
dense_8/StatefulPartitionedCalldense_8/StatefulPartitionedCall2B
dense_9/StatefulPartitionedCalldense_9/StatefulPartitionedCall2@
lstm_9/StatefulPartitionedCalllstm_9/StatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
input_10
8

C__inference_lstm_9_layer_call_and_return_conditional_losses_3712943

inputs'
lstm_cell_20_3712861:	#
lstm_cell_20_3712863:	'
lstm_cell_20_3712865:	@
identity¢$lstm_cell_20/StatefulPartitionedCall¢while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@R
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    r
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Û
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ´
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   à
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskù
$lstm_cell_20/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_20_3712861lstm_cell_20_3712863lstm_cell_20_3712865*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_20_layer_call_and_return_conditional_losses_3712815n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒF
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¼
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_20_3712861lstm_cell_20_3712863lstm_cell_20_3712865*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_3712874*
condR
while_cond_3712873*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ë
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ@[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    g
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
NoOpNoOp%^lstm_cell_20/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_20/StatefulPartitionedCall$lstm_cell_20/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«	
§
.__inference_sequential_9_layer_call_fn_3713745

inputs
unknown:	
	unknown_0:	
	unknown_1:	@
	unknown_2:@
	unknown_3:
	unknown_4:
	unknown_5:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_sequential_9_layer_call_and_return_conditional_losses_3713623o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ
: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
#
ê
while_body_3712874
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_20_3712898_0:	+
while_lstm_cell_20_3712900_0:	/
while_lstm_cell_20_3712902_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_20_3712898:	)
while_lstm_cell_20_3712900:	-
while_lstm_cell_20_3712902:	@¢*while/lstm_cell_20/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0·
*while/lstm_cell_20/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_20_3712898_0while_lstm_cell_20_3712900_0while_lstm_cell_20_3712902_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *M
_output_shapes;
9:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_lstm_cell_20_layer_call_and_return_conditional_losses_3712815Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_20/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éèÒM
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: :éèÒ
while/Identity_4Identity3while/lstm_cell_20/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/Identity_5Identity3while/lstm_cell_20/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y

while/NoOpNoOp+^while/lstm_cell_20/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_20_3712898while_lstm_cell_20_3712898_0":
while_lstm_cell_20_3712900while_lstm_cell_20_3712900_0":
while_lstm_cell_20_3712902while_lstm_cell_20_3712902_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2X
*while/lstm_cell_20/StatefulPartitionedCall*while/lstm_cell_20/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
: 
º
È
while_cond_3712607
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_3712607___redundant_placeholder05
1while_while_cond_3712607___redundant_placeholder15
1while_while_cond_3712607___redundant_placeholder25
1while_while_cond_3712607___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@:

_output_shapes
: :

_output_shapes
:"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*°
serving_default
A
input_105
serving_default_input_10:0ÿÿÿÿÿÿÿÿÿ
;
dense_90
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:­t
Û
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
layer-2
	optimizer
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
Ú
cell

state_spec
	variables
trainable_variables
regularization_losses
	keras_api
_random_generator
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_rnn_layer
»

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
»

kernel
bias
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses"
_tf_keras_layer
Ñ
&iter

'beta_1

(beta_2
	)decay
*learning_ratem[m\m]m^+m_,m`-mavbvcvdve+vf,vg-vh"
	optimizer
Q
+0
,1
-2
3
4
5
6"
trackable_list_wrapper
Q
+0
,1
-2
3
4
5
6"
trackable_list_wrapper
 "
trackable_list_wrapper
Ê
.non_trainable_variables

/layers
0metrics
1layer_regularization_losses
2layer_metrics
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
2
.__inference_sequential_9_layer_call_fn_3713246
.__inference_sequential_9_layer_call_fn_3713726
.__inference_sequential_9_layer_call_fn_3713745
.__inference_sequential_9_layer_call_fn_3713659À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ò2ï
I__inference_sequential_9_layer_call_and_return_conditional_losses_3713987
I__inference_sequential_9_layer_call_and_return_conditional_losses_3714293
I__inference_sequential_9_layer_call_and_return_conditional_losses_3713680
I__inference_sequential_9_layer_call_and_return_conditional_losses_3713701À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÎBË
"__inference__wrapped_model_3712484input_10"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
,
3serving_default"
signature_map
ø
4
state_size

+kernel
,recurrent_kernel
-bias
5	variables
6trainable_variables
7regularization_losses
8	keras_api
9_random_generator
:__call__
*;&call_and_return_all_conditional_losses"
_tf_keras_layer
 "
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
 "
trackable_list_wrapper
¹

<states
=non_trainable_variables

>layers
?metrics
@layer_regularization_losses
Alayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
2
(__inference_lstm_9_layer_call_fn_3714325
(__inference_lstm_9_layer_call_fn_3714336
(__inference_lstm_9_layer_call_fn_3714347
(__inference_lstm_9_layer_call_fn_3714358Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ï2ì
C__inference_lstm_9_layer_call_and_return_conditional_losses_3714587
C__inference_lstm_9_layer_call_and_return_conditional_losses_3714880
C__inference_lstm_9_layer_call_and_return_conditional_losses_3715109
C__inference_lstm_9_layer_call_and_return_conditional_losses_3715402Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 :@2dense_8/kernel
:2dense_8/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Bnon_trainable_variables

Clayers
Dmetrics
Elayer_regularization_losses
Flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_dense_8_layer_call_fn_3715411¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_8_layer_call_and_return_conditional_losses_3715422¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 :2dense_9/kernel
:2dense_9/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Gnon_trainable_variables

Hlayers
Imetrics
Jlayer_regularization_losses
Klayer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
Ó2Ð
)__inference_dense_9_layer_call_fn_3715431¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_dense_9_layer_call_and_return_conditional_losses_3715441¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
-:+	2lstm_9/lstm_cell_20/kernel
7:5	@2$lstm_9/lstm_cell_20/recurrent_kernel
':%2lstm_9/lstm_cell_20/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
.
L0
M1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÍBÊ
%__inference_signature_wrapper_3714314input_10"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
5
+0
,1
-2"
trackable_list_wrapper
 "
trackable_list_wrapper
­
Nnon_trainable_variables

Olayers
Pmetrics
Qlayer_regularization_losses
Rlayer_metrics
5	variables
6trainable_variables
7regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
¤2¡
.__inference_lstm_cell_20_layer_call_fn_3715458
.__inference_lstm_cell_20_layer_call_fn_3715475¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ú2×
I__inference_lstm_cell_20_layer_call_and_return_conditional_losses_3715550
I__inference_lstm_cell_20_layer_call_and_return_conditional_losses_3715657¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
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
	Stotal
	Tcount
U	variables
V	keras_api"
_tf_keras_metric
N
	Wtotal
	Xcount
Y	variables
Z	keras_api"
_tf_keras_metric
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
:  (2total
:  (2count
.
S0
T1"
trackable_list_wrapper
-
U	variables"
_generic_user_object
:  (2total
:  (2count
.
W0
X1"
trackable_list_wrapper
-
Y	variables"
_generic_user_object
%:#@2Adam/dense_8/kernel/m
:2Adam/dense_8/bias/m
%:#2Adam/dense_9/kernel/m
:2Adam/dense_9/bias/m
2:0	2!Adam/lstm_9/lstm_cell_20/kernel/m
<::	@2+Adam/lstm_9/lstm_cell_20/recurrent_kernel/m
,:*2Adam/lstm_9/lstm_cell_20/bias/m
%:#@2Adam/dense_8/kernel/v
:2Adam/dense_8/bias/v
%:#2Adam/dense_9/kernel/v
:2Adam/dense_9/bias/v
2:0	2!Adam/lstm_9/lstm_cell_20/kernel/v
<::	@2+Adam/lstm_9/lstm_cell_20/recurrent_kernel/v
,:*2Adam/lstm_9/lstm_cell_20/bias/v
"__inference__wrapped_model_3712484s+-,5¢2
+¢(
&#
input_10ÿÿÿÿÿÿÿÿÿ

ª "1ª.
,
dense_9!
dense_9ÿÿÿÿÿÿÿÿÿ¤
D__inference_dense_8_layer_call_and_return_conditional_losses_3715422\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dense_8_layer_call_fn_3715411O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ¤
D__inference_dense_9_layer_call_and_return_conditional_losses_3715441\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
)__inference_dense_9_layer_call_fn_3715431O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÄ
C__inference_lstm_9_layer_call_and_return_conditional_losses_3714587}+-,O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 Ä
C__inference_lstm_9_layer_call_and_return_conditional_losses_3714880}+-,O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ´
C__inference_lstm_9_layer_call_and_return_conditional_losses_3715109m+-,?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ


 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 ´
C__inference_lstm_9_layer_call_and_return_conditional_losses_3715402m+-,?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ


 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 
(__inference_lstm_9_layer_call_fn_3714325p+-,O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ@
(__inference_lstm_9_layer_call_fn_3714336p+-,O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ@
(__inference_lstm_9_layer_call_fn_3714347`+-,?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ


 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ@
(__inference_lstm_9_layer_call_fn_3714358`+-,?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ


 
p

 
ª "ÿÿÿÿÿÿÿÿÿ@Ë
I__inference_lstm_cell_20_layer_call_and_return_conditional_losses_3715550ý+-,¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ@
"
states/1ÿÿÿÿÿÿÿÿÿ@
p 
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ@
EB

0/1/0ÿÿÿÿÿÿÿÿÿ@

0/1/1ÿÿÿÿÿÿÿÿÿ@
 Ë
I__inference_lstm_cell_20_layer_call_and_return_conditional_losses_3715657ý+-,¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ@
"
states/1ÿÿÿÿÿÿÿÿÿ@
p
ª "s¢p
i¢f

0/0ÿÿÿÿÿÿÿÿÿ@
EB

0/1/0ÿÿÿÿÿÿÿÿÿ@

0/1/1ÿÿÿÿÿÿÿÿÿ@
  
.__inference_lstm_cell_20_layer_call_fn_3715458í+-,¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ@
"
states/1ÿÿÿÿÿÿÿÿÿ@
p 
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ@
A>

1/0ÿÿÿÿÿÿÿÿÿ@

1/1ÿÿÿÿÿÿÿÿÿ@ 
.__inference_lstm_cell_20_layer_call_fn_3715475í+-,¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
K¢H
"
states/0ÿÿÿÿÿÿÿÿÿ@
"
states/1ÿÿÿÿÿÿÿÿÿ@
p
ª "c¢`

0ÿÿÿÿÿÿÿÿÿ@
A>

1/0ÿÿÿÿÿÿÿÿÿ@

1/1ÿÿÿÿÿÿÿÿÿ@¼
I__inference_sequential_9_layer_call_and_return_conditional_losses_3713680o+-,=¢:
3¢0
&#
input_10ÿÿÿÿÿÿÿÿÿ

p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¼
I__inference_sequential_9_layer_call_and_return_conditional_losses_3713701o+-,=¢:
3¢0
&#
input_10ÿÿÿÿÿÿÿÿÿ

p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 º
I__inference_sequential_9_layer_call_and_return_conditional_losses_3713987m+-,;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ

p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 º
I__inference_sequential_9_layer_call_and_return_conditional_losses_3714293m+-,;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ

p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
.__inference_sequential_9_layer_call_fn_3713246b+-,=¢:
3¢0
&#
input_10ÿÿÿÿÿÿÿÿÿ

p 

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_9_layer_call_fn_3713659b+-,=¢:
3¢0
&#
input_10ÿÿÿÿÿÿÿÿÿ

p

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_9_layer_call_fn_3713726`+-,;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ

p 

 
ª "ÿÿÿÿÿÿÿÿÿ
.__inference_sequential_9_layer_call_fn_3713745`+-,;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ

p

 
ª "ÿÿÿÿÿÿÿÿÿ¨
%__inference_signature_wrapper_3714314+-,A¢>
¢ 
7ª4
2
input_10&#
input_10ÿÿÿÿÿÿÿÿÿ
"1ª.
,
dense_9!
dense_9ÿÿÿÿÿÿÿÿÿ