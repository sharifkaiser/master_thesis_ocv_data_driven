äÃ
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
"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68þ²
z
dense_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@* 
shared_namedense_10/kernel
s
#dense_10/kernel/Read/ReadVariableOpReadVariableOpdense_10/kernel*
_output_shapes

:@*
dtype0
r
dense_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_10/bias
k
!dense_10/bias/Read/ReadVariableOpReadVariableOpdense_10/bias*
_output_shapes
:*
dtype0
z
dense_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:* 
shared_namedense_11/kernel
s
#dense_11/kernel/Read/ReadVariableOpReadVariableOpdense_11/kernel*
_output_shapes

:*
dtype0
r
dense_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_11/bias
k
!dense_11/bias/Read/ReadVariableOpReadVariableOpdense_11/bias*
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

lstm_10/lstm_cell_21/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*,
shared_namelstm_10/lstm_cell_21/kernel

/lstm_10/lstm_cell_21/kernel/Read/ReadVariableOpReadVariableOplstm_10/lstm_cell_21/kernel*
_output_shapes
:	*
dtype0
§
%lstm_10/lstm_cell_21/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*6
shared_name'%lstm_10/lstm_cell_21/recurrent_kernel
 
9lstm_10/lstm_cell_21/recurrent_kernel/Read/ReadVariableOpReadVariableOp%lstm_10/lstm_cell_21/recurrent_kernel*
_output_shapes
:	@*
dtype0

lstm_10/lstm_cell_21/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namelstm_10/lstm_cell_21/bias

-lstm_10/lstm_cell_21/bias/Read/ReadVariableOpReadVariableOplstm_10/lstm_cell_21/bias*
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

Adam/dense_10/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_10/kernel/m

*Adam/dense_10/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/m*
_output_shapes

:@*
dtype0

Adam/dense_10/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_10/bias/m
y
(Adam/dense_10/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/m*
_output_shapes
:*
dtype0

Adam/dense_11/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_11/kernel/m

*Adam/dense_11/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/m*
_output_shapes

:*
dtype0

Adam/dense_11/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_11/bias/m
y
(Adam/dense_11/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/m*
_output_shapes
:*
dtype0
¡
"Adam/lstm_10/lstm_cell_21/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_10/lstm_cell_21/kernel/m

6Adam/lstm_10/lstm_cell_21/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/lstm_10/lstm_cell_21/kernel/m*
_output_shapes
:	*
dtype0
µ
,Adam/lstm_10/lstm_cell_21/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*=
shared_name.,Adam/lstm_10/lstm_cell_21/recurrent_kernel/m
®
@Adam/lstm_10/lstm_cell_21/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp,Adam/lstm_10/lstm_cell_21/recurrent_kernel/m*
_output_shapes
:	@*
dtype0

 Adam/lstm_10/lstm_cell_21/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_10/lstm_cell_21/bias/m

4Adam/lstm_10/lstm_cell_21/bias/m/Read/ReadVariableOpReadVariableOp Adam/lstm_10/lstm_cell_21/bias/m*
_output_shapes	
:*
dtype0

Adam/dense_10/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@*'
shared_nameAdam/dense_10/kernel/v

*Adam/dense_10/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/kernel/v*
_output_shapes

:@*
dtype0

Adam/dense_10/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_10/bias/v
y
(Adam/dense_10/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_10/bias/v*
_output_shapes
:*
dtype0

Adam/dense_11/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:*'
shared_nameAdam/dense_11/kernel/v

*Adam/dense_11/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/kernel/v*
_output_shapes

:*
dtype0

Adam/dense_11/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_11/bias/v
y
(Adam/dense_11/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_11/bias/v*
_output_shapes
:*
dtype0
¡
"Adam/lstm_10/lstm_cell_21/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*3
shared_name$"Adam/lstm_10/lstm_cell_21/kernel/v

6Adam/lstm_10/lstm_cell_21/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/lstm_10/lstm_cell_21/kernel/v*
_output_shapes
:	*
dtype0
µ
,Adam/lstm_10/lstm_cell_21/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	@*=
shared_name.,Adam/lstm_10/lstm_cell_21/recurrent_kernel/v
®
@Adam/lstm_10/lstm_cell_21/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp,Adam/lstm_10/lstm_cell_21/recurrent_kernel/v*
_output_shapes
:	@*
dtype0

 Adam/lstm_10/lstm_cell_21/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/lstm_10/lstm_cell_21/bias/v

4Adam/lstm_10/lstm_cell_21/bias/v/Read/ReadVariableOpReadVariableOp Adam/lstm_10/lstm_cell_21/bias/v*
_output_shapes	
:*
dtype0

NoOpNoOp
§5
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*â4
valueØ4BÕ4 BÎ4
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
_Y
VARIABLE_VALUEdense_10/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_10/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
_Y
VARIABLE_VALUEdense_11/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_11/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
[U
VARIABLE_VALUElstm_10/lstm_cell_21/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%lstm_10/lstm_cell_21/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUElstm_10/lstm_cell_21/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
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
|
VARIABLE_VALUEAdam/dense_10/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_10/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_11/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_11/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_10/lstm_cell_21/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/lstm_10/lstm_cell_21/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_10/lstm_cell_21/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_10/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_10/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_11/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_11/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE"Adam/lstm_10/lstm_cell_21/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE,Adam/lstm_10/lstm_cell_21/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE Adam/lstm_10/lstm_cell_21/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

serving_default_input_11Placeholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ

á
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_11lstm_10/lstm_cell_21/kernellstm_10/lstm_cell_21/bias%lstm_10/lstm_cell_21/recurrent_kerneldense_10/kerneldense_10/biasdense_11/kerneldense_11/bias*
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
%__inference_signature_wrapper_4685640
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¶
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_10/kernel/Read/ReadVariableOp!dense_10/bias/Read/ReadVariableOp#dense_11/kernel/Read/ReadVariableOp!dense_11/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp/lstm_10/lstm_cell_21/kernel/Read/ReadVariableOp9lstm_10/lstm_cell_21/recurrent_kernel/Read/ReadVariableOp-lstm_10/lstm_cell_21/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/dense_10/kernel/m/Read/ReadVariableOp(Adam/dense_10/bias/m/Read/ReadVariableOp*Adam/dense_11/kernel/m/Read/ReadVariableOp(Adam/dense_11/bias/m/Read/ReadVariableOp6Adam/lstm_10/lstm_cell_21/kernel/m/Read/ReadVariableOp@Adam/lstm_10/lstm_cell_21/recurrent_kernel/m/Read/ReadVariableOp4Adam/lstm_10/lstm_cell_21/bias/m/Read/ReadVariableOp*Adam/dense_10/kernel/v/Read/ReadVariableOp(Adam/dense_10/bias/v/Read/ReadVariableOp*Adam/dense_11/kernel/v/Read/ReadVariableOp(Adam/dense_11/bias/v/Read/ReadVariableOp6Adam/lstm_10/lstm_cell_21/kernel/v/Read/ReadVariableOp@Adam/lstm_10/lstm_cell_21/recurrent_kernel/v/Read/ReadVariableOp4Adam/lstm_10/lstm_cell_21/bias/v/Read/ReadVariableOpConst*+
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
 __inference__traced_save_4687096
Ù
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_10/kerneldense_10/biasdense_11/kerneldense_11/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_10/lstm_cell_21/kernel%lstm_10/lstm_cell_21/recurrent_kernellstm_10/lstm_cell_21/biastotalcounttotal_1count_1Adam/dense_10/kernel/mAdam/dense_10/bias/mAdam/dense_11/kernel/mAdam/dense_11/bias/m"Adam/lstm_10/lstm_cell_21/kernel/m,Adam/lstm_10/lstm_cell_21/recurrent_kernel/m Adam/lstm_10/lstm_cell_21/bias/mAdam/dense_10/kernel/vAdam/dense_10/bias/vAdam/dense_11/kernel/vAdam/dense_11/bias/v"Adam/lstm_10/lstm_cell_21/kernel/v,Adam/lstm_10/lstm_cell_21/recurrent_kernel/v Adam/lstm_10/lstm_cell_21/bias/v**
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
#__inference__traced_restore_4687196½§
­	
¨
/__inference_sequential_10_layer_call_fn_4685071

inputs
unknown:	
	unknown_0:	
	unknown_1:	@
	unknown_2:@
	unknown_3:
	unknown_4:
	unknown_5:
identity¢StatefulPartitionedCall 
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
GPU 2J 8 *S
fNRL
J__inference_sequential_10_layer_call_and_return_conditional_losses_4684949o
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
: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs

¸
)__inference_lstm_10_layer_call_fn_4685662
inputs_0
unknown:	
	unknown_0:	
	unknown_1:	@
identity¢StatefulPartitionedCallè
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
GPU 2J 8 *M
fHRF
D__inference_lstm_10_layer_call_and_return_conditional_losses_4684269o
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
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
Ä

*__inference_dense_10_layer_call_fn_4686737

inputs
unknown:@
	unknown_0:
identity¢StatefulPartitionedCallÚ
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
GPU 2J 8 *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_4684532o
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
í
÷
.__inference_lstm_cell_21_layer_call_fn_4686801

inputs
states_0
states_1
unknown:	
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
I__inference_lstm_cell_21_layer_call_and_return_conditional_losses_4684141o
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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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
È	
ö
E__inference_dense_11_layer_call_and_return_conditional_losses_4684548

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
»z
è
D__inference_lstm_10_layer_call_and_return_conditional_losses_4684513

inputs=
*lstm_cell_21_split_readvariableop_resource:	;
,lstm_cell_21_split_1_readvariableop_resource:	7
$lstm_cell_21_readvariableop_resource:	@
identity¢lstm_cell_21/ReadVariableOp¢lstm_cell_21/ReadVariableOp_1¢lstm_cell_21/ReadVariableOp_2¢lstm_cell_21/ReadVariableOp_3¢!lstm_cell_21/split/ReadVariableOp¢#lstm_cell_21/split_1/ReadVariableOp¢while;
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
ÿÿÿÿÿÿÿÿÿD
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
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskZ
lstm_cell_21/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:a
lstm_cell_21/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell_21/ones_likeFill%lstm_cell_21/ones_like/Shape:output:0%lstm_cell_21/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_cell_21/split/ReadVariableOpReadVariableOp*lstm_cell_21_split_readvariableop_resource*
_output_shapes
:	*
dtype0Å
lstm_cell_21/splitSplit%lstm_cell_21/split/split_dim:output:0)lstm_cell_21/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split
lstm_cell_21/MatMulMatMulstrided_slice_2:output:0lstm_cell_21/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_21/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_21/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_21/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
lstm_cell_21/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
#lstm_cell_21/split_1/ReadVariableOpReadVariableOp,lstm_cell_21_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0»
lstm_cell_21/split_1Split'lstm_cell_21/split_1/split_dim:output:0+lstm_cell_21/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
lstm_cell_21/BiasAddBiasAddlstm_cell_21/MatMul:product:0lstm_cell_21/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/BiasAdd_1BiasAddlstm_cell_21/MatMul_1:product:0lstm_cell_21/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/BiasAdd_2BiasAddlstm_cell_21/MatMul_2:product:0lstm_cell_21/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/BiasAdd_3BiasAddlstm_cell_21/MatMul_3:product:0lstm_cell_21/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
lstm_cell_21/mulMulzeros:output:0lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_cell_21/mul_1Mulzeros:output:0lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_cell_21/mul_2Mulzeros:output:0lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_cell_21/mul_3Mulzeros:output:0lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/ReadVariableOpReadVariableOp$lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0q
 lstm_cell_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        s
"lstm_cell_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   s
"lstm_cell_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¬
lstm_cell_21/strided_sliceStridedSlice#lstm_cell_21/ReadVariableOp:value:0)lstm_cell_21/strided_slice/stack:output:0+lstm_cell_21/strided_slice/stack_1:output:0+lstm_cell_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_21/MatMul_4MatMullstm_cell_21/mul:z:0#lstm_cell_21/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/addAddV2lstm_cell_21/BiasAdd:output:0lstm_cell_21/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
lstm_cell_21/SigmoidSigmoidlstm_cell_21/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/ReadVariableOp_1ReadVariableOp$lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   u
$lstm_cell_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       u
$lstm_cell_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_21/strided_slice_1StridedSlice%lstm_cell_21/ReadVariableOp_1:value:0+lstm_cell_21/strided_slice_1/stack:output:0-lstm_cell_21/strided_slice_1/stack_1:output:0-lstm_cell_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_21/MatMul_5MatMullstm_cell_21/mul_1:z:0%lstm_cell_21/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/add_1AddV2lstm_cell_21/BiasAdd_1:output:0lstm_cell_21/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_21/Sigmoid_1Sigmoidlstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
lstm_cell_21/mul_4Mullstm_cell_21/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/ReadVariableOp_2ReadVariableOp$lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       u
$lstm_cell_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   u
$lstm_cell_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_21/strided_slice_2StridedSlice%lstm_cell_21/ReadVariableOp_2:value:0+lstm_cell_21/strided_slice_2/stack:output:0-lstm_cell_21/strided_slice_2/stack_1:output:0-lstm_cell_21/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_21/MatMul_6MatMullstm_cell_21/mul_2:z:0%lstm_cell_21/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/add_2AddV2lstm_cell_21/BiasAdd_2:output:0lstm_cell_21/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
lstm_cell_21/TanhTanhlstm_cell_21/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_cell_21/mul_5Mullstm_cell_21/Sigmoid:y:0lstm_cell_21/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell_21/add_3AddV2lstm_cell_21/mul_4:z:0lstm_cell_21/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/ReadVariableOp_3ReadVariableOp$lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   u
$lstm_cell_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        u
$lstm_cell_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_21/strided_slice_3StridedSlice%lstm_cell_21/ReadVariableOp_3:value:0+lstm_cell_21/strided_slice_3/stack:output:0-lstm_cell_21/strided_slice_3/stack_1:output:0-lstm_cell_21/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_21/MatMul_7MatMullstm_cell_21/mul_3:z:0%lstm_cell_21/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/add_4AddV2lstm_cell_21/BiasAdd_3:output:0lstm_cell_21/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_21/Sigmoid_2Sigmoidlstm_cell_21/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
lstm_cell_21/Tanh_1Tanhlstm_cell_21/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/mul_6Mullstm_cell_21/Sigmoid_2:y:0lstm_cell_21/Tanh_1:y:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_21_split_readvariableop_resource,lstm_cell_21_split_1_readvariableop_resource$lstm_cell_21_readvariableop_resource*
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
while_body_4684386*
condR
while_cond_4684385*K
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
NoOpNoOp^lstm_cell_21/ReadVariableOp^lstm_cell_21/ReadVariableOp_1^lstm_cell_21/ReadVariableOp_2^lstm_cell_21/ReadVariableOp_3"^lstm_cell_21/split/ReadVariableOp$^lstm_cell_21/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : : 2:
lstm_cell_21/ReadVariableOplstm_cell_21/ReadVariableOp2>
lstm_cell_21/ReadVariableOp_1lstm_cell_21/ReadVariableOp_12>
lstm_cell_21/ReadVariableOp_2lstm_cell_21/ReadVariableOp_22>
lstm_cell_21/ReadVariableOp_3lstm_cell_21/ReadVariableOp_32F
!lstm_cell_21/split/ReadVariableOp!lstm_cell_21/split/ReadVariableOp2J
#lstm_cell_21/split_1/ReadVariableOp#lstm_cell_21/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs


ö
E__inference_dense_10_layer_call_and_return_conditional_losses_4686748

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
ám
¥	
while_body_4684386
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_21_split_readvariableop_resource_0:	C
4while_lstm_cell_21_split_1_readvariableop_resource_0:	?
,while_lstm_cell_21_readvariableop_resource_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_21_split_readvariableop_resource:	A
2while_lstm_cell_21_split_1_readvariableop_resource:	=
*while_lstm_cell_21_readvariableop_resource:	@¢!while/lstm_cell_21/ReadVariableOp¢#while/lstm_cell_21/ReadVariableOp_1¢#while/lstm_cell_21/ReadVariableOp_2¢#while/lstm_cell_21/ReadVariableOp_3¢'while/lstm_cell_21/split/ReadVariableOp¢)while/lstm_cell_21/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0e
"while/lstm_cell_21/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:g
"while/lstm_cell_21/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?°
while/lstm_cell_21/ones_likeFill+while/lstm_cell_21/ones_like/Shape:output:0+while/lstm_cell_21/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
"while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
'while/lstm_cell_21/split/ReadVariableOpReadVariableOp2while_lstm_cell_21_split_readvariableop_resource_0*
_output_shapes
:	*
dtype0×
while/lstm_cell_21/splitSplit+while/lstm_cell_21/split/split_dim:output:0/while/lstm_cell_21/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_splitª
while/lstm_cell_21/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_21/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_21/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_21/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
$while/lstm_cell_21/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
)while/lstm_cell_21/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_21_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Í
while/lstm_cell_21/split_1Split-while/lstm_cell_21/split_1/split_dim:output:01while/lstm_cell_21/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split¡
while/lstm_cell_21/BiasAddBiasAdd#while/lstm_cell_21/MatMul:product:0#while/lstm_cell_21/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_21/BiasAdd_1BiasAdd%while/lstm_cell_21/MatMul_1:product:0#while/lstm_cell_21/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_21/BiasAdd_2BiasAdd%while/lstm_cell_21/MatMul_2:product:0#while/lstm_cell_21/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_21/BiasAdd_3BiasAdd%while/lstm_cell_21/MatMul_3:product:0#while/lstm_cell_21/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mulMulwhile_placeholder_2%while/lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_1Mulwhile_placeholder_2%while/lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_2Mulwhile_placeholder_2%while/lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_3Mulwhile_placeholder_2%while/lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!while/lstm_cell_21/ReadVariableOpReadVariableOp,while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0w
&while/lstm_cell_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(while/lstm_cell_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   y
(while/lstm_cell_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ê
 while/lstm_cell_21/strided_sliceStridedSlice)while/lstm_cell_21/ReadVariableOp:value:0/while/lstm_cell_21/strided_slice/stack:output:01while/lstm_cell_21/strided_slice/stack_1:output:01while/lstm_cell_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell_21/MatMul_4MatMulwhile/lstm_cell_21/mul:z:0)while/lstm_cell_21/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/addAddV2#while/lstm_cell_21/BiasAdd:output:0%while/lstm_cell_21/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
while/lstm_cell_21/SigmoidSigmoidwhile/lstm_cell_21/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_21/ReadVariableOp_1ReadVariableOp,while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   {
*while/lstm_cell_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       {
*while/lstm_cell_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_21/strided_slice_1StridedSlice+while/lstm_cell_21/ReadVariableOp_1:value:01while/lstm_cell_21/strided_slice_1/stack:output:03while/lstm_cell_21/strided_slice_1/stack_1:output:03while/lstm_cell_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_21/MatMul_5MatMulwhile/lstm_cell_21/mul_1:z:0+while/lstm_cell_21/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_21/add_1AddV2%while/lstm_cell_21/BiasAdd_1:output:0%while/lstm_cell_21/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/lstm_cell_21/Sigmoid_1Sigmoidwhile/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_4Mul while/lstm_cell_21/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_21/ReadVariableOp_2ReadVariableOp,while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       {
*while/lstm_cell_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   {
*while/lstm_cell_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_21/strided_slice_2StridedSlice+while/lstm_cell_21/ReadVariableOp_2:value:01while/lstm_cell_21/strided_slice_2/stack:output:03while/lstm_cell_21/strided_slice_2/stack_1:output:03while/lstm_cell_21/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_21/MatMul_6MatMulwhile/lstm_cell_21/mul_2:z:0+while/lstm_cell_21/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_21/add_2AddV2%while/lstm_cell_21/BiasAdd_2:output:0%while/lstm_cell_21/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
while/lstm_cell_21/TanhTanhwhile/lstm_cell_21/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_5Mulwhile/lstm_cell_21/Sigmoid:y:0while/lstm_cell_21/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/add_3AddV2while/lstm_cell_21/mul_4:z:0while/lstm_cell_21/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_21/ReadVariableOp_3ReadVariableOp,while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   {
*while/lstm_cell_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*while/lstm_cell_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_21/strided_slice_3StridedSlice+while/lstm_cell_21/ReadVariableOp_3:value:01while/lstm_cell_21/strided_slice_3/stack:output:03while/lstm_cell_21/strided_slice_3/stack_1:output:03while/lstm_cell_21/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_21/MatMul_7MatMulwhile/lstm_cell_21/mul_3:z:0+while/lstm_cell_21/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_21/add_4AddV2%while/lstm_cell_21/BiasAdd_3:output:0%while/lstm_cell_21/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/lstm_cell_21/Sigmoid_2Sigmoidwhile/lstm_cell_21/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
while/lstm_cell_21/Tanh_1Tanhwhile/lstm_cell_21/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_6Mul while/lstm_cell_21/Sigmoid_2:y:0while/lstm_cell_21/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_21/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_21/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
while/Identity_5Identitywhile/lstm_cell_21/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸

while/NoOpNoOp"^while/lstm_cell_21/ReadVariableOp$^while/lstm_cell_21/ReadVariableOp_1$^while/lstm_cell_21/ReadVariableOp_2$^while/lstm_cell_21/ReadVariableOp_3(^while/lstm_cell_21/split/ReadVariableOp*^while/lstm_cell_21/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_21_readvariableop_resource,while_lstm_cell_21_readvariableop_resource_0"j
2while_lstm_cell_21_split_1_readvariableop_resource4while_lstm_cell_21_split_1_readvariableop_resource_0"f
0while_lstm_cell_21_split_readvariableop_resource2while_lstm_cell_21_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2F
!while/lstm_cell_21/ReadVariableOp!while/lstm_cell_21/ReadVariableOp2J
#while/lstm_cell_21/ReadVariableOp_1#while/lstm_cell_21/ReadVariableOp_12J
#while/lstm_cell_21/ReadVariableOp_2#while/lstm_cell_21/ReadVariableOp_22J
#while/lstm_cell_21/ReadVariableOp_3#while/lstm_cell_21/ReadVariableOp_32R
'while/lstm_cell_21/split/ReadVariableOp'while/lstm_cell_21/split/ReadVariableOp2V
)while/lstm_cell_21/split_1/ReadVariableOp)while/lstm_cell_21/split_1/ReadVariableOp: 
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


ö
E__inference_dense_10_layer_call_and_return_conditional_losses_4684532

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
õ
¥	
while_body_4684739
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_21_split_readvariableop_resource_0:	C
4while_lstm_cell_21_split_1_readvariableop_resource_0:	?
,while_lstm_cell_21_readvariableop_resource_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_21_split_readvariableop_resource:	A
2while_lstm_cell_21_split_1_readvariableop_resource:	=
*while_lstm_cell_21_readvariableop_resource:	@¢!while/lstm_cell_21/ReadVariableOp¢#while/lstm_cell_21/ReadVariableOp_1¢#while/lstm_cell_21/ReadVariableOp_2¢#while/lstm_cell_21/ReadVariableOp_3¢'while/lstm_cell_21/split/ReadVariableOp¢)while/lstm_cell_21/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0e
"while/lstm_cell_21/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:g
"while/lstm_cell_21/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?°
while/lstm_cell_21/ones_likeFill+while/lstm_cell_21/ones_like/Shape:output:0+while/lstm_cell_21/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
 while/lstm_cell_21/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?©
while/lstm_cell_21/dropout/MulMul%while/lstm_cell_21/ones_like:output:0)while/lstm_cell_21/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
 while/lstm_cell_21/dropout/ShapeShape%while/lstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:²
7while/lstm_cell_21/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_21/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0n
)while/lstm_cell_21/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>ß
'while/lstm_cell_21/dropout/GreaterEqualGreaterEqual@while/lstm_cell_21/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_21/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/dropout/CastCast+while/lstm_cell_21/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
 while/lstm_cell_21/dropout/Mul_1Mul"while/lstm_cell_21/dropout/Mul:z:0#while/lstm_cell_21/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
"while/lstm_cell_21/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?­
 while/lstm_cell_21/dropout_1/MulMul%while/lstm_cell_21/ones_like:output:0+while/lstm_cell_21/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
"while/lstm_cell_21/dropout_1/ShapeShape%while/lstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:¶
9while/lstm_cell_21/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_21/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0p
+while/lstm_cell_21/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>å
)while/lstm_cell_21/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_21/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_21/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!while/lstm_cell_21/dropout_1/CastCast-while/lstm_cell_21/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¨
"while/lstm_cell_21/dropout_1/Mul_1Mul$while/lstm_cell_21/dropout_1/Mul:z:0%while/lstm_cell_21/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
"while/lstm_cell_21/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?­
 while/lstm_cell_21/dropout_2/MulMul%while/lstm_cell_21/ones_like:output:0+while/lstm_cell_21/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
"while/lstm_cell_21/dropout_2/ShapeShape%while/lstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:¶
9while/lstm_cell_21/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_21/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0p
+while/lstm_cell_21/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>å
)while/lstm_cell_21/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_21/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_21/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!while/lstm_cell_21/dropout_2/CastCast-while/lstm_cell_21/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¨
"while/lstm_cell_21/dropout_2/Mul_1Mul$while/lstm_cell_21/dropout_2/Mul:z:0%while/lstm_cell_21/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
"while/lstm_cell_21/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?­
 while/lstm_cell_21/dropout_3/MulMul%while/lstm_cell_21/ones_like:output:0+while/lstm_cell_21/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
"while/lstm_cell_21/dropout_3/ShapeShape%while/lstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:¶
9while/lstm_cell_21/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_21/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0p
+while/lstm_cell_21/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>å
)while/lstm_cell_21/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_21/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_21/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!while/lstm_cell_21/dropout_3/CastCast-while/lstm_cell_21/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¨
"while/lstm_cell_21/dropout_3/Mul_1Mul$while/lstm_cell_21/dropout_3/Mul:z:0%while/lstm_cell_21/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
"while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
'while/lstm_cell_21/split/ReadVariableOpReadVariableOp2while_lstm_cell_21_split_readvariableop_resource_0*
_output_shapes
:	*
dtype0×
while/lstm_cell_21/splitSplit+while/lstm_cell_21/split/split_dim:output:0/while/lstm_cell_21/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_splitª
while/lstm_cell_21/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_21/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_21/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_21/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
$while/lstm_cell_21/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
)while/lstm_cell_21/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_21_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Í
while/lstm_cell_21/split_1Split-while/lstm_cell_21/split_1/split_dim:output:01while/lstm_cell_21/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split¡
while/lstm_cell_21/BiasAddBiasAdd#while/lstm_cell_21/MatMul:product:0#while/lstm_cell_21/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_21/BiasAdd_1BiasAdd%while/lstm_cell_21/MatMul_1:product:0#while/lstm_cell_21/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_21/BiasAdd_2BiasAdd%while/lstm_cell_21/MatMul_2:product:0#while/lstm_cell_21/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_21/BiasAdd_3BiasAdd%while/lstm_cell_21/MatMul_3:product:0#while/lstm_cell_21/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mulMulwhile_placeholder_2$while/lstm_cell_21/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_1Mulwhile_placeholder_2&while/lstm_cell_21/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_2Mulwhile_placeholder_2&while/lstm_cell_21/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_3Mulwhile_placeholder_2&while/lstm_cell_21/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!while/lstm_cell_21/ReadVariableOpReadVariableOp,while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0w
&while/lstm_cell_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(while/lstm_cell_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   y
(while/lstm_cell_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ê
 while/lstm_cell_21/strided_sliceStridedSlice)while/lstm_cell_21/ReadVariableOp:value:0/while/lstm_cell_21/strided_slice/stack:output:01while/lstm_cell_21/strided_slice/stack_1:output:01while/lstm_cell_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell_21/MatMul_4MatMulwhile/lstm_cell_21/mul:z:0)while/lstm_cell_21/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/addAddV2#while/lstm_cell_21/BiasAdd:output:0%while/lstm_cell_21/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
while/lstm_cell_21/SigmoidSigmoidwhile/lstm_cell_21/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_21/ReadVariableOp_1ReadVariableOp,while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   {
*while/lstm_cell_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       {
*while/lstm_cell_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_21/strided_slice_1StridedSlice+while/lstm_cell_21/ReadVariableOp_1:value:01while/lstm_cell_21/strided_slice_1/stack:output:03while/lstm_cell_21/strided_slice_1/stack_1:output:03while/lstm_cell_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_21/MatMul_5MatMulwhile/lstm_cell_21/mul_1:z:0+while/lstm_cell_21/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_21/add_1AddV2%while/lstm_cell_21/BiasAdd_1:output:0%while/lstm_cell_21/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/lstm_cell_21/Sigmoid_1Sigmoidwhile/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_4Mul while/lstm_cell_21/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_21/ReadVariableOp_2ReadVariableOp,while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       {
*while/lstm_cell_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   {
*while/lstm_cell_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_21/strided_slice_2StridedSlice+while/lstm_cell_21/ReadVariableOp_2:value:01while/lstm_cell_21/strided_slice_2/stack:output:03while/lstm_cell_21/strided_slice_2/stack_1:output:03while/lstm_cell_21/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_21/MatMul_6MatMulwhile/lstm_cell_21/mul_2:z:0+while/lstm_cell_21/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_21/add_2AddV2%while/lstm_cell_21/BiasAdd_2:output:0%while/lstm_cell_21/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
while/lstm_cell_21/TanhTanhwhile/lstm_cell_21/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_5Mulwhile/lstm_cell_21/Sigmoid:y:0while/lstm_cell_21/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/add_3AddV2while/lstm_cell_21/mul_4:z:0while/lstm_cell_21/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_21/ReadVariableOp_3ReadVariableOp,while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   {
*while/lstm_cell_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*while/lstm_cell_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_21/strided_slice_3StridedSlice+while/lstm_cell_21/ReadVariableOp_3:value:01while/lstm_cell_21/strided_slice_3/stack:output:03while/lstm_cell_21/strided_slice_3/stack_1:output:03while/lstm_cell_21/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_21/MatMul_7MatMulwhile/lstm_cell_21/mul_3:z:0+while/lstm_cell_21/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_21/add_4AddV2%while/lstm_cell_21/BiasAdd_3:output:0%while/lstm_cell_21/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/lstm_cell_21/Sigmoid_2Sigmoidwhile/lstm_cell_21/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
while/lstm_cell_21/Tanh_1Tanhwhile/lstm_cell_21/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_6Mul while/lstm_cell_21/Sigmoid_2:y:0while/lstm_cell_21/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_21/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_21/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
while/Identity_5Identitywhile/lstm_cell_21/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸

while/NoOpNoOp"^while/lstm_cell_21/ReadVariableOp$^while/lstm_cell_21/ReadVariableOp_1$^while/lstm_cell_21/ReadVariableOp_2$^while/lstm_cell_21/ReadVariableOp_3(^while/lstm_cell_21/split/ReadVariableOp*^while/lstm_cell_21/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_21_readvariableop_resource,while_lstm_cell_21_readvariableop_resource_0"j
2while_lstm_cell_21_split_1_readvariableop_resource4while_lstm_cell_21_split_1_readvariableop_resource_0"f
0while_lstm_cell_21_split_readvariableop_resource2while_lstm_cell_21_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2F
!while/lstm_cell_21/ReadVariableOp!while/lstm_cell_21/ReadVariableOp2J
#while/lstm_cell_21/ReadVariableOp_1#while/lstm_cell_21/ReadVariableOp_12J
#while/lstm_cell_21/ReadVariableOp_2#while/lstm_cell_21/ReadVariableOp_22J
#while/lstm_cell_21/ReadVariableOp_3#while/lstm_cell_21/ReadVariableOp_32R
'while/lstm_cell_21/split/ReadVariableOp'while/lstm_cell_21/split/ReadVariableOp2V
)while/lstm_cell_21/split_1/ReadVariableOp)while/lstm_cell_21/split_1/ReadVariableOp: 
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
Ó
Ã
J__inference_sequential_10_layer_call_and_return_conditional_losses_4685027
input_11"
lstm_10_4685009:	
lstm_10_4685011:	"
lstm_10_4685013:	@"
dense_10_4685016:@
dense_10_4685018:"
dense_11_4685021:
dense_11_4685023:
identity¢ dense_10/StatefulPartitionedCall¢ dense_11/StatefulPartitionedCall¢lstm_10/StatefulPartitionedCall
lstm_10/StatefulPartitionedCallStatefulPartitionedCallinput_11lstm_10_4685009lstm_10_4685011lstm_10_4685013*
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
GPU 2J 8 *M
fHRF
D__inference_lstm_10_layer_call_and_return_conditional_losses_4684898
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(lstm_10/StatefulPartitionedCall:output:0dense_10_4685016dense_10_4685018*
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
GPU 2J 8 *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_4684532
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_4685021dense_11_4685023*
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
GPU 2J 8 *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_4684548x
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^lstm_10/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ
: : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
lstm_10/StatefulPartitionedCalllstm_10/StatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
input_11
ám
¥	
while_body_4685786
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_21_split_readvariableop_resource_0:	C
4while_lstm_cell_21_split_1_readvariableop_resource_0:	?
,while_lstm_cell_21_readvariableop_resource_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_21_split_readvariableop_resource:	A
2while_lstm_cell_21_split_1_readvariableop_resource:	=
*while_lstm_cell_21_readvariableop_resource:	@¢!while/lstm_cell_21/ReadVariableOp¢#while/lstm_cell_21/ReadVariableOp_1¢#while/lstm_cell_21/ReadVariableOp_2¢#while/lstm_cell_21/ReadVariableOp_3¢'while/lstm_cell_21/split/ReadVariableOp¢)while/lstm_cell_21/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0e
"while/lstm_cell_21/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:g
"while/lstm_cell_21/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?°
while/lstm_cell_21/ones_likeFill+while/lstm_cell_21/ones_like/Shape:output:0+while/lstm_cell_21/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
"while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
'while/lstm_cell_21/split/ReadVariableOpReadVariableOp2while_lstm_cell_21_split_readvariableop_resource_0*
_output_shapes
:	*
dtype0×
while/lstm_cell_21/splitSplit+while/lstm_cell_21/split/split_dim:output:0/while/lstm_cell_21/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_splitª
while/lstm_cell_21/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_21/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_21/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_21/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
$while/lstm_cell_21/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
)while/lstm_cell_21/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_21_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Í
while/lstm_cell_21/split_1Split-while/lstm_cell_21/split_1/split_dim:output:01while/lstm_cell_21/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split¡
while/lstm_cell_21/BiasAddBiasAdd#while/lstm_cell_21/MatMul:product:0#while/lstm_cell_21/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_21/BiasAdd_1BiasAdd%while/lstm_cell_21/MatMul_1:product:0#while/lstm_cell_21/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_21/BiasAdd_2BiasAdd%while/lstm_cell_21/MatMul_2:product:0#while/lstm_cell_21/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_21/BiasAdd_3BiasAdd%while/lstm_cell_21/MatMul_3:product:0#while/lstm_cell_21/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mulMulwhile_placeholder_2%while/lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_1Mulwhile_placeholder_2%while/lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_2Mulwhile_placeholder_2%while/lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_3Mulwhile_placeholder_2%while/lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!while/lstm_cell_21/ReadVariableOpReadVariableOp,while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0w
&while/lstm_cell_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(while/lstm_cell_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   y
(while/lstm_cell_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ê
 while/lstm_cell_21/strided_sliceStridedSlice)while/lstm_cell_21/ReadVariableOp:value:0/while/lstm_cell_21/strided_slice/stack:output:01while/lstm_cell_21/strided_slice/stack_1:output:01while/lstm_cell_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell_21/MatMul_4MatMulwhile/lstm_cell_21/mul:z:0)while/lstm_cell_21/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/addAddV2#while/lstm_cell_21/BiasAdd:output:0%while/lstm_cell_21/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
while/lstm_cell_21/SigmoidSigmoidwhile/lstm_cell_21/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_21/ReadVariableOp_1ReadVariableOp,while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   {
*while/lstm_cell_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       {
*while/lstm_cell_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_21/strided_slice_1StridedSlice+while/lstm_cell_21/ReadVariableOp_1:value:01while/lstm_cell_21/strided_slice_1/stack:output:03while/lstm_cell_21/strided_slice_1/stack_1:output:03while/lstm_cell_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_21/MatMul_5MatMulwhile/lstm_cell_21/mul_1:z:0+while/lstm_cell_21/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_21/add_1AddV2%while/lstm_cell_21/BiasAdd_1:output:0%while/lstm_cell_21/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/lstm_cell_21/Sigmoid_1Sigmoidwhile/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_4Mul while/lstm_cell_21/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_21/ReadVariableOp_2ReadVariableOp,while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       {
*while/lstm_cell_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   {
*while/lstm_cell_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_21/strided_slice_2StridedSlice+while/lstm_cell_21/ReadVariableOp_2:value:01while/lstm_cell_21/strided_slice_2/stack:output:03while/lstm_cell_21/strided_slice_2/stack_1:output:03while/lstm_cell_21/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_21/MatMul_6MatMulwhile/lstm_cell_21/mul_2:z:0+while/lstm_cell_21/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_21/add_2AddV2%while/lstm_cell_21/BiasAdd_2:output:0%while/lstm_cell_21/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
while/lstm_cell_21/TanhTanhwhile/lstm_cell_21/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_5Mulwhile/lstm_cell_21/Sigmoid:y:0while/lstm_cell_21/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/add_3AddV2while/lstm_cell_21/mul_4:z:0while/lstm_cell_21/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_21/ReadVariableOp_3ReadVariableOp,while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   {
*while/lstm_cell_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*while/lstm_cell_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_21/strided_slice_3StridedSlice+while/lstm_cell_21/ReadVariableOp_3:value:01while/lstm_cell_21/strided_slice_3/stack:output:03while/lstm_cell_21/strided_slice_3/stack_1:output:03while/lstm_cell_21/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_21/MatMul_7MatMulwhile/lstm_cell_21/mul_3:z:0+while/lstm_cell_21/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_21/add_4AddV2%while/lstm_cell_21/BiasAdd_3:output:0%while/lstm_cell_21/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/lstm_cell_21/Sigmoid_2Sigmoidwhile/lstm_cell_21/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
while/lstm_cell_21/Tanh_1Tanhwhile/lstm_cell_21/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_6Mul while/lstm_cell_21/Sigmoid_2:y:0while/lstm_cell_21/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_21/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_21/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
while/Identity_5Identitywhile/lstm_cell_21/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸

while/NoOpNoOp"^while/lstm_cell_21/ReadVariableOp$^while/lstm_cell_21/ReadVariableOp_1$^while/lstm_cell_21/ReadVariableOp_2$^while/lstm_cell_21/ReadVariableOp_3(^while/lstm_cell_21/split/ReadVariableOp*^while/lstm_cell_21/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_21_readvariableop_resource,while_lstm_cell_21_readvariableop_resource_0"j
2while_lstm_cell_21_split_1_readvariableop_resource4while_lstm_cell_21_split_1_readvariableop_resource_0"f
0while_lstm_cell_21_split_readvariableop_resource2while_lstm_cell_21_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2F
!while/lstm_cell_21/ReadVariableOp!while/lstm_cell_21/ReadVariableOp2J
#while/lstm_cell_21/ReadVariableOp_1#while/lstm_cell_21/ReadVariableOp_12J
#while/lstm_cell_21/ReadVariableOp_2#while/lstm_cell_21/ReadVariableOp_22J
#while/lstm_cell_21/ReadVariableOp_3#while/lstm_cell_21/ReadVariableOp_32R
'while/lstm_cell_21/split/ReadVariableOp'while/lstm_cell_21/split/ReadVariableOp2V
)while/lstm_cell_21/split_1/ReadVariableOp)while/lstm_cell_21/split_1/ReadVariableOp: 
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

è
lstm_10_while_cond_4685172,
(lstm_10_while_lstm_10_while_loop_counter2
.lstm_10_while_lstm_10_while_maximum_iterations
lstm_10_while_placeholder
lstm_10_while_placeholder_1
lstm_10_while_placeholder_2
lstm_10_while_placeholder_3.
*lstm_10_while_less_lstm_10_strided_slice_1E
Alstm_10_while_lstm_10_while_cond_4685172___redundant_placeholder0E
Alstm_10_while_lstm_10_while_cond_4685172___redundant_placeholder1E
Alstm_10_while_lstm_10_while_cond_4685172___redundant_placeholder2E
Alstm_10_while_lstm_10_while_cond_4685172___redundant_placeholder3
lstm_10_while_identity

lstm_10/while/LessLesslstm_10_while_placeholder*lstm_10_while_less_lstm_10_strided_slice_1*
T0*
_output_shapes
: [
lstm_10/while/IdentityIdentitylstm_10/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_10_while_identitylstm_10/while/Identity:output:0*(
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
³	
ª
/__inference_sequential_10_layer_call_fn_4684985
input_11
unknown:	
	unknown_0:	
	unknown_1:	@
	unknown_2:@
	unknown_3:
	unknown_4:
	unknown_5:
identity¢StatefulPartitionedCall¢
StatefulPartitionedCallStatefulPartitionedCallinput_11unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
GPU 2J 8 *S
fNRL
J__inference_sequential_10_layer_call_and_return_conditional_losses_4684949o
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
: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
input_11
º
È
while_cond_4684385
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4684385___redundant_placeholder05
1while_while_cond_4684385___redundant_placeholder15
1while_while_cond_4684385___redundant_placeholder25
1while_while_cond_4684385___redundant_placeholder3
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
â
ª
J__inference_sequential_10_layer_call_and_return_conditional_losses_4685313

inputsE
2lstm_10_lstm_cell_21_split_readvariableop_resource:	C
4lstm_10_lstm_cell_21_split_1_readvariableop_resource:	?
,lstm_10_lstm_cell_21_readvariableop_resource:	@9
'dense_10_matmul_readvariableop_resource:@6
(dense_10_biasadd_readvariableop_resource:9
'dense_11_matmul_readvariableop_resource:6
(dense_11_biasadd_readvariableop_resource:
identity¢dense_10/BiasAdd/ReadVariableOp¢dense_10/MatMul/ReadVariableOp¢dense_11/BiasAdd/ReadVariableOp¢dense_11/MatMul/ReadVariableOp¢#lstm_10/lstm_cell_21/ReadVariableOp¢%lstm_10/lstm_cell_21/ReadVariableOp_1¢%lstm_10/lstm_cell_21/ReadVariableOp_2¢%lstm_10/lstm_cell_21/ReadVariableOp_3¢)lstm_10/lstm_cell_21/split/ReadVariableOp¢+lstm_10/lstm_cell_21/split_1/ReadVariableOp¢lstm_10/whileC
lstm_10/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_10/strided_sliceStridedSlicelstm_10/Shape:output:0$lstm_10/strided_slice/stack:output:0&lstm_10/strided_slice/stack_1:output:0&lstm_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_10/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
lstm_10/zeros/packedPacklstm_10/strided_slice:output:0lstm_10/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_10/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_10/zerosFilllstm_10/zeros/packed:output:0lstm_10/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z
lstm_10/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
lstm_10/zeros_1/packedPacklstm_10/strided_slice:output:0!lstm_10/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_10/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_10/zeros_1Filllstm_10/zeros_1/packed:output:0lstm_10/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_10/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_10/transpose	Transposeinputslstm_10/transpose/perm:output:0*
T0*+
_output_shapes
:
ÿÿÿÿÿÿÿÿÿT
lstm_10/Shape_1Shapelstm_10/transpose:y:0*
T0*
_output_shapes
:g
lstm_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_10/strided_slice_1StridedSlicelstm_10/Shape_1:output:0&lstm_10/strided_slice_1/stack:output:0(lstm_10/strided_slice_1/stack_1:output:0(lstm_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_10/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_10/TensorArrayV2TensorListReserve,lstm_10/TensorArrayV2/element_shape:output:0 lstm_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_10/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ø
/lstm_10/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_10/transpose:y:0Flstm_10/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_10/strided_slice_2StridedSlicelstm_10/transpose:y:0&lstm_10/strided_slice_2/stack:output:0(lstm_10/strided_slice_2/stack_1:output:0(lstm_10/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskj
$lstm_10/lstm_cell_21/ones_like/ShapeShapelstm_10/zeros:output:0*
T0*
_output_shapes
:i
$lstm_10/lstm_cell_21/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¶
lstm_10/lstm_cell_21/ones_likeFill-lstm_10/lstm_cell_21/ones_like/Shape:output:0-lstm_10/lstm_cell_21/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
$lstm_10/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
)lstm_10/lstm_cell_21/split/ReadVariableOpReadVariableOp2lstm_10_lstm_cell_21_split_readvariableop_resource*
_output_shapes
:	*
dtype0Ý
lstm_10/lstm_cell_21/splitSplit-lstm_10/lstm_cell_21/split/split_dim:output:01lstm_10/lstm_cell_21/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split
lstm_10/lstm_cell_21/MatMulMatMul lstm_10/strided_slice_2:output:0#lstm_10/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
lstm_10/lstm_cell_21/MatMul_1MatMul lstm_10/strided_slice_2:output:0#lstm_10/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
lstm_10/lstm_cell_21/MatMul_2MatMul lstm_10/strided_slice_2:output:0#lstm_10/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
lstm_10/lstm_cell_21/MatMul_3MatMul lstm_10/strided_slice_2:output:0#lstm_10/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
&lstm_10/lstm_cell_21/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
+lstm_10/lstm_cell_21/split_1/ReadVariableOpReadVariableOp4lstm_10_lstm_cell_21_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0Ó
lstm_10/lstm_cell_21/split_1Split/lstm_10/lstm_cell_21/split_1/split_dim:output:03lstm_10/lstm_cell_21/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split§
lstm_10/lstm_cell_21/BiasAddBiasAdd%lstm_10/lstm_cell_21/MatMul:product:0%lstm_10/lstm_cell_21/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@«
lstm_10/lstm_cell_21/BiasAdd_1BiasAdd'lstm_10/lstm_cell_21/MatMul_1:product:0%lstm_10/lstm_cell_21/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@«
lstm_10/lstm_cell_21/BiasAdd_2BiasAdd'lstm_10/lstm_cell_21/MatMul_2:product:0%lstm_10/lstm_cell_21/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@«
lstm_10/lstm_cell_21/BiasAdd_3BiasAdd'lstm_10/lstm_cell_21/MatMul_3:product:0%lstm_10/lstm_cell_21/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_10/lstm_cell_21/mulMullstm_10/zeros:output:0'lstm_10/lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_10/lstm_cell_21/mul_1Mullstm_10/zeros:output:0'lstm_10/lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_10/lstm_cell_21/mul_2Mullstm_10/zeros:output:0'lstm_10/lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_10/lstm_cell_21/mul_3Mullstm_10/zeros:output:0'lstm_10/lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#lstm_10/lstm_cell_21/ReadVariableOpReadVariableOp,lstm_10_lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0y
(lstm_10/lstm_cell_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        {
*lstm_10/lstm_cell_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   {
*lstm_10/lstm_cell_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"lstm_10/lstm_cell_21/strided_sliceStridedSlice+lstm_10/lstm_cell_21/ReadVariableOp:value:01lstm_10/lstm_cell_21/strided_slice/stack:output:03lstm_10/lstm_cell_21/strided_slice/stack_1:output:03lstm_10/lstm_cell_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¤
lstm_10/lstm_cell_21/MatMul_4MatMullstm_10/lstm_cell_21/mul:z:0+lstm_10/lstm_cell_21/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@£
lstm_10/lstm_cell_21/addAddV2%lstm_10/lstm_cell_21/BiasAdd:output:0'lstm_10/lstm_cell_21/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
lstm_10/lstm_cell_21/SigmoidSigmoidlstm_10/lstm_cell_21/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%lstm_10/lstm_cell_21/ReadVariableOp_1ReadVariableOp,lstm_10_lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0{
*lstm_10/lstm_cell_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   }
,lstm_10/lstm_cell_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       }
,lstm_10/lstm_cell_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Þ
$lstm_10/lstm_cell_21/strided_slice_1StridedSlice-lstm_10/lstm_cell_21/ReadVariableOp_1:value:03lstm_10/lstm_cell_21/strided_slice_1/stack:output:05lstm_10/lstm_cell_21/strided_slice_1/stack_1:output:05lstm_10/lstm_cell_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¨
lstm_10/lstm_cell_21/MatMul_5MatMullstm_10/lstm_cell_21/mul_1:z:0-lstm_10/lstm_cell_21/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@§
lstm_10/lstm_cell_21/add_1AddV2'lstm_10/lstm_cell_21/BiasAdd_1:output:0'lstm_10/lstm_cell_21/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@{
lstm_10/lstm_cell_21/Sigmoid_1Sigmoidlstm_10/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_10/lstm_cell_21/mul_4Mul"lstm_10/lstm_cell_21/Sigmoid_1:y:0lstm_10/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%lstm_10/lstm_cell_21/ReadVariableOp_2ReadVariableOp,lstm_10_lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0{
*lstm_10/lstm_cell_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       }
,lstm_10/lstm_cell_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   }
,lstm_10/lstm_cell_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Þ
$lstm_10/lstm_cell_21/strided_slice_2StridedSlice-lstm_10/lstm_cell_21/ReadVariableOp_2:value:03lstm_10/lstm_cell_21/strided_slice_2/stack:output:05lstm_10/lstm_cell_21/strided_slice_2/stack_1:output:05lstm_10/lstm_cell_21/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¨
lstm_10/lstm_cell_21/MatMul_6MatMullstm_10/lstm_cell_21/mul_2:z:0-lstm_10/lstm_cell_21/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@§
lstm_10/lstm_cell_21/add_2AddV2'lstm_10/lstm_cell_21/BiasAdd_2:output:0'lstm_10/lstm_cell_21/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
lstm_10/lstm_cell_21/TanhTanhlstm_10/lstm_cell_21/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_10/lstm_cell_21/mul_5Mul lstm_10/lstm_cell_21/Sigmoid:y:0lstm_10/lstm_cell_21/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_10/lstm_cell_21/add_3AddV2lstm_10/lstm_cell_21/mul_4:z:0lstm_10/lstm_cell_21/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%lstm_10/lstm_cell_21/ReadVariableOp_3ReadVariableOp,lstm_10_lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0{
*lstm_10/lstm_cell_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   }
,lstm_10/lstm_cell_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        }
,lstm_10/lstm_cell_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Þ
$lstm_10/lstm_cell_21/strided_slice_3StridedSlice-lstm_10/lstm_cell_21/ReadVariableOp_3:value:03lstm_10/lstm_cell_21/strided_slice_3/stack:output:05lstm_10/lstm_cell_21/strided_slice_3/stack_1:output:05lstm_10/lstm_cell_21/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¨
lstm_10/lstm_cell_21/MatMul_7MatMullstm_10/lstm_cell_21/mul_3:z:0-lstm_10/lstm_cell_21/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@§
lstm_10/lstm_cell_21/add_4AddV2'lstm_10/lstm_cell_21/BiasAdd_3:output:0'lstm_10/lstm_cell_21/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@{
lstm_10/lstm_cell_21/Sigmoid_2Sigmoidlstm_10/lstm_cell_21/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
lstm_10/lstm_cell_21/Tanh_1Tanhlstm_10/lstm_cell_21/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_10/lstm_cell_21/mul_6Mul"lstm_10/lstm_cell_21/Sigmoid_2:y:0lstm_10/lstm_cell_21/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v
%lstm_10/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ð
lstm_10/TensorArrayV2_1TensorListReserve.lstm_10/TensorArrayV2_1/element_shape:output:0 lstm_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_10/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_10/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_10/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ê
lstm_10/whileWhile#lstm_10/while/loop_counter:output:0)lstm_10/while/maximum_iterations:output:0lstm_10/time:output:0 lstm_10/TensorArrayV2_1:handle:0lstm_10/zeros:output:0lstm_10/zeros_1:output:0 lstm_10/strided_slice_1:output:0?lstm_10/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_10_lstm_cell_21_split_readvariableop_resource4lstm_10_lstm_cell_21_split_1_readvariableop_resource,lstm_10_lstm_cell_21_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_10_while_body_4685173*&
condR
lstm_10_while_cond_4685172*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
8lstm_10/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ú
*lstm_10/TensorArrayV2Stack/TensorListStackTensorListStacklstm_10/while:output:3Alstm_10/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
ÿÿÿÿÿÿÿÿÿ@*
element_dtype0p
lstm_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_10/strided_slice_3StridedSlice3lstm_10/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_10/strided_slice_3/stack:output:0(lstm_10/strided_slice_3/stack_1:output:0(lstm_10/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskm
lstm_10/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_10/transpose_1	Transpose3lstm_10/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_10/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@c
lstm_10/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense_10/MatMulMatMul lstm_10/strided_slice_3:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
dense_10/ReluReludense_10/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_11/MatMulMatMuldense_10/Relu:activations:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_11/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
NoOpNoOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp$^lstm_10/lstm_cell_21/ReadVariableOp&^lstm_10/lstm_cell_21/ReadVariableOp_1&^lstm_10/lstm_cell_21/ReadVariableOp_2&^lstm_10/lstm_cell_21/ReadVariableOp_3*^lstm_10/lstm_cell_21/split/ReadVariableOp,^lstm_10/lstm_cell_21/split_1/ReadVariableOp^lstm_10/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ
: : : : : : : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2J
#lstm_10/lstm_cell_21/ReadVariableOp#lstm_10/lstm_cell_21/ReadVariableOp2N
%lstm_10/lstm_cell_21/ReadVariableOp_1%lstm_10/lstm_cell_21/ReadVariableOp_12N
%lstm_10/lstm_cell_21/ReadVariableOp_2%lstm_10/lstm_cell_21/ReadVariableOp_22N
%lstm_10/lstm_cell_21/ReadVariableOp_3%lstm_10/lstm_cell_21/ReadVariableOp_32V
)lstm_10/lstm_cell_21/split/ReadVariableOp)lstm_10/lstm_cell_21/split/ReadVariableOp2Z
+lstm_10/lstm_cell_21/split_1/ReadVariableOp+lstm_10/lstm_cell_21/split_1/ReadVariableOp2
lstm_10/whilelstm_10/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
º
È
while_cond_4686046
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4686046___redundant_placeholder05
1while_while_cond_4686046___redundant_placeholder15
1while_while_cond_4686046___redundant_placeholder25
1while_while_cond_4686046___redundant_placeholder3
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
while_cond_4684199
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4684199___redundant_placeholder05
1while_while_cond_4684199___redundant_placeholder15
1while_while_cond_4684199___redundant_placeholder25
1while_while_cond_4684199___redundant_placeholder3
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
·
è
D__inference_lstm_10_layer_call_and_return_conditional_losses_4686728

inputs=
*lstm_cell_21_split_readvariableop_resource:	;
,lstm_cell_21_split_1_readvariableop_resource:	7
$lstm_cell_21_readvariableop_resource:	@
identity¢lstm_cell_21/ReadVariableOp¢lstm_cell_21/ReadVariableOp_1¢lstm_cell_21/ReadVariableOp_2¢lstm_cell_21/ReadVariableOp_3¢!lstm_cell_21/split/ReadVariableOp¢#lstm_cell_21/split_1/ReadVariableOp¢while;
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
ÿÿÿÿÿÿÿÿÿD
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
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskZ
lstm_cell_21/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:a
lstm_cell_21/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell_21/ones_likeFill%lstm_cell_21/ones_like/Shape:output:0%lstm_cell_21/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
lstm_cell_21/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_21/dropout/MulMullstm_cell_21/ones_like:output:0#lstm_cell_21/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
lstm_cell_21/dropout/ShapeShapelstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:¦
1lstm_cell_21/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_21/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0h
#lstm_cell_21/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Í
!lstm_cell_21/dropout/GreaterEqualGreaterEqual:lstm_cell_21/dropout/random_uniform/RandomUniform:output:0,lstm_cell_21/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/dropout/CastCast%lstm_cell_21/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/dropout/Mul_1Mullstm_cell_21/dropout/Mul:z:0lstm_cell_21/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
lstm_cell_21/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_21/dropout_1/MulMullstm_cell_21/ones_like:output:0%lstm_cell_21/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_21/dropout_1/ShapeShapelstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:ª
3lstm_cell_21/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_21/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0j
%lstm_cell_21/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ó
#lstm_cell_21/dropout_1/GreaterEqualGreaterEqual<lstm_cell_21/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_21/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/dropout_1/CastCast'lstm_cell_21/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/dropout_1/Mul_1Mullstm_cell_21/dropout_1/Mul:z:0lstm_cell_21/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
lstm_cell_21/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_21/dropout_2/MulMullstm_cell_21/ones_like:output:0%lstm_cell_21/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_21/dropout_2/ShapeShapelstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:ª
3lstm_cell_21/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_21/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0j
%lstm_cell_21/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ó
#lstm_cell_21/dropout_2/GreaterEqualGreaterEqual<lstm_cell_21/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_21/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/dropout_2/CastCast'lstm_cell_21/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/dropout_2/Mul_1Mullstm_cell_21/dropout_2/Mul:z:0lstm_cell_21/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
lstm_cell_21/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_21/dropout_3/MulMullstm_cell_21/ones_like:output:0%lstm_cell_21/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_21/dropout_3/ShapeShapelstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:ª
3lstm_cell_21/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_21/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0j
%lstm_cell_21/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ó
#lstm_cell_21/dropout_3/GreaterEqualGreaterEqual<lstm_cell_21/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_21/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/dropout_3/CastCast'lstm_cell_21/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/dropout_3/Mul_1Mullstm_cell_21/dropout_3/Mul:z:0lstm_cell_21/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_cell_21/split/ReadVariableOpReadVariableOp*lstm_cell_21_split_readvariableop_resource*
_output_shapes
:	*
dtype0Å
lstm_cell_21/splitSplit%lstm_cell_21/split/split_dim:output:0)lstm_cell_21/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split
lstm_cell_21/MatMulMatMulstrided_slice_2:output:0lstm_cell_21/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_21/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_21/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_21/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
lstm_cell_21/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
#lstm_cell_21/split_1/ReadVariableOpReadVariableOp,lstm_cell_21_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0»
lstm_cell_21/split_1Split'lstm_cell_21/split_1/split_dim:output:0+lstm_cell_21/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
lstm_cell_21/BiasAddBiasAddlstm_cell_21/MatMul:product:0lstm_cell_21/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/BiasAdd_1BiasAddlstm_cell_21/MatMul_1:product:0lstm_cell_21/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/BiasAdd_2BiasAddlstm_cell_21/MatMul_2:product:0lstm_cell_21/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/BiasAdd_3BiasAddlstm_cell_21/MatMul_3:product:0lstm_cell_21/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
lstm_cell_21/mulMulzeros:output:0lstm_cell_21/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell_21/mul_1Mulzeros:output:0 lstm_cell_21/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell_21/mul_2Mulzeros:output:0 lstm_cell_21/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell_21/mul_3Mulzeros:output:0 lstm_cell_21/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/ReadVariableOpReadVariableOp$lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0q
 lstm_cell_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        s
"lstm_cell_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   s
"lstm_cell_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¬
lstm_cell_21/strided_sliceStridedSlice#lstm_cell_21/ReadVariableOp:value:0)lstm_cell_21/strided_slice/stack:output:0+lstm_cell_21/strided_slice/stack_1:output:0+lstm_cell_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_21/MatMul_4MatMullstm_cell_21/mul:z:0#lstm_cell_21/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/addAddV2lstm_cell_21/BiasAdd:output:0lstm_cell_21/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
lstm_cell_21/SigmoidSigmoidlstm_cell_21/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/ReadVariableOp_1ReadVariableOp$lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   u
$lstm_cell_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       u
$lstm_cell_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_21/strided_slice_1StridedSlice%lstm_cell_21/ReadVariableOp_1:value:0+lstm_cell_21/strided_slice_1/stack:output:0-lstm_cell_21/strided_slice_1/stack_1:output:0-lstm_cell_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_21/MatMul_5MatMullstm_cell_21/mul_1:z:0%lstm_cell_21/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/add_1AddV2lstm_cell_21/BiasAdd_1:output:0lstm_cell_21/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_21/Sigmoid_1Sigmoidlstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
lstm_cell_21/mul_4Mullstm_cell_21/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/ReadVariableOp_2ReadVariableOp$lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       u
$lstm_cell_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   u
$lstm_cell_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_21/strided_slice_2StridedSlice%lstm_cell_21/ReadVariableOp_2:value:0+lstm_cell_21/strided_slice_2/stack:output:0-lstm_cell_21/strided_slice_2/stack_1:output:0-lstm_cell_21/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_21/MatMul_6MatMullstm_cell_21/mul_2:z:0%lstm_cell_21/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/add_2AddV2lstm_cell_21/BiasAdd_2:output:0lstm_cell_21/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
lstm_cell_21/TanhTanhlstm_cell_21/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_cell_21/mul_5Mullstm_cell_21/Sigmoid:y:0lstm_cell_21/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell_21/add_3AddV2lstm_cell_21/mul_4:z:0lstm_cell_21/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/ReadVariableOp_3ReadVariableOp$lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   u
$lstm_cell_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        u
$lstm_cell_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_21/strided_slice_3StridedSlice%lstm_cell_21/ReadVariableOp_3:value:0+lstm_cell_21/strided_slice_3/stack:output:0-lstm_cell_21/strided_slice_3/stack_1:output:0-lstm_cell_21/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_21/MatMul_7MatMullstm_cell_21/mul_3:z:0%lstm_cell_21/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/add_4AddV2lstm_cell_21/BiasAdd_3:output:0lstm_cell_21/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_21/Sigmoid_2Sigmoidlstm_cell_21/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
lstm_cell_21/Tanh_1Tanhlstm_cell_21/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/mul_6Mullstm_cell_21/Sigmoid_2:y:0lstm_cell_21/Tanh_1:y:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_21_split_readvariableop_resource,lstm_cell_21_split_1_readvariableop_resource$lstm_cell_21_readvariableop_resource*
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
while_body_4686569*
condR
while_cond_4686568*K
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
NoOpNoOp^lstm_cell_21/ReadVariableOp^lstm_cell_21/ReadVariableOp_1^lstm_cell_21/ReadVariableOp_2^lstm_cell_21/ReadVariableOp_3"^lstm_cell_21/split/ReadVariableOp$^lstm_cell_21/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : : 2:
lstm_cell_21/ReadVariableOplstm_cell_21/ReadVariableOp2>
lstm_cell_21/ReadVariableOp_1lstm_cell_21/ReadVariableOp_12>
lstm_cell_21/ReadVariableOp_2lstm_cell_21/ReadVariableOp_22>
lstm_cell_21/ReadVariableOp_3lstm_cell_21/ReadVariableOp_32F
!lstm_cell_21/split/ReadVariableOp!lstm_cell_21/split/ReadVariableOp2J
#lstm_cell_21/split_1/ReadVariableOp#lstm_cell_21/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
õ
¥	
while_body_4686047
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_21_split_readvariableop_resource_0:	C
4while_lstm_cell_21_split_1_readvariableop_resource_0:	?
,while_lstm_cell_21_readvariableop_resource_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_21_split_readvariableop_resource:	A
2while_lstm_cell_21_split_1_readvariableop_resource:	=
*while_lstm_cell_21_readvariableop_resource:	@¢!while/lstm_cell_21/ReadVariableOp¢#while/lstm_cell_21/ReadVariableOp_1¢#while/lstm_cell_21/ReadVariableOp_2¢#while/lstm_cell_21/ReadVariableOp_3¢'while/lstm_cell_21/split/ReadVariableOp¢)while/lstm_cell_21/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0e
"while/lstm_cell_21/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:g
"while/lstm_cell_21/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?°
while/lstm_cell_21/ones_likeFill+while/lstm_cell_21/ones_like/Shape:output:0+while/lstm_cell_21/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
 while/lstm_cell_21/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?©
while/lstm_cell_21/dropout/MulMul%while/lstm_cell_21/ones_like:output:0)while/lstm_cell_21/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
 while/lstm_cell_21/dropout/ShapeShape%while/lstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:²
7while/lstm_cell_21/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_21/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0n
)while/lstm_cell_21/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>ß
'while/lstm_cell_21/dropout/GreaterEqualGreaterEqual@while/lstm_cell_21/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_21/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/dropout/CastCast+while/lstm_cell_21/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
 while/lstm_cell_21/dropout/Mul_1Mul"while/lstm_cell_21/dropout/Mul:z:0#while/lstm_cell_21/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
"while/lstm_cell_21/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?­
 while/lstm_cell_21/dropout_1/MulMul%while/lstm_cell_21/ones_like:output:0+while/lstm_cell_21/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
"while/lstm_cell_21/dropout_1/ShapeShape%while/lstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:¶
9while/lstm_cell_21/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_21/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0p
+while/lstm_cell_21/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>å
)while/lstm_cell_21/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_21/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_21/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!while/lstm_cell_21/dropout_1/CastCast-while/lstm_cell_21/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¨
"while/lstm_cell_21/dropout_1/Mul_1Mul$while/lstm_cell_21/dropout_1/Mul:z:0%while/lstm_cell_21/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
"while/lstm_cell_21/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?­
 while/lstm_cell_21/dropout_2/MulMul%while/lstm_cell_21/ones_like:output:0+while/lstm_cell_21/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
"while/lstm_cell_21/dropout_2/ShapeShape%while/lstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:¶
9while/lstm_cell_21/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_21/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0p
+while/lstm_cell_21/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>å
)while/lstm_cell_21/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_21/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_21/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!while/lstm_cell_21/dropout_2/CastCast-while/lstm_cell_21/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¨
"while/lstm_cell_21/dropout_2/Mul_1Mul$while/lstm_cell_21/dropout_2/Mul:z:0%while/lstm_cell_21/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
"while/lstm_cell_21/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?­
 while/lstm_cell_21/dropout_3/MulMul%while/lstm_cell_21/ones_like:output:0+while/lstm_cell_21/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
"while/lstm_cell_21/dropout_3/ShapeShape%while/lstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:¶
9while/lstm_cell_21/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_21/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0p
+while/lstm_cell_21/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>å
)while/lstm_cell_21/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_21/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_21/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!while/lstm_cell_21/dropout_3/CastCast-while/lstm_cell_21/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¨
"while/lstm_cell_21/dropout_3/Mul_1Mul$while/lstm_cell_21/dropout_3/Mul:z:0%while/lstm_cell_21/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
"while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
'while/lstm_cell_21/split/ReadVariableOpReadVariableOp2while_lstm_cell_21_split_readvariableop_resource_0*
_output_shapes
:	*
dtype0×
while/lstm_cell_21/splitSplit+while/lstm_cell_21/split/split_dim:output:0/while/lstm_cell_21/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_splitª
while/lstm_cell_21/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_21/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_21/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_21/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
$while/lstm_cell_21/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
)while/lstm_cell_21/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_21_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Í
while/lstm_cell_21/split_1Split-while/lstm_cell_21/split_1/split_dim:output:01while/lstm_cell_21/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split¡
while/lstm_cell_21/BiasAddBiasAdd#while/lstm_cell_21/MatMul:product:0#while/lstm_cell_21/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_21/BiasAdd_1BiasAdd%while/lstm_cell_21/MatMul_1:product:0#while/lstm_cell_21/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_21/BiasAdd_2BiasAdd%while/lstm_cell_21/MatMul_2:product:0#while/lstm_cell_21/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_21/BiasAdd_3BiasAdd%while/lstm_cell_21/MatMul_3:product:0#while/lstm_cell_21/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mulMulwhile_placeholder_2$while/lstm_cell_21/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_1Mulwhile_placeholder_2&while/lstm_cell_21/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_2Mulwhile_placeholder_2&while/lstm_cell_21/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_3Mulwhile_placeholder_2&while/lstm_cell_21/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!while/lstm_cell_21/ReadVariableOpReadVariableOp,while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0w
&while/lstm_cell_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(while/lstm_cell_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   y
(while/lstm_cell_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ê
 while/lstm_cell_21/strided_sliceStridedSlice)while/lstm_cell_21/ReadVariableOp:value:0/while/lstm_cell_21/strided_slice/stack:output:01while/lstm_cell_21/strided_slice/stack_1:output:01while/lstm_cell_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell_21/MatMul_4MatMulwhile/lstm_cell_21/mul:z:0)while/lstm_cell_21/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/addAddV2#while/lstm_cell_21/BiasAdd:output:0%while/lstm_cell_21/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
while/lstm_cell_21/SigmoidSigmoidwhile/lstm_cell_21/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_21/ReadVariableOp_1ReadVariableOp,while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   {
*while/lstm_cell_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       {
*while/lstm_cell_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_21/strided_slice_1StridedSlice+while/lstm_cell_21/ReadVariableOp_1:value:01while/lstm_cell_21/strided_slice_1/stack:output:03while/lstm_cell_21/strided_slice_1/stack_1:output:03while/lstm_cell_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_21/MatMul_5MatMulwhile/lstm_cell_21/mul_1:z:0+while/lstm_cell_21/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_21/add_1AddV2%while/lstm_cell_21/BiasAdd_1:output:0%while/lstm_cell_21/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/lstm_cell_21/Sigmoid_1Sigmoidwhile/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_4Mul while/lstm_cell_21/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_21/ReadVariableOp_2ReadVariableOp,while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       {
*while/lstm_cell_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   {
*while/lstm_cell_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_21/strided_slice_2StridedSlice+while/lstm_cell_21/ReadVariableOp_2:value:01while/lstm_cell_21/strided_slice_2/stack:output:03while/lstm_cell_21/strided_slice_2/stack_1:output:03while/lstm_cell_21/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_21/MatMul_6MatMulwhile/lstm_cell_21/mul_2:z:0+while/lstm_cell_21/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_21/add_2AddV2%while/lstm_cell_21/BiasAdd_2:output:0%while/lstm_cell_21/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
while/lstm_cell_21/TanhTanhwhile/lstm_cell_21/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_5Mulwhile/lstm_cell_21/Sigmoid:y:0while/lstm_cell_21/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/add_3AddV2while/lstm_cell_21/mul_4:z:0while/lstm_cell_21/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_21/ReadVariableOp_3ReadVariableOp,while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   {
*while/lstm_cell_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*while/lstm_cell_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_21/strided_slice_3StridedSlice+while/lstm_cell_21/ReadVariableOp_3:value:01while/lstm_cell_21/strided_slice_3/stack:output:03while/lstm_cell_21/strided_slice_3/stack_1:output:03while/lstm_cell_21/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_21/MatMul_7MatMulwhile/lstm_cell_21/mul_3:z:0+while/lstm_cell_21/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_21/add_4AddV2%while/lstm_cell_21/BiasAdd_3:output:0%while/lstm_cell_21/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/lstm_cell_21/Sigmoid_2Sigmoidwhile/lstm_cell_21/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
while/lstm_cell_21/Tanh_1Tanhwhile/lstm_cell_21/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_6Mul while/lstm_cell_21/Sigmoid_2:y:0while/lstm_cell_21/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_21/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_21/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
while/Identity_5Identitywhile/lstm_cell_21/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸

while/NoOpNoOp"^while/lstm_cell_21/ReadVariableOp$^while/lstm_cell_21/ReadVariableOp_1$^while/lstm_cell_21/ReadVariableOp_2$^while/lstm_cell_21/ReadVariableOp_3(^while/lstm_cell_21/split/ReadVariableOp*^while/lstm_cell_21/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_21_readvariableop_resource,while_lstm_cell_21_readvariableop_resource_0"j
2while_lstm_cell_21_split_1_readvariableop_resource4while_lstm_cell_21_split_1_readvariableop_resource_0"f
0while_lstm_cell_21_split_readvariableop_resource2while_lstm_cell_21_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2F
!while/lstm_cell_21/ReadVariableOp!while/lstm_cell_21/ReadVariableOp2J
#while/lstm_cell_21/ReadVariableOp_1#while/lstm_cell_21/ReadVariableOp_12J
#while/lstm_cell_21/ReadVariableOp_2#while/lstm_cell_21/ReadVariableOp_22J
#while/lstm_cell_21/ReadVariableOp_3#while/lstm_cell_21/ReadVariableOp_32R
'while/lstm_cell_21/split/ReadVariableOp'while/lstm_cell_21/split/ReadVariableOp2V
)while/lstm_cell_21/split_1/ReadVariableOp)while/lstm_cell_21/split_1/ReadVariableOp: 
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
 B
³
 __inference__traced_save_4687096
file_prefix.
*savev2_dense_10_kernel_read_readvariableop,
(savev2_dense_10_bias_read_readvariableop.
*savev2_dense_11_kernel_read_readvariableop,
(savev2_dense_11_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop:
6savev2_lstm_10_lstm_cell_21_kernel_read_readvariableopD
@savev2_lstm_10_lstm_cell_21_recurrent_kernel_read_readvariableop8
4savev2_lstm_10_lstm_cell_21_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_dense_10_kernel_m_read_readvariableop3
/savev2_adam_dense_10_bias_m_read_readvariableop5
1savev2_adam_dense_11_kernel_m_read_readvariableop3
/savev2_adam_dense_11_bias_m_read_readvariableopA
=savev2_adam_lstm_10_lstm_cell_21_kernel_m_read_readvariableopK
Gsavev2_adam_lstm_10_lstm_cell_21_recurrent_kernel_m_read_readvariableop?
;savev2_adam_lstm_10_lstm_cell_21_bias_m_read_readvariableop5
1savev2_adam_dense_10_kernel_v_read_readvariableop3
/savev2_adam_dense_10_bias_v_read_readvariableop5
1savev2_adam_dense_11_kernel_v_read_readvariableop3
/savev2_adam_dense_11_bias_v_read_readvariableopA
=savev2_adam_lstm_10_lstm_cell_21_kernel_v_read_readvariableopK
Gsavev2_adam_lstm_10_lstm_cell_21_recurrent_kernel_v_read_readvariableop?
;savev2_adam_lstm_10_lstm_cell_21_bias_v_read_readvariableop
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
valueHBFB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_10_kernel_read_readvariableop(savev2_dense_10_bias_read_readvariableop*savev2_dense_11_kernel_read_readvariableop(savev2_dense_11_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop6savev2_lstm_10_lstm_cell_21_kernel_read_readvariableop@savev2_lstm_10_lstm_cell_21_recurrent_kernel_read_readvariableop4savev2_lstm_10_lstm_cell_21_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_dense_10_kernel_m_read_readvariableop/savev2_adam_dense_10_bias_m_read_readvariableop1savev2_adam_dense_11_kernel_m_read_readvariableop/savev2_adam_dense_11_bias_m_read_readvariableop=savev2_adam_lstm_10_lstm_cell_21_kernel_m_read_readvariableopGsavev2_adam_lstm_10_lstm_cell_21_recurrent_kernel_m_read_readvariableop;savev2_adam_lstm_10_lstm_cell_21_bias_m_read_readvariableop1savev2_adam_dense_10_kernel_v_read_readvariableop/savev2_adam_dense_10_bias_v_read_readvariableop1savev2_adam_dense_11_kernel_v_read_readvariableop/savev2_adam_dense_11_bias_v_read_readvariableop=savev2_adam_lstm_10_lstm_cell_21_kernel_v_read_readvariableopGsavev2_adam_lstm_10_lstm_cell_21_recurrent_kernel_v_read_readvariableop;savev2_adam_lstm_10_lstm_cell_21_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
Í: :@:::: : : : : :	:	@:: : : : :@::::	:	@::@::::	:	@:: 2(
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
:	:%!

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
:	:%!

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
:	:%!

_output_shapes
:	@:!

_output_shapes	
::

_output_shapes
: 
Ä

*__inference_dense_11_layer_call_fn_4686757

inputs
unknown:
	unknown_0:
identity¢StatefulPartitionedCallÚ
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
GPU 2J 8 *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_4684548o
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
È	
ö
E__inference_dense_11_layer_call_and_return_conditional_losses_4686767

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
#
ê
while_body_4683934
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_21_4683958_0:	+
while_lstm_cell_21_4683960_0:	/
while_lstm_cell_21_4683962_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_21_4683958:	)
while_lstm_cell_21_4683960:	-
while_lstm_cell_21_4683962:	@¢*while/lstm_cell_21/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0·
*while/lstm_cell_21/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_21_4683958_0while_lstm_cell_21_4683960_0while_lstm_cell_21_4683962_0*
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
I__inference_lstm_cell_21_layer_call_and_return_conditional_losses_4683920Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_21/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_21/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/Identity_5Identity3while/lstm_cell_21/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y

while/NoOpNoOp+^while/lstm_cell_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_21_4683958while_lstm_cell_21_4683958_0":
while_lstm_cell_21_4683960while_lstm_cell_21_4683960_0":
while_lstm_cell_21_4683962while_lstm_cell_21_4683962_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2X
*while/lstm_cell_21/StatefulPartitionedCall*while/lstm_cell_21/StatefulPartitionedCall: 
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
	
 
%__inference_signature_wrapper_4685640
input_11
unknown:	
	unknown_0:	
	unknown_1:	@
	unknown_2:@
	unknown_3:
	unknown_4:
	unknown_5:
identity¢StatefulPartitionedCallú
StatefulPartitionedCallStatefulPartitionedCallinput_11unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
"__inference__wrapped_model_4683810o
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
: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
input_11
Í
Á
J__inference_sequential_10_layer_call_and_return_conditional_losses_4684949

inputs"
lstm_10_4684931:	
lstm_10_4684933:	"
lstm_10_4684935:	@"
dense_10_4684938:@
dense_10_4684940:"
dense_11_4684943:
dense_11_4684945:
identity¢ dense_10/StatefulPartitionedCall¢ dense_11/StatefulPartitionedCall¢lstm_10/StatefulPartitionedCall
lstm_10/StatefulPartitionedCallStatefulPartitionedCallinputslstm_10_4684931lstm_10_4684933lstm_10_4684935*
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
GPU 2J 8 *M
fHRF
D__inference_lstm_10_layer_call_and_return_conditional_losses_4684898
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(lstm_10/StatefulPartitionedCall:output:0dense_10_4684938dense_10_4684940*
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
GPU 2J 8 *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_4684532
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_4684943dense_11_4684945*
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
GPU 2J 8 *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_4684548x
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^lstm_10/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ
: : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
lstm_10/StatefulPartitionedCalllstm_10/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
·
è
D__inference_lstm_10_layer_call_and_return_conditional_losses_4684898

inputs=
*lstm_cell_21_split_readvariableop_resource:	;
,lstm_cell_21_split_1_readvariableop_resource:	7
$lstm_cell_21_readvariableop_resource:	@
identity¢lstm_cell_21/ReadVariableOp¢lstm_cell_21/ReadVariableOp_1¢lstm_cell_21/ReadVariableOp_2¢lstm_cell_21/ReadVariableOp_3¢!lstm_cell_21/split/ReadVariableOp¢#lstm_cell_21/split_1/ReadVariableOp¢while;
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
ÿÿÿÿÿÿÿÿÿD
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
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskZ
lstm_cell_21/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:a
lstm_cell_21/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell_21/ones_likeFill%lstm_cell_21/ones_like/Shape:output:0%lstm_cell_21/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
lstm_cell_21/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_21/dropout/MulMullstm_cell_21/ones_like:output:0#lstm_cell_21/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
lstm_cell_21/dropout/ShapeShapelstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:¦
1lstm_cell_21/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_21/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0h
#lstm_cell_21/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Í
!lstm_cell_21/dropout/GreaterEqualGreaterEqual:lstm_cell_21/dropout/random_uniform/RandomUniform:output:0,lstm_cell_21/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/dropout/CastCast%lstm_cell_21/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/dropout/Mul_1Mullstm_cell_21/dropout/Mul:z:0lstm_cell_21/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
lstm_cell_21/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_21/dropout_1/MulMullstm_cell_21/ones_like:output:0%lstm_cell_21/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_21/dropout_1/ShapeShapelstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:ª
3lstm_cell_21/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_21/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0j
%lstm_cell_21/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ó
#lstm_cell_21/dropout_1/GreaterEqualGreaterEqual<lstm_cell_21/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_21/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/dropout_1/CastCast'lstm_cell_21/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/dropout_1/Mul_1Mullstm_cell_21/dropout_1/Mul:z:0lstm_cell_21/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
lstm_cell_21/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_21/dropout_2/MulMullstm_cell_21/ones_like:output:0%lstm_cell_21/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_21/dropout_2/ShapeShapelstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:ª
3lstm_cell_21/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_21/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0j
%lstm_cell_21/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ó
#lstm_cell_21/dropout_2/GreaterEqualGreaterEqual<lstm_cell_21/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_21/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/dropout_2/CastCast'lstm_cell_21/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/dropout_2/Mul_1Mullstm_cell_21/dropout_2/Mul:z:0lstm_cell_21/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
lstm_cell_21/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_21/dropout_3/MulMullstm_cell_21/ones_like:output:0%lstm_cell_21/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_21/dropout_3/ShapeShapelstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:ª
3lstm_cell_21/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_21/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0j
%lstm_cell_21/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ó
#lstm_cell_21/dropout_3/GreaterEqualGreaterEqual<lstm_cell_21/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_21/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/dropout_3/CastCast'lstm_cell_21/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/dropout_3/Mul_1Mullstm_cell_21/dropout_3/Mul:z:0lstm_cell_21/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_cell_21/split/ReadVariableOpReadVariableOp*lstm_cell_21_split_readvariableop_resource*
_output_shapes
:	*
dtype0Å
lstm_cell_21/splitSplit%lstm_cell_21/split/split_dim:output:0)lstm_cell_21/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split
lstm_cell_21/MatMulMatMulstrided_slice_2:output:0lstm_cell_21/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_21/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_21/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_21/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
lstm_cell_21/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
#lstm_cell_21/split_1/ReadVariableOpReadVariableOp,lstm_cell_21_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0»
lstm_cell_21/split_1Split'lstm_cell_21/split_1/split_dim:output:0+lstm_cell_21/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
lstm_cell_21/BiasAddBiasAddlstm_cell_21/MatMul:product:0lstm_cell_21/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/BiasAdd_1BiasAddlstm_cell_21/MatMul_1:product:0lstm_cell_21/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/BiasAdd_2BiasAddlstm_cell_21/MatMul_2:product:0lstm_cell_21/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/BiasAdd_3BiasAddlstm_cell_21/MatMul_3:product:0lstm_cell_21/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
lstm_cell_21/mulMulzeros:output:0lstm_cell_21/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell_21/mul_1Mulzeros:output:0 lstm_cell_21/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell_21/mul_2Mulzeros:output:0 lstm_cell_21/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell_21/mul_3Mulzeros:output:0 lstm_cell_21/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/ReadVariableOpReadVariableOp$lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0q
 lstm_cell_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        s
"lstm_cell_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   s
"lstm_cell_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¬
lstm_cell_21/strided_sliceStridedSlice#lstm_cell_21/ReadVariableOp:value:0)lstm_cell_21/strided_slice/stack:output:0+lstm_cell_21/strided_slice/stack_1:output:0+lstm_cell_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_21/MatMul_4MatMullstm_cell_21/mul:z:0#lstm_cell_21/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/addAddV2lstm_cell_21/BiasAdd:output:0lstm_cell_21/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
lstm_cell_21/SigmoidSigmoidlstm_cell_21/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/ReadVariableOp_1ReadVariableOp$lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   u
$lstm_cell_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       u
$lstm_cell_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_21/strided_slice_1StridedSlice%lstm_cell_21/ReadVariableOp_1:value:0+lstm_cell_21/strided_slice_1/stack:output:0-lstm_cell_21/strided_slice_1/stack_1:output:0-lstm_cell_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_21/MatMul_5MatMullstm_cell_21/mul_1:z:0%lstm_cell_21/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/add_1AddV2lstm_cell_21/BiasAdd_1:output:0lstm_cell_21/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_21/Sigmoid_1Sigmoidlstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
lstm_cell_21/mul_4Mullstm_cell_21/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/ReadVariableOp_2ReadVariableOp$lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       u
$lstm_cell_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   u
$lstm_cell_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_21/strided_slice_2StridedSlice%lstm_cell_21/ReadVariableOp_2:value:0+lstm_cell_21/strided_slice_2/stack:output:0-lstm_cell_21/strided_slice_2/stack_1:output:0-lstm_cell_21/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_21/MatMul_6MatMullstm_cell_21/mul_2:z:0%lstm_cell_21/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/add_2AddV2lstm_cell_21/BiasAdd_2:output:0lstm_cell_21/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
lstm_cell_21/TanhTanhlstm_cell_21/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_cell_21/mul_5Mullstm_cell_21/Sigmoid:y:0lstm_cell_21/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell_21/add_3AddV2lstm_cell_21/mul_4:z:0lstm_cell_21/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/ReadVariableOp_3ReadVariableOp$lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   u
$lstm_cell_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        u
$lstm_cell_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_21/strided_slice_3StridedSlice%lstm_cell_21/ReadVariableOp_3:value:0+lstm_cell_21/strided_slice_3/stack:output:0-lstm_cell_21/strided_slice_3/stack_1:output:0-lstm_cell_21/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_21/MatMul_7MatMullstm_cell_21/mul_3:z:0%lstm_cell_21/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/add_4AddV2lstm_cell_21/BiasAdd_3:output:0lstm_cell_21/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_21/Sigmoid_2Sigmoidlstm_cell_21/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
lstm_cell_21/Tanh_1Tanhlstm_cell_21/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/mul_6Mullstm_cell_21/Sigmoid_2:y:0lstm_cell_21/Tanh_1:y:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_21_split_readvariableop_resource,lstm_cell_21_split_1_readvariableop_resource$lstm_cell_21_readvariableop_resource*
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
while_body_4684739*
condR
while_cond_4684738*K
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
NoOpNoOp^lstm_cell_21/ReadVariableOp^lstm_cell_21/ReadVariableOp_1^lstm_cell_21/ReadVariableOp_2^lstm_cell_21/ReadVariableOp_3"^lstm_cell_21/split/ReadVariableOp$^lstm_cell_21/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : : 2:
lstm_cell_21/ReadVariableOplstm_cell_21/ReadVariableOp2>
lstm_cell_21/ReadVariableOp_1lstm_cell_21/ReadVariableOp_12>
lstm_cell_21/ReadVariableOp_2lstm_cell_21/ReadVariableOp_22>
lstm_cell_21/ReadVariableOp_3lstm_cell_21/ReadVariableOp_32F
!lstm_cell_21/split/ReadVariableOp!lstm_cell_21/split/ReadVariableOp2J
#lstm_cell_21/split_1/ReadVariableOp#lstm_cell_21/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
ú>
¬
I__inference_lstm_cell_21_layer_call_and_return_conditional_losses_4686876

inputs
states_0
states_10
split_readvariableop_resource:	.
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
:	*
dtype0
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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
£

(sequential_10_lstm_10_while_cond_4683669H
Dsequential_10_lstm_10_while_sequential_10_lstm_10_while_loop_counterN
Jsequential_10_lstm_10_while_sequential_10_lstm_10_while_maximum_iterations+
'sequential_10_lstm_10_while_placeholder-
)sequential_10_lstm_10_while_placeholder_1-
)sequential_10_lstm_10_while_placeholder_2-
)sequential_10_lstm_10_while_placeholder_3J
Fsequential_10_lstm_10_while_less_sequential_10_lstm_10_strided_slice_1a
]sequential_10_lstm_10_while_sequential_10_lstm_10_while_cond_4683669___redundant_placeholder0a
]sequential_10_lstm_10_while_sequential_10_lstm_10_while_cond_4683669___redundant_placeholder1a
]sequential_10_lstm_10_while_sequential_10_lstm_10_while_cond_4683669___redundant_placeholder2a
]sequential_10_lstm_10_while_sequential_10_lstm_10_while_cond_4683669___redundant_placeholder3(
$sequential_10_lstm_10_while_identity
º
 sequential_10/lstm_10/while/LessLess'sequential_10_lstm_10_while_placeholderFsequential_10_lstm_10_while_less_sequential_10_lstm_10_strided_slice_1*
T0*
_output_shapes
: w
$sequential_10/lstm_10/while/IdentityIdentity$sequential_10/lstm_10/while/Less:z:0*
T0
*
_output_shapes
: "U
$sequential_10_lstm_10_while_identity-sequential_10/lstm_10/while/Identity:output:0*(
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
³	
ª
/__inference_sequential_10_layer_call_fn_4684572
input_11
unknown:	
	unknown_0:	
	unknown_1:	@
	unknown_2:@
	unknown_3:
	unknown_4:
	unknown_5:
identity¢StatefulPartitionedCall¢
StatefulPartitionedCallStatefulPartitionedCallinput_11unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
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
GPU 2J 8 *S
fNRL
J__inference_sequential_10_layer_call_and_return_conditional_losses_4684555o
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
: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
input_11
º
È
while_cond_4685785
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4685785___redundant_placeholder05
1while_while_cond_4685785___redundant_placeholder15
1while_while_cond_4685785___redundant_placeholder25
1while_while_cond_4685785___redundant_placeholder3
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
ù
¶
)__inference_lstm_10_layer_call_fn_4685684

inputs
unknown:	
	unknown_0:	
	unknown_1:	@
identity¢StatefulPartitionedCallæ
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
GPU 2J 8 *M
fHRF
D__inference_lstm_10_layer_call_and_return_conditional_losses_4684898o
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
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
º
È
while_cond_4686307
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4686307___redundant_placeholder05
1while_while_cond_4686307___redundant_placeholder15
1while_while_cond_4686307___redundant_placeholder25
1while_while_cond_4686307___redundant_placeholder3
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
õ
¥	
while_body_4686569
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_21_split_readvariableop_resource_0:	C
4while_lstm_cell_21_split_1_readvariableop_resource_0:	?
,while_lstm_cell_21_readvariableop_resource_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_21_split_readvariableop_resource:	A
2while_lstm_cell_21_split_1_readvariableop_resource:	=
*while_lstm_cell_21_readvariableop_resource:	@¢!while/lstm_cell_21/ReadVariableOp¢#while/lstm_cell_21/ReadVariableOp_1¢#while/lstm_cell_21/ReadVariableOp_2¢#while/lstm_cell_21/ReadVariableOp_3¢'while/lstm_cell_21/split/ReadVariableOp¢)while/lstm_cell_21/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0e
"while/lstm_cell_21/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:g
"while/lstm_cell_21/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?°
while/lstm_cell_21/ones_likeFill+while/lstm_cell_21/ones_like/Shape:output:0+while/lstm_cell_21/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
 while/lstm_cell_21/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?©
while/lstm_cell_21/dropout/MulMul%while/lstm_cell_21/ones_like:output:0)while/lstm_cell_21/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
 while/lstm_cell_21/dropout/ShapeShape%while/lstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:²
7while/lstm_cell_21/dropout/random_uniform/RandomUniformRandomUniform)while/lstm_cell_21/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0n
)while/lstm_cell_21/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>ß
'while/lstm_cell_21/dropout/GreaterEqualGreaterEqual@while/lstm_cell_21/dropout/random_uniform/RandomUniform:output:02while/lstm_cell_21/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/dropout/CastCast+while/lstm_cell_21/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
 while/lstm_cell_21/dropout/Mul_1Mul"while/lstm_cell_21/dropout/Mul:z:0#while/lstm_cell_21/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
"while/lstm_cell_21/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?­
 while/lstm_cell_21/dropout_1/MulMul%while/lstm_cell_21/ones_like:output:0+while/lstm_cell_21/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
"while/lstm_cell_21/dropout_1/ShapeShape%while/lstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:¶
9while/lstm_cell_21/dropout_1/random_uniform/RandomUniformRandomUniform+while/lstm_cell_21/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0p
+while/lstm_cell_21/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>å
)while/lstm_cell_21/dropout_1/GreaterEqualGreaterEqualBwhile/lstm_cell_21/dropout_1/random_uniform/RandomUniform:output:04while/lstm_cell_21/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!while/lstm_cell_21/dropout_1/CastCast-while/lstm_cell_21/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¨
"while/lstm_cell_21/dropout_1/Mul_1Mul$while/lstm_cell_21/dropout_1/Mul:z:0%while/lstm_cell_21/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
"while/lstm_cell_21/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?­
 while/lstm_cell_21/dropout_2/MulMul%while/lstm_cell_21/ones_like:output:0+while/lstm_cell_21/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
"while/lstm_cell_21/dropout_2/ShapeShape%while/lstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:¶
9while/lstm_cell_21/dropout_2/random_uniform/RandomUniformRandomUniform+while/lstm_cell_21/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0p
+while/lstm_cell_21/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>å
)while/lstm_cell_21/dropout_2/GreaterEqualGreaterEqualBwhile/lstm_cell_21/dropout_2/random_uniform/RandomUniform:output:04while/lstm_cell_21/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!while/lstm_cell_21/dropout_2/CastCast-while/lstm_cell_21/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¨
"while/lstm_cell_21/dropout_2/Mul_1Mul$while/lstm_cell_21/dropout_2/Mul:z:0%while/lstm_cell_21/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
"while/lstm_cell_21/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?­
 while/lstm_cell_21/dropout_3/MulMul%while/lstm_cell_21/ones_like:output:0+while/lstm_cell_21/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
"while/lstm_cell_21/dropout_3/ShapeShape%while/lstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:¶
9while/lstm_cell_21/dropout_3/random_uniform/RandomUniformRandomUniform+while/lstm_cell_21/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0p
+while/lstm_cell_21/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>å
)while/lstm_cell_21/dropout_3/GreaterEqualGreaterEqualBwhile/lstm_cell_21/dropout_3/random_uniform/RandomUniform:output:04while/lstm_cell_21/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!while/lstm_cell_21/dropout_3/CastCast-while/lstm_cell_21/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¨
"while/lstm_cell_21/dropout_3/Mul_1Mul$while/lstm_cell_21/dropout_3/Mul:z:0%while/lstm_cell_21/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
"while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
'while/lstm_cell_21/split/ReadVariableOpReadVariableOp2while_lstm_cell_21_split_readvariableop_resource_0*
_output_shapes
:	*
dtype0×
while/lstm_cell_21/splitSplit+while/lstm_cell_21/split/split_dim:output:0/while/lstm_cell_21/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_splitª
while/lstm_cell_21/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_21/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_21/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_21/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
$while/lstm_cell_21/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
)while/lstm_cell_21/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_21_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Í
while/lstm_cell_21/split_1Split-while/lstm_cell_21/split_1/split_dim:output:01while/lstm_cell_21/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split¡
while/lstm_cell_21/BiasAddBiasAdd#while/lstm_cell_21/MatMul:product:0#while/lstm_cell_21/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_21/BiasAdd_1BiasAdd%while/lstm_cell_21/MatMul_1:product:0#while/lstm_cell_21/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_21/BiasAdd_2BiasAdd%while/lstm_cell_21/MatMul_2:product:0#while/lstm_cell_21/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_21/BiasAdd_3BiasAdd%while/lstm_cell_21/MatMul_3:product:0#while/lstm_cell_21/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mulMulwhile_placeholder_2$while/lstm_cell_21/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_1Mulwhile_placeholder_2&while/lstm_cell_21/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_2Mulwhile_placeholder_2&while/lstm_cell_21/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_3Mulwhile_placeholder_2&while/lstm_cell_21/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!while/lstm_cell_21/ReadVariableOpReadVariableOp,while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0w
&while/lstm_cell_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(while/lstm_cell_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   y
(while/lstm_cell_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ê
 while/lstm_cell_21/strided_sliceStridedSlice)while/lstm_cell_21/ReadVariableOp:value:0/while/lstm_cell_21/strided_slice/stack:output:01while/lstm_cell_21/strided_slice/stack_1:output:01while/lstm_cell_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell_21/MatMul_4MatMulwhile/lstm_cell_21/mul:z:0)while/lstm_cell_21/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/addAddV2#while/lstm_cell_21/BiasAdd:output:0%while/lstm_cell_21/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
while/lstm_cell_21/SigmoidSigmoidwhile/lstm_cell_21/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_21/ReadVariableOp_1ReadVariableOp,while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   {
*while/lstm_cell_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       {
*while/lstm_cell_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_21/strided_slice_1StridedSlice+while/lstm_cell_21/ReadVariableOp_1:value:01while/lstm_cell_21/strided_slice_1/stack:output:03while/lstm_cell_21/strided_slice_1/stack_1:output:03while/lstm_cell_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_21/MatMul_5MatMulwhile/lstm_cell_21/mul_1:z:0+while/lstm_cell_21/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_21/add_1AddV2%while/lstm_cell_21/BiasAdd_1:output:0%while/lstm_cell_21/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/lstm_cell_21/Sigmoid_1Sigmoidwhile/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_4Mul while/lstm_cell_21/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_21/ReadVariableOp_2ReadVariableOp,while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       {
*while/lstm_cell_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   {
*while/lstm_cell_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_21/strided_slice_2StridedSlice+while/lstm_cell_21/ReadVariableOp_2:value:01while/lstm_cell_21/strided_slice_2/stack:output:03while/lstm_cell_21/strided_slice_2/stack_1:output:03while/lstm_cell_21/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_21/MatMul_6MatMulwhile/lstm_cell_21/mul_2:z:0+while/lstm_cell_21/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_21/add_2AddV2%while/lstm_cell_21/BiasAdd_2:output:0%while/lstm_cell_21/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
while/lstm_cell_21/TanhTanhwhile/lstm_cell_21/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_5Mulwhile/lstm_cell_21/Sigmoid:y:0while/lstm_cell_21/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/add_3AddV2while/lstm_cell_21/mul_4:z:0while/lstm_cell_21/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_21/ReadVariableOp_3ReadVariableOp,while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   {
*while/lstm_cell_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*while/lstm_cell_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_21/strided_slice_3StridedSlice+while/lstm_cell_21/ReadVariableOp_3:value:01while/lstm_cell_21/strided_slice_3/stack:output:03while/lstm_cell_21/strided_slice_3/stack_1:output:03while/lstm_cell_21/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_21/MatMul_7MatMulwhile/lstm_cell_21/mul_3:z:0+while/lstm_cell_21/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_21/add_4AddV2%while/lstm_cell_21/BiasAdd_3:output:0%while/lstm_cell_21/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/lstm_cell_21/Sigmoid_2Sigmoidwhile/lstm_cell_21/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
while/lstm_cell_21/Tanh_1Tanhwhile/lstm_cell_21/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_6Mul while/lstm_cell_21/Sigmoid_2:y:0while/lstm_cell_21/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_21/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_21/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
while/Identity_5Identitywhile/lstm_cell_21/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸

while/NoOpNoOp"^while/lstm_cell_21/ReadVariableOp$^while/lstm_cell_21/ReadVariableOp_1$^while/lstm_cell_21/ReadVariableOp_2$^while/lstm_cell_21/ReadVariableOp_3(^while/lstm_cell_21/split/ReadVariableOp*^while/lstm_cell_21/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_21_readvariableop_resource,while_lstm_cell_21_readvariableop_resource_0"j
2while_lstm_cell_21_split_1_readvariableop_resource4while_lstm_cell_21_split_1_readvariableop_resource_0"f
0while_lstm_cell_21_split_readvariableop_resource2while_lstm_cell_21_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2F
!while/lstm_cell_21/ReadVariableOp!while/lstm_cell_21/ReadVariableOp2J
#while/lstm_cell_21/ReadVariableOp_1#while/lstm_cell_21/ReadVariableOp_12J
#while/lstm_cell_21/ReadVariableOp_2#while/lstm_cell_21/ReadVariableOp_22J
#while/lstm_cell_21/ReadVariableOp_3#while/lstm_cell_21/ReadVariableOp_32R
'while/lstm_cell_21/split/ReadVariableOp'while/lstm_cell_21/split/ReadVariableOp2V
)while/lstm_cell_21/split_1/ReadVariableOp)while/lstm_cell_21/split_1/ReadVariableOp: 
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
#
ê
while_body_4684200
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_21_4684224_0:	+
while_lstm_cell_21_4684226_0:	/
while_lstm_cell_21_4684228_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_21_4684224:	)
while_lstm_cell_21_4684226:	-
while_lstm_cell_21_4684228:	@¢*while/lstm_cell_21/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0·
*while/lstm_cell_21/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_21_4684224_0while_lstm_cell_21_4684226_0while_lstm_cell_21_4684228_0*
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
I__inference_lstm_cell_21_layer_call_and_return_conditional_losses_4684141Ü
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder3while/lstm_cell_21/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_21/StatefulPartitionedCall:output:1^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/Identity_5Identity3while/lstm_cell_21/StatefulPartitionedCall:output:2^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y

while/NoOpNoOp+^while/lstm_cell_21/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_21_4684224while_lstm_cell_21_4684224_0":
while_lstm_cell_21_4684226while_lstm_cell_21_4684226_0":
while_lstm_cell_21_4684228while_lstm_cell_21_4684228_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2X
*while/lstm_cell_21/StatefulPartitionedCall*while/lstm_cell_21/StatefulPartitionedCall: 
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
»z
è
D__inference_lstm_10_layer_call_and_return_conditional_losses_4686435

inputs=
*lstm_cell_21_split_readvariableop_resource:	;
,lstm_cell_21_split_1_readvariableop_resource:	7
$lstm_cell_21_readvariableop_resource:	@
identity¢lstm_cell_21/ReadVariableOp¢lstm_cell_21/ReadVariableOp_1¢lstm_cell_21/ReadVariableOp_2¢lstm_cell_21/ReadVariableOp_3¢!lstm_cell_21/split/ReadVariableOp¢#lstm_cell_21/split_1/ReadVariableOp¢while;
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
ÿÿÿÿÿÿÿÿÿD
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
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskZ
lstm_cell_21/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:a
lstm_cell_21/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell_21/ones_likeFill%lstm_cell_21/ones_like/Shape:output:0%lstm_cell_21/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_cell_21/split/ReadVariableOpReadVariableOp*lstm_cell_21_split_readvariableop_resource*
_output_shapes
:	*
dtype0Å
lstm_cell_21/splitSplit%lstm_cell_21/split/split_dim:output:0)lstm_cell_21/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split
lstm_cell_21/MatMulMatMulstrided_slice_2:output:0lstm_cell_21/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_21/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_21/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_21/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
lstm_cell_21/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
#lstm_cell_21/split_1/ReadVariableOpReadVariableOp,lstm_cell_21_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0»
lstm_cell_21/split_1Split'lstm_cell_21/split_1/split_dim:output:0+lstm_cell_21/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
lstm_cell_21/BiasAddBiasAddlstm_cell_21/MatMul:product:0lstm_cell_21/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/BiasAdd_1BiasAddlstm_cell_21/MatMul_1:product:0lstm_cell_21/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/BiasAdd_2BiasAddlstm_cell_21/MatMul_2:product:0lstm_cell_21/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/BiasAdd_3BiasAddlstm_cell_21/MatMul_3:product:0lstm_cell_21/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
lstm_cell_21/mulMulzeros:output:0lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_cell_21/mul_1Mulzeros:output:0lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_cell_21/mul_2Mulzeros:output:0lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_cell_21/mul_3Mulzeros:output:0lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/ReadVariableOpReadVariableOp$lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0q
 lstm_cell_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        s
"lstm_cell_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   s
"lstm_cell_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¬
lstm_cell_21/strided_sliceStridedSlice#lstm_cell_21/ReadVariableOp:value:0)lstm_cell_21/strided_slice/stack:output:0+lstm_cell_21/strided_slice/stack_1:output:0+lstm_cell_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_21/MatMul_4MatMullstm_cell_21/mul:z:0#lstm_cell_21/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/addAddV2lstm_cell_21/BiasAdd:output:0lstm_cell_21/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
lstm_cell_21/SigmoidSigmoidlstm_cell_21/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/ReadVariableOp_1ReadVariableOp$lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   u
$lstm_cell_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       u
$lstm_cell_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_21/strided_slice_1StridedSlice%lstm_cell_21/ReadVariableOp_1:value:0+lstm_cell_21/strided_slice_1/stack:output:0-lstm_cell_21/strided_slice_1/stack_1:output:0-lstm_cell_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_21/MatMul_5MatMullstm_cell_21/mul_1:z:0%lstm_cell_21/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/add_1AddV2lstm_cell_21/BiasAdd_1:output:0lstm_cell_21/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_21/Sigmoid_1Sigmoidlstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
lstm_cell_21/mul_4Mullstm_cell_21/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/ReadVariableOp_2ReadVariableOp$lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       u
$lstm_cell_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   u
$lstm_cell_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_21/strided_slice_2StridedSlice%lstm_cell_21/ReadVariableOp_2:value:0+lstm_cell_21/strided_slice_2/stack:output:0-lstm_cell_21/strided_slice_2/stack_1:output:0-lstm_cell_21/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_21/MatMul_6MatMullstm_cell_21/mul_2:z:0%lstm_cell_21/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/add_2AddV2lstm_cell_21/BiasAdd_2:output:0lstm_cell_21/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
lstm_cell_21/TanhTanhlstm_cell_21/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_cell_21/mul_5Mullstm_cell_21/Sigmoid:y:0lstm_cell_21/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell_21/add_3AddV2lstm_cell_21/mul_4:z:0lstm_cell_21/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/ReadVariableOp_3ReadVariableOp$lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   u
$lstm_cell_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        u
$lstm_cell_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_21/strided_slice_3StridedSlice%lstm_cell_21/ReadVariableOp_3:value:0+lstm_cell_21/strided_slice_3/stack:output:0-lstm_cell_21/strided_slice_3/stack_1:output:0-lstm_cell_21/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_21/MatMul_7MatMullstm_cell_21/mul_3:z:0%lstm_cell_21/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/add_4AddV2lstm_cell_21/BiasAdd_3:output:0lstm_cell_21/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_21/Sigmoid_2Sigmoidlstm_cell_21/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
lstm_cell_21/Tanh_1Tanhlstm_cell_21/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/mul_6Mullstm_cell_21/Sigmoid_2:y:0lstm_cell_21/Tanh_1:y:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_21_split_readvariableop_resource,lstm_cell_21_split_1_readvariableop_resource$lstm_cell_21_readvariableop_resource*
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
while_body_4686308*
condR
while_cond_4686307*K
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
NoOpNoOp^lstm_cell_21/ReadVariableOp^lstm_cell_21/ReadVariableOp_1^lstm_cell_21/ReadVariableOp_2^lstm_cell_21/ReadVariableOp_3"^lstm_cell_21/split/ReadVariableOp$^lstm_cell_21/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿ
: : : 2:
lstm_cell_21/ReadVariableOplstm_cell_21/ReadVariableOp2>
lstm_cell_21/ReadVariableOp_1lstm_cell_21/ReadVariableOp_12>
lstm_cell_21/ReadVariableOp_2lstm_cell_21/ReadVariableOp_22>
lstm_cell_21/ReadVariableOp_3lstm_cell_21/ReadVariableOp_32F
!lstm_cell_21/split/ReadVariableOp!lstm_cell_21/split/ReadVariableOp2J
#lstm_cell_21/split_1/ReadVariableOp#lstm_cell_21/split_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs


è
lstm_10_while_cond_4685446,
(lstm_10_while_lstm_10_while_loop_counter2
.lstm_10_while_lstm_10_while_maximum_iterations
lstm_10_while_placeholder
lstm_10_while_placeholder_1
lstm_10_while_placeholder_2
lstm_10_while_placeholder_3.
*lstm_10_while_less_lstm_10_strided_slice_1E
Alstm_10_while_lstm_10_while_cond_4685446___redundant_placeholder0E
Alstm_10_while_lstm_10_while_cond_4685446___redundant_placeholder1E
Alstm_10_while_lstm_10_while_cond_4685446___redundant_placeholder2E
Alstm_10_while_lstm_10_while_cond_4685446___redundant_placeholder3
lstm_10_while_identity

lstm_10/while/LessLesslstm_10_while_placeholder*lstm_10_while_less_lstm_10_strided_slice_1*
T0*
_output_shapes
: [
lstm_10/while/IdentityIdentitylstm_10/while/Less:z:0*
T0
*
_output_shapes
: "9
lstm_10_while_identitylstm_10/while/Identity:output:0*(
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
ðz
ê
D__inference_lstm_10_layer_call_and_return_conditional_losses_4685913
inputs_0=
*lstm_cell_21_split_readvariableop_resource:	;
,lstm_cell_21_split_1_readvariableop_resource:	7
$lstm_cell_21_readvariableop_resource:	@
identity¢lstm_cell_21/ReadVariableOp¢lstm_cell_21/ReadVariableOp_1¢lstm_cell_21/ReadVariableOp_2¢lstm_cell_21/ReadVariableOp_3¢!lstm_cell_21/split/ReadVariableOp¢#lstm_cell_21/split_1/ReadVariableOp¢while=
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskZ
lstm_cell_21/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:a
lstm_cell_21/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell_21/ones_likeFill%lstm_cell_21/ones_like/Shape:output:0%lstm_cell_21/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_cell_21/split/ReadVariableOpReadVariableOp*lstm_cell_21_split_readvariableop_resource*
_output_shapes
:	*
dtype0Å
lstm_cell_21/splitSplit%lstm_cell_21/split/split_dim:output:0)lstm_cell_21/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split
lstm_cell_21/MatMulMatMulstrided_slice_2:output:0lstm_cell_21/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_21/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_21/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_21/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
lstm_cell_21/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
#lstm_cell_21/split_1/ReadVariableOpReadVariableOp,lstm_cell_21_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0»
lstm_cell_21/split_1Split'lstm_cell_21/split_1/split_dim:output:0+lstm_cell_21/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
lstm_cell_21/BiasAddBiasAddlstm_cell_21/MatMul:product:0lstm_cell_21/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/BiasAdd_1BiasAddlstm_cell_21/MatMul_1:product:0lstm_cell_21/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/BiasAdd_2BiasAddlstm_cell_21/MatMul_2:product:0lstm_cell_21/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/BiasAdd_3BiasAddlstm_cell_21/MatMul_3:product:0lstm_cell_21/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
lstm_cell_21/mulMulzeros:output:0lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_cell_21/mul_1Mulzeros:output:0lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_cell_21/mul_2Mulzeros:output:0lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_cell_21/mul_3Mulzeros:output:0lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/ReadVariableOpReadVariableOp$lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0q
 lstm_cell_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        s
"lstm_cell_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   s
"lstm_cell_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¬
lstm_cell_21/strided_sliceStridedSlice#lstm_cell_21/ReadVariableOp:value:0)lstm_cell_21/strided_slice/stack:output:0+lstm_cell_21/strided_slice/stack_1:output:0+lstm_cell_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_21/MatMul_4MatMullstm_cell_21/mul:z:0#lstm_cell_21/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/addAddV2lstm_cell_21/BiasAdd:output:0lstm_cell_21/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
lstm_cell_21/SigmoidSigmoidlstm_cell_21/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/ReadVariableOp_1ReadVariableOp$lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   u
$lstm_cell_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       u
$lstm_cell_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_21/strided_slice_1StridedSlice%lstm_cell_21/ReadVariableOp_1:value:0+lstm_cell_21/strided_slice_1/stack:output:0-lstm_cell_21/strided_slice_1/stack_1:output:0-lstm_cell_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_21/MatMul_5MatMullstm_cell_21/mul_1:z:0%lstm_cell_21/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/add_1AddV2lstm_cell_21/BiasAdd_1:output:0lstm_cell_21/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_21/Sigmoid_1Sigmoidlstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
lstm_cell_21/mul_4Mullstm_cell_21/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/ReadVariableOp_2ReadVariableOp$lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       u
$lstm_cell_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   u
$lstm_cell_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_21/strided_slice_2StridedSlice%lstm_cell_21/ReadVariableOp_2:value:0+lstm_cell_21/strided_slice_2/stack:output:0-lstm_cell_21/strided_slice_2/stack_1:output:0-lstm_cell_21/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_21/MatMul_6MatMullstm_cell_21/mul_2:z:0%lstm_cell_21/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/add_2AddV2lstm_cell_21/BiasAdd_2:output:0lstm_cell_21/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
lstm_cell_21/TanhTanhlstm_cell_21/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_cell_21/mul_5Mullstm_cell_21/Sigmoid:y:0lstm_cell_21/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell_21/add_3AddV2lstm_cell_21/mul_4:z:0lstm_cell_21/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/ReadVariableOp_3ReadVariableOp$lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   u
$lstm_cell_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        u
$lstm_cell_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_21/strided_slice_3StridedSlice%lstm_cell_21/ReadVariableOp_3:value:0+lstm_cell_21/strided_slice_3/stack:output:0-lstm_cell_21/strided_slice_3/stack_1:output:0-lstm_cell_21/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_21/MatMul_7MatMullstm_cell_21/mul_3:z:0%lstm_cell_21/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/add_4AddV2lstm_cell_21/BiasAdd_3:output:0lstm_cell_21/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_21/Sigmoid_2Sigmoidlstm_cell_21/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
lstm_cell_21/Tanh_1Tanhlstm_cell_21/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/mul_6Mullstm_cell_21/Sigmoid_2:y:0lstm_cell_21/Tanh_1:y:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_21_split_readvariableop_resource,lstm_cell_21_split_1_readvariableop_resource$lstm_cell_21_readvariableop_resource*
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
while_body_4685786*
condR
while_cond_4685785*K
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
NoOpNoOp^lstm_cell_21/ReadVariableOp^lstm_cell_21/ReadVariableOp_1^lstm_cell_21/ReadVariableOp_2^lstm_cell_21/ReadVariableOp_3"^lstm_cell_21/split/ReadVariableOp$^lstm_cell_21/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2:
lstm_cell_21/ReadVariableOplstm_cell_21/ReadVariableOp2>
lstm_cell_21/ReadVariableOp_1lstm_cell_21/ReadVariableOp_12>
lstm_cell_21/ReadVariableOp_2lstm_cell_21/ReadVariableOp_22>
lstm_cell_21/ReadVariableOp_3lstm_cell_21/ReadVariableOp_32F
!lstm_cell_21/split/ReadVariableOp!lstm_cell_21/split/ReadVariableOp2J
#lstm_cell_21/split_1/ReadVariableOp#lstm_cell_21/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ê>
ª
I__inference_lstm_cell_21_layer_call_and_return_conditional_losses_4683920

inputs

states
states_10
split_readvariableop_resource:	.
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
:	*
dtype0
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates:OK
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
 
_user_specified_namestates
¼
	
"__inference__wrapped_model_4683810
input_11S
@sequential_10_lstm_10_lstm_cell_21_split_readvariableop_resource:	Q
Bsequential_10_lstm_10_lstm_cell_21_split_1_readvariableop_resource:	M
:sequential_10_lstm_10_lstm_cell_21_readvariableop_resource:	@G
5sequential_10_dense_10_matmul_readvariableop_resource:@D
6sequential_10_dense_10_biasadd_readvariableop_resource:G
5sequential_10_dense_11_matmul_readvariableop_resource:D
6sequential_10_dense_11_biasadd_readvariableop_resource:
identity¢-sequential_10/dense_10/BiasAdd/ReadVariableOp¢,sequential_10/dense_10/MatMul/ReadVariableOp¢-sequential_10/dense_11/BiasAdd/ReadVariableOp¢,sequential_10/dense_11/MatMul/ReadVariableOp¢1sequential_10/lstm_10/lstm_cell_21/ReadVariableOp¢3sequential_10/lstm_10/lstm_cell_21/ReadVariableOp_1¢3sequential_10/lstm_10/lstm_cell_21/ReadVariableOp_2¢3sequential_10/lstm_10/lstm_cell_21/ReadVariableOp_3¢7sequential_10/lstm_10/lstm_cell_21/split/ReadVariableOp¢9sequential_10/lstm_10/lstm_cell_21/split_1/ReadVariableOp¢sequential_10/lstm_10/whileS
sequential_10/lstm_10/ShapeShapeinput_11*
T0*
_output_shapes
:s
)sequential_10/lstm_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+sequential_10/lstm_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+sequential_10/lstm_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
#sequential_10/lstm_10/strided_sliceStridedSlice$sequential_10/lstm_10/Shape:output:02sequential_10/lstm_10/strided_slice/stack:output:04sequential_10/lstm_10/strided_slice/stack_1:output:04sequential_10/lstm_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
$sequential_10/lstm_10/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@µ
"sequential_10/lstm_10/zeros/packedPack,sequential_10/lstm_10/strided_slice:output:0-sequential_10/lstm_10/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!sequential_10/lstm_10/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ®
sequential_10/lstm_10/zerosFill+sequential_10/lstm_10/zeros/packed:output:0*sequential_10/lstm_10/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
&sequential_10/lstm_10/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@¹
$sequential_10/lstm_10/zeros_1/packedPack,sequential_10/lstm_10/strided_slice:output:0/sequential_10/lstm_10/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:h
#sequential_10/lstm_10/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ´
sequential_10/lstm_10/zeros_1Fill-sequential_10/lstm_10/zeros_1/packed:output:0,sequential_10/lstm_10/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
$sequential_10/lstm_10/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
sequential_10/lstm_10/transpose	Transposeinput_11-sequential_10/lstm_10/transpose/perm:output:0*
T0*+
_output_shapes
:
ÿÿÿÿÿÿÿÿÿp
sequential_10/lstm_10/Shape_1Shape#sequential_10/lstm_10/transpose:y:0*
T0*
_output_shapes
:u
+sequential_10/lstm_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_10/lstm_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_10/lstm_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:É
%sequential_10/lstm_10/strided_slice_1StridedSlice&sequential_10/lstm_10/Shape_1:output:04sequential_10/lstm_10/strided_slice_1/stack:output:06sequential_10/lstm_10/strided_slice_1/stack_1:output:06sequential_10/lstm_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1sequential_10/lstm_10/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿö
#sequential_10/lstm_10/TensorArrayV2TensorListReserve:sequential_10/lstm_10/TensorArrayV2/element_shape:output:0.sequential_10/lstm_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Ksequential_10/lstm_10/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¢
=sequential_10/lstm_10/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#sequential_10/lstm_10/transpose:y:0Tsequential_10/lstm_10/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒu
+sequential_10/lstm_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-sequential_10/lstm_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-sequential_10/lstm_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:×
%sequential_10/lstm_10/strided_slice_2StridedSlice#sequential_10/lstm_10/transpose:y:04sequential_10/lstm_10/strided_slice_2/stack:output:06sequential_10/lstm_10/strided_slice_2/stack_1:output:06sequential_10/lstm_10/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask
2sequential_10/lstm_10/lstm_cell_21/ones_like/ShapeShape$sequential_10/lstm_10/zeros:output:0*
T0*
_output_shapes
:w
2sequential_10/lstm_10/lstm_cell_21/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?à
,sequential_10/lstm_10/lstm_cell_21/ones_likeFill;sequential_10/lstm_10/lstm_cell_21/ones_like/Shape:output:0;sequential_10/lstm_10/lstm_cell_21/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@t
2sequential_10/lstm_10/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¹
7sequential_10/lstm_10/lstm_cell_21/split/ReadVariableOpReadVariableOp@sequential_10_lstm_10_lstm_cell_21_split_readvariableop_resource*
_output_shapes
:	*
dtype0
(sequential_10/lstm_10/lstm_cell_21/splitSplit;sequential_10/lstm_10/lstm_cell_21/split/split_dim:output:0?sequential_10/lstm_10/lstm_cell_21/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_splitÈ
)sequential_10/lstm_10/lstm_cell_21/MatMulMatMul.sequential_10/lstm_10/strided_slice_2:output:01sequential_10/lstm_10/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ê
+sequential_10/lstm_10/lstm_cell_21/MatMul_1MatMul.sequential_10/lstm_10/strided_slice_2:output:01sequential_10/lstm_10/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ê
+sequential_10/lstm_10/lstm_cell_21/MatMul_2MatMul.sequential_10/lstm_10/strided_slice_2:output:01sequential_10/lstm_10/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ê
+sequential_10/lstm_10/lstm_cell_21/MatMul_3MatMul.sequential_10/lstm_10/strided_slice_2:output:01sequential_10/lstm_10/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v
4sequential_10/lstm_10/lstm_cell_21/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : ¹
9sequential_10/lstm_10/lstm_cell_21/split_1/ReadVariableOpReadVariableOpBsequential_10_lstm_10_lstm_cell_21_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0ý
*sequential_10/lstm_10/lstm_cell_21/split_1Split=sequential_10/lstm_10/lstm_cell_21/split_1/split_dim:output:0Asequential_10/lstm_10/lstm_cell_21/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitÑ
*sequential_10/lstm_10/lstm_cell_21/BiasAddBiasAdd3sequential_10/lstm_10/lstm_cell_21/MatMul:product:03sequential_10/lstm_10/lstm_cell_21/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Õ
,sequential_10/lstm_10/lstm_cell_21/BiasAdd_1BiasAdd5sequential_10/lstm_10/lstm_cell_21/MatMul_1:product:03sequential_10/lstm_10/lstm_cell_21/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Õ
,sequential_10/lstm_10/lstm_cell_21/BiasAdd_2BiasAdd5sequential_10/lstm_10/lstm_cell_21/MatMul_2:product:03sequential_10/lstm_10/lstm_cell_21/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Õ
,sequential_10/lstm_10/lstm_cell_21/BiasAdd_3BiasAdd5sequential_10/lstm_10/lstm_cell_21/MatMul_3:product:03sequential_10/lstm_10/lstm_cell_21/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¼
&sequential_10/lstm_10/lstm_cell_21/mulMul$sequential_10/lstm_10/zeros:output:05sequential_10/lstm_10/lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¾
(sequential_10/lstm_10/lstm_cell_21/mul_1Mul$sequential_10/lstm_10/zeros:output:05sequential_10/lstm_10/lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¾
(sequential_10/lstm_10/lstm_cell_21/mul_2Mul$sequential_10/lstm_10/zeros:output:05sequential_10/lstm_10/lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¾
(sequential_10/lstm_10/lstm_cell_21/mul_3Mul$sequential_10/lstm_10/zeros:output:05sequential_10/lstm_10/lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@­
1sequential_10/lstm_10/lstm_cell_21/ReadVariableOpReadVariableOp:sequential_10_lstm_10_lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0
6sequential_10/lstm_10/lstm_cell_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
8sequential_10/lstm_10/lstm_cell_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   
8sequential_10/lstm_10/lstm_cell_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
0sequential_10/lstm_10/lstm_cell_21/strided_sliceStridedSlice9sequential_10/lstm_10/lstm_cell_21/ReadVariableOp:value:0?sequential_10/lstm_10/lstm_cell_21/strided_slice/stack:output:0Asequential_10/lstm_10/lstm_cell_21/strided_slice/stack_1:output:0Asequential_10/lstm_10/lstm_cell_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskÎ
+sequential_10/lstm_10/lstm_cell_21/MatMul_4MatMul*sequential_10/lstm_10/lstm_cell_21/mul:z:09sequential_10/lstm_10/lstm_cell_21/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Í
&sequential_10/lstm_10/lstm_cell_21/addAddV23sequential_10/lstm_10/lstm_cell_21/BiasAdd:output:05sequential_10/lstm_10/lstm_cell_21/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
*sequential_10/lstm_10/lstm_cell_21/SigmoidSigmoid*sequential_10/lstm_10/lstm_cell_21/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¯
3sequential_10/lstm_10/lstm_cell_21/ReadVariableOp_1ReadVariableOp:sequential_10_lstm_10_lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0
8sequential_10/lstm_10/lstm_cell_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   
:sequential_10/lstm_10/lstm_cell_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
:sequential_10/lstm_10/lstm_cell_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¤
2sequential_10/lstm_10/lstm_cell_21/strided_slice_1StridedSlice;sequential_10/lstm_10/lstm_cell_21/ReadVariableOp_1:value:0Asequential_10/lstm_10/lstm_cell_21/strided_slice_1/stack:output:0Csequential_10/lstm_10/lstm_cell_21/strided_slice_1/stack_1:output:0Csequential_10/lstm_10/lstm_cell_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskÒ
+sequential_10/lstm_10/lstm_cell_21/MatMul_5MatMul,sequential_10/lstm_10/lstm_cell_21/mul_1:z:0;sequential_10/lstm_10/lstm_cell_21/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ñ
(sequential_10/lstm_10/lstm_cell_21/add_1AddV25sequential_10/lstm_10/lstm_cell_21/BiasAdd_1:output:05sequential_10/lstm_10/lstm_cell_21/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
,sequential_10/lstm_10/lstm_cell_21/Sigmoid_1Sigmoid,sequential_10/lstm_10/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@»
(sequential_10/lstm_10/lstm_cell_21/mul_4Mul0sequential_10/lstm_10/lstm_cell_21/Sigmoid_1:y:0&sequential_10/lstm_10/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¯
3sequential_10/lstm_10/lstm_cell_21/ReadVariableOp_2ReadVariableOp:sequential_10_lstm_10_lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0
8sequential_10/lstm_10/lstm_cell_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       
:sequential_10/lstm_10/lstm_cell_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   
:sequential_10/lstm_10/lstm_cell_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¤
2sequential_10/lstm_10/lstm_cell_21/strided_slice_2StridedSlice;sequential_10/lstm_10/lstm_cell_21/ReadVariableOp_2:value:0Asequential_10/lstm_10/lstm_cell_21/strided_slice_2/stack:output:0Csequential_10/lstm_10/lstm_cell_21/strided_slice_2/stack_1:output:0Csequential_10/lstm_10/lstm_cell_21/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskÒ
+sequential_10/lstm_10/lstm_cell_21/MatMul_6MatMul,sequential_10/lstm_10/lstm_cell_21/mul_2:z:0;sequential_10/lstm_10/lstm_cell_21/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ñ
(sequential_10/lstm_10/lstm_cell_21/add_2AddV25sequential_10/lstm_10/lstm_cell_21/BiasAdd_2:output:05sequential_10/lstm_10/lstm_cell_21/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
'sequential_10/lstm_10/lstm_cell_21/TanhTanh,sequential_10/lstm_10/lstm_cell_21/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¾
(sequential_10/lstm_10/lstm_cell_21/mul_5Mul.sequential_10/lstm_10/lstm_cell_21/Sigmoid:y:0+sequential_10/lstm_10/lstm_cell_21/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¿
(sequential_10/lstm_10/lstm_cell_21/add_3AddV2,sequential_10/lstm_10/lstm_cell_21/mul_4:z:0,sequential_10/lstm_10/lstm_cell_21/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¯
3sequential_10/lstm_10/lstm_cell_21/ReadVariableOp_3ReadVariableOp:sequential_10_lstm_10_lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0
8sequential_10/lstm_10/lstm_cell_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   
:sequential_10/lstm_10/lstm_cell_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
:sequential_10/lstm_10/lstm_cell_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¤
2sequential_10/lstm_10/lstm_cell_21/strided_slice_3StridedSlice;sequential_10/lstm_10/lstm_cell_21/ReadVariableOp_3:value:0Asequential_10/lstm_10/lstm_cell_21/strided_slice_3/stack:output:0Csequential_10/lstm_10/lstm_cell_21/strided_slice_3/stack_1:output:0Csequential_10/lstm_10/lstm_cell_21/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskÒ
+sequential_10/lstm_10/lstm_cell_21/MatMul_7MatMul,sequential_10/lstm_10/lstm_cell_21/mul_3:z:0;sequential_10/lstm_10/lstm_cell_21/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ñ
(sequential_10/lstm_10/lstm_cell_21/add_4AddV25sequential_10/lstm_10/lstm_cell_21/BiasAdd_3:output:05sequential_10/lstm_10/lstm_cell_21/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
,sequential_10/lstm_10/lstm_cell_21/Sigmoid_2Sigmoid,sequential_10/lstm_10/lstm_cell_21/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)sequential_10/lstm_10/lstm_cell_21/Tanh_1Tanh,sequential_10/lstm_10/lstm_cell_21/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Â
(sequential_10/lstm_10/lstm_cell_21/mul_6Mul0sequential_10/lstm_10/lstm_cell_21/Sigmoid_2:y:0-sequential_10/lstm_10/lstm_cell_21/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
3sequential_10/lstm_10/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   ú
%sequential_10/lstm_10/TensorArrayV2_1TensorListReserve<sequential_10/lstm_10/TensorArrayV2_1/element_shape:output:0.sequential_10/lstm_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ\
sequential_10/lstm_10/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.sequential_10/lstm_10/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿj
(sequential_10/lstm_10/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ®
sequential_10/lstm_10/whileWhile1sequential_10/lstm_10/while/loop_counter:output:07sequential_10/lstm_10/while/maximum_iterations:output:0#sequential_10/lstm_10/time:output:0.sequential_10/lstm_10/TensorArrayV2_1:handle:0$sequential_10/lstm_10/zeros:output:0&sequential_10/lstm_10/zeros_1:output:0.sequential_10/lstm_10/strided_slice_1:output:0Msequential_10/lstm_10/TensorArrayUnstack/TensorListFromTensor:output_handle:0@sequential_10_lstm_10_lstm_cell_21_split_readvariableop_resourceBsequential_10_lstm_10_lstm_cell_21_split_1_readvariableop_resource:sequential_10_lstm_10_lstm_cell_21_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *4
body,R*
(sequential_10_lstm_10_while_body_4683670*4
cond,R*
(sequential_10_lstm_10_while_cond_4683669*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
Fsequential_10/lstm_10/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   
8sequential_10/lstm_10/TensorArrayV2Stack/TensorListStackTensorListStack$sequential_10/lstm_10/while:output:3Osequential_10/lstm_10/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
ÿÿÿÿÿÿÿÿÿ@*
element_dtype0~
+sequential_10/lstm_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿw
-sequential_10/lstm_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-sequential_10/lstm_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
%sequential_10/lstm_10/strided_slice_3StridedSliceAsequential_10/lstm_10/TensorArrayV2Stack/TensorListStack:tensor:04sequential_10/lstm_10/strided_slice_3/stack:output:06sequential_10/lstm_10/strided_slice_3/stack_1:output:06sequential_10/lstm_10/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_mask{
&sequential_10/lstm_10/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ø
!sequential_10/lstm_10/transpose_1	TransposeAsequential_10/lstm_10/TensorArrayV2Stack/TensorListStack:tensor:0/sequential_10/lstm_10/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@q
sequential_10/lstm_10/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ¢
,sequential_10/dense_10/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_10_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0¿
sequential_10/dense_10/MatMulMatMul.sequential_10/lstm_10/strided_slice_3:output:04sequential_10/dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
-sequential_10/dense_10/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0»
sequential_10/dense_10/BiasAddBiasAdd'sequential_10/dense_10/MatMul:product:05sequential_10/dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ~
sequential_10/dense_10/ReluRelu'sequential_10/dense_10/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¢
,sequential_10/dense_11/MatMul/ReadVariableOpReadVariableOp5sequential_10_dense_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype0º
sequential_10/dense_11/MatMulMatMul)sequential_10/dense_10/Relu:activations:04sequential_10/dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
-sequential_10/dense_11/BiasAdd/ReadVariableOpReadVariableOp6sequential_10_dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0»
sequential_10/dense_11/BiasAddBiasAdd'sequential_10/dense_11/MatMul:product:05sequential_10/dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
IdentityIdentity'sequential_10/dense_11/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿî
NoOpNoOp.^sequential_10/dense_10/BiasAdd/ReadVariableOp-^sequential_10/dense_10/MatMul/ReadVariableOp.^sequential_10/dense_11/BiasAdd/ReadVariableOp-^sequential_10/dense_11/MatMul/ReadVariableOp2^sequential_10/lstm_10/lstm_cell_21/ReadVariableOp4^sequential_10/lstm_10/lstm_cell_21/ReadVariableOp_14^sequential_10/lstm_10/lstm_cell_21/ReadVariableOp_24^sequential_10/lstm_10/lstm_cell_21/ReadVariableOp_38^sequential_10/lstm_10/lstm_cell_21/split/ReadVariableOp:^sequential_10/lstm_10/lstm_cell_21/split_1/ReadVariableOp^sequential_10/lstm_10/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ
: : : : : : : 2^
-sequential_10/dense_10/BiasAdd/ReadVariableOp-sequential_10/dense_10/BiasAdd/ReadVariableOp2\
,sequential_10/dense_10/MatMul/ReadVariableOp,sequential_10/dense_10/MatMul/ReadVariableOp2^
-sequential_10/dense_11/BiasAdd/ReadVariableOp-sequential_10/dense_11/BiasAdd/ReadVariableOp2\
,sequential_10/dense_11/MatMul/ReadVariableOp,sequential_10/dense_11/MatMul/ReadVariableOp2f
1sequential_10/lstm_10/lstm_cell_21/ReadVariableOp1sequential_10/lstm_10/lstm_cell_21/ReadVariableOp2j
3sequential_10/lstm_10/lstm_cell_21/ReadVariableOp_13sequential_10/lstm_10/lstm_cell_21/ReadVariableOp_12j
3sequential_10/lstm_10/lstm_cell_21/ReadVariableOp_23sequential_10/lstm_10/lstm_cell_21/ReadVariableOp_22j
3sequential_10/lstm_10/lstm_cell_21/ReadVariableOp_33sequential_10/lstm_10/lstm_cell_21/ReadVariableOp_32r
7sequential_10/lstm_10/lstm_cell_21/split/ReadVariableOp7sequential_10/lstm_10/lstm_cell_21/split/ReadVariableOp2v
9sequential_10/lstm_10/lstm_cell_21/split_1/ReadVariableOp9sequential_10/lstm_10/lstm_cell_21/split_1/ReadVariableOp2:
sequential_10/lstm_10/whilesequential_10/lstm_10/while:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
input_11

¸
)__inference_lstm_10_layer_call_fn_4685651
inputs_0
unknown:	
	unknown_0:	
	unknown_1:	@
identity¢StatefulPartitionedCallè
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
GPU 2J 8 *M
fHRF
D__inference_lstm_10_layer_call_and_return_conditional_losses_4684003o
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
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
­
©
(sequential_10_lstm_10_while_body_4683670H
Dsequential_10_lstm_10_while_sequential_10_lstm_10_while_loop_counterN
Jsequential_10_lstm_10_while_sequential_10_lstm_10_while_maximum_iterations+
'sequential_10_lstm_10_while_placeholder-
)sequential_10_lstm_10_while_placeholder_1-
)sequential_10_lstm_10_while_placeholder_2-
)sequential_10_lstm_10_while_placeholder_3G
Csequential_10_lstm_10_while_sequential_10_lstm_10_strided_slice_1_0
sequential_10_lstm_10_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_10_tensorarrayunstack_tensorlistfromtensor_0[
Hsequential_10_lstm_10_while_lstm_cell_21_split_readvariableop_resource_0:	Y
Jsequential_10_lstm_10_while_lstm_cell_21_split_1_readvariableop_resource_0:	U
Bsequential_10_lstm_10_while_lstm_cell_21_readvariableop_resource_0:	@(
$sequential_10_lstm_10_while_identity*
&sequential_10_lstm_10_while_identity_1*
&sequential_10_lstm_10_while_identity_2*
&sequential_10_lstm_10_while_identity_3*
&sequential_10_lstm_10_while_identity_4*
&sequential_10_lstm_10_while_identity_5E
Asequential_10_lstm_10_while_sequential_10_lstm_10_strided_slice_1
}sequential_10_lstm_10_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_10_tensorarrayunstack_tensorlistfromtensorY
Fsequential_10_lstm_10_while_lstm_cell_21_split_readvariableop_resource:	W
Hsequential_10_lstm_10_while_lstm_cell_21_split_1_readvariableop_resource:	S
@sequential_10_lstm_10_while_lstm_cell_21_readvariableop_resource:	@¢7sequential_10/lstm_10/while/lstm_cell_21/ReadVariableOp¢9sequential_10/lstm_10/while/lstm_cell_21/ReadVariableOp_1¢9sequential_10/lstm_10/while/lstm_cell_21/ReadVariableOp_2¢9sequential_10/lstm_10/while/lstm_cell_21/ReadVariableOp_3¢=sequential_10/lstm_10/while/lstm_cell_21/split/ReadVariableOp¢?sequential_10/lstm_10/while/lstm_cell_21/split_1/ReadVariableOp
Msequential_10/lstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
?sequential_10/lstm_10/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsequential_10_lstm_10_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_10_tensorarrayunstack_tensorlistfromtensor_0'sequential_10_lstm_10_while_placeholderVsequential_10/lstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0
8sequential_10/lstm_10/while/lstm_cell_21/ones_like/ShapeShape)sequential_10_lstm_10_while_placeholder_2*
T0*
_output_shapes
:}
8sequential_10/lstm_10/while/lstm_cell_21/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?ò
2sequential_10/lstm_10/while/lstm_cell_21/ones_likeFillAsequential_10/lstm_10/while/lstm_cell_21/ones_like/Shape:output:0Asequential_10/lstm_10/while/lstm_cell_21/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@z
8sequential_10/lstm_10/while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ç
=sequential_10/lstm_10/while/lstm_cell_21/split/ReadVariableOpReadVariableOpHsequential_10_lstm_10_while_lstm_cell_21_split_readvariableop_resource_0*
_output_shapes
:	*
dtype0
.sequential_10/lstm_10/while/lstm_cell_21/splitSplitAsequential_10/lstm_10/while/lstm_cell_21/split/split_dim:output:0Esequential_10/lstm_10/while/lstm_cell_21/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_splitì
/sequential_10/lstm_10/while/lstm_cell_21/MatMulMatMulFsequential_10/lstm_10/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_10/lstm_10/while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@î
1sequential_10/lstm_10/while/lstm_cell_21/MatMul_1MatMulFsequential_10/lstm_10/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_10/lstm_10/while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@î
1sequential_10/lstm_10/while/lstm_cell_21/MatMul_2MatMulFsequential_10/lstm_10/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_10/lstm_10/while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@î
1sequential_10/lstm_10/while/lstm_cell_21/MatMul_3MatMulFsequential_10/lstm_10/while/TensorArrayV2Read/TensorListGetItem:item:07sequential_10/lstm_10/while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
:sequential_10/lstm_10/while/lstm_cell_21/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Ç
?sequential_10/lstm_10/while/lstm_cell_21/split_1/ReadVariableOpReadVariableOpJsequential_10_lstm_10_while_lstm_cell_21_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0
0sequential_10/lstm_10/while/lstm_cell_21/split_1SplitCsequential_10/lstm_10/while/lstm_cell_21/split_1/split_dim:output:0Gsequential_10/lstm_10/while/lstm_cell_21/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_splitã
0sequential_10/lstm_10/while/lstm_cell_21/BiasAddBiasAdd9sequential_10/lstm_10/while/lstm_cell_21/MatMul:product:09sequential_10/lstm_10/while/lstm_cell_21/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ç
2sequential_10/lstm_10/while/lstm_cell_21/BiasAdd_1BiasAdd;sequential_10/lstm_10/while/lstm_cell_21/MatMul_1:product:09sequential_10/lstm_10/while/lstm_cell_21/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ç
2sequential_10/lstm_10/while/lstm_cell_21/BiasAdd_2BiasAdd;sequential_10/lstm_10/while/lstm_cell_21/MatMul_2:product:09sequential_10/lstm_10/while/lstm_cell_21/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ç
2sequential_10/lstm_10/while/lstm_cell_21/BiasAdd_3BiasAdd;sequential_10/lstm_10/while/lstm_cell_21/MatMul_3:product:09sequential_10/lstm_10/while/lstm_cell_21/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Í
,sequential_10/lstm_10/while/lstm_cell_21/mulMul)sequential_10_lstm_10_while_placeholder_2;sequential_10/lstm_10/while/lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ï
.sequential_10/lstm_10/while/lstm_cell_21/mul_1Mul)sequential_10_lstm_10_while_placeholder_2;sequential_10/lstm_10/while/lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ï
.sequential_10/lstm_10/while/lstm_cell_21/mul_2Mul)sequential_10_lstm_10_while_placeholder_2;sequential_10/lstm_10/while/lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ï
.sequential_10/lstm_10/while/lstm_cell_21/mul_3Mul)sequential_10_lstm_10_while_placeholder_2;sequential_10/lstm_10/while/lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@»
7sequential_10/lstm_10/while/lstm_cell_21/ReadVariableOpReadVariableOpBsequential_10_lstm_10_while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
<sequential_10/lstm_10/while/lstm_cell_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
>sequential_10/lstm_10/while/lstm_cell_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   
>sequential_10/lstm_10/while/lstm_cell_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¸
6sequential_10/lstm_10/while/lstm_cell_21/strided_sliceStridedSlice?sequential_10/lstm_10/while/lstm_cell_21/ReadVariableOp:value:0Esequential_10/lstm_10/while/lstm_cell_21/strided_slice/stack:output:0Gsequential_10/lstm_10/while/lstm_cell_21/strided_slice/stack_1:output:0Gsequential_10/lstm_10/while/lstm_cell_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskà
1sequential_10/lstm_10/while/lstm_cell_21/MatMul_4MatMul0sequential_10/lstm_10/while/lstm_cell_21/mul:z:0?sequential_10/lstm_10/while/lstm_cell_21/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ß
,sequential_10/lstm_10/while/lstm_cell_21/addAddV29sequential_10/lstm_10/while/lstm_cell_21/BiasAdd:output:0;sequential_10/lstm_10/while/lstm_cell_21/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
0sequential_10/lstm_10/while/lstm_cell_21/SigmoidSigmoid0sequential_10/lstm_10/while/lstm_cell_21/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@½
9sequential_10/lstm_10/while/lstm_cell_21/ReadVariableOp_1ReadVariableOpBsequential_10_lstm_10_while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
>sequential_10/lstm_10/while/lstm_cell_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   
@sequential_10/lstm_10/while/lstm_cell_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
@sequential_10/lstm_10/while/lstm_cell_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Â
8sequential_10/lstm_10/while/lstm_cell_21/strided_slice_1StridedSliceAsequential_10/lstm_10/while/lstm_cell_21/ReadVariableOp_1:value:0Gsequential_10/lstm_10/while/lstm_cell_21/strided_slice_1/stack:output:0Isequential_10/lstm_10/while/lstm_cell_21/strided_slice_1/stack_1:output:0Isequential_10/lstm_10/while/lstm_cell_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskä
1sequential_10/lstm_10/while/lstm_cell_21/MatMul_5MatMul2sequential_10/lstm_10/while/lstm_cell_21/mul_1:z:0Asequential_10/lstm_10/while/lstm_cell_21/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ã
.sequential_10/lstm_10/while/lstm_cell_21/add_1AddV2;sequential_10/lstm_10/while/lstm_cell_21/BiasAdd_1:output:0;sequential_10/lstm_10/while/lstm_cell_21/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@£
2sequential_10/lstm_10/while/lstm_cell_21/Sigmoid_1Sigmoid2sequential_10/lstm_10/while/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ê
.sequential_10/lstm_10/while/lstm_cell_21/mul_4Mul6sequential_10/lstm_10/while/lstm_cell_21/Sigmoid_1:y:0)sequential_10_lstm_10_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@½
9sequential_10/lstm_10/while/lstm_cell_21/ReadVariableOp_2ReadVariableOpBsequential_10_lstm_10_while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
>sequential_10/lstm_10/while/lstm_cell_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       
@sequential_10/lstm_10/while/lstm_cell_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   
@sequential_10/lstm_10/while/lstm_cell_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Â
8sequential_10/lstm_10/while/lstm_cell_21/strided_slice_2StridedSliceAsequential_10/lstm_10/while/lstm_cell_21/ReadVariableOp_2:value:0Gsequential_10/lstm_10/while/lstm_cell_21/strided_slice_2/stack:output:0Isequential_10/lstm_10/while/lstm_cell_21/strided_slice_2/stack_1:output:0Isequential_10/lstm_10/while/lstm_cell_21/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskä
1sequential_10/lstm_10/while/lstm_cell_21/MatMul_6MatMul2sequential_10/lstm_10/while/lstm_cell_21/mul_2:z:0Asequential_10/lstm_10/while/lstm_cell_21/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ã
.sequential_10/lstm_10/while/lstm_cell_21/add_2AddV2;sequential_10/lstm_10/while/lstm_cell_21/BiasAdd_2:output:0;sequential_10/lstm_10/while/lstm_cell_21/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
-sequential_10/lstm_10/while/lstm_cell_21/TanhTanh2sequential_10/lstm_10/while/lstm_cell_21/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ð
.sequential_10/lstm_10/while/lstm_cell_21/mul_5Mul4sequential_10/lstm_10/while/lstm_cell_21/Sigmoid:y:01sequential_10/lstm_10/while/lstm_cell_21/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ñ
.sequential_10/lstm_10/while/lstm_cell_21/add_3AddV22sequential_10/lstm_10/while/lstm_cell_21/mul_4:z:02sequential_10/lstm_10/while/lstm_cell_21/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@½
9sequential_10/lstm_10/while/lstm_cell_21/ReadVariableOp_3ReadVariableOpBsequential_10_lstm_10_while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
>sequential_10/lstm_10/while/lstm_cell_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   
@sequential_10/lstm_10/while/lstm_cell_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
@sequential_10/lstm_10/while/lstm_cell_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Â
8sequential_10/lstm_10/while/lstm_cell_21/strided_slice_3StridedSliceAsequential_10/lstm_10/while/lstm_cell_21/ReadVariableOp_3:value:0Gsequential_10/lstm_10/while/lstm_cell_21/strided_slice_3/stack:output:0Isequential_10/lstm_10/while/lstm_cell_21/strided_slice_3/stack_1:output:0Isequential_10/lstm_10/while/lstm_cell_21/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskä
1sequential_10/lstm_10/while/lstm_cell_21/MatMul_7MatMul2sequential_10/lstm_10/while/lstm_cell_21/mul_3:z:0Asequential_10/lstm_10/while/lstm_cell_21/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ã
.sequential_10/lstm_10/while/lstm_cell_21/add_4AddV2;sequential_10/lstm_10/while/lstm_cell_21/BiasAdd_3:output:0;sequential_10/lstm_10/while/lstm_cell_21/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@£
2sequential_10/lstm_10/while/lstm_cell_21/Sigmoid_2Sigmoid2sequential_10/lstm_10/while/lstm_cell_21/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
/sequential_10/lstm_10/while/lstm_cell_21/Tanh_1Tanh2sequential_10/lstm_10/while/lstm_cell_21/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ô
.sequential_10/lstm_10/while/lstm_cell_21/mul_6Mul6sequential_10/lstm_10/while/lstm_cell_21/Sigmoid_2:y:03sequential_10/lstm_10/while/lstm_cell_21/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
@sequential_10/lstm_10/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)sequential_10_lstm_10_while_placeholder_1'sequential_10_lstm_10_while_placeholder2sequential_10/lstm_10/while/lstm_cell_21/mul_6:z:0*
_output_shapes
: *
element_dtype0:éèÒc
!sequential_10/lstm_10/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
sequential_10/lstm_10/while/addAddV2'sequential_10_lstm_10_while_placeholder*sequential_10/lstm_10/while/add/y:output:0*
T0*
_output_shapes
: e
#sequential_10/lstm_10/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¿
!sequential_10/lstm_10/while/add_1AddV2Dsequential_10_lstm_10_while_sequential_10_lstm_10_while_loop_counter,sequential_10/lstm_10/while/add_1/y:output:0*
T0*
_output_shapes
: 
$sequential_10/lstm_10/while/IdentityIdentity%sequential_10/lstm_10/while/add_1:z:0!^sequential_10/lstm_10/while/NoOp*
T0*
_output_shapes
: Â
&sequential_10/lstm_10/while/Identity_1IdentityJsequential_10_lstm_10_while_sequential_10_lstm_10_while_maximum_iterations!^sequential_10/lstm_10/while/NoOp*
T0*
_output_shapes
: 
&sequential_10/lstm_10/while/Identity_2Identity#sequential_10/lstm_10/while/add:z:0!^sequential_10/lstm_10/while/NoOp*
T0*
_output_shapes
: Û
&sequential_10/lstm_10/while/Identity_3IdentityPsequential_10/lstm_10/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^sequential_10/lstm_10/while/NoOp*
T0*
_output_shapes
: :éèÒ»
&sequential_10/lstm_10/while/Identity_4Identity2sequential_10/lstm_10/while/lstm_cell_21/mul_6:z:0!^sequential_10/lstm_10/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@»
&sequential_10/lstm_10/while/Identity_5Identity2sequential_10/lstm_10/while/lstm_cell_21/add_3:z:0!^sequential_10/lstm_10/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ò
 sequential_10/lstm_10/while/NoOpNoOp8^sequential_10/lstm_10/while/lstm_cell_21/ReadVariableOp:^sequential_10/lstm_10/while/lstm_cell_21/ReadVariableOp_1:^sequential_10/lstm_10/while/lstm_cell_21/ReadVariableOp_2:^sequential_10/lstm_10/while/lstm_cell_21/ReadVariableOp_3>^sequential_10/lstm_10/while/lstm_cell_21/split/ReadVariableOp@^sequential_10/lstm_10/while/lstm_cell_21/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$sequential_10_lstm_10_while_identity-sequential_10/lstm_10/while/Identity:output:0"Y
&sequential_10_lstm_10_while_identity_1/sequential_10/lstm_10/while/Identity_1:output:0"Y
&sequential_10_lstm_10_while_identity_2/sequential_10/lstm_10/while/Identity_2:output:0"Y
&sequential_10_lstm_10_while_identity_3/sequential_10/lstm_10/while/Identity_3:output:0"Y
&sequential_10_lstm_10_while_identity_4/sequential_10/lstm_10/while/Identity_4:output:0"Y
&sequential_10_lstm_10_while_identity_5/sequential_10/lstm_10/while/Identity_5:output:0"
@sequential_10_lstm_10_while_lstm_cell_21_readvariableop_resourceBsequential_10_lstm_10_while_lstm_cell_21_readvariableop_resource_0"
Hsequential_10_lstm_10_while_lstm_cell_21_split_1_readvariableop_resourceJsequential_10_lstm_10_while_lstm_cell_21_split_1_readvariableop_resource_0"
Fsequential_10_lstm_10_while_lstm_cell_21_split_readvariableop_resourceHsequential_10_lstm_10_while_lstm_cell_21_split_readvariableop_resource_0"
Asequential_10_lstm_10_while_sequential_10_lstm_10_strided_slice_1Csequential_10_lstm_10_while_sequential_10_lstm_10_strided_slice_1_0"
}sequential_10_lstm_10_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_10_tensorarrayunstack_tensorlistfromtensorsequential_10_lstm_10_while_tensorarrayv2read_tensorlistgetitem_sequential_10_lstm_10_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2r
7sequential_10/lstm_10/while/lstm_cell_21/ReadVariableOp7sequential_10/lstm_10/while/lstm_cell_21/ReadVariableOp2v
9sequential_10/lstm_10/while/lstm_cell_21/ReadVariableOp_19sequential_10/lstm_10/while/lstm_cell_21/ReadVariableOp_12v
9sequential_10/lstm_10/while/lstm_cell_21/ReadVariableOp_29sequential_10/lstm_10/while/lstm_cell_21/ReadVariableOp_22v
9sequential_10/lstm_10/while/lstm_cell_21/ReadVariableOp_39sequential_10/lstm_10/while/lstm_cell_21/ReadVariableOp_32~
=sequential_10/lstm_10/while/lstm_cell_21/split/ReadVariableOp=sequential_10/lstm_10/while/lstm_cell_21/split/ReadVariableOp2
?sequential_10/lstm_10/while/lstm_cell_21/split_1/ReadVariableOp?sequential_10/lstm_10/while/lstm_cell_21/split_1/ReadVariableOp: 
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
ö[
¬
I__inference_lstm_cell_21_layer_call_and_return_conditional_losses_4686983

inputs
states_0
states_10
split_readvariableop_resource:	.
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
:	*
dtype0
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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
Ó
Ã
J__inference_sequential_10_layer_call_and_return_conditional_losses_4685006
input_11"
lstm_10_4684988:	
lstm_10_4684990:	"
lstm_10_4684992:	@"
dense_10_4684995:@
dense_10_4684997:"
dense_11_4685000:
dense_11_4685002:
identity¢ dense_10/StatefulPartitionedCall¢ dense_11/StatefulPartitionedCall¢lstm_10/StatefulPartitionedCall
lstm_10/StatefulPartitionedCallStatefulPartitionedCallinput_11lstm_10_4684988lstm_10_4684990lstm_10_4684992*
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
GPU 2J 8 *M
fHRF
D__inference_lstm_10_layer_call_and_return_conditional_losses_4684513
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(lstm_10/StatefulPartitionedCall:output:0dense_10_4684995dense_10_4684997*
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
GPU 2J 8 *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_4684532
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_4685000dense_11_4685002*
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
GPU 2J 8 *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_4684548x
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^lstm_10/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ
: : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
lstm_10/StatefulPartitionedCalllstm_10/StatefulPartitionedCall:U Q
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

"
_user_specified_name
input_11
º
È
while_cond_4683933
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4683933___redundant_placeholder05
1while_while_cond_4683933___redundant_placeholder15
1while_while_cond_4683933___redundant_placeholder25
1while_while_cond_4683933___redundant_placeholder3
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
ì
ê
D__inference_lstm_10_layer_call_and_return_conditional_losses_4686206
inputs_0=
*lstm_cell_21_split_readvariableop_resource:	;
,lstm_cell_21_split_1_readvariableop_resource:	7
$lstm_cell_21_readvariableop_resource:	@
identity¢lstm_cell_21/ReadVariableOp¢lstm_cell_21/ReadVariableOp_1¢lstm_cell_21/ReadVariableOp_2¢lstm_cell_21/ReadVariableOp_3¢!lstm_cell_21/split/ReadVariableOp¢#lstm_cell_21/split_1/ReadVariableOp¢while=
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskZ
lstm_cell_21/ones_like/ShapeShapezeros:output:0*
T0*
_output_shapes
:a
lstm_cell_21/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
lstm_cell_21/ones_likeFill%lstm_cell_21/ones_like/Shape:output:0%lstm_cell_21/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@_
lstm_cell_21/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_21/dropout/MulMullstm_cell_21/ones_like:output:0#lstm_cell_21/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
lstm_cell_21/dropout/ShapeShapelstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:¦
1lstm_cell_21/dropout/random_uniform/RandomUniformRandomUniform#lstm_cell_21/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0h
#lstm_cell_21/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Í
!lstm_cell_21/dropout/GreaterEqualGreaterEqual:lstm_cell_21/dropout/random_uniform/RandomUniform:output:0,lstm_cell_21/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/dropout/CastCast%lstm_cell_21/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/dropout/Mul_1Mullstm_cell_21/dropout/Mul:z:0lstm_cell_21/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
lstm_cell_21/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_21/dropout_1/MulMullstm_cell_21/ones_like:output:0%lstm_cell_21/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_21/dropout_1/ShapeShapelstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:ª
3lstm_cell_21/dropout_1/random_uniform/RandomUniformRandomUniform%lstm_cell_21/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0j
%lstm_cell_21/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ó
#lstm_cell_21/dropout_1/GreaterEqualGreaterEqual<lstm_cell_21/dropout_1/random_uniform/RandomUniform:output:0.lstm_cell_21/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/dropout_1/CastCast'lstm_cell_21/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/dropout_1/Mul_1Mullstm_cell_21/dropout_1/Mul:z:0lstm_cell_21/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
lstm_cell_21/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_21/dropout_2/MulMullstm_cell_21/ones_like:output:0%lstm_cell_21/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_21/dropout_2/ShapeShapelstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:ª
3lstm_cell_21/dropout_2/random_uniform/RandomUniformRandomUniform%lstm_cell_21/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0j
%lstm_cell_21/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ó
#lstm_cell_21/dropout_2/GreaterEqualGreaterEqual<lstm_cell_21/dropout_2/random_uniform/RandomUniform:output:0.lstm_cell_21/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/dropout_2/CastCast'lstm_cell_21/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/dropout_2/Mul_1Mullstm_cell_21/dropout_2/Mul:z:0lstm_cell_21/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@a
lstm_cell_21/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?
lstm_cell_21/dropout_3/MulMullstm_cell_21/ones_like:output:0%lstm_cell_21/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_21/dropout_3/ShapeShapelstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:ª
3lstm_cell_21/dropout_3/random_uniform/RandomUniformRandomUniform%lstm_cell_21/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0j
%lstm_cell_21/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>Ó
#lstm_cell_21/dropout_3/GreaterEqualGreaterEqual<lstm_cell_21/dropout_3/random_uniform/RandomUniform:output:0.lstm_cell_21/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/dropout_3/CastCast'lstm_cell_21/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/dropout_3/Mul_1Mullstm_cell_21/dropout_3/Mul:z:0lstm_cell_21/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@^
lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!lstm_cell_21/split/ReadVariableOpReadVariableOp*lstm_cell_21_split_readvariableop_resource*
_output_shapes
:	*
dtype0Å
lstm_cell_21/splitSplit%lstm_cell_21/split/split_dim:output:0)lstm_cell_21/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split
lstm_cell_21/MatMulMatMulstrided_slice_2:output:0lstm_cell_21/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/MatMul_1MatMulstrided_slice_2:output:0lstm_cell_21/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/MatMul_2MatMulstrided_slice_2:output:0lstm_cell_21/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/MatMul_3MatMulstrided_slice_2:output:0lstm_cell_21/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@`
lstm_cell_21/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
#lstm_cell_21/split_1/ReadVariableOpReadVariableOp,lstm_cell_21_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0»
lstm_cell_21/split_1Split'lstm_cell_21/split_1/split_dim:output:0+lstm_cell_21/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split
lstm_cell_21/BiasAddBiasAddlstm_cell_21/MatMul:product:0lstm_cell_21/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/BiasAdd_1BiasAddlstm_cell_21/MatMul_1:product:0lstm_cell_21/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/BiasAdd_2BiasAddlstm_cell_21/MatMul_2:product:0lstm_cell_21/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/BiasAdd_3BiasAddlstm_cell_21/MatMul_3:product:0lstm_cell_21/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
lstm_cell_21/mulMulzeros:output:0lstm_cell_21/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell_21/mul_1Mulzeros:output:0 lstm_cell_21/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell_21/mul_2Mulzeros:output:0 lstm_cell_21/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell_21/mul_3Mulzeros:output:0 lstm_cell_21/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/ReadVariableOpReadVariableOp$lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0q
 lstm_cell_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        s
"lstm_cell_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   s
"lstm_cell_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¬
lstm_cell_21/strided_sliceStridedSlice#lstm_cell_21/ReadVariableOp:value:0)lstm_cell_21/strided_slice/stack:output:0+lstm_cell_21/strided_slice/stack_1:output:0+lstm_cell_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_21/MatMul_4MatMullstm_cell_21/mul:z:0#lstm_cell_21/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/addAddV2lstm_cell_21/BiasAdd:output:0lstm_cell_21/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
lstm_cell_21/SigmoidSigmoidlstm_cell_21/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/ReadVariableOp_1ReadVariableOp$lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   u
$lstm_cell_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       u
$lstm_cell_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_21/strided_slice_1StridedSlice%lstm_cell_21/ReadVariableOp_1:value:0+lstm_cell_21/strided_slice_1/stack:output:0-lstm_cell_21/strided_slice_1/stack_1:output:0-lstm_cell_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_21/MatMul_5MatMullstm_cell_21/mul_1:z:0%lstm_cell_21/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/add_1AddV2lstm_cell_21/BiasAdd_1:output:0lstm_cell_21/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_21/Sigmoid_1Sigmoidlstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
lstm_cell_21/mul_4Mullstm_cell_21/Sigmoid_1:y:0zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/ReadVariableOp_2ReadVariableOp$lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       u
$lstm_cell_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   u
$lstm_cell_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_21/strided_slice_2StridedSlice%lstm_cell_21/ReadVariableOp_2:value:0+lstm_cell_21/strided_slice_2/stack:output:0-lstm_cell_21/strided_slice_2/stack_1:output:0-lstm_cell_21/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_21/MatMul_6MatMullstm_cell_21/mul_2:z:0%lstm_cell_21/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/add_2AddV2lstm_cell_21/BiasAdd_2:output:0lstm_cell_21/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@c
lstm_cell_21/TanhTanhlstm_cell_21/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@|
lstm_cell_21/mul_5Mullstm_cell_21/Sigmoid:y:0lstm_cell_21/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@}
lstm_cell_21/add_3AddV2lstm_cell_21/mul_4:z:0lstm_cell_21/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/ReadVariableOp_3ReadVariableOp$lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0s
"lstm_cell_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   u
$lstm_cell_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        u
$lstm_cell_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¶
lstm_cell_21/strided_slice_3StridedSlice%lstm_cell_21/ReadVariableOp_3:value:0+lstm_cell_21/strided_slice_3/stack:output:0-lstm_cell_21/strided_slice_3/stack_1:output:0-lstm_cell_21/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
lstm_cell_21/MatMul_7MatMullstm_cell_21/mul_3:z:0%lstm_cell_21/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/add_4AddV2lstm_cell_21/BiasAdd_3:output:0lstm_cell_21/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_cell_21/Sigmoid_2Sigmoidlstm_cell_21/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@e
lstm_cell_21/Tanh_1Tanhlstm_cell_21/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_cell_21/mul_6Mullstm_cell_21/Sigmoid_2:y:0lstm_cell_21/Tanh_1:y:0*
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0*lstm_cell_21_split_readvariableop_resource,lstm_cell_21_split_1_readvariableop_resource$lstm_cell_21_readvariableop_resource*
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
while_body_4686047*
condR
while_cond_4686046*K
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
NoOpNoOp^lstm_cell_21/ReadVariableOp^lstm_cell_21/ReadVariableOp_1^lstm_cell_21/ReadVariableOp_2^lstm_cell_21/ReadVariableOp_3"^lstm_cell_21/split/ReadVariableOp$^lstm_cell_21/split_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2:
lstm_cell_21/ReadVariableOplstm_cell_21/ReadVariableOp2>
lstm_cell_21/ReadVariableOp_1lstm_cell_21/ReadVariableOp_12>
lstm_cell_21/ReadVariableOp_2lstm_cell_21/ReadVariableOp_22>
lstm_cell_21/ReadVariableOp_3lstm_cell_21/ReadVariableOp_32F
!lstm_cell_21/split/ReadVariableOp!lstm_cell_21/split/ReadVariableOp2J
#lstm_cell_21/split_1/ReadVariableOp#lstm_cell_21/split_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
í
÷
.__inference_lstm_cell_21_layer_call_fn_4686784

inputs
states_0
states_1
unknown:	
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
I__inference_lstm_cell_21_layer_call_and_return_conditional_losses_4683920o
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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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
Í
Á
J__inference_sequential_10_layer_call_and_return_conditional_losses_4684555

inputs"
lstm_10_4684514:	
lstm_10_4684516:	"
lstm_10_4684518:	@"
dense_10_4684533:@
dense_10_4684535:"
dense_11_4684549:
dense_11_4684551:
identity¢ dense_10/StatefulPartitionedCall¢ dense_11/StatefulPartitionedCall¢lstm_10/StatefulPartitionedCall
lstm_10/StatefulPartitionedCallStatefulPartitionedCallinputslstm_10_4684514lstm_10_4684516lstm_10_4684518*
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
GPU 2J 8 *M
fHRF
D__inference_lstm_10_layer_call_and_return_conditional_losses_4684513
 dense_10/StatefulPartitionedCallStatefulPartitionedCall(lstm_10/StatefulPartitionedCall:output:0dense_10_4684533dense_10_4684535*
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
GPU 2J 8 *N
fIRG
E__inference_dense_10_layer_call_and_return_conditional_losses_4684532
 dense_11/StatefulPartitionedCallStatefulPartitionedCall)dense_10/StatefulPartitionedCall:output:0dense_11_4684549dense_11_4684551*
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
GPU 2J 8 *N
fIRG
E__inference_dense_11_layer_call_and_return_conditional_losses_4684548x
IdentityIdentity)dense_11/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ®
NoOpNoOp!^dense_10/StatefulPartitionedCall!^dense_11/StatefulPartitionedCall ^lstm_10/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ
: : : : : : : 2D
 dense_10/StatefulPartitionedCall dense_10/StatefulPartitionedCall2D
 dense_11/StatefulPartitionedCall dense_11/StatefulPartitionedCall2B
lstm_10/StatefulPartitionedCalllstm_10/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
~
½
lstm_10_while_body_4685173,
(lstm_10_while_lstm_10_while_loop_counter2
.lstm_10_while_lstm_10_while_maximum_iterations
lstm_10_while_placeholder
lstm_10_while_placeholder_1
lstm_10_while_placeholder_2
lstm_10_while_placeholder_3+
'lstm_10_while_lstm_10_strided_slice_1_0g
clstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_10_while_lstm_cell_21_split_readvariableop_resource_0:	K
<lstm_10_while_lstm_cell_21_split_1_readvariableop_resource_0:	G
4lstm_10_while_lstm_cell_21_readvariableop_resource_0:	@
lstm_10_while_identity
lstm_10_while_identity_1
lstm_10_while_identity_2
lstm_10_while_identity_3
lstm_10_while_identity_4
lstm_10_while_identity_5)
%lstm_10_while_lstm_10_strided_slice_1e
alstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensorK
8lstm_10_while_lstm_cell_21_split_readvariableop_resource:	I
:lstm_10_while_lstm_cell_21_split_1_readvariableop_resource:	E
2lstm_10_while_lstm_cell_21_readvariableop_resource:	@¢)lstm_10/while/lstm_cell_21/ReadVariableOp¢+lstm_10/while/lstm_cell_21/ReadVariableOp_1¢+lstm_10/while/lstm_cell_21/ReadVariableOp_2¢+lstm_10/while/lstm_cell_21/ReadVariableOp_3¢/lstm_10/while/lstm_cell_21/split/ReadVariableOp¢1lstm_10/while/lstm_cell_21/split_1/ReadVariableOp
?lstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Î
1lstm_10/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensor_0lstm_10_while_placeholderHlstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0u
*lstm_10/while/lstm_cell_21/ones_like/ShapeShapelstm_10_while_placeholder_2*
T0*
_output_shapes
:o
*lstm_10/while/lstm_cell_21/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?È
$lstm_10/while/lstm_cell_21/ones_likeFill3lstm_10/while/lstm_cell_21/ones_like/Shape:output:03lstm_10/while/lstm_cell_21/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
*lstm_10/while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :«
/lstm_10/while/lstm_cell_21/split/ReadVariableOpReadVariableOp:lstm_10_while_lstm_cell_21_split_readvariableop_resource_0*
_output_shapes
:	*
dtype0ï
 lstm_10/while/lstm_cell_21/splitSplit3lstm_10/while/lstm_cell_21/split/split_dim:output:07lstm_10/while/lstm_cell_21/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_splitÂ
!lstm_10/while/lstm_cell_21/MatMulMatMul8lstm_10/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_10/while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ä
#lstm_10/while/lstm_cell_21/MatMul_1MatMul8lstm_10/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_10/while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ä
#lstm_10/while/lstm_cell_21/MatMul_2MatMul8lstm_10/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_10/while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ä
#lstm_10/while/lstm_cell_21/MatMul_3MatMul8lstm_10/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_10/while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
,lstm_10/while/lstm_cell_21/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : «
1lstm_10/while/lstm_cell_21/split_1/ReadVariableOpReadVariableOp<lstm_10_while_lstm_cell_21_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0å
"lstm_10/while/lstm_cell_21/split_1Split5lstm_10/while/lstm_cell_21/split_1/split_dim:output:09lstm_10/while/lstm_cell_21/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split¹
"lstm_10/while/lstm_cell_21/BiasAddBiasAdd+lstm_10/while/lstm_cell_21/MatMul:product:0+lstm_10/while/lstm_cell_21/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@½
$lstm_10/while/lstm_cell_21/BiasAdd_1BiasAdd-lstm_10/while/lstm_cell_21/MatMul_1:product:0+lstm_10/while/lstm_cell_21/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@½
$lstm_10/while/lstm_cell_21/BiasAdd_2BiasAdd-lstm_10/while/lstm_cell_21/MatMul_2:product:0+lstm_10/while/lstm_cell_21/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@½
$lstm_10/while/lstm_cell_21/BiasAdd_3BiasAdd-lstm_10/while/lstm_cell_21/MatMul_3:product:0+lstm_10/while/lstm_cell_21/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@£
lstm_10/while/lstm_cell_21/mulMullstm_10_while_placeholder_2-lstm_10/while/lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
 lstm_10/while/lstm_cell_21/mul_1Mullstm_10_while_placeholder_2-lstm_10/while/lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
 lstm_10/while/lstm_cell_21/mul_2Mullstm_10_while_placeholder_2-lstm_10/while/lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
 lstm_10/while/lstm_cell_21/mul_3Mullstm_10_while_placeholder_2-lstm_10/while/lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)lstm_10/while/lstm_cell_21/ReadVariableOpReadVariableOp4lstm_10_while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
.lstm_10/while/lstm_cell_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
0lstm_10/while/lstm_cell_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   
0lstm_10/while/lstm_cell_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ò
(lstm_10/while/lstm_cell_21/strided_sliceStridedSlice1lstm_10/while/lstm_cell_21/ReadVariableOp:value:07lstm_10/while/lstm_cell_21/strided_slice/stack:output:09lstm_10/while/lstm_cell_21/strided_slice/stack_1:output:09lstm_10/while/lstm_cell_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¶
#lstm_10/while/lstm_cell_21/MatMul_4MatMul"lstm_10/while/lstm_cell_21/mul:z:01lstm_10/while/lstm_cell_21/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@µ
lstm_10/while/lstm_cell_21/addAddV2+lstm_10/while/lstm_cell_21/BiasAdd:output:0-lstm_10/while/lstm_cell_21/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"lstm_10/while/lstm_cell_21/SigmoidSigmoid"lstm_10/while/lstm_cell_21/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
+lstm_10/while/lstm_cell_21/ReadVariableOp_1ReadVariableOp4lstm_10_while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
0lstm_10/while/lstm_cell_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   
2lstm_10/while/lstm_cell_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
2lstm_10/while/lstm_cell_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ü
*lstm_10/while/lstm_cell_21/strided_slice_1StridedSlice3lstm_10/while/lstm_cell_21/ReadVariableOp_1:value:09lstm_10/while/lstm_cell_21/strided_slice_1/stack:output:0;lstm_10/while/lstm_cell_21/strided_slice_1/stack_1:output:0;lstm_10/while/lstm_cell_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskº
#lstm_10/while/lstm_cell_21/MatMul_5MatMul$lstm_10/while/lstm_cell_21/mul_1:z:03lstm_10/while/lstm_cell_21/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¹
 lstm_10/while/lstm_cell_21/add_1AddV2-lstm_10/while/lstm_cell_21/BiasAdd_1:output:0-lstm_10/while/lstm_cell_21/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$lstm_10/while/lstm_cell_21/Sigmoid_1Sigmoid$lstm_10/while/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
 lstm_10/while/lstm_cell_21/mul_4Mul(lstm_10/while/lstm_cell_21/Sigmoid_1:y:0lstm_10_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
+lstm_10/while/lstm_cell_21/ReadVariableOp_2ReadVariableOp4lstm_10_while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
0lstm_10/while/lstm_cell_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       
2lstm_10/while/lstm_cell_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   
2lstm_10/while/lstm_cell_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ü
*lstm_10/while/lstm_cell_21/strided_slice_2StridedSlice3lstm_10/while/lstm_cell_21/ReadVariableOp_2:value:09lstm_10/while/lstm_cell_21/strided_slice_2/stack:output:0;lstm_10/while/lstm_cell_21/strided_slice_2/stack_1:output:0;lstm_10/while/lstm_cell_21/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskº
#lstm_10/while/lstm_cell_21/MatMul_6MatMul$lstm_10/while/lstm_cell_21/mul_2:z:03lstm_10/while/lstm_cell_21/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¹
 lstm_10/while/lstm_cell_21/add_2AddV2-lstm_10/while/lstm_cell_21/BiasAdd_2:output:0-lstm_10/while/lstm_cell_21/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_10/while/lstm_cell_21/TanhTanh$lstm_10/while/lstm_cell_21/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¦
 lstm_10/while/lstm_cell_21/mul_5Mul&lstm_10/while/lstm_cell_21/Sigmoid:y:0#lstm_10/while/lstm_cell_21/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@§
 lstm_10/while/lstm_cell_21/add_3AddV2$lstm_10/while/lstm_cell_21/mul_4:z:0$lstm_10/while/lstm_cell_21/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
+lstm_10/while/lstm_cell_21/ReadVariableOp_3ReadVariableOp4lstm_10_while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
0lstm_10/while/lstm_cell_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   
2lstm_10/while/lstm_cell_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
2lstm_10/while/lstm_cell_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ü
*lstm_10/while/lstm_cell_21/strided_slice_3StridedSlice3lstm_10/while/lstm_cell_21/ReadVariableOp_3:value:09lstm_10/while/lstm_cell_21/strided_slice_3/stack:output:0;lstm_10/while/lstm_cell_21/strided_slice_3/stack_1:output:0;lstm_10/while/lstm_cell_21/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskº
#lstm_10/while/lstm_cell_21/MatMul_7MatMul$lstm_10/while/lstm_cell_21/mul_3:z:03lstm_10/while/lstm_cell_21/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¹
 lstm_10/while/lstm_cell_21/add_4AddV2-lstm_10/while/lstm_cell_21/BiasAdd_3:output:0-lstm_10/while/lstm_cell_21/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$lstm_10/while/lstm_cell_21/Sigmoid_2Sigmoid$lstm_10/while/lstm_cell_21/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!lstm_10/while/lstm_cell_21/Tanh_1Tanh$lstm_10/while/lstm_cell_21/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
 lstm_10/while/lstm_cell_21/mul_6Mul(lstm_10/while/lstm_cell_21/Sigmoid_2:y:0%lstm_10/while/lstm_cell_21/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@å
2lstm_10/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_10_while_placeholder_1lstm_10_while_placeholder$lstm_10/while/lstm_cell_21/mul_6:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_10/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_10/while/addAddV2lstm_10_while_placeholderlstm_10/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_10/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_10/while/add_1AddV2(lstm_10_while_lstm_10_while_loop_counterlstm_10/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_10/while/IdentityIdentitylstm_10/while/add_1:z:0^lstm_10/while/NoOp*
T0*
_output_shapes
: 
lstm_10/while/Identity_1Identity.lstm_10_while_lstm_10_while_maximum_iterations^lstm_10/while/NoOp*
T0*
_output_shapes
: q
lstm_10/while/Identity_2Identitylstm_10/while/add:z:0^lstm_10/while/NoOp*
T0*
_output_shapes
: ±
lstm_10/while/Identity_3IdentityBlstm_10/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_10/while/NoOp*
T0*
_output_shapes
: :éèÒ
lstm_10/while/Identity_4Identity$lstm_10/while/lstm_cell_21/mul_6:z:0^lstm_10/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_10/while/Identity_5Identity$lstm_10/while/lstm_cell_21/add_3:z:0^lstm_10/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ð
lstm_10/while/NoOpNoOp*^lstm_10/while/lstm_cell_21/ReadVariableOp,^lstm_10/while/lstm_cell_21/ReadVariableOp_1,^lstm_10/while/lstm_cell_21/ReadVariableOp_2,^lstm_10/while/lstm_cell_21/ReadVariableOp_30^lstm_10/while/lstm_cell_21/split/ReadVariableOp2^lstm_10/while/lstm_cell_21/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_10_while_identitylstm_10/while/Identity:output:0"=
lstm_10_while_identity_1!lstm_10/while/Identity_1:output:0"=
lstm_10_while_identity_2!lstm_10/while/Identity_2:output:0"=
lstm_10_while_identity_3!lstm_10/while/Identity_3:output:0"=
lstm_10_while_identity_4!lstm_10/while/Identity_4:output:0"=
lstm_10_while_identity_5!lstm_10/while/Identity_5:output:0"P
%lstm_10_while_lstm_10_strided_slice_1'lstm_10_while_lstm_10_strided_slice_1_0"j
2lstm_10_while_lstm_cell_21_readvariableop_resource4lstm_10_while_lstm_cell_21_readvariableop_resource_0"z
:lstm_10_while_lstm_cell_21_split_1_readvariableop_resource<lstm_10_while_lstm_cell_21_split_1_readvariableop_resource_0"v
8lstm_10_while_lstm_cell_21_split_readvariableop_resource:lstm_10_while_lstm_cell_21_split_readvariableop_resource_0"È
alstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensorclstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2V
)lstm_10/while/lstm_cell_21/ReadVariableOp)lstm_10/while/lstm_cell_21/ReadVariableOp2Z
+lstm_10/while/lstm_cell_21/ReadVariableOp_1+lstm_10/while/lstm_cell_21/ReadVariableOp_12Z
+lstm_10/while/lstm_cell_21/ReadVariableOp_2+lstm_10/while/lstm_cell_21/ReadVariableOp_22Z
+lstm_10/while/lstm_cell_21/ReadVariableOp_3+lstm_10/while/lstm_cell_21/ReadVariableOp_32b
/lstm_10/while/lstm_cell_21/split/ReadVariableOp/lstm_10/while/lstm_cell_21/split/ReadVariableOp2f
1lstm_10/while/lstm_cell_21/split_1/ReadVariableOp1lstm_10/while/lstm_cell_21/split_1/ReadVariableOp: 
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
ù
¶
)__inference_lstm_10_layer_call_fn_4685673

inputs
unknown:	
	unknown_0:	
	unknown_1:	@
identity¢StatefulPartitionedCallæ
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
GPU 2J 8 *M
fHRF
D__inference_lstm_10_layer_call_and_return_conditional_losses_4684513o
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
: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
¼©
½
lstm_10_while_body_4685447,
(lstm_10_while_lstm_10_while_loop_counter2
.lstm_10_while_lstm_10_while_maximum_iterations
lstm_10_while_placeholder
lstm_10_while_placeholder_1
lstm_10_while_placeholder_2
lstm_10_while_placeholder_3+
'lstm_10_while_lstm_10_strided_slice_1_0g
clstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensor_0M
:lstm_10_while_lstm_cell_21_split_readvariableop_resource_0:	K
<lstm_10_while_lstm_cell_21_split_1_readvariableop_resource_0:	G
4lstm_10_while_lstm_cell_21_readvariableop_resource_0:	@
lstm_10_while_identity
lstm_10_while_identity_1
lstm_10_while_identity_2
lstm_10_while_identity_3
lstm_10_while_identity_4
lstm_10_while_identity_5)
%lstm_10_while_lstm_10_strided_slice_1e
alstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensorK
8lstm_10_while_lstm_cell_21_split_readvariableop_resource:	I
:lstm_10_while_lstm_cell_21_split_1_readvariableop_resource:	E
2lstm_10_while_lstm_cell_21_readvariableop_resource:	@¢)lstm_10/while/lstm_cell_21/ReadVariableOp¢+lstm_10/while/lstm_cell_21/ReadVariableOp_1¢+lstm_10/while/lstm_cell_21/ReadVariableOp_2¢+lstm_10/while/lstm_cell_21/ReadVariableOp_3¢/lstm_10/while/lstm_cell_21/split/ReadVariableOp¢1lstm_10/while/lstm_cell_21/split_1/ReadVariableOp
?lstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Î
1lstm_10/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemclstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensor_0lstm_10_while_placeholderHlstm_10/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0u
*lstm_10/while/lstm_cell_21/ones_like/ShapeShapelstm_10_while_placeholder_2*
T0*
_output_shapes
:o
*lstm_10/while/lstm_cell_21/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?È
$lstm_10/while/lstm_cell_21/ones_likeFill3lstm_10/while/lstm_cell_21/ones_like/Shape:output:03lstm_10/while/lstm_cell_21/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@m
(lstm_10/while/lstm_cell_21/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Á
&lstm_10/while/lstm_cell_21/dropout/MulMul-lstm_10/while/lstm_cell_21/ones_like:output:01lstm_10/while/lstm_cell_21/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
(lstm_10/while/lstm_cell_21/dropout/ShapeShape-lstm_10/while/lstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:Â
?lstm_10/while/lstm_cell_21/dropout/random_uniform/RandomUniformRandomUniform1lstm_10/while/lstm_cell_21/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0v
1lstm_10/while/lstm_cell_21/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>÷
/lstm_10/while/lstm_cell_21/dropout/GreaterEqualGreaterEqualHlstm_10/while/lstm_cell_21/dropout/random_uniform/RandomUniform:output:0:lstm_10/while/lstm_cell_21/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
'lstm_10/while/lstm_cell_21/dropout/CastCast3lstm_10/while/lstm_cell_21/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@º
(lstm_10/while/lstm_cell_21/dropout/Mul_1Mul*lstm_10/while/lstm_cell_21/dropout/Mul:z:0+lstm_10/while/lstm_cell_21/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
*lstm_10/while/lstm_cell_21/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Å
(lstm_10/while/lstm_cell_21/dropout_1/MulMul-lstm_10/while/lstm_cell_21/ones_like:output:03lstm_10/while/lstm_cell_21/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
*lstm_10/while/lstm_cell_21/dropout_1/ShapeShape-lstm_10/while/lstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:Æ
Alstm_10/while/lstm_cell_21/dropout_1/random_uniform/RandomUniformRandomUniform3lstm_10/while/lstm_cell_21/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0x
3lstm_10/while/lstm_cell_21/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>ý
1lstm_10/while/lstm_cell_21/dropout_1/GreaterEqualGreaterEqualJlstm_10/while/lstm_cell_21/dropout_1/random_uniform/RandomUniform:output:0<lstm_10/while/lstm_cell_21/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@©
)lstm_10/while/lstm_cell_21/dropout_1/CastCast5lstm_10/while/lstm_cell_21/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@À
*lstm_10/while/lstm_cell_21/dropout_1/Mul_1Mul,lstm_10/while/lstm_cell_21/dropout_1/Mul:z:0-lstm_10/while/lstm_cell_21/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
*lstm_10/while/lstm_cell_21/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Å
(lstm_10/while/lstm_cell_21/dropout_2/MulMul-lstm_10/while/lstm_cell_21/ones_like:output:03lstm_10/while/lstm_cell_21/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
*lstm_10/while/lstm_cell_21/dropout_2/ShapeShape-lstm_10/while/lstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:Æ
Alstm_10/while/lstm_cell_21/dropout_2/random_uniform/RandomUniformRandomUniform3lstm_10/while/lstm_cell_21/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0x
3lstm_10/while/lstm_cell_21/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>ý
1lstm_10/while/lstm_cell_21/dropout_2/GreaterEqualGreaterEqualJlstm_10/while/lstm_cell_21/dropout_2/random_uniform/RandomUniform:output:0<lstm_10/while/lstm_cell_21/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@©
)lstm_10/while/lstm_cell_21/dropout_2/CastCast5lstm_10/while/lstm_cell_21/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@À
*lstm_10/while/lstm_cell_21/dropout_2/Mul_1Mul,lstm_10/while/lstm_cell_21/dropout_2/Mul:z:0-lstm_10/while/lstm_cell_21/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
*lstm_10/while/lstm_cell_21/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Å
(lstm_10/while/lstm_cell_21/dropout_3/MulMul-lstm_10/while/lstm_cell_21/ones_like:output:03lstm_10/while/lstm_cell_21/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
*lstm_10/while/lstm_cell_21/dropout_3/ShapeShape-lstm_10/while/lstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:Æ
Alstm_10/while/lstm_cell_21/dropout_3/random_uniform/RandomUniformRandomUniform3lstm_10/while/lstm_cell_21/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0x
3lstm_10/while/lstm_cell_21/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>ý
1lstm_10/while/lstm_cell_21/dropout_3/GreaterEqualGreaterEqualJlstm_10/while/lstm_cell_21/dropout_3/random_uniform/RandomUniform:output:0<lstm_10/while/lstm_cell_21/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@©
)lstm_10/while/lstm_cell_21/dropout_3/CastCast5lstm_10/while/lstm_cell_21/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@À
*lstm_10/while/lstm_cell_21/dropout_3/Mul_1Mul,lstm_10/while/lstm_cell_21/dropout_3/Mul:z:0-lstm_10/while/lstm_cell_21/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@l
*lstm_10/while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :«
/lstm_10/while/lstm_cell_21/split/ReadVariableOpReadVariableOp:lstm_10_while_lstm_cell_21_split_readvariableop_resource_0*
_output_shapes
:	*
dtype0ï
 lstm_10/while/lstm_cell_21/splitSplit3lstm_10/while/lstm_cell_21/split/split_dim:output:07lstm_10/while/lstm_cell_21/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_splitÂ
!lstm_10/while/lstm_cell_21/MatMulMatMul8lstm_10/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_10/while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ä
#lstm_10/while/lstm_cell_21/MatMul_1MatMul8lstm_10/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_10/while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ä
#lstm_10/while/lstm_cell_21/MatMul_2MatMul8lstm_10/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_10/while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Ä
#lstm_10/while/lstm_cell_21/MatMul_3MatMul8lstm_10/while/TensorArrayV2Read/TensorListGetItem:item:0)lstm_10/while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@n
,lstm_10/while/lstm_cell_21/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : «
1lstm_10/while/lstm_cell_21/split_1/ReadVariableOpReadVariableOp<lstm_10_while_lstm_cell_21_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0å
"lstm_10/while/lstm_cell_21/split_1Split5lstm_10/while/lstm_cell_21/split_1/split_dim:output:09lstm_10/while/lstm_cell_21/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split¹
"lstm_10/while/lstm_cell_21/BiasAddBiasAdd+lstm_10/while/lstm_cell_21/MatMul:product:0+lstm_10/while/lstm_cell_21/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@½
$lstm_10/while/lstm_cell_21/BiasAdd_1BiasAdd-lstm_10/while/lstm_cell_21/MatMul_1:product:0+lstm_10/while/lstm_cell_21/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@½
$lstm_10/while/lstm_cell_21/BiasAdd_2BiasAdd-lstm_10/while/lstm_cell_21/MatMul_2:product:0+lstm_10/while/lstm_cell_21/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@½
$lstm_10/while/lstm_cell_21/BiasAdd_3BiasAdd-lstm_10/while/lstm_cell_21/MatMul_3:product:0+lstm_10/while/lstm_cell_21/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¢
lstm_10/while/lstm_cell_21/mulMullstm_10_while_placeholder_2,lstm_10/while/lstm_cell_21/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¦
 lstm_10/while/lstm_cell_21/mul_1Mullstm_10_while_placeholder_2.lstm_10/while/lstm_cell_21/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¦
 lstm_10/while/lstm_cell_21/mul_2Mullstm_10_while_placeholder_2.lstm_10/while/lstm_cell_21/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¦
 lstm_10/while/lstm_cell_21/mul_3Mullstm_10_while_placeholder_2.lstm_10/while/lstm_cell_21/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
)lstm_10/while/lstm_cell_21/ReadVariableOpReadVariableOp4lstm_10_while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
.lstm_10/while/lstm_cell_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        
0lstm_10/while/lstm_cell_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   
0lstm_10/while/lstm_cell_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ò
(lstm_10/while/lstm_cell_21/strided_sliceStridedSlice1lstm_10/while/lstm_cell_21/ReadVariableOp:value:07lstm_10/while/lstm_cell_21/strided_slice/stack:output:09lstm_10/while/lstm_cell_21/strided_slice/stack_1:output:09lstm_10/while/lstm_cell_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¶
#lstm_10/while/lstm_cell_21/MatMul_4MatMul"lstm_10/while/lstm_cell_21/mul:z:01lstm_10/while/lstm_cell_21/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@µ
lstm_10/while/lstm_cell_21/addAddV2+lstm_10/while/lstm_cell_21/BiasAdd:output:0-lstm_10/while/lstm_cell_21/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
"lstm_10/while/lstm_cell_21/SigmoidSigmoid"lstm_10/while/lstm_cell_21/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
+lstm_10/while/lstm_cell_21/ReadVariableOp_1ReadVariableOp4lstm_10_while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
0lstm_10/while/lstm_cell_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   
2lstm_10/while/lstm_cell_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       
2lstm_10/while/lstm_cell_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ü
*lstm_10/while/lstm_cell_21/strided_slice_1StridedSlice3lstm_10/while/lstm_cell_21/ReadVariableOp_1:value:09lstm_10/while/lstm_cell_21/strided_slice_1/stack:output:0;lstm_10/while/lstm_cell_21/strided_slice_1/stack_1:output:0;lstm_10/while/lstm_cell_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskº
#lstm_10/while/lstm_cell_21/MatMul_5MatMul$lstm_10/while/lstm_cell_21/mul_1:z:03lstm_10/while/lstm_cell_21/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¹
 lstm_10/while/lstm_cell_21/add_1AddV2-lstm_10/while/lstm_cell_21/BiasAdd_1:output:0-lstm_10/while/lstm_cell_21/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$lstm_10/while/lstm_cell_21/Sigmoid_1Sigmoid$lstm_10/while/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
 lstm_10/while/lstm_cell_21/mul_4Mul(lstm_10/while/lstm_cell_21/Sigmoid_1:y:0lstm_10_while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
+lstm_10/while/lstm_cell_21/ReadVariableOp_2ReadVariableOp4lstm_10_while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
0lstm_10/while/lstm_cell_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       
2lstm_10/while/lstm_cell_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   
2lstm_10/while/lstm_cell_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ü
*lstm_10/while/lstm_cell_21/strided_slice_2StridedSlice3lstm_10/while/lstm_cell_21/ReadVariableOp_2:value:09lstm_10/while/lstm_cell_21/strided_slice_2/stack:output:0;lstm_10/while/lstm_cell_21/strided_slice_2/stack_1:output:0;lstm_10/while/lstm_cell_21/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskº
#lstm_10/while/lstm_cell_21/MatMul_6MatMul$lstm_10/while/lstm_cell_21/mul_2:z:03lstm_10/while/lstm_cell_21/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¹
 lstm_10/while/lstm_cell_21/add_2AddV2-lstm_10/while/lstm_cell_21/BiasAdd_2:output:0-lstm_10/while/lstm_cell_21/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_10/while/lstm_cell_21/TanhTanh$lstm_10/while/lstm_cell_21/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¦
 lstm_10/while/lstm_cell_21/mul_5Mul&lstm_10/while/lstm_cell_21/Sigmoid:y:0#lstm_10/while/lstm_cell_21/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@§
 lstm_10/while/lstm_cell_21/add_3AddV2$lstm_10/while/lstm_cell_21/mul_4:z:0$lstm_10/while/lstm_cell_21/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
+lstm_10/while/lstm_cell_21/ReadVariableOp_3ReadVariableOp4lstm_10_while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0
0lstm_10/while/lstm_cell_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   
2lstm_10/while/lstm_cell_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
2lstm_10/while/lstm_cell_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ü
*lstm_10/while/lstm_cell_21/strided_slice_3StridedSlice3lstm_10/while/lstm_cell_21/ReadVariableOp_3:value:09lstm_10/while/lstm_cell_21/strided_slice_3/stack:output:0;lstm_10/while/lstm_cell_21/strided_slice_3/stack_1:output:0;lstm_10/while/lstm_cell_21/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_maskº
#lstm_10/while/lstm_cell_21/MatMul_7MatMul$lstm_10/while/lstm_cell_21/mul_3:z:03lstm_10/while/lstm_cell_21/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¹
 lstm_10/while/lstm_cell_21/add_4AddV2-lstm_10/while/lstm_cell_21/BiasAdd_3:output:0-lstm_10/while/lstm_cell_21/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
$lstm_10/while/lstm_cell_21/Sigmoid_2Sigmoid$lstm_10/while/lstm_cell_21/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!lstm_10/while/lstm_cell_21/Tanh_1Tanh$lstm_10/while/lstm_cell_21/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ª
 lstm_10/while/lstm_cell_21/mul_6Mul(lstm_10/while/lstm_cell_21/Sigmoid_2:y:0%lstm_10/while/lstm_cell_21/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@å
2lstm_10/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_10_while_placeholder_1lstm_10_while_placeholder$lstm_10/while/lstm_cell_21/mul_6:z:0*
_output_shapes
: *
element_dtype0:éèÒU
lstm_10/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :t
lstm_10/while/addAddV2lstm_10_while_placeholderlstm_10/while/add/y:output:0*
T0*
_output_shapes
: W
lstm_10/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
lstm_10/while/add_1AddV2(lstm_10_while_lstm_10_while_loop_counterlstm_10/while/add_1/y:output:0*
T0*
_output_shapes
: q
lstm_10/while/IdentityIdentitylstm_10/while/add_1:z:0^lstm_10/while/NoOp*
T0*
_output_shapes
: 
lstm_10/while/Identity_1Identity.lstm_10_while_lstm_10_while_maximum_iterations^lstm_10/while/NoOp*
T0*
_output_shapes
: q
lstm_10/while/Identity_2Identitylstm_10/while/add:z:0^lstm_10/while/NoOp*
T0*
_output_shapes
: ±
lstm_10/while/Identity_3IdentityBlstm_10/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^lstm_10/while/NoOp*
T0*
_output_shapes
: :éèÒ
lstm_10/while/Identity_4Identity$lstm_10/while/lstm_cell_21/mul_6:z:0^lstm_10/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_10/while/Identity_5Identity$lstm_10/while/lstm_cell_21/add_3:z:0^lstm_10/while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ð
lstm_10/while/NoOpNoOp*^lstm_10/while/lstm_cell_21/ReadVariableOp,^lstm_10/while/lstm_cell_21/ReadVariableOp_1,^lstm_10/while/lstm_cell_21/ReadVariableOp_2,^lstm_10/while/lstm_cell_21/ReadVariableOp_30^lstm_10/while/lstm_cell_21/split/ReadVariableOp2^lstm_10/while/lstm_cell_21/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "9
lstm_10_while_identitylstm_10/while/Identity:output:0"=
lstm_10_while_identity_1!lstm_10/while/Identity_1:output:0"=
lstm_10_while_identity_2!lstm_10/while/Identity_2:output:0"=
lstm_10_while_identity_3!lstm_10/while/Identity_3:output:0"=
lstm_10_while_identity_4!lstm_10/while/Identity_4:output:0"=
lstm_10_while_identity_5!lstm_10/while/Identity_5:output:0"P
%lstm_10_while_lstm_10_strided_slice_1'lstm_10_while_lstm_10_strided_slice_1_0"j
2lstm_10_while_lstm_cell_21_readvariableop_resource4lstm_10_while_lstm_cell_21_readvariableop_resource_0"z
:lstm_10_while_lstm_cell_21_split_1_readvariableop_resource<lstm_10_while_lstm_cell_21_split_1_readvariableop_resource_0"v
8lstm_10_while_lstm_cell_21_split_readvariableop_resource:lstm_10_while_lstm_cell_21_split_readvariableop_resource_0"È
alstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensorclstm_10_while_tensorarrayv2read_tensorlistgetitem_lstm_10_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2V
)lstm_10/while/lstm_cell_21/ReadVariableOp)lstm_10/while/lstm_cell_21/ReadVariableOp2Z
+lstm_10/while/lstm_cell_21/ReadVariableOp_1+lstm_10/while/lstm_cell_21/ReadVariableOp_12Z
+lstm_10/while/lstm_cell_21/ReadVariableOp_2+lstm_10/while/lstm_cell_21/ReadVariableOp_22Z
+lstm_10/while/lstm_cell_21/ReadVariableOp_3+lstm_10/while/lstm_cell_21/ReadVariableOp_32b
/lstm_10/while/lstm_cell_21/split/ReadVariableOp/lstm_10/while/lstm_cell_21/split/ReadVariableOp2f
1lstm_10/while/lstm_cell_21/split_1/ReadVariableOp1lstm_10/while/lstm_cell_21/split_1/ReadVariableOp: 
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
ám
¥	
while_body_4686308
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0E
2while_lstm_cell_21_split_readvariableop_resource_0:	C
4while_lstm_cell_21_split_1_readvariableop_resource_0:	?
,while_lstm_cell_21_readvariableop_resource_0:	@
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorC
0while_lstm_cell_21_split_readvariableop_resource:	A
2while_lstm_cell_21_split_1_readvariableop_resource:	=
*while_lstm_cell_21_readvariableop_resource:	@¢!while/lstm_cell_21/ReadVariableOp¢#while/lstm_cell_21/ReadVariableOp_1¢#while/lstm_cell_21/ReadVariableOp_2¢#while/lstm_cell_21/ReadVariableOp_3¢'while/lstm_cell_21/split/ReadVariableOp¢)while/lstm_cell_21/split_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype0e
"while/lstm_cell_21/ones_like/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:g
"while/lstm_cell_21/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?°
while/lstm_cell_21/ones_likeFill+while/lstm_cell_21/ones_like/Shape:output:0+while/lstm_cell_21/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@d
"while/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
'while/lstm_cell_21/split/ReadVariableOpReadVariableOp2while_lstm_cell_21_split_readvariableop_resource_0*
_output_shapes
:	*
dtype0×
while/lstm_cell_21/splitSplit+while/lstm_cell_21/split/split_dim:output:0/while/lstm_cell_21/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_splitª
while/lstm_cell_21/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_21/MatMul_1MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_21/MatMul_2MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¬
while/lstm_cell_21/MatMul_3MatMul0while/TensorArrayV2Read/TensorListGetItem:item:0!while/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
$while/lstm_cell_21/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
)while/lstm_cell_21/split_1/ReadVariableOpReadVariableOp4while_lstm_cell_21_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype0Í
while/lstm_cell_21/split_1Split-while/lstm_cell_21/split_1/split_dim:output:01while/lstm_cell_21/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split¡
while/lstm_cell_21/BiasAddBiasAdd#while/lstm_cell_21/MatMul:product:0#while/lstm_cell_21/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_21/BiasAdd_1BiasAdd%while/lstm_cell_21/MatMul_1:product:0#while/lstm_cell_21/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_21/BiasAdd_2BiasAdd%while/lstm_cell_21/MatMul_2:product:0#while/lstm_cell_21/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¥
while/lstm_cell_21/BiasAdd_3BiasAdd%while/lstm_cell_21/MatMul_3:product:0#while/lstm_cell_21/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mulMulwhile_placeholder_2%while/lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_1Mulwhile_placeholder_2%while/lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_2Mulwhile_placeholder_2%while/lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_3Mulwhile_placeholder_2%while/lstm_cell_21/ones_like:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!while/lstm_cell_21/ReadVariableOpReadVariableOp,while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0w
&while/lstm_cell_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        y
(while/lstm_cell_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   y
(while/lstm_cell_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ê
 while/lstm_cell_21/strided_sliceStridedSlice)while/lstm_cell_21/ReadVariableOp:value:0/while/lstm_cell_21/strided_slice/stack:output:01while/lstm_cell_21/strided_slice/stack_1:output:01while/lstm_cell_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask
while/lstm_cell_21/MatMul_4MatMulwhile/lstm_cell_21/mul:z:0)while/lstm_cell_21/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/addAddV2#while/lstm_cell_21/BiasAdd:output:0%while/lstm_cell_21/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
while/lstm_cell_21/SigmoidSigmoidwhile/lstm_cell_21/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_21/ReadVariableOp_1ReadVariableOp,while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   {
*while/lstm_cell_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       {
*while/lstm_cell_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_21/strided_slice_1StridedSlice+while/lstm_cell_21/ReadVariableOp_1:value:01while/lstm_cell_21/strided_slice_1/stack:output:03while/lstm_cell_21/strided_slice_1/stack_1:output:03while/lstm_cell_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_21/MatMul_5MatMulwhile/lstm_cell_21/mul_1:z:0+while/lstm_cell_21/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_21/add_1AddV2%while/lstm_cell_21/BiasAdd_1:output:0%while/lstm_cell_21/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/lstm_cell_21/Sigmoid_1Sigmoidwhile/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_4Mul while/lstm_cell_21/Sigmoid_1:y:0while_placeholder_3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_21/ReadVariableOp_2ReadVariableOp,while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       {
*while/lstm_cell_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   {
*while/lstm_cell_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_21/strided_slice_2StridedSlice+while/lstm_cell_21/ReadVariableOp_2:value:01while/lstm_cell_21/strided_slice_2/stack:output:03while/lstm_cell_21/strided_slice_2/stack_1:output:03while/lstm_cell_21/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_21/MatMul_6MatMulwhile/lstm_cell_21/mul_2:z:0+while/lstm_cell_21/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_21/add_2AddV2%while/lstm_cell_21/BiasAdd_2:output:0%while/lstm_cell_21/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@o
while/lstm_cell_21/TanhTanhwhile/lstm_cell_21/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_5Mulwhile/lstm_cell_21/Sigmoid:y:0while/lstm_cell_21/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/add_3AddV2while/lstm_cell_21/mul_4:z:0while/lstm_cell_21/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#while/lstm_cell_21/ReadVariableOp_3ReadVariableOp,while_lstm_cell_21_readvariableop_resource_0*
_output_shapes
:	@*
dtype0y
(while/lstm_cell_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   {
*while/lstm_cell_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        {
*while/lstm_cell_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"while/lstm_cell_21/strided_slice_3StridedSlice+while/lstm_cell_21/ReadVariableOp_3:value:01while/lstm_cell_21/strided_slice_3/stack:output:03while/lstm_cell_21/strided_slice_3/stack_1:output:03while/lstm_cell_21/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¢
while/lstm_cell_21/MatMul_7MatMulwhile/lstm_cell_21/mul_3:z:0+while/lstm_cell_21/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¡
while/lstm_cell_21/add_4AddV2%while/lstm_cell_21/BiasAdd_3:output:0%while/lstm_cell_21/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
while/lstm_cell_21/Sigmoid_2Sigmoidwhile/lstm_cell_21/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@q
while/lstm_cell_21/Tanh_1Tanhwhile/lstm_cell_21/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
while/lstm_cell_21/mul_6Mul while/lstm_cell_21/Sigmoid_2:y:0while/lstm_cell_21/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Å
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_21/mul_6:z:0*
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
while/Identity_4Identitywhile/lstm_cell_21/mul_6:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
while/Identity_5Identitywhile/lstm_cell_21/add_3:z:0^while/NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¸

while/NoOpNoOp"^while/lstm_cell_21/ReadVariableOp$^while/lstm_cell_21/ReadVariableOp_1$^while/lstm_cell_21/ReadVariableOp_2$^while/lstm_cell_21/ReadVariableOp_3(^while/lstm_cell_21/split/ReadVariableOp*^while/lstm_cell_21/split_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"Z
*while_lstm_cell_21_readvariableop_resource,while_lstm_cell_21_readvariableop_resource_0"j
2while_lstm_cell_21_split_1_readvariableop_resource4while_lstm_cell_21_split_1_readvariableop_resource_0"f
0while_lstm_cell_21_split_readvariableop_resource2while_lstm_cell_21_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : 2F
!while/lstm_cell_21/ReadVariableOp!while/lstm_cell_21/ReadVariableOp2J
#while/lstm_cell_21/ReadVariableOp_1#while/lstm_cell_21/ReadVariableOp_12J
#while/lstm_cell_21/ReadVariableOp_2#while/lstm_cell_21/ReadVariableOp_22J
#while/lstm_cell_21/ReadVariableOp_3#while/lstm_cell_21/ReadVariableOp_32R
'while/lstm_cell_21/split/ReadVariableOp'while/lstm_cell_21/split/ReadVariableOp2V
)while/lstm_cell_21/split_1/ReadVariableOp)while/lstm_cell_21/split_1/ReadVariableOp: 
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
æ[
ª
I__inference_lstm_cell_21_layer_call_and_return_conditional_losses_4684141

inputs

states
states_10
split_readvariableop_resource:	.
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
:	*
dtype0
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
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
?:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : 2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
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
while_cond_4686568
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4686568___redundant_placeholder05
1while_while_cond_4686568___redundant_placeholder15
1while_while_cond_4686568___redundant_placeholder25
1while_while_cond_4686568___redundant_placeholder3
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
8

D__inference_lstm_10_layer_call_and_return_conditional_losses_4684269

inputs'
lstm_cell_21_4684187:	#
lstm_cell_21_4684189:	'
lstm_cell_21_4684191:	@
identity¢$lstm_cell_21/StatefulPartitionedCall¢while;
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskù
$lstm_cell_21/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_21_4684187lstm_cell_21_4684189lstm_cell_21_4684191*
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
I__inference_lstm_cell_21_layer_call_and_return_conditional_losses_4684141n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_21_4684187lstm_cell_21_4684189lstm_cell_21_4684191*
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
while_body_4684200*
condR
while_cond_4684199*K
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
NoOpNoOp%^lstm_cell_21/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_21/StatefulPartitionedCall$lstm_cell_21/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
8

D__inference_lstm_10_layer_call_and_return_conditional_losses_4684003

inputs'
lstm_cell_21_4683921:	#
lstm_cell_21_4683923:	'
lstm_cell_21_4683925:	@
identity¢$lstm_cell_21/StatefulPartitionedCall¢while;
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
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿD
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
valueB"ÿÿÿÿ   à
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
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskù
$lstm_cell_21/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_21_4683921lstm_cell_21_4683923lstm_cell_21_4683925*
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
I__inference_lstm_cell_21_layer_call_and_return_conditional_losses_4683920n
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_21_4683921lstm_cell_21_4683923lstm_cell_21_4683925*
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
while_body_4683934*
condR
while_cond_4683933*K
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
NoOpNoOp%^lstm_cell_21/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ: : : 2L
$lstm_cell_21/StatefulPartitionedCall$lstm_cell_21/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­	
¨
/__inference_sequential_10_layer_call_fn_4685052

inputs
unknown:	
	unknown_0:	
	unknown_1:	@
	unknown_2:@
	unknown_3:
	unknown_4:
	unknown_5:
identity¢StatefulPartitionedCall 
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
GPU 2J 8 *S
fNRL
J__inference_sequential_10_layer_call_and_return_conditional_losses_4684555o
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
: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
º
È
while_cond_4684738
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_4684738___redundant_placeholder05
1while_while_cond_4684738___redundant_placeholder15
1while_while_cond_4684738___redundant_placeholder25
1while_while_cond_4684738___redundant_placeholder3
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
Ëy
û
#__inference__traced_restore_4687196
file_prefix2
 assignvariableop_dense_10_kernel:@.
 assignvariableop_1_dense_10_bias:4
"assignvariableop_2_dense_11_kernel:.
 assignvariableop_3_dense_11_bias:&
assignvariableop_4_adam_iter:	 (
assignvariableop_5_adam_beta_1: (
assignvariableop_6_adam_beta_2: '
assignvariableop_7_adam_decay: /
%assignvariableop_8_adam_learning_rate: A
.assignvariableop_9_lstm_10_lstm_cell_21_kernel:	L
9assignvariableop_10_lstm_10_lstm_cell_21_recurrent_kernel:	@<
-assignvariableop_11_lstm_10_lstm_cell_21_bias:	#
assignvariableop_12_total: #
assignvariableop_13_count: %
assignvariableop_14_total_1: %
assignvariableop_15_count_1: <
*assignvariableop_16_adam_dense_10_kernel_m:@6
(assignvariableop_17_adam_dense_10_bias_m:<
*assignvariableop_18_adam_dense_11_kernel_m:6
(assignvariableop_19_adam_dense_11_bias_m:I
6assignvariableop_20_adam_lstm_10_lstm_cell_21_kernel_m:	S
@assignvariableop_21_adam_lstm_10_lstm_cell_21_recurrent_kernel_m:	@C
4assignvariableop_22_adam_lstm_10_lstm_cell_21_bias_m:	<
*assignvariableop_23_adam_dense_10_kernel_v:@6
(assignvariableop_24_adam_dense_10_bias_v:<
*assignvariableop_25_adam_dense_11_kernel_v:6
(assignvariableop_26_adam_dense_11_bias_v:I
6assignvariableop_27_adam_lstm_10_lstm_cell_21_kernel_v:	S
@assignvariableop_28_adam_lstm_10_lstm_cell_21_recurrent_kernel_v:	@C
4assignvariableop_29_adam_lstm_10_lstm_cell_21_bias_v:	
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
:
AssignVariableOpAssignVariableOp assignvariableop_dense_10_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_10_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_11_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_11_biasIdentity_3:output:0"/device:CPU:0*
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
:
AssignVariableOp_9AssignVariableOp.assignvariableop_9_lstm_10_lstm_cell_21_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:ª
AssignVariableOp_10AssignVariableOp9assignvariableop_10_lstm_10_lstm_cell_21_recurrent_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp-assignvariableop_11_lstm_10_lstm_cell_21_biasIdentity_11:output:0"/device:CPU:0*
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
:
AssignVariableOp_16AssignVariableOp*assignvariableop_16_adam_dense_10_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_17AssignVariableOp(assignvariableop_17_adam_dense_10_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_18AssignVariableOp*assignvariableop_18_adam_dense_11_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_19AssignVariableOp(assignvariableop_19_adam_dense_11_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_20AssignVariableOp6assignvariableop_20_adam_lstm_10_lstm_cell_21_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_21AssignVariableOp@assignvariableop_21_adam_lstm_10_lstm_cell_21_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_22AssignVariableOp4assignvariableop_22_adam_lstm_10_lstm_cell_21_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_10_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_10_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_dense_11_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_dense_11_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:§
AssignVariableOp_27AssignVariableOp6assignvariableop_27_adam_lstm_10_lstm_cell_21_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:±
AssignVariableOp_28AssignVariableOp@assignvariableop_28_adam_lstm_10_lstm_cell_21_recurrent_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:¥
AssignVariableOp_29AssignVariableOp4assignvariableop_29_adam_lstm_10_lstm_cell_21_bias_vIdentity_29:output:0"/device:CPU:0*
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
þÂ
ª
J__inference_sequential_10_layer_call_and_return_conditional_losses_4685619

inputsE
2lstm_10_lstm_cell_21_split_readvariableop_resource:	C
4lstm_10_lstm_cell_21_split_1_readvariableop_resource:	?
,lstm_10_lstm_cell_21_readvariableop_resource:	@9
'dense_10_matmul_readvariableop_resource:@6
(dense_10_biasadd_readvariableop_resource:9
'dense_11_matmul_readvariableop_resource:6
(dense_11_biasadd_readvariableop_resource:
identity¢dense_10/BiasAdd/ReadVariableOp¢dense_10/MatMul/ReadVariableOp¢dense_11/BiasAdd/ReadVariableOp¢dense_11/MatMul/ReadVariableOp¢#lstm_10/lstm_cell_21/ReadVariableOp¢%lstm_10/lstm_cell_21/ReadVariableOp_1¢%lstm_10/lstm_cell_21/ReadVariableOp_2¢%lstm_10/lstm_cell_21/ReadVariableOp_3¢)lstm_10/lstm_cell_21/split/ReadVariableOp¢+lstm_10/lstm_cell_21/split_1/ReadVariableOp¢lstm_10/whileC
lstm_10/ShapeShapeinputs*
T0*
_output_shapes
:e
lstm_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: g
lstm_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:g
lstm_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ù
lstm_10/strided_sliceStridedSlicelstm_10/Shape:output:0$lstm_10/strided_slice/stack:output:0&lstm_10/strided_slice/stack_1:output:0&lstm_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskX
lstm_10/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
lstm_10/zeros/packedPacklstm_10/strided_slice:output:0lstm_10/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:X
lstm_10/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_10/zerosFilllstm_10/zeros/packed:output:0lstm_10/zeros/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@Z
lstm_10/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value	B :@
lstm_10/zeros_1/packedPacklstm_10/strided_slice:output:0!lstm_10/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:Z
lstm_10/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
lstm_10/zeros_1Filllstm_10/zeros_1/packed:output:0lstm_10/zeros_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@k
lstm_10/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          }
lstm_10/transpose	Transposeinputslstm_10/transpose/perm:output:0*
T0*+
_output_shapes
:
ÿÿÿÿÿÿÿÿÿT
lstm_10/Shape_1Shapelstm_10/transpose:y:0*
T0*
_output_shapes
:g
lstm_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_10/strided_slice_1StridedSlicelstm_10/Shape_1:output:0&lstm_10/strided_slice_1/stack:output:0(lstm_10/strided_slice_1/stack_1:output:0(lstm_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskn
#lstm_10/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÌ
lstm_10/TensorArrayV2TensorListReserve,lstm_10/TensorArrayV2/element_shape:output:0 lstm_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
=lstm_10/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ø
/lstm_10/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_10/transpose:y:0Flstm_10/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒg
lstm_10/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: i
lstm_10/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
lstm_10/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
lstm_10/strided_slice_2StridedSlicelstm_10/transpose:y:0&lstm_10/strided_slice_2/stack:output:0(lstm_10/strided_slice_2/stack_1:output:0(lstm_10/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_maskj
$lstm_10/lstm_cell_21/ones_like/ShapeShapelstm_10/zeros:output:0*
T0*
_output_shapes
:i
$lstm_10/lstm_cell_21/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¶
lstm_10/lstm_cell_21/ones_likeFill-lstm_10/lstm_cell_21/ones_like/Shape:output:0-lstm_10/lstm_cell_21/ones_like/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@g
"lstm_10/lstm_cell_21/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¯
 lstm_10/lstm_cell_21/dropout/MulMul'lstm_10/lstm_cell_21/ones_like:output:0+lstm_10/lstm_cell_21/dropout/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@y
"lstm_10/lstm_cell_21/dropout/ShapeShape'lstm_10/lstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:¶
9lstm_10/lstm_cell_21/dropout/random_uniform/RandomUniformRandomUniform+lstm_10/lstm_cell_21/dropout/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0p
+lstm_10/lstm_cell_21/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>å
)lstm_10/lstm_cell_21/dropout/GreaterEqualGreaterEqualBlstm_10/lstm_cell_21/dropout/random_uniform/RandomUniform:output:04lstm_10/lstm_cell_21/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
!lstm_10/lstm_cell_21/dropout/CastCast-lstm_10/lstm_cell_21/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@¨
"lstm_10/lstm_cell_21/dropout/Mul_1Mul$lstm_10/lstm_cell_21/dropout/Mul:z:0%lstm_10/lstm_cell_21/dropout/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
$lstm_10/lstm_cell_21/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?³
"lstm_10/lstm_cell_21/dropout_1/MulMul'lstm_10/lstm_cell_21/ones_like:output:0-lstm_10/lstm_cell_21/dropout_1/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@{
$lstm_10/lstm_cell_21/dropout_1/ShapeShape'lstm_10/lstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:º
;lstm_10/lstm_cell_21/dropout_1/random_uniform/RandomUniformRandomUniform-lstm_10/lstm_cell_21/dropout_1/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0r
-lstm_10/lstm_cell_21/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>ë
+lstm_10/lstm_cell_21/dropout_1/GreaterEqualGreaterEqualDlstm_10/lstm_cell_21/dropout_1/random_uniform/RandomUniform:output:06lstm_10/lstm_cell_21/dropout_1/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#lstm_10/lstm_cell_21/dropout_1/CastCast/lstm_10/lstm_cell_21/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@®
$lstm_10/lstm_cell_21/dropout_1/Mul_1Mul&lstm_10/lstm_cell_21/dropout_1/Mul:z:0'lstm_10/lstm_cell_21/dropout_1/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
$lstm_10/lstm_cell_21/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?³
"lstm_10/lstm_cell_21/dropout_2/MulMul'lstm_10/lstm_cell_21/ones_like:output:0-lstm_10/lstm_cell_21/dropout_2/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@{
$lstm_10/lstm_cell_21/dropout_2/ShapeShape'lstm_10/lstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:º
;lstm_10/lstm_cell_21/dropout_2/random_uniform/RandomUniformRandomUniform-lstm_10/lstm_cell_21/dropout_2/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0r
-lstm_10/lstm_cell_21/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>ë
+lstm_10/lstm_cell_21/dropout_2/GreaterEqualGreaterEqualDlstm_10/lstm_cell_21/dropout_2/random_uniform/RandomUniform:output:06lstm_10/lstm_cell_21/dropout_2/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#lstm_10/lstm_cell_21/dropout_2/CastCast/lstm_10/lstm_cell_21/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@®
$lstm_10/lstm_cell_21/dropout_2/Mul_1Mul&lstm_10/lstm_cell_21/dropout_2/Mul:z:0'lstm_10/lstm_cell_21/dropout_2/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@i
$lstm_10/lstm_cell_21/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?³
"lstm_10/lstm_cell_21/dropout_3/MulMul'lstm_10/lstm_cell_21/ones_like:output:0-lstm_10/lstm_cell_21/dropout_3/Const:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@{
$lstm_10/lstm_cell_21/dropout_3/ShapeShape'lstm_10/lstm_cell_21/ones_like:output:0*
T0*
_output_shapes
:º
;lstm_10/lstm_cell_21/dropout_3/random_uniform/RandomUniformRandomUniform-lstm_10/lstm_cell_21/dropout_3/Shape:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
dtype0r
-lstm_10/lstm_cell_21/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>ë
+lstm_10/lstm_cell_21/dropout_3/GreaterEqualGreaterEqualDlstm_10/lstm_cell_21/dropout_3/random_uniform/RandomUniform:output:06lstm_10/lstm_cell_21/dropout_3/GreaterEqual/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#lstm_10/lstm_cell_21/dropout_3/CastCast/lstm_10/lstm_cell_21/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@®
$lstm_10/lstm_cell_21/dropout_3/Mul_1Mul&lstm_10/lstm_cell_21/dropout_3/Mul:z:0'lstm_10/lstm_cell_21/dropout_3/Cast:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@f
$lstm_10/lstm_cell_21/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
)lstm_10/lstm_cell_21/split/ReadVariableOpReadVariableOp2lstm_10_lstm_cell_21_split_readvariableop_resource*
_output_shapes
:	*
dtype0Ý
lstm_10/lstm_cell_21/splitSplit-lstm_10/lstm_cell_21/split/split_dim:output:01lstm_10/lstm_cell_21/split/ReadVariableOp:value:0*
T0*<
_output_shapes*
(:@:@:@:@*
	num_split
lstm_10/lstm_cell_21/MatMulMatMul lstm_10/strided_slice_2:output:0#lstm_10/lstm_cell_21/split:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
lstm_10/lstm_cell_21/MatMul_1MatMul lstm_10/strided_slice_2:output:0#lstm_10/lstm_cell_21/split:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
lstm_10/lstm_cell_21/MatMul_2MatMul lstm_10/strided_slice_2:output:0#lstm_10/lstm_cell_21/split:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@ 
lstm_10/lstm_cell_21/MatMul_3MatMul lstm_10/strided_slice_2:output:0#lstm_10/lstm_cell_21/split:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@h
&lstm_10/lstm_cell_21/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
+lstm_10/lstm_cell_21/split_1/ReadVariableOpReadVariableOp4lstm_10_lstm_cell_21_split_1_readvariableop_resource*
_output_shapes	
:*
dtype0Ó
lstm_10/lstm_cell_21/split_1Split/lstm_10/lstm_cell_21/split_1/split_dim:output:03lstm_10/lstm_cell_21/split_1/ReadVariableOp:value:0*
T0*,
_output_shapes
:@:@:@:@*
	num_split§
lstm_10/lstm_cell_21/BiasAddBiasAdd%lstm_10/lstm_cell_21/MatMul:product:0%lstm_10/lstm_cell_21/split_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@«
lstm_10/lstm_cell_21/BiasAdd_1BiasAdd'lstm_10/lstm_cell_21/MatMul_1:product:0%lstm_10/lstm_cell_21/split_1:output:1*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@«
lstm_10/lstm_cell_21/BiasAdd_2BiasAdd'lstm_10/lstm_cell_21/MatMul_2:product:0%lstm_10/lstm_cell_21/split_1:output:2*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@«
lstm_10/lstm_cell_21/BiasAdd_3BiasAdd'lstm_10/lstm_cell_21/MatMul_3:product:0%lstm_10/lstm_cell_21/split_1:output:3*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_10/lstm_cell_21/mulMullstm_10/zeros:output:0&lstm_10/lstm_cell_21/dropout/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_10/lstm_cell_21/mul_1Mullstm_10/zeros:output:0(lstm_10/lstm_cell_21/dropout_1/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_10/lstm_cell_21/mul_2Mullstm_10/zeros:output:0(lstm_10/lstm_cell_21/dropout_2/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_10/lstm_cell_21/mul_3Mullstm_10/zeros:output:0(lstm_10/lstm_cell_21/dropout_3/Mul_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
#lstm_10/lstm_cell_21/ReadVariableOpReadVariableOp,lstm_10_lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0y
(lstm_10/lstm_cell_21/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        {
*lstm_10/lstm_cell_21/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    @   {
*lstm_10/lstm_cell_21/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ô
"lstm_10/lstm_cell_21/strided_sliceStridedSlice+lstm_10/lstm_cell_21/ReadVariableOp:value:01lstm_10/lstm_cell_21/strided_slice/stack:output:03lstm_10/lstm_cell_21/strided_slice/stack_1:output:03lstm_10/lstm_cell_21/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¤
lstm_10/lstm_cell_21/MatMul_4MatMullstm_10/lstm_cell_21/mul:z:0+lstm_10/lstm_cell_21/strided_slice:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@£
lstm_10/lstm_cell_21/addAddV2%lstm_10/lstm_cell_21/BiasAdd:output:0'lstm_10/lstm_cell_21/MatMul_4:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@w
lstm_10/lstm_cell_21/SigmoidSigmoidlstm_10/lstm_cell_21/add:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%lstm_10/lstm_cell_21/ReadVariableOp_1ReadVariableOp,lstm_10_lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0{
*lstm_10/lstm_cell_21/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    @   }
,lstm_10/lstm_cell_21/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"       }
,lstm_10/lstm_cell_21/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Þ
$lstm_10/lstm_cell_21/strided_slice_1StridedSlice-lstm_10/lstm_cell_21/ReadVariableOp_1:value:03lstm_10/lstm_cell_21/strided_slice_1/stack:output:05lstm_10/lstm_cell_21/strided_slice_1/stack_1:output:05lstm_10/lstm_cell_21/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¨
lstm_10/lstm_cell_21/MatMul_5MatMullstm_10/lstm_cell_21/mul_1:z:0-lstm_10/lstm_cell_21/strided_slice_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@§
lstm_10/lstm_cell_21/add_1AddV2'lstm_10/lstm_cell_21/BiasAdd_1:output:0'lstm_10/lstm_cell_21/MatMul_5:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@{
lstm_10/lstm_cell_21/Sigmoid_1Sigmoidlstm_10/lstm_cell_21/add_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_10/lstm_cell_21/mul_4Mul"lstm_10/lstm_cell_21/Sigmoid_1:y:0lstm_10/zeros_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%lstm_10/lstm_cell_21/ReadVariableOp_2ReadVariableOp,lstm_10_lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0{
*lstm_10/lstm_cell_21/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"       }
,lstm_10/lstm_cell_21/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    À   }
,lstm_10/lstm_cell_21/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Þ
$lstm_10/lstm_cell_21/strided_slice_2StridedSlice-lstm_10/lstm_cell_21/ReadVariableOp_2:value:03lstm_10/lstm_cell_21/strided_slice_2/stack:output:05lstm_10/lstm_cell_21/strided_slice_2/stack_1:output:05lstm_10/lstm_cell_21/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¨
lstm_10/lstm_cell_21/MatMul_6MatMullstm_10/lstm_cell_21/mul_2:z:0-lstm_10/lstm_cell_21/strided_slice_2:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@§
lstm_10/lstm_cell_21/add_2AddV2'lstm_10/lstm_cell_21/BiasAdd_2:output:0'lstm_10/lstm_cell_21/MatMul_6:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@s
lstm_10/lstm_cell_21/TanhTanhlstm_10/lstm_cell_21/add_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_10/lstm_cell_21/mul_5Mul lstm_10/lstm_cell_21/Sigmoid:y:0lstm_10/lstm_cell_21/Tanh:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_10/lstm_cell_21/add_3AddV2lstm_10/lstm_cell_21/mul_4:z:0lstm_10/lstm_cell_21/mul_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
%lstm_10/lstm_cell_21/ReadVariableOp_3ReadVariableOp,lstm_10_lstm_cell_21_readvariableop_resource*
_output_shapes
:	@*
dtype0{
*lstm_10/lstm_cell_21/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    À   }
,lstm_10/lstm_cell_21/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        }
,lstm_10/lstm_cell_21/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Þ
$lstm_10/lstm_cell_21/strided_slice_3StridedSlice-lstm_10/lstm_cell_21/ReadVariableOp_3:value:03lstm_10/lstm_cell_21/strided_slice_3/stack:output:05lstm_10/lstm_cell_21/strided_slice_3/stack_1:output:05lstm_10/lstm_cell_21/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:@@*

begin_mask*
end_mask¨
lstm_10/lstm_cell_21/MatMul_7MatMullstm_10/lstm_cell_21/mul_3:z:0-lstm_10/lstm_cell_21/strided_slice_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@§
lstm_10/lstm_cell_21/add_4AddV2'lstm_10/lstm_cell_21/BiasAdd_3:output:0'lstm_10/lstm_cell_21/MatMul_7:product:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@{
lstm_10/lstm_cell_21/Sigmoid_2Sigmoidlstm_10/lstm_cell_21/add_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@u
lstm_10/lstm_cell_21/Tanh_1Tanhlstm_10/lstm_cell_21/add_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@
lstm_10/lstm_cell_21/mul_6Mul"lstm_10/lstm_cell_21/Sigmoid_2:y:0lstm_10/lstm_cell_21/Tanh_1:y:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@v
%lstm_10/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ð
lstm_10/TensorArrayV2_1TensorListReserve.lstm_10/TensorArrayV2_1/element_shape:output:0 lstm_10/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒN
lstm_10/timeConst*
_output_shapes
: *
dtype0*
value	B : k
 lstm_10/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ\
lstm_10/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ê
lstm_10/whileWhile#lstm_10/while/loop_counter:output:0)lstm_10/while/maximum_iterations:output:0lstm_10/time:output:0 lstm_10/TensorArrayV2_1:handle:0lstm_10/zeros:output:0lstm_10/zeros_1:output:0 lstm_10/strided_slice_1:output:0?lstm_10/TensorArrayUnstack/TensorListFromTensor:output_handle:02lstm_10_lstm_cell_21_split_readvariableop_resource4lstm_10_lstm_cell_21_split_1_readvariableop_resource,lstm_10_lstm_cell_21_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*L
_output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *&
bodyR
lstm_10_while_body_4685447*&
condR
lstm_10_while_cond_4685446*K
output_shapes:
8: : : : :ÿÿÿÿÿÿÿÿÿ@:ÿÿÿÿÿÿÿÿÿ@: : : : : *
parallel_iterations 
8lstm_10/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ@   Ú
*lstm_10/TensorArrayV2Stack/TensorListStackTensorListStacklstm_10/while:output:3Alstm_10/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:
ÿÿÿÿÿÿÿÿÿ@*
element_dtype0p
lstm_10/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿi
lstm_10/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: i
lstm_10/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¯
lstm_10/strided_slice_3StridedSlice3lstm_10/TensorArrayV2Stack/TensorListStack:tensor:0&lstm_10/strided_slice_3/stack:output:0(lstm_10/strided_slice_3/stack_1:output:0(lstm_10/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ@*
shrink_axis_maskm
lstm_10/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ®
lstm_10/transpose_1	Transpose3lstm_10/TensorArrayV2Stack/TensorListStack:tensor:0!lstm_10/transpose_1/perm:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@c
lstm_10/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
dense_10/MatMul/ReadVariableOpReadVariableOp'dense_10_matmul_readvariableop_resource*
_output_shapes

:@*
dtype0
dense_10/MatMulMatMul lstm_10/strided_slice_3:output:0&dense_10/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_10/BiasAdd/ReadVariableOpReadVariableOp(dense_10_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_10/BiasAddBiasAdddense_10/MatMul:product:0'dense_10/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
dense_10/ReluReludense_10/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_11/MatMul/ReadVariableOpReadVariableOp'dense_11_matmul_readvariableop_resource*
_output_shapes

:*
dtype0
dense_11/MatMulMatMuldense_10/Relu:activations:0&dense_11/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_11/BiasAdd/ReadVariableOpReadVariableOp(dense_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_11/BiasAddBiasAdddense_11/MatMul:product:0'dense_11/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_11/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
NoOpNoOp ^dense_10/BiasAdd/ReadVariableOp^dense_10/MatMul/ReadVariableOp ^dense_11/BiasAdd/ReadVariableOp^dense_11/MatMul/ReadVariableOp$^lstm_10/lstm_cell_21/ReadVariableOp&^lstm_10/lstm_cell_21/ReadVariableOp_1&^lstm_10/lstm_cell_21/ReadVariableOp_2&^lstm_10/lstm_cell_21/ReadVariableOp_3*^lstm_10/lstm_cell_21/split/ReadVariableOp,^lstm_10/lstm_cell_21/split_1/ReadVariableOp^lstm_10/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:ÿÿÿÿÿÿÿÿÿ
: : : : : : : 2B
dense_10/BiasAdd/ReadVariableOpdense_10/BiasAdd/ReadVariableOp2@
dense_10/MatMul/ReadVariableOpdense_10/MatMul/ReadVariableOp2B
dense_11/BiasAdd/ReadVariableOpdense_11/BiasAdd/ReadVariableOp2@
dense_11/MatMul/ReadVariableOpdense_11/MatMul/ReadVariableOp2J
#lstm_10/lstm_cell_21/ReadVariableOp#lstm_10/lstm_cell_21/ReadVariableOp2N
%lstm_10/lstm_cell_21/ReadVariableOp_1%lstm_10/lstm_cell_21/ReadVariableOp_12N
%lstm_10/lstm_cell_21/ReadVariableOp_2%lstm_10/lstm_cell_21/ReadVariableOp_22N
%lstm_10/lstm_cell_21/ReadVariableOp_3%lstm_10/lstm_cell_21/ReadVariableOp_32V
)lstm_10/lstm_cell_21/split/ReadVariableOp)lstm_10/lstm_cell_21/split/ReadVariableOp2Z
+lstm_10/lstm_cell_21/split_1/ReadVariableOp+lstm_10/lstm_cell_21/split_1/ReadVariableOp2
lstm_10/whilelstm_10/while:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs"ÛL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*±
serving_default
A
input_115
serving_default_input_11:0ÿÿÿÿÿÿÿÿÿ
<
dense_110
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ït
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
2
/__inference_sequential_10_layer_call_fn_4684572
/__inference_sequential_10_layer_call_fn_4685052
/__inference_sequential_10_layer_call_fn_4685071
/__inference_sequential_10_layer_call_fn_4684985À
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
ö2ó
J__inference_sequential_10_layer_call_and_return_conditional_losses_4685313
J__inference_sequential_10_layer_call_and_return_conditional_losses_4685619
J__inference_sequential_10_layer_call_and_return_conditional_losses_4685006
J__inference_sequential_10_layer_call_and_return_conditional_losses_4685027À
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
"__inference__wrapped_model_4683810input_11"
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
2
)__inference_lstm_10_layer_call_fn_4685651
)__inference_lstm_10_layer_call_fn_4685662
)__inference_lstm_10_layer_call_fn_4685673
)__inference_lstm_10_layer_call_fn_4685684Õ
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
ó2ð
D__inference_lstm_10_layer_call_and_return_conditional_losses_4685913
D__inference_lstm_10_layer_call_and_return_conditional_losses_4686206
D__inference_lstm_10_layer_call_and_return_conditional_losses_4686435
D__inference_lstm_10_layer_call_and_return_conditional_losses_4686728Õ
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
!:@2dense_10/kernel
:2dense_10/bias
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
Ô2Ñ
*__inference_dense_10_layer_call_fn_4686737¢
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
ï2ì
E__inference_dense_10_layer_call_and_return_conditional_losses_4686748¢
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
!:2dense_11/kernel
:2dense_11/bias
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
Ô2Ñ
*__inference_dense_11_layer_call_fn_4686757¢
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
ï2ì
E__inference_dense_11_layer_call_and_return_conditional_losses_4686767¢
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
.:,	2lstm_10/lstm_cell_21/kernel
8:6	@2%lstm_10/lstm_cell_21/recurrent_kernel
(:&2lstm_10/lstm_cell_21/bias
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
%__inference_signature_wrapper_4685640input_11"
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
.__inference_lstm_cell_21_layer_call_fn_4686784
.__inference_lstm_cell_21_layer_call_fn_4686801¾
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
I__inference_lstm_cell_21_layer_call_and_return_conditional_losses_4686876
I__inference_lstm_cell_21_layer_call_and_return_conditional_losses_4686983¾
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
&:$@2Adam/dense_10/kernel/m
 :2Adam/dense_10/bias/m
&:$2Adam/dense_11/kernel/m
 :2Adam/dense_11/bias/m
3:1	2"Adam/lstm_10/lstm_cell_21/kernel/m
=:;	@2,Adam/lstm_10/lstm_cell_21/recurrent_kernel/m
-:+2 Adam/lstm_10/lstm_cell_21/bias/m
&:$@2Adam/dense_10/kernel/v
 :2Adam/dense_10/bias/v
&:$2Adam/dense_11/kernel/v
 :2Adam/dense_11/bias/v
3:1	2"Adam/lstm_10/lstm_cell_21/kernel/v
=:;	@2,Adam/lstm_10/lstm_cell_21/recurrent_kernel/v
-:+2 Adam/lstm_10/lstm_cell_21/bias/v
"__inference__wrapped_model_4683810u+-,5¢2
+¢(
&#
input_11ÿÿÿÿÿÿÿÿÿ

ª "3ª0
.
dense_11"
dense_11ÿÿÿÿÿÿÿÿÿ¥
E__inference_dense_10_layer_call_and_return_conditional_losses_4686748\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_dense_10_layer_call_fn_4686737O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ@
ª "ÿÿÿÿÿÿÿÿÿ¥
E__inference_dense_11_layer_call_and_return_conditional_losses_4686767\/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
*__inference_dense_11_layer_call_fn_4686757O/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÅ
D__inference_lstm_10_layer_call_and_return_conditional_losses_4685913}+-,O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 Å
D__inference_lstm_10_layer_call_and_return_conditional_losses_4686206}+-,O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 µ
D__inference_lstm_10_layer_call_and_return_conditional_losses_4686435m+-,?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ


 
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 µ
D__inference_lstm_10_layer_call_and_return_conditional_losses_4686728m+-,?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ


 
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ@
 
)__inference_lstm_10_layer_call_fn_4685651p+-,O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ@
)__inference_lstm_10_layer_call_fn_4685662p+-,O¢L
E¢B
41
/,
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿ@
)__inference_lstm_10_layer_call_fn_4685673`+-,?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ


 
p 

 
ª "ÿÿÿÿÿÿÿÿÿ@
)__inference_lstm_10_layer_call_fn_4685684`+-,?¢<
5¢2
$!
inputsÿÿÿÿÿÿÿÿÿ


 
p

 
ª "ÿÿÿÿÿÿÿÿÿ@Ë
I__inference_lstm_cell_21_layer_call_and_return_conditional_losses_4686876ý+-,¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
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
I__inference_lstm_cell_21_layer_call_and_return_conditional_losses_4686983ý+-,¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
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
.__inference_lstm_cell_21_layer_call_fn_4686784í+-,¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
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
.__inference_lstm_cell_21_layer_call_fn_4686801í+-,¢}
v¢s
 
inputsÿÿÿÿÿÿÿÿÿ
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
1/1ÿÿÿÿÿÿÿÿÿ@½
J__inference_sequential_10_layer_call_and_return_conditional_losses_4685006o+-,=¢:
3¢0
&#
input_11ÿÿÿÿÿÿÿÿÿ

p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ½
J__inference_sequential_10_layer_call_and_return_conditional_losses_4685027o+-,=¢:
3¢0
&#
input_11ÿÿÿÿÿÿÿÿÿ

p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 »
J__inference_sequential_10_layer_call_and_return_conditional_losses_4685313m+-,;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ

p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 »
J__inference_sequential_10_layer_call_and_return_conditional_losses_4685619m+-,;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ

p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
/__inference_sequential_10_layer_call_fn_4684572b+-,=¢:
3¢0
&#
input_11ÿÿÿÿÿÿÿÿÿ

p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_10_layer_call_fn_4684985b+-,=¢:
3¢0
&#
input_11ÿÿÿÿÿÿÿÿÿ

p

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_10_layer_call_fn_4685052`+-,;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ

p 

 
ª "ÿÿÿÿÿÿÿÿÿ
/__inference_sequential_10_layer_call_fn_4685071`+-,;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ

p

 
ª "ÿÿÿÿÿÿÿÿÿ«
%__inference_signature_wrapper_4685640+-,A¢>
¢ 
7ª4
2
input_11&#
input_11ÿÿÿÿÿÿÿÿÿ
"3ª0
.
dense_11"
dense_11ÿÿÿÿÿÿÿÿÿ