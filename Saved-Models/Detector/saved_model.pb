¹
??
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
B
AssignVariableOp
resource
value"dtype"
dtypetype?
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
?
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

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
?
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
dtypetype?
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
executor_typestring ?
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.5.02unknown8??

z
bl_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namebl_2/kernel
s
bl_2/kernel/Read/ReadVariableOpReadVariableOpbl_2/kernel*&
_output_shapes
:*
dtype0
j
	bl_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name	bl_2/bias
c
bl_2/bias/Read/ReadVariableOpReadVariableOp	bl_2/bias*
_output_shapes
:*
dtype0
z
bl_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namebl_4/kernel
s
bl_4/kernel/Read/ReadVariableOpReadVariableOpbl_4/kernel*&
_output_shapes
: *
dtype0
j
	bl_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	bl_4/bias
c
bl_4/bias/Read/ReadVariableOpReadVariableOp	bl_4/bias*
_output_shapes
: *
dtype0
z
bl_6/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*
shared_namebl_6/kernel
s
bl_6/kernel/Read/ReadVariableOpReadVariableOpbl_6/kernel*&
_output_shapes
: @*
dtype0
j
	bl_6/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	bl_6/bias
c
bl_6/bias/Read/ReadVariableOpReadVariableOp	bl_6/bias*
_output_shapes
:@*
dtype0
u
bb_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*
shared_namebb_1/kernel
n
bb_1/kernel/Read/ReadVariableOpReadVariableOpbb_1/kernel*!
_output_shapes
:???*
dtype0
k
	bb_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name	bb_1/bias
d
bb_1/bias/Read/ReadVariableOpReadVariableOp	bb_1/bias*
_output_shapes	
:?*
dtype0
s
bb_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?@*
shared_namebb_2/kernel
l
bb_2/kernel/Read/ReadVariableOpReadVariableOpbb_2/kernel*
_output_shapes
:	?@*
dtype0
j
	bb_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*
shared_name	bb_2/bias
c
bb_2/bias/Read/ReadVariableOpReadVariableOp	bb_2/bias*
_output_shapes
:@*
dtype0
u
cl_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*
shared_namecl_1/kernel
n
cl_1/kernel/Read/ReadVariableOpReadVariableOpcl_1/kernel*!
_output_shapes
:???*
dtype0
k
	cl_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_name	cl_1/bias
d
cl_1/bias/Read/ReadVariableOpReadVariableOp	cl_1/bias*
_output_shapes	
:?*
dtype0
r
bb_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:@ *
shared_namebb_3/kernel
k
bb_3/kernel/Read/ReadVariableOpReadVariableOpbb_3/kernel*
_output_shapes

:@ *
dtype0
j
	bb_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	bb_3/bias
c
bb_3/bias/Read/ReadVariableOpReadVariableOp	bb_3/bias*
_output_shapes
: *
dtype0
y
cl_head/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namecl_head/kernel
r
"cl_head/kernel/Read/ReadVariableOpReadVariableOpcl_head/kernel*
_output_shapes
:	?*
dtype0
p
cl_head/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namecl_head/bias
i
 cl_head/bias/Read/ReadVariableOpReadVariableOpcl_head/bias*
_output_shapes
:*
dtype0
x
bb_head/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
: *
shared_namebb_head/kernel
q
"bb_head/kernel/Read/ReadVariableOpReadVariableOpbb_head/kernel*
_output_shapes

: *
dtype0
p
bb_head/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namebb_head/bias
i
 bb_head/bias/Read/ReadVariableOpReadVariableOpbb_head/bias*
_output_shapes
:*
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
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
b
total_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_4
[
total_4/Read/ReadVariableOpReadVariableOptotal_4*
_output_shapes
: *
dtype0
b
count_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_4
[
count_4/Read/ReadVariableOpReadVariableOpcount_4*
_output_shapes
: *
dtype0
?
Adam/cl_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*#
shared_nameAdam/cl_1/kernel/m
|
&Adam/cl_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/cl_1/kernel/m*!
_output_shapes
:???*
dtype0
y
Adam/cl_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*!
shared_nameAdam/cl_1/bias/m
r
$Adam/cl_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/cl_1/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/cl_head/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/cl_head/kernel/m
?
)Adam/cl_head/kernel/m/Read/ReadVariableOpReadVariableOpAdam/cl_head/kernel/m*
_output_shapes
:	?*
dtype0
~
Adam/cl_head/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/cl_head/bias/m
w
'Adam/cl_head/bias/m/Read/ReadVariableOpReadVariableOpAdam/cl_head/bias/m*
_output_shapes
:*
dtype0
?
Adam/cl_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:???*#
shared_nameAdam/cl_1/kernel/v
|
&Adam/cl_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/cl_1/kernel/v*!
_output_shapes
:???*
dtype0
y
Adam/cl_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*!
shared_nameAdam/cl_1/bias/v
r
$Adam/cl_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/cl_1/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/cl_head/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/cl_head/kernel/v
?
)Adam/cl_head/kernel/v/Read/ReadVariableOpReadVariableOpAdam/cl_head/kernel/v*
_output_shapes
:	?*
dtype0
~
Adam/cl_head/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/cl_head/bias/v
w
'Adam/cl_head/bias/v/Read/ReadVariableOpReadVariableOpAdam/cl_head/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
?Q
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*?Q
value?QB?Q B?P
?
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer_with_weights-3

layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer_with_weights-6
layer-12
layer_with_weights-7
layer-13
layer_with_weights-8
layer-14
	optimizer
loss

signatures
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
%
#_self_saveable_object_factories
4
#_self_saveable_object_factories
	keras_api
?

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
 regularization_losses
!	keras_api
w
#"_self_saveable_object_factories
#	variables
$trainable_variables
%regularization_losses
&	keras_api
?

'kernel
(bias
#)_self_saveable_object_factories
*	variables
+trainable_variables
,regularization_losses
-	keras_api
w
#._self_saveable_object_factories
/	variables
0trainable_variables
1regularization_losses
2	keras_api
?

3kernel
4bias
#5_self_saveable_object_factories
6	variables
7trainable_variables
8regularization_losses
9	keras_api
w
#:_self_saveable_object_factories
;	variables
<trainable_variables
=regularization_losses
>	keras_api
w
#?_self_saveable_object_factories
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
?

Dkernel
Ebias
#F_self_saveable_object_factories
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
?

Kkernel
Lbias
#M_self_saveable_object_factories
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
?

Rkernel
Sbias
#T_self_saveable_object_factories
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
?

Ykernel
Zbias
#[_self_saveable_object_factories
\	variables
]trainable_variables
^regularization_losses
_	keras_api
?

`kernel
abias
#b_self_saveable_object_factories
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
?

gkernel
hbias
#i_self_saveable_object_factories
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
?
niter

obeta_1

pbeta_2
	qdecay
rlearning_rateRm?Sm?`m?am?Rv?Sv?`v?av?
 
 
 
?
0
1
'2
(3
34
45
D6
E7
K8
L9
R10
S11
Y12
Z13
`14
a15
g16
h17

R0
S1
`2
a3
 
?
snon_trainable_variables
	variables
trainable_variables
tmetrics
regularization_losses

ulayers
vlayer_regularization_losses
wlayer_metrics
 
 
 
WU
VARIABLE_VALUEbl_2/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	bl_2/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE
 

0
1
 
 
?
xnon_trainable_variables
	variables
ymetrics
trainable_variables
 regularization_losses

zlayers
{layer_regularization_losses
|layer_metrics
 
 
 
 
?
}non_trainable_variables
#	variables
~metrics
$trainable_variables
%regularization_losses

layers
 ?layer_regularization_losses
?layer_metrics
WU
VARIABLE_VALUEbl_4/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	bl_4/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

'0
(1
 
 
?
?non_trainable_variables
*	variables
?metrics
+trainable_variables
,regularization_losses
?layers
 ?layer_regularization_losses
?layer_metrics
 
 
 
 
?
?non_trainable_variables
/	variables
?metrics
0trainable_variables
1regularization_losses
?layers
 ?layer_regularization_losses
?layer_metrics
WU
VARIABLE_VALUEbl_6/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	bl_6/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

30
41
 
 
?
?non_trainable_variables
6	variables
?metrics
7trainable_variables
8regularization_losses
?layers
 ?layer_regularization_losses
?layer_metrics
 
 
 
 
?
?non_trainable_variables
;	variables
?metrics
<trainable_variables
=regularization_losses
?layers
 ?layer_regularization_losses
?layer_metrics
 
 
 
 
?
?non_trainable_variables
@	variables
?metrics
Atrainable_variables
Bregularization_losses
?layers
 ?layer_regularization_losses
?layer_metrics
WU
VARIABLE_VALUEbb_1/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	bb_1/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE
 

D0
E1
 
 
?
?non_trainable_variables
G	variables
?metrics
Htrainable_variables
Iregularization_losses
?layers
 ?layer_regularization_losses
?layer_metrics
WU
VARIABLE_VALUEbb_2/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	bb_2/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE
 

K0
L1
 
 
?
?non_trainable_variables
N	variables
?metrics
Otrainable_variables
Pregularization_losses
?layers
 ?layer_regularization_losses
?layer_metrics
WU
VARIABLE_VALUEcl_1/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	cl_1/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

R0
S1

R0
S1
 
?
?non_trainable_variables
U	variables
?metrics
Vtrainable_variables
Wregularization_losses
?layers
 ?layer_regularization_losses
?layer_metrics
WU
VARIABLE_VALUEbb_3/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUE	bb_3/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE
 

Y0
Z1
 
 
?
?non_trainable_variables
\	variables
?metrics
]trainable_variables
^regularization_losses
?layers
 ?layer_regularization_losses
?layer_metrics
ZX
VARIABLE_VALUEcl_head/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEcl_head/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE
 

`0
a1

`0
a1
 
?
?non_trainable_variables
c	variables
?metrics
dtrainable_variables
eregularization_losses
?layers
 ?layer_regularization_losses
?layer_metrics
ZX
VARIABLE_VALUEbb_head/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEbb_head/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 

g0
h1
 
 
?
?non_trainable_variables
j	variables
?metrics
ktrainable_variables
lregularization_losses
?layers
 ?layer_regularization_losses
?layer_metrics
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
f
0
1
'2
(3
34
45
D6
E7
K8
L9
Y10
Z11
g12
h13
(
?0
?1
?2
?3
?4
n
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
 
 

0
1
 
 
 
 
 
 
 
 
 

'0
(1
 
 
 
 
 
 
 
 
 

30
41
 
 
 
 
 
 
 
 
 
 
 
 
 
 

D0
E1
 
 
 
 

K0
L1
 
 
 
 
 
 
 
 
 

Y0
Z1
 
 
 
 
 
 
 
 
 

g0
h1
 
 
 
 
8

?total

?count
?	variables
?	keras_api
8

?total

?count
?	variables
?	keras_api
8

?total

?count
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
I

?total

?count
?
_fn_kwargs
?	variables
?	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_34keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_34keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
QO
VARIABLE_VALUEtotal_44keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_44keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUE
 

?0
?1

?	variables
zx
VARIABLE_VALUEAdam/cl_1/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/cl_1/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/cl_head/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/cl_head/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/cl_1/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/cl_1/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/cl_head/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/cl_head/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
?
serving_default_input_1Placeholder*1
_output_shapes
:???????????*
dtype0*&
shape:???????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1bl_2/kernel	bl_2/biasbl_4/kernel	bl_4/biasbl_6/kernel	bl_6/biasbb_1/kernel	bb_1/biasbb_2/kernel	bb_2/biasbb_3/kernel	bb_3/biascl_1/kernel	cl_1/biasbb_head/kernelbb_head/biascl_head/kernelcl_head/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference_signature_wrapper_9544
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamebl_2/kernel/Read/ReadVariableOpbl_2/bias/Read/ReadVariableOpbl_4/kernel/Read/ReadVariableOpbl_4/bias/Read/ReadVariableOpbl_6/kernel/Read/ReadVariableOpbl_6/bias/Read/ReadVariableOpbb_1/kernel/Read/ReadVariableOpbb_1/bias/Read/ReadVariableOpbb_2/kernel/Read/ReadVariableOpbb_2/bias/Read/ReadVariableOpcl_1/kernel/Read/ReadVariableOpcl_1/bias/Read/ReadVariableOpbb_3/kernel/Read/ReadVariableOpbb_3/bias/Read/ReadVariableOp"cl_head/kernel/Read/ReadVariableOp cl_head/bias/Read/ReadVariableOp"bb_head/kernel/Read/ReadVariableOp bb_head/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOp&Adam/cl_1/kernel/m/Read/ReadVariableOp$Adam/cl_1/bias/m/Read/ReadVariableOp)Adam/cl_head/kernel/m/Read/ReadVariableOp'Adam/cl_head/bias/m/Read/ReadVariableOp&Adam/cl_1/kernel/v/Read/ReadVariableOp$Adam/cl_1/bias/v/Read/ReadVariableOp)Adam/cl_head/kernel/v/Read/ReadVariableOp'Adam/cl_head/bias/v/Read/ReadVariableOpConst*6
Tin/
-2+	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *'
f"R 
__inference__traced_save_10119
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamebl_2/kernel	bl_2/biasbl_4/kernel	bl_4/biasbl_6/kernel	bl_6/biasbb_1/kernel	bb_1/biasbb_2/kernel	bb_2/biascl_1/kernel	cl_1/biasbb_3/kernel	bb_3/biascl_head/kernelcl_head/biasbb_head/kernelbb_head/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1total_2count_2total_3count_3total_4count_4Adam/cl_1/kernel/mAdam/cl_1/bias/mAdam/cl_head/kernel/mAdam/cl_head/bias/mAdam/cl_1/kernel/vAdam/cl_1/bias/vAdam/cl_head/kernel/vAdam/cl_head/bias/v*5
Tin.
,2**
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__traced_restore_10252ڣ	
?
?
$__inference_model_layer_call_fn_9739

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:???
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@ 

unknown_10: 

unknown_11:???

unknown_12:	?

unknown_13: 

unknown_14:

unknown_15:	?

unknown_16:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_90532
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?@
?
?__inference_model_layer_call_and_return_conditional_losses_9293

inputs#
	bl_2_9242:
	bl_2_9244:#
	bl_4_9248: 
	bl_4_9250: #
	bl_6_9254: @
	bl_6_9256:@
	bb_1_9261:???
	bb_1_9263:	?
	bb_2_9266:	?@
	bb_2_9268:@
	bb_3_9271:@ 
	bb_3_9273: 
	cl_1_9276:???
	cl_1_9278:	?
bb_head_9281: 
bb_head_9283:
cl_head_9286:	?
cl_head_9288:
identity

identity_1??bb_1/StatefulPartitionedCall?bb_2/StatefulPartitionedCall?bb_3/StatefulPartitionedCall?bb_head/StatefulPartitionedCall?bl_2/StatefulPartitionedCall?bl_4/StatefulPartitionedCall?bl_6/StatefulPartitionedCall?cl_1/StatefulPartitionedCall?cl_head/StatefulPartitionedCall_
bl_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
bl_1/Cast/xc
bl_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
bl_1/Cast_1/xu
bl_1/mulMulinputsbl_1/Cast/x:output:0*
T0*1
_output_shapes
:???????????2

bl_1/mul
bl_1/addAddV2bl_1/mul:z:0bl_1/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2

bl_1/add?
bl_2/StatefulPartitionedCallStatefulPartitionedCallbl_1/add:z:0	bl_2_9242	bl_2_9244*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_2_layer_call_and_return_conditional_losses_88992
bl_2/StatefulPartitionedCall?
bl_3/PartitionedCallPartitionedCall%bl_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ll* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_3_layer_call_and_return_conditional_losses_88472
bl_3/PartitionedCall?
bl_4/StatefulPartitionedCallStatefulPartitionedCallbl_3/PartitionedCall:output:0	bl_4_9248	bl_4_9250*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ll *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_4_layer_call_and_return_conditional_losses_89172
bl_4/StatefulPartitionedCall?
bl_5/PartitionedCallPartitionedCall%bl_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????66 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_5_layer_call_and_return_conditional_losses_88592
bl_5/PartitionedCall?
bl_6/StatefulPartitionedCallStatefulPartitionedCallbl_5/PartitionedCall:output:0	bl_6_9254	bl_6_9256*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????66@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_6_layer_call_and_return_conditional_losses_89352
bl_6/StatefulPartitionedCall?
bl_7/PartitionedCallPartitionedCall%bl_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_7_layer_call_and_return_conditional_losses_88712
bl_7/PartitionedCall?
bl_8/PartitionedCallPartitionedCallbl_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_8_layer_call_and_return_conditional_losses_89482
bl_8/PartitionedCall?
bb_1/StatefulPartitionedCallStatefulPartitionedCallbl_8/PartitionedCall:output:0	bb_1_9261	bb_1_9263*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bb_1_layer_call_and_return_conditional_losses_89612
bb_1/StatefulPartitionedCall?
bb_2/StatefulPartitionedCallStatefulPartitionedCall%bb_1/StatefulPartitionedCall:output:0	bb_2_9266	bb_2_9268*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bb_2_layer_call_and_return_conditional_losses_89782
bb_2/StatefulPartitionedCall?
bb_3/StatefulPartitionedCallStatefulPartitionedCall%bb_2/StatefulPartitionedCall:output:0	bb_3_9271	bb_3_9273*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bb_3_layer_call_and_return_conditional_losses_89952
bb_3/StatefulPartitionedCall?
cl_1/StatefulPartitionedCallStatefulPartitionedCallbl_8/PartitionedCall:output:0	cl_1_9276	cl_1_9278*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_cl_1_layer_call_and_return_conditional_losses_90122
cl_1/StatefulPartitionedCall?
bb_head/StatefulPartitionedCallStatefulPartitionedCall%bb_3/StatefulPartitionedCall:output:0bb_head_9281bb_head_9283*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_bb_head_layer_call_and_return_conditional_losses_90292!
bb_head/StatefulPartitionedCall?
cl_head/StatefulPartitionedCallStatefulPartitionedCall%cl_1/StatefulPartitionedCall:output:0cl_head_9286cl_head_9288*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_cl_head_layer_call_and_return_conditional_losses_90452!
cl_head/StatefulPartitionedCall?
IdentityIdentity(cl_head/StatefulPartitionedCall:output:0^bb_1/StatefulPartitionedCall^bb_2/StatefulPartitionedCall^bb_3/StatefulPartitionedCall ^bb_head/StatefulPartitionedCall^bl_2/StatefulPartitionedCall^bl_4/StatefulPartitionedCall^bl_6/StatefulPartitionedCall^cl_1/StatefulPartitionedCall ^cl_head/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity(bb_head/StatefulPartitionedCall:output:0^bb_1/StatefulPartitionedCall^bb_2/StatefulPartitionedCall^bb_3/StatefulPartitionedCall ^bb_head/StatefulPartitionedCall^bl_2/StatefulPartitionedCall^bl_4/StatefulPartitionedCall^bl_6/StatefulPartitionedCall^cl_1/StatefulPartitionedCall ^cl_head/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : 2<
bb_1/StatefulPartitionedCallbb_1/StatefulPartitionedCall2<
bb_2/StatefulPartitionedCallbb_2/StatefulPartitionedCall2<
bb_3/StatefulPartitionedCallbb_3/StatefulPartitionedCall2B
bb_head/StatefulPartitionedCallbb_head/StatefulPartitionedCall2<
bl_2/StatefulPartitionedCallbl_2/StatefulPartitionedCall2<
bl_4/StatefulPartitionedCallbl_4/StatefulPartitionedCall2<
bl_6/StatefulPartitionedCallbl_6/StatefulPartitionedCall2<
cl_1/StatefulPartitionedCallcl_1/StatefulPartitionedCall2B
cl_head/StatefulPartitionedCallcl_head/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
"__inference_signature_wrapper_9544
input_1!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:???
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@ 

unknown_10: 

unknown_11:???

unknown_12:	?

unknown_13: 

unknown_14:

unknown_15:	?

unknown_16:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__wrapped_model_88412
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?
Z
>__inference_bl_5_layer_call_and_return_conditional_losses_8859

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
>__inference_bl_2_layer_call_and_return_conditional_losses_8899

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
>__inference_bl_6_layer_call_and_return_conditional_losses_9833

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????66@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????66@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????66@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????66@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????66 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????66 
 
_user_specified_nameinputs
?
Z
>__inference_bl_8_layer_call_and_return_conditional_losses_8948

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????@?  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
#__inference_bl_2_layer_call_fn_9802

inputs!
unknown:
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_2_layer_call_and_return_conditional_losses_88992
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
#__inference_bl_5_layer_call_fn_8865

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_5_layer_call_and_return_conditional_losses_88592
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
Z
>__inference_bl_7_layer_call_and_return_conditional_losses_8871

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?
?
#__inference_bb_2_layer_call_fn_9893

inputs
unknown:	?@
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
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bb_2_layer_call_and_return_conditional_losses_89782
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
>__inference_bb_2_layer_call_and_return_conditional_losses_8978

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
#__inference_bl_8_layer_call_fn_9853

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_8_layer_call_and_return_conditional_losses_89482
PartitionedCalln
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?

?
>__inference_bb_1_layer_call_and_return_conditional_losses_8961

inputs3
matmul_readvariableop_resource:???.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:???*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
>__inference_cl_1_layer_call_and_return_conditional_losses_9904

inputs3
matmul_readvariableop_resource:???.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:???*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
>__inference_bl_6_layer_call_and_return_conditional_losses_8935

inputs8
conv2d_readvariableop_resource: @-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????66@*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????66@2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????66@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????66@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????66 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????66 
 
_user_specified_nameinputs
?@
?
?__inference_model_layer_call_and_return_conditional_losses_9493
input_1#
	bl_2_9442:
	bl_2_9444:#
	bl_4_9448: 
	bl_4_9450: #
	bl_6_9454: @
	bl_6_9456:@
	bb_1_9461:???
	bb_1_9463:	?
	bb_2_9466:	?@
	bb_2_9468:@
	bb_3_9471:@ 
	bb_3_9473: 
	cl_1_9476:???
	cl_1_9478:	?
bb_head_9481: 
bb_head_9483:
cl_head_9486:	?
cl_head_9488:
identity

identity_1??bb_1/StatefulPartitionedCall?bb_2/StatefulPartitionedCall?bb_3/StatefulPartitionedCall?bb_head/StatefulPartitionedCall?bl_2/StatefulPartitionedCall?bl_4/StatefulPartitionedCall?bl_6/StatefulPartitionedCall?cl_1/StatefulPartitionedCall?cl_head/StatefulPartitionedCall_
bl_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
bl_1/Cast/xc
bl_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
bl_1/Cast_1/xv
bl_1/mulMulinput_1bl_1/Cast/x:output:0*
T0*1
_output_shapes
:???????????2

bl_1/mul
bl_1/addAddV2bl_1/mul:z:0bl_1/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2

bl_1/add?
bl_2/StatefulPartitionedCallStatefulPartitionedCallbl_1/add:z:0	bl_2_9442	bl_2_9444*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_2_layer_call_and_return_conditional_losses_88992
bl_2/StatefulPartitionedCall?
bl_3/PartitionedCallPartitionedCall%bl_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ll* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_3_layer_call_and_return_conditional_losses_88472
bl_3/PartitionedCall?
bl_4/StatefulPartitionedCallStatefulPartitionedCallbl_3/PartitionedCall:output:0	bl_4_9448	bl_4_9450*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ll *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_4_layer_call_and_return_conditional_losses_89172
bl_4/StatefulPartitionedCall?
bl_5/PartitionedCallPartitionedCall%bl_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????66 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_5_layer_call_and_return_conditional_losses_88592
bl_5/PartitionedCall?
bl_6/StatefulPartitionedCallStatefulPartitionedCallbl_5/PartitionedCall:output:0	bl_6_9454	bl_6_9456*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????66@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_6_layer_call_and_return_conditional_losses_89352
bl_6/StatefulPartitionedCall?
bl_7/PartitionedCallPartitionedCall%bl_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_7_layer_call_and_return_conditional_losses_88712
bl_7/PartitionedCall?
bl_8/PartitionedCallPartitionedCallbl_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_8_layer_call_and_return_conditional_losses_89482
bl_8/PartitionedCall?
bb_1/StatefulPartitionedCallStatefulPartitionedCallbl_8/PartitionedCall:output:0	bb_1_9461	bb_1_9463*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bb_1_layer_call_and_return_conditional_losses_89612
bb_1/StatefulPartitionedCall?
bb_2/StatefulPartitionedCallStatefulPartitionedCall%bb_1/StatefulPartitionedCall:output:0	bb_2_9466	bb_2_9468*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bb_2_layer_call_and_return_conditional_losses_89782
bb_2/StatefulPartitionedCall?
bb_3/StatefulPartitionedCallStatefulPartitionedCall%bb_2/StatefulPartitionedCall:output:0	bb_3_9471	bb_3_9473*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bb_3_layer_call_and_return_conditional_losses_89952
bb_3/StatefulPartitionedCall?
cl_1/StatefulPartitionedCallStatefulPartitionedCallbl_8/PartitionedCall:output:0	cl_1_9476	cl_1_9478*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_cl_1_layer_call_and_return_conditional_losses_90122
cl_1/StatefulPartitionedCall?
bb_head/StatefulPartitionedCallStatefulPartitionedCall%bb_3/StatefulPartitionedCall:output:0bb_head_9481bb_head_9483*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_bb_head_layer_call_and_return_conditional_losses_90292!
bb_head/StatefulPartitionedCall?
cl_head/StatefulPartitionedCallStatefulPartitionedCall%cl_1/StatefulPartitionedCall:output:0cl_head_9486cl_head_9488*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_cl_head_layer_call_and_return_conditional_losses_90452!
cl_head/StatefulPartitionedCall?
IdentityIdentity(cl_head/StatefulPartitionedCall:output:0^bb_1/StatefulPartitionedCall^bb_2/StatefulPartitionedCall^bb_3/StatefulPartitionedCall ^bb_head/StatefulPartitionedCall^bl_2/StatefulPartitionedCall^bl_4/StatefulPartitionedCall^bl_6/StatefulPartitionedCall^cl_1/StatefulPartitionedCall ^cl_head/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity(bb_head/StatefulPartitionedCall:output:0^bb_1/StatefulPartitionedCall^bb_2/StatefulPartitionedCall^bb_3/StatefulPartitionedCall ^bb_head/StatefulPartitionedCall^bl_2/StatefulPartitionedCall^bl_4/StatefulPartitionedCall^bl_6/StatefulPartitionedCall^cl_1/StatefulPartitionedCall ^cl_head/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : 2<
bb_1/StatefulPartitionedCallbb_1/StatefulPartitionedCall2<
bb_2/StatefulPartitionedCallbb_2/StatefulPartitionedCall2<
bb_3/StatefulPartitionedCallbb_3/StatefulPartitionedCall2B
bb_head/StatefulPartitionedCallbb_head/StatefulPartitionedCall2<
bl_2/StatefulPartitionedCallbl_2/StatefulPartitionedCall2<
bl_4/StatefulPartitionedCallbl_4/StatefulPartitionedCall2<
bl_6/StatefulPartitionedCallbl_6/StatefulPartitionedCall2<
cl_1/StatefulPartitionedCallcl_1/StatefulPartitionedCall2B
cl_head/StatefulPartitionedCallcl_head/StatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?
?
$__inference_model_layer_call_fn_9782

inputs!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:???
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@ 

unknown_10: 

unknown_11:???

unknown_12:	?

unknown_13: 

unknown_14:

unknown_15:	?

unknown_16:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_92932
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
>__inference_bl_4_layer_call_and_return_conditional_losses_9813

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ll *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ll 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????ll 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????ll 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????ll: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????ll
 
_user_specified_nameinputs
?
?
$__inference_model_layer_call_fn_9094
input_1!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:???
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@ 

unknown_10: 

unknown_11:???

unknown_12:	?

unknown_13: 

unknown_14:

unknown_15:	?

unknown_16:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_90532
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?
?
#__inference_bl_7_layer_call_fn_8877

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_7_layer_call_and_return_conditional_losses_88712
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
>__inference_bb_1_layer_call_and_return_conditional_losses_9864

inputs3
matmul_readvariableop_resource:???.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:???*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
#__inference_bl_3_layer_call_fn_8853

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4????????????????????????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_3_layer_call_and_return_conditional_losses_88472
PartitionedCall?
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?

?
>__inference_cl_1_layer_call_and_return_conditional_losses_9012

inputs3
matmul_readvariableop_resource:???.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:???*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:??????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
>__inference_bb_2_layer_call_and_return_conditional_losses_9884

inputs1
matmul_readvariableop_resource:	?@-
biasadd_readvariableop_resource:@
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
#__inference_bb_1_layer_call_fn_9873

inputs
unknown:???
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bb_1_layer_call_and_return_conditional_losses_89612
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?
?
&__inference_cl_head_layer_call_fn_9952

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_cl_head_layer_call_and_return_conditional_losses_90452
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
>__inference_bb_3_layer_call_and_return_conditional_losses_9924

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
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
?

?
A__inference_bb_head_layer_call_and_return_conditional_losses_9963

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
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
??
?
!__inference__traced_restore_10252
file_prefix6
assignvariableop_bl_2_kernel:*
assignvariableop_1_bl_2_bias:8
assignvariableop_2_bl_4_kernel: *
assignvariableop_3_bl_4_bias: 8
assignvariableop_4_bl_6_kernel: @*
assignvariableop_5_bl_6_bias:@3
assignvariableop_6_bb_1_kernel:???+
assignvariableop_7_bb_1_bias:	?1
assignvariableop_8_bb_2_kernel:	?@*
assignvariableop_9_bb_2_bias:@4
assignvariableop_10_cl_1_kernel:???,
assignvariableop_11_cl_1_bias:	?1
assignvariableop_12_bb_3_kernel:@ +
assignvariableop_13_bb_3_bias: 5
"assignvariableop_14_cl_head_kernel:	?.
 assignvariableop_15_cl_head_bias:4
"assignvariableop_16_bb_head_kernel: .
 assignvariableop_17_bb_head_bias:'
assignvariableop_18_adam_iter:	 )
assignvariableop_19_adam_beta_1: )
assignvariableop_20_adam_beta_2: (
assignvariableop_21_adam_decay: 0
&assignvariableop_22_adam_learning_rate: #
assignvariableop_23_total: #
assignvariableop_24_count: %
assignvariableop_25_total_1: %
assignvariableop_26_count_1: %
assignvariableop_27_total_2: %
assignvariableop_28_count_2: %
assignvariableop_29_total_3: %
assignvariableop_30_count_3: %
assignvariableop_31_total_4: %
assignvariableop_32_count_4: ;
&assignvariableop_33_adam_cl_1_kernel_m:???3
$assignvariableop_34_adam_cl_1_bias_m:	?<
)assignvariableop_35_adam_cl_head_kernel_m:	?5
'assignvariableop_36_adam_cl_head_bias_m:;
&assignvariableop_37_adam_cl_1_kernel_v:???3
$assignvariableop_38_adam_cl_1_bias_v:	?<
)assignvariableop_39_adam_cl_head_kernel_v:	?5
'assignvariableop_40_adam_cl_head_bias_v:
identity_42??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_5?AssignVariableOp_6?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*?
value?B?*B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?::::::::::::::::::::::::::::::::::::::::::*8
dtypes.
,2*	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity?
AssignVariableOpAssignVariableOpassignvariableop_bl_2_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1?
AssignVariableOp_1AssignVariableOpassignvariableop_1_bl_2_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2?
AssignVariableOp_2AssignVariableOpassignvariableop_2_bl_4_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3?
AssignVariableOp_3AssignVariableOpassignvariableop_3_bl_4_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4?
AssignVariableOp_4AssignVariableOpassignvariableop_4_bl_6_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5?
AssignVariableOp_5AssignVariableOpassignvariableop_5_bl_6_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6?
AssignVariableOp_6AssignVariableOpassignvariableop_6_bb_1_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7?
AssignVariableOp_7AssignVariableOpassignvariableop_7_bb_1_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8?
AssignVariableOp_8AssignVariableOpassignvariableop_8_bb_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9?
AssignVariableOp_9AssignVariableOpassignvariableop_9_bb_2_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10?
AssignVariableOp_10AssignVariableOpassignvariableop_10_cl_1_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11?
AssignVariableOp_11AssignVariableOpassignvariableop_11_cl_1_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12?
AssignVariableOp_12AssignVariableOpassignvariableop_12_bb_3_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13?
AssignVariableOp_13AssignVariableOpassignvariableop_13_bb_3_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14?
AssignVariableOp_14AssignVariableOp"assignvariableop_14_cl_head_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15?
AssignVariableOp_15AssignVariableOp assignvariableop_15_cl_head_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16?
AssignVariableOp_16AssignVariableOp"assignvariableop_16_bb_head_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17?
AssignVariableOp_17AssignVariableOp assignvariableop_17_bb_head_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_18?
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_iterIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19?
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_beta_1Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20?
AssignVariableOp_20AssignVariableOpassignvariableop_20_adam_beta_2Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21?
AssignVariableOp_21AssignVariableOpassignvariableop_21_adam_decayIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22?
AssignVariableOp_22AssignVariableOp&assignvariableop_22_adam_learning_rateIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23?
AssignVariableOp_23AssignVariableOpassignvariableop_23_totalIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24?
AssignVariableOp_24AssignVariableOpassignvariableop_24_countIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25?
AssignVariableOp_25AssignVariableOpassignvariableop_25_total_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26?
AssignVariableOp_26AssignVariableOpassignvariableop_26_count_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27?
AssignVariableOp_27AssignVariableOpassignvariableop_27_total_2Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28?
AssignVariableOp_28AssignVariableOpassignvariableop_28_count_2Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29?
AssignVariableOp_29AssignVariableOpassignvariableop_29_total_3Identity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30?
AssignVariableOp_30AssignVariableOpassignvariableop_30_count_3Identity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31?
AssignVariableOp_31AssignVariableOpassignvariableop_31_total_4Identity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32?
AssignVariableOp_32AssignVariableOpassignvariableop_32_count_4Identity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33?
AssignVariableOp_33AssignVariableOp&assignvariableop_33_adam_cl_1_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34?
AssignVariableOp_34AssignVariableOp$assignvariableop_34_adam_cl_1_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35?
AssignVariableOp_35AssignVariableOp)assignvariableop_35_adam_cl_head_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36?
AssignVariableOp_36AssignVariableOp'assignvariableop_36_adam_cl_head_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37?
AssignVariableOp_37AssignVariableOp&assignvariableop_37_adam_cl_1_kernel_vIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38?
AssignVariableOp_38AssignVariableOp$assignvariableop_38_adam_cl_1_bias_vIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39?
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_cl_head_kernel_vIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40?
AssignVariableOp_40AssignVariableOp'assignvariableop_40_adam_cl_head_bias_vIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_409
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp?
Identity_41Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_41?
Identity_42IdentityIdentity_41:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_42"#
identity_42Identity_42:output:0*g
_input_shapesV
T: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402(
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
?
Z
>__inference_bl_8_layer_call_and_return_conditional_losses_9848

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"????@?  2
Consti
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:???????????2	
Reshapef
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????@:W S
/
_output_shapes
:?????????@
 
_user_specified_nameinputs
?
?
#__inference_bb_3_layer_call_fn_9933

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
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bb_3_layer_call_and_return_conditional_losses_89952
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:????????? 2

Identity"
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
?
>__inference_bl_4_layer_call_and_return_conditional_losses_8917

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ll *
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ll 2	
BiasAdd`
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:?????????ll 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:?????????ll 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????ll: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:?????????ll
 
_user_specified_nameinputs
?
?
$__inference_model_layer_call_fn_9377
input_1!
unknown:
	unknown_0:#
	unknown_1: 
	unknown_2: #
	unknown_3: @
	unknown_4:@
	unknown_5:???
	unknown_6:	?
	unknown_7:	?@
	unknown_8:@
	unknown_9:@ 

unknown_10: 

unknown_11:???

unknown_12:	?

unknown_13: 

unknown_14:

unknown_15:	?

unknown_16:
identity

identity_1??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:?????????:?????????*4
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_model_layer_call_and_return_conditional_losses_92932
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?
?
#__inference_bl_4_layer_call_fn_9822

inputs!
unknown: 
	unknown_0: 
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ll *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_4_layer_call_and_return_conditional_losses_89172
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????ll 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????ll: : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????ll
 
_user_specified_nameinputs
?
?
#__inference_bl_6_layer_call_fn_9842

inputs!
unknown: @
	unknown_0:@
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????66@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_6_layer_call_and_return_conditional_losses_89352
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:?????????66@2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:?????????66 : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:?????????66 
 
_user_specified_nameinputs
?
?
>__inference_bl_2_layer_call_and_return_conditional_losses_9793

inputs8
conv2d_readvariableop_resource:-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Conv2D/ReadVariableOp?
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp?
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
Conv2D?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2	
BiasAddb
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:???????????2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*1
_output_shapes
:???????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:???????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
A__inference_bb_head_layer_call_and_return_conditional_losses_9029

inputs0
matmul_readvariableop_resource: -
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

: *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdda
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:?????????2	
Sigmoid?
IdentityIdentitySigmoid:y:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
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
?	
?
A__inference_cl_head_layer_call_and_return_conditional_losses_9943

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?	
?
A__inference_cl_head_layer_call_and_return_conditional_losses_9045

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2	
BiasAdd?
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
&__inference_bb_head_layer_call_fn_9972

inputs
unknown: 
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_bb_head_layer_call_and_return_conditional_losses_90292
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:????????? : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:????????? 
 
_user_specified_nameinputs
?_
?
?__inference_model_layer_call_and_return_conditional_losses_9696

inputs=
#bl_2_conv2d_readvariableop_resource:2
$bl_2_biasadd_readvariableop_resource:=
#bl_4_conv2d_readvariableop_resource: 2
$bl_4_biasadd_readvariableop_resource: =
#bl_6_conv2d_readvariableop_resource: @2
$bl_6_biasadd_readvariableop_resource:@8
#bb_1_matmul_readvariableop_resource:???3
$bb_1_biasadd_readvariableop_resource:	?6
#bb_2_matmul_readvariableop_resource:	?@2
$bb_2_biasadd_readvariableop_resource:@5
#bb_3_matmul_readvariableop_resource:@ 2
$bb_3_biasadd_readvariableop_resource: 8
#cl_1_matmul_readvariableop_resource:???3
$cl_1_biasadd_readvariableop_resource:	?8
&bb_head_matmul_readvariableop_resource: 5
'bb_head_biasadd_readvariableop_resource:9
&cl_head_matmul_readvariableop_resource:	?5
'cl_head_biasadd_readvariableop_resource:
identity

identity_1??bb_1/BiasAdd/ReadVariableOp?bb_1/MatMul/ReadVariableOp?bb_2/BiasAdd/ReadVariableOp?bb_2/MatMul/ReadVariableOp?bb_3/BiasAdd/ReadVariableOp?bb_3/MatMul/ReadVariableOp?bb_head/BiasAdd/ReadVariableOp?bb_head/MatMul/ReadVariableOp?bl_2/BiasAdd/ReadVariableOp?bl_2/Conv2D/ReadVariableOp?bl_4/BiasAdd/ReadVariableOp?bl_4/Conv2D/ReadVariableOp?bl_6/BiasAdd/ReadVariableOp?bl_6/Conv2D/ReadVariableOp?cl_1/BiasAdd/ReadVariableOp?cl_1/MatMul/ReadVariableOp?cl_head/BiasAdd/ReadVariableOp?cl_head/MatMul/ReadVariableOp_
bl_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
bl_1/Cast/xc
bl_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
bl_1/Cast_1/xu
bl_1/mulMulinputsbl_1/Cast/x:output:0*
T0*1
_output_shapes
:???????????2

bl_1/mul
bl_1/addAddV2bl_1/mul:z:0bl_1/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2

bl_1/add?
bl_2/Conv2D/ReadVariableOpReadVariableOp#bl_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
bl_2/Conv2D/ReadVariableOp?
bl_2/Conv2DConv2Dbl_1/add:z:0"bl_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
bl_2/Conv2D?
bl_2/BiasAdd/ReadVariableOpReadVariableOp$bl_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
bl_2/BiasAdd/ReadVariableOp?
bl_2/BiasAddBiasAddbl_2/Conv2D:output:0#bl_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
bl_2/BiasAddq
	bl_2/ReluRelubl_2/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
	bl_2/Relu?
bl_3/MaxPoolMaxPoolbl_2/Relu:activations:0*/
_output_shapes
:?????????ll*
ksize
*
paddingVALID*
strides
2
bl_3/MaxPool?
bl_4/Conv2D/ReadVariableOpReadVariableOp#bl_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
bl_4/Conv2D/ReadVariableOp?
bl_4/Conv2DConv2Dbl_3/MaxPool:output:0"bl_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ll *
paddingSAME*
strides
2
bl_4/Conv2D?
bl_4/BiasAdd/ReadVariableOpReadVariableOp$bl_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
bl_4/BiasAdd/ReadVariableOp?
bl_4/BiasAddBiasAddbl_4/Conv2D:output:0#bl_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ll 2
bl_4/BiasAddo
	bl_4/ReluRelubl_4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????ll 2
	bl_4/Relu?
bl_5/MaxPoolMaxPoolbl_4/Relu:activations:0*/
_output_shapes
:?????????66 *
ksize
*
paddingVALID*
strides
2
bl_5/MaxPool?
bl_6/Conv2D/ReadVariableOpReadVariableOp#bl_6_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
bl_6/Conv2D/ReadVariableOp?
bl_6/Conv2DConv2Dbl_5/MaxPool:output:0"bl_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????66@*
paddingSAME*
strides
2
bl_6/Conv2D?
bl_6/BiasAdd/ReadVariableOpReadVariableOp$bl_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
bl_6/BiasAdd/ReadVariableOp?
bl_6/BiasAddBiasAddbl_6/Conv2D:output:0#bl_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????66@2
bl_6/BiasAddo
	bl_6/ReluRelubl_6/BiasAdd:output:0*
T0*/
_output_shapes
:?????????66@2
	bl_6/Relu?
bl_7/MaxPoolMaxPoolbl_6/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
bl_7/MaxPooli

bl_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@?  2

bl_8/Const?
bl_8/ReshapeReshapebl_7/MaxPool:output:0bl_8/Const:output:0*
T0*)
_output_shapes
:???????????2
bl_8/Reshape?
bb_1/MatMul/ReadVariableOpReadVariableOp#bb_1_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02
bb_1/MatMul/ReadVariableOp?
bb_1/MatMulMatMulbl_8/Reshape:output:0"bb_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
bb_1/MatMul?
bb_1/BiasAdd/ReadVariableOpReadVariableOp$bb_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
bb_1/BiasAdd/ReadVariableOp?
bb_1/BiasAddBiasAddbb_1/MatMul:product:0#bb_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
bb_1/BiasAddh
	bb_1/ReluRelubb_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
	bb_1/Relu?
bb_2/MatMul/ReadVariableOpReadVariableOp#bb_2_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
bb_2/MatMul/ReadVariableOp?
bb_2/MatMulMatMulbb_1/Relu:activations:0"bb_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
bb_2/MatMul?
bb_2/BiasAdd/ReadVariableOpReadVariableOp$bb_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
bb_2/BiasAdd/ReadVariableOp?
bb_2/BiasAddBiasAddbb_2/MatMul:product:0#bb_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
bb_2/BiasAddg
	bb_2/ReluRelubb_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
	bb_2/Relu?
bb_3/MatMul/ReadVariableOpReadVariableOp#bb_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
bb_3/MatMul/ReadVariableOp?
bb_3/MatMulMatMulbb_2/Relu:activations:0"bb_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
bb_3/MatMul?
bb_3/BiasAdd/ReadVariableOpReadVariableOp$bb_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
bb_3/BiasAdd/ReadVariableOp?
bb_3/BiasAddBiasAddbb_3/MatMul:product:0#bb_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
bb_3/BiasAddg
	bb_3/ReluRelubb_3/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
	bb_3/Relu?
cl_1/MatMul/ReadVariableOpReadVariableOp#cl_1_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02
cl_1/MatMul/ReadVariableOp?
cl_1/MatMulMatMulbl_8/Reshape:output:0"cl_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
cl_1/MatMul?
cl_1/BiasAdd/ReadVariableOpReadVariableOp$cl_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
cl_1/BiasAdd/ReadVariableOp?
cl_1/BiasAddBiasAddcl_1/MatMul:product:0#cl_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
cl_1/BiasAddh
	cl_1/ReluRelucl_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
	cl_1/Relu?
bb_head/MatMul/ReadVariableOpReadVariableOp&bb_head_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
bb_head/MatMul/ReadVariableOp?
bb_head/MatMulMatMulbb_3/Relu:activations:0%bb_head/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
bb_head/MatMul?
bb_head/BiasAdd/ReadVariableOpReadVariableOp'bb_head_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
bb_head/BiasAdd/ReadVariableOp?
bb_head/BiasAddBiasAddbb_head/MatMul:product:0&bb_head/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
bb_head/BiasAddy
bb_head/SigmoidSigmoidbb_head/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
bb_head/Sigmoid?
cl_head/MatMul/ReadVariableOpReadVariableOp&cl_head_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
cl_head/MatMul/ReadVariableOp?
cl_head/MatMulMatMulcl_1/Relu:activations:0%cl_head/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
cl_head/MatMul?
cl_head/BiasAdd/ReadVariableOpReadVariableOp'cl_head_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
cl_head/BiasAdd/ReadVariableOp?
cl_head/BiasAddBiasAddcl_head/MatMul:product:0&cl_head/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
cl_head/BiasAdd?
IdentityIdentitycl_head/BiasAdd:output:0^bb_1/BiasAdd/ReadVariableOp^bb_1/MatMul/ReadVariableOp^bb_2/BiasAdd/ReadVariableOp^bb_2/MatMul/ReadVariableOp^bb_3/BiasAdd/ReadVariableOp^bb_3/MatMul/ReadVariableOp^bb_head/BiasAdd/ReadVariableOp^bb_head/MatMul/ReadVariableOp^bl_2/BiasAdd/ReadVariableOp^bl_2/Conv2D/ReadVariableOp^bl_4/BiasAdd/ReadVariableOp^bl_4/Conv2D/ReadVariableOp^bl_6/BiasAdd/ReadVariableOp^bl_6/Conv2D/ReadVariableOp^cl_1/BiasAdd/ReadVariableOp^cl_1/MatMul/ReadVariableOp^cl_head/BiasAdd/ReadVariableOp^cl_head/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identitybb_head/Sigmoid:y:0^bb_1/BiasAdd/ReadVariableOp^bb_1/MatMul/ReadVariableOp^bb_2/BiasAdd/ReadVariableOp^bb_2/MatMul/ReadVariableOp^bb_3/BiasAdd/ReadVariableOp^bb_3/MatMul/ReadVariableOp^bb_head/BiasAdd/ReadVariableOp^bb_head/MatMul/ReadVariableOp^bl_2/BiasAdd/ReadVariableOp^bl_2/Conv2D/ReadVariableOp^bl_4/BiasAdd/ReadVariableOp^bl_4/Conv2D/ReadVariableOp^bl_6/BiasAdd/ReadVariableOp^bl_6/Conv2D/ReadVariableOp^cl_1/BiasAdd/ReadVariableOp^cl_1/MatMul/ReadVariableOp^cl_head/BiasAdd/ReadVariableOp^cl_head/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : 2:
bb_1/BiasAdd/ReadVariableOpbb_1/BiasAdd/ReadVariableOp28
bb_1/MatMul/ReadVariableOpbb_1/MatMul/ReadVariableOp2:
bb_2/BiasAdd/ReadVariableOpbb_2/BiasAdd/ReadVariableOp28
bb_2/MatMul/ReadVariableOpbb_2/MatMul/ReadVariableOp2:
bb_3/BiasAdd/ReadVariableOpbb_3/BiasAdd/ReadVariableOp28
bb_3/MatMul/ReadVariableOpbb_3/MatMul/ReadVariableOp2@
bb_head/BiasAdd/ReadVariableOpbb_head/BiasAdd/ReadVariableOp2>
bb_head/MatMul/ReadVariableOpbb_head/MatMul/ReadVariableOp2:
bl_2/BiasAdd/ReadVariableOpbl_2/BiasAdd/ReadVariableOp28
bl_2/Conv2D/ReadVariableOpbl_2/Conv2D/ReadVariableOp2:
bl_4/BiasAdd/ReadVariableOpbl_4/BiasAdd/ReadVariableOp28
bl_4/Conv2D/ReadVariableOpbl_4/Conv2D/ReadVariableOp2:
bl_6/BiasAdd/ReadVariableOpbl_6/BiasAdd/ReadVariableOp28
bl_6/Conv2D/ReadVariableOpbl_6/Conv2D/ReadVariableOp2:
cl_1/BiasAdd/ReadVariableOpcl_1/BiasAdd/ReadVariableOp28
cl_1/MatMul/ReadVariableOpcl_1/MatMul/ReadVariableOp2@
cl_head/BiasAdd/ReadVariableOpcl_head/BiasAdd/ReadVariableOp2>
cl_head/MatMul/ReadVariableOpcl_head/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?m
?
__inference__wrapped_model_8841
input_1C
)model_bl_2_conv2d_readvariableop_resource:8
*model_bl_2_biasadd_readvariableop_resource:C
)model_bl_4_conv2d_readvariableop_resource: 8
*model_bl_4_biasadd_readvariableop_resource: C
)model_bl_6_conv2d_readvariableop_resource: @8
*model_bl_6_biasadd_readvariableop_resource:@>
)model_bb_1_matmul_readvariableop_resource:???9
*model_bb_1_biasadd_readvariableop_resource:	?<
)model_bb_2_matmul_readvariableop_resource:	?@8
*model_bb_2_biasadd_readvariableop_resource:@;
)model_bb_3_matmul_readvariableop_resource:@ 8
*model_bb_3_biasadd_readvariableop_resource: >
)model_cl_1_matmul_readvariableop_resource:???9
*model_cl_1_biasadd_readvariableop_resource:	?>
,model_bb_head_matmul_readvariableop_resource: ;
-model_bb_head_biasadd_readvariableop_resource:?
,model_cl_head_matmul_readvariableop_resource:	?;
-model_cl_head_biasadd_readvariableop_resource:
identity

identity_1??!model/bb_1/BiasAdd/ReadVariableOp? model/bb_1/MatMul/ReadVariableOp?!model/bb_2/BiasAdd/ReadVariableOp? model/bb_2/MatMul/ReadVariableOp?!model/bb_3/BiasAdd/ReadVariableOp? model/bb_3/MatMul/ReadVariableOp?$model/bb_head/BiasAdd/ReadVariableOp?#model/bb_head/MatMul/ReadVariableOp?!model/bl_2/BiasAdd/ReadVariableOp? model/bl_2/Conv2D/ReadVariableOp?!model/bl_4/BiasAdd/ReadVariableOp? model/bl_4/Conv2D/ReadVariableOp?!model/bl_6/BiasAdd/ReadVariableOp? model/bl_6/Conv2D/ReadVariableOp?!model/cl_1/BiasAdd/ReadVariableOp? model/cl_1/MatMul/ReadVariableOp?$model/cl_head/BiasAdd/ReadVariableOp?#model/cl_head/MatMul/ReadVariableOpk
model/bl_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
model/bl_1/Cast/xo
model/bl_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
model/bl_1/Cast_1/x?
model/bl_1/mulMulinput_1model/bl_1/Cast/x:output:0*
T0*1
_output_shapes
:???????????2
model/bl_1/mul?
model/bl_1/addAddV2model/bl_1/mul:z:0model/bl_1/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2
model/bl_1/add?
 model/bl_2/Conv2D/ReadVariableOpReadVariableOp)model_bl_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02"
 model/bl_2/Conv2D/ReadVariableOp?
model/bl_2/Conv2DConv2Dmodel/bl_1/add:z:0(model/bl_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
model/bl_2/Conv2D?
!model/bl_2/BiasAdd/ReadVariableOpReadVariableOp*model_bl_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02#
!model/bl_2/BiasAdd/ReadVariableOp?
model/bl_2/BiasAddBiasAddmodel/bl_2/Conv2D:output:0)model/bl_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
model/bl_2/BiasAdd?
model/bl_2/ReluRelumodel/bl_2/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
model/bl_2/Relu?
model/bl_3/MaxPoolMaxPoolmodel/bl_2/Relu:activations:0*/
_output_shapes
:?????????ll*
ksize
*
paddingVALID*
strides
2
model/bl_3/MaxPool?
 model/bl_4/Conv2D/ReadVariableOpReadVariableOp)model_bl_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02"
 model/bl_4/Conv2D/ReadVariableOp?
model/bl_4/Conv2DConv2Dmodel/bl_3/MaxPool:output:0(model/bl_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ll *
paddingSAME*
strides
2
model/bl_4/Conv2D?
!model/bl_4/BiasAdd/ReadVariableOpReadVariableOp*model_bl_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!model/bl_4/BiasAdd/ReadVariableOp?
model/bl_4/BiasAddBiasAddmodel/bl_4/Conv2D:output:0)model/bl_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ll 2
model/bl_4/BiasAdd?
model/bl_4/ReluRelumodel/bl_4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????ll 2
model/bl_4/Relu?
model/bl_5/MaxPoolMaxPoolmodel/bl_4/Relu:activations:0*/
_output_shapes
:?????????66 *
ksize
*
paddingVALID*
strides
2
model/bl_5/MaxPool?
 model/bl_6/Conv2D/ReadVariableOpReadVariableOp)model_bl_6_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02"
 model/bl_6/Conv2D/ReadVariableOp?
model/bl_6/Conv2DConv2Dmodel/bl_5/MaxPool:output:0(model/bl_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????66@*
paddingSAME*
strides
2
model/bl_6/Conv2D?
!model/bl_6/BiasAdd/ReadVariableOpReadVariableOp*model_bl_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!model/bl_6/BiasAdd/ReadVariableOp?
model/bl_6/BiasAddBiasAddmodel/bl_6/Conv2D:output:0)model/bl_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????66@2
model/bl_6/BiasAdd?
model/bl_6/ReluRelumodel/bl_6/BiasAdd:output:0*
T0*/
_output_shapes
:?????????66@2
model/bl_6/Relu?
model/bl_7/MaxPoolMaxPoolmodel/bl_6/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
model/bl_7/MaxPoolu
model/bl_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@?  2
model/bl_8/Const?
model/bl_8/ReshapeReshapemodel/bl_7/MaxPool:output:0model/bl_8/Const:output:0*
T0*)
_output_shapes
:???????????2
model/bl_8/Reshape?
 model/bb_1/MatMul/ReadVariableOpReadVariableOp)model_bb_1_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02"
 model/bb_1/MatMul/ReadVariableOp?
model/bb_1/MatMulMatMulmodel/bl_8/Reshape:output:0(model/bb_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model/bb_1/MatMul?
!model/bb_1/BiasAdd/ReadVariableOpReadVariableOp*model_bb_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!model/bb_1/BiasAdd/ReadVariableOp?
model/bb_1/BiasAddBiasAddmodel/bb_1/MatMul:product:0)model/bb_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model/bb_1/BiasAddz
model/bb_1/ReluRelumodel/bb_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
model/bb_1/Relu?
 model/bb_2/MatMul/ReadVariableOpReadVariableOp)model_bb_2_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02"
 model/bb_2/MatMul/ReadVariableOp?
model/bb_2/MatMulMatMulmodel/bb_1/Relu:activations:0(model/bb_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
model/bb_2/MatMul?
!model/bb_2/BiasAdd/ReadVariableOpReadVariableOp*model_bb_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02#
!model/bb_2/BiasAdd/ReadVariableOp?
model/bb_2/BiasAddBiasAddmodel/bb_2/MatMul:product:0)model/bb_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
model/bb_2/BiasAddy
model/bb_2/ReluRelumodel/bb_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
model/bb_2/Relu?
 model/bb_3/MatMul/ReadVariableOpReadVariableOp)model_bb_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02"
 model/bb_3/MatMul/ReadVariableOp?
model/bb_3/MatMulMatMulmodel/bb_2/Relu:activations:0(model/bb_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
model/bb_3/MatMul?
!model/bb_3/BiasAdd/ReadVariableOpReadVariableOp*model_bb_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02#
!model/bb_3/BiasAdd/ReadVariableOp?
model/bb_3/BiasAddBiasAddmodel/bb_3/MatMul:product:0)model/bb_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
model/bb_3/BiasAddy
model/bb_3/ReluRelumodel/bb_3/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
model/bb_3/Relu?
 model/cl_1/MatMul/ReadVariableOpReadVariableOp)model_cl_1_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02"
 model/cl_1/MatMul/ReadVariableOp?
model/cl_1/MatMulMatMulmodel/bl_8/Reshape:output:0(model/cl_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model/cl_1/MatMul?
!model/cl_1/BiasAdd/ReadVariableOpReadVariableOp*model_cl_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02#
!model/cl_1/BiasAdd/ReadVariableOp?
model/cl_1/BiasAddBiasAddmodel/cl_1/MatMul:product:0)model/cl_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
model/cl_1/BiasAddz
model/cl_1/ReluRelumodel/cl_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
model/cl_1/Relu?
#model/bb_head/MatMul/ReadVariableOpReadVariableOp,model_bb_head_matmul_readvariableop_resource*
_output_shapes

: *
dtype02%
#model/bb_head/MatMul/ReadVariableOp?
model/bb_head/MatMulMatMulmodel/bb_3/Relu:activations:0+model/bb_head/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model/bb_head/MatMul?
$model/bb_head/BiasAdd/ReadVariableOpReadVariableOp-model_bb_head_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02&
$model/bb_head/BiasAdd/ReadVariableOp?
model/bb_head/BiasAddBiasAddmodel/bb_head/MatMul:product:0,model/bb_head/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model/bb_head/BiasAdd?
model/bb_head/SigmoidSigmoidmodel/bb_head/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
model/bb_head/Sigmoid?
#model/cl_head/MatMul/ReadVariableOpReadVariableOp,model_cl_head_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02%
#model/cl_head/MatMul/ReadVariableOp?
model/cl_head/MatMulMatMulmodel/cl_1/Relu:activations:0+model/cl_head/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model/cl_head/MatMul?
$model/cl_head/BiasAdd/ReadVariableOpReadVariableOp-model_cl_head_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02&
$model/cl_head/BiasAdd/ReadVariableOp?
model/cl_head/BiasAddBiasAddmodel/cl_head/MatMul:product:0,model/cl_head/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
model/cl_head/BiasAdd?
IdentityIdentitymodel/bb_head/Sigmoid:y:0"^model/bb_1/BiasAdd/ReadVariableOp!^model/bb_1/MatMul/ReadVariableOp"^model/bb_2/BiasAdd/ReadVariableOp!^model/bb_2/MatMul/ReadVariableOp"^model/bb_3/BiasAdd/ReadVariableOp!^model/bb_3/MatMul/ReadVariableOp%^model/bb_head/BiasAdd/ReadVariableOp$^model/bb_head/MatMul/ReadVariableOp"^model/bl_2/BiasAdd/ReadVariableOp!^model/bl_2/Conv2D/ReadVariableOp"^model/bl_4/BiasAdd/ReadVariableOp!^model/bl_4/Conv2D/ReadVariableOp"^model/bl_6/BiasAdd/ReadVariableOp!^model/bl_6/Conv2D/ReadVariableOp"^model/cl_1/BiasAdd/ReadVariableOp!^model/cl_1/MatMul/ReadVariableOp%^model/cl_head/BiasAdd/ReadVariableOp$^model/cl_head/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identitymodel/cl_head/BiasAdd:output:0"^model/bb_1/BiasAdd/ReadVariableOp!^model/bb_1/MatMul/ReadVariableOp"^model/bb_2/BiasAdd/ReadVariableOp!^model/bb_2/MatMul/ReadVariableOp"^model/bb_3/BiasAdd/ReadVariableOp!^model/bb_3/MatMul/ReadVariableOp%^model/bb_head/BiasAdd/ReadVariableOp$^model/bb_head/MatMul/ReadVariableOp"^model/bl_2/BiasAdd/ReadVariableOp!^model/bl_2/Conv2D/ReadVariableOp"^model/bl_4/BiasAdd/ReadVariableOp!^model/bl_4/Conv2D/ReadVariableOp"^model/bl_6/BiasAdd/ReadVariableOp!^model/bl_6/Conv2D/ReadVariableOp"^model/cl_1/BiasAdd/ReadVariableOp!^model/cl_1/MatMul/ReadVariableOp%^model/cl_head/BiasAdd/ReadVariableOp$^model/cl_head/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : 2F
!model/bb_1/BiasAdd/ReadVariableOp!model/bb_1/BiasAdd/ReadVariableOp2D
 model/bb_1/MatMul/ReadVariableOp model/bb_1/MatMul/ReadVariableOp2F
!model/bb_2/BiasAdd/ReadVariableOp!model/bb_2/BiasAdd/ReadVariableOp2D
 model/bb_2/MatMul/ReadVariableOp model/bb_2/MatMul/ReadVariableOp2F
!model/bb_3/BiasAdd/ReadVariableOp!model/bb_3/BiasAdd/ReadVariableOp2D
 model/bb_3/MatMul/ReadVariableOp model/bb_3/MatMul/ReadVariableOp2L
$model/bb_head/BiasAdd/ReadVariableOp$model/bb_head/BiasAdd/ReadVariableOp2J
#model/bb_head/MatMul/ReadVariableOp#model/bb_head/MatMul/ReadVariableOp2F
!model/bl_2/BiasAdd/ReadVariableOp!model/bl_2/BiasAdd/ReadVariableOp2D
 model/bl_2/Conv2D/ReadVariableOp model/bl_2/Conv2D/ReadVariableOp2F
!model/bl_4/BiasAdd/ReadVariableOp!model/bl_4/BiasAdd/ReadVariableOp2D
 model/bl_4/Conv2D/ReadVariableOp model/bl_4/Conv2D/ReadVariableOp2F
!model/bl_6/BiasAdd/ReadVariableOp!model/bl_6/BiasAdd/ReadVariableOp2D
 model/bl_6/Conv2D/ReadVariableOp model/bl_6/Conv2D/ReadVariableOp2F
!model/cl_1/BiasAdd/ReadVariableOp!model/cl_1/BiasAdd/ReadVariableOp2D
 model/cl_1/MatMul/ReadVariableOp model/cl_1/MatMul/ReadVariableOp2L
$model/cl_head/BiasAdd/ReadVariableOp$model/cl_head/BiasAdd/ReadVariableOp2J
#model/cl_head/MatMul/ReadVariableOp#model/cl_head/MatMul/ReadVariableOp:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?O
?
__inference__traced_save_10119
file_prefix*
&savev2_bl_2_kernel_read_readvariableop(
$savev2_bl_2_bias_read_readvariableop*
&savev2_bl_4_kernel_read_readvariableop(
$savev2_bl_4_bias_read_readvariableop*
&savev2_bl_6_kernel_read_readvariableop(
$savev2_bl_6_bias_read_readvariableop*
&savev2_bb_1_kernel_read_readvariableop(
$savev2_bb_1_bias_read_readvariableop*
&savev2_bb_2_kernel_read_readvariableop(
$savev2_bb_2_bias_read_readvariableop*
&savev2_cl_1_kernel_read_readvariableop(
$savev2_cl_1_bias_read_readvariableop*
&savev2_bb_3_kernel_read_readvariableop(
$savev2_bb_3_bias_read_readvariableop-
)savev2_cl_head_kernel_read_readvariableop+
'savev2_cl_head_bias_read_readvariableop-
)savev2_bb_head_kernel_read_readvariableop+
'savev2_bb_head_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop&
"savev2_total_4_read_readvariableop&
"savev2_count_4_read_readvariableop1
-savev2_adam_cl_1_kernel_m_read_readvariableop/
+savev2_adam_cl_1_bias_m_read_readvariableop4
0savev2_adam_cl_head_kernel_m_read_readvariableop2
.savev2_adam_cl_head_bias_m_read_readvariableop1
-savev2_adam_cl_1_kernel_v_read_readvariableop/
+savev2_adam_cl_1_bias_v_read_readvariableop4
0savev2_adam_cl_head_kernel_v_read_readvariableop2
.savev2_adam_cl_head_bias_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpoints?
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1?
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:**
dtype0*?
value?B?*B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:**
dtype0*g
value^B\*B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices?
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0&savev2_bl_2_kernel_read_readvariableop$savev2_bl_2_bias_read_readvariableop&savev2_bl_4_kernel_read_readvariableop$savev2_bl_4_bias_read_readvariableop&savev2_bl_6_kernel_read_readvariableop$savev2_bl_6_bias_read_readvariableop&savev2_bb_1_kernel_read_readvariableop$savev2_bb_1_bias_read_readvariableop&savev2_bb_2_kernel_read_readvariableop$savev2_bb_2_bias_read_readvariableop&savev2_cl_1_kernel_read_readvariableop$savev2_cl_1_bias_read_readvariableop&savev2_bb_3_kernel_read_readvariableop$savev2_bb_3_bias_read_readvariableop)savev2_cl_head_kernel_read_readvariableop'savev2_cl_head_bias_read_readvariableop)savev2_bb_head_kernel_read_readvariableop'savev2_bb_head_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop-savev2_adam_cl_1_kernel_m_read_readvariableop+savev2_adam_cl_1_bias_m_read_readvariableop0savev2_adam_cl_head_kernel_m_read_readvariableop.savev2_adam_cl_head_bias_m_read_readvariableop-savev2_adam_cl_1_kernel_v_read_readvariableop+savev2_adam_cl_1_bias_v_read_readvariableop0savev2_adam_cl_head_kernel_v_read_readvariableop.savev2_adam_cl_head_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *8
dtypes.
,2*	2
SaveV2?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes?
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*?
_input_shapes?
?: ::: : : @:@:???:?:	?@:@:???:?:@ : :	?:: :: : : : : : : : : : : : : : : :???:?:	?::???:?:	?:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: @: 

_output_shapes
:@:'#
!
_output_shapes
:???:!

_output_shapes	
:?:%	!

_output_shapes
:	?@: 


_output_shapes
:@:'#
!
_output_shapes
:???:!

_output_shapes	
:?:$ 

_output_shapes

:@ : 

_output_shapes
: :%!

_output_shapes
:	?: 

_output_shapes
::$ 

_output_shapes

: : 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: : 

_output_shapes
: :!

_output_shapes
: :'"#
!
_output_shapes
:???:!#

_output_shapes	
:?:%$!

_output_shapes
:	?: %

_output_shapes
::'&#
!
_output_shapes
:???:!'

_output_shapes	
:?:%(!

_output_shapes
:	?: )

_output_shapes
::*

_output_shapes
: 
?_
?
?__inference_model_layer_call_and_return_conditional_losses_9620

inputs=
#bl_2_conv2d_readvariableop_resource:2
$bl_2_biasadd_readvariableop_resource:=
#bl_4_conv2d_readvariableop_resource: 2
$bl_4_biasadd_readvariableop_resource: =
#bl_6_conv2d_readvariableop_resource: @2
$bl_6_biasadd_readvariableop_resource:@8
#bb_1_matmul_readvariableop_resource:???3
$bb_1_biasadd_readvariableop_resource:	?6
#bb_2_matmul_readvariableop_resource:	?@2
$bb_2_biasadd_readvariableop_resource:@5
#bb_3_matmul_readvariableop_resource:@ 2
$bb_3_biasadd_readvariableop_resource: 8
#cl_1_matmul_readvariableop_resource:???3
$cl_1_biasadd_readvariableop_resource:	?8
&bb_head_matmul_readvariableop_resource: 5
'bb_head_biasadd_readvariableop_resource:9
&cl_head_matmul_readvariableop_resource:	?5
'cl_head_biasadd_readvariableop_resource:
identity

identity_1??bb_1/BiasAdd/ReadVariableOp?bb_1/MatMul/ReadVariableOp?bb_2/BiasAdd/ReadVariableOp?bb_2/MatMul/ReadVariableOp?bb_3/BiasAdd/ReadVariableOp?bb_3/MatMul/ReadVariableOp?bb_head/BiasAdd/ReadVariableOp?bb_head/MatMul/ReadVariableOp?bl_2/BiasAdd/ReadVariableOp?bl_2/Conv2D/ReadVariableOp?bl_4/BiasAdd/ReadVariableOp?bl_4/Conv2D/ReadVariableOp?bl_6/BiasAdd/ReadVariableOp?bl_6/Conv2D/ReadVariableOp?cl_1/BiasAdd/ReadVariableOp?cl_1/MatMul/ReadVariableOp?cl_head/BiasAdd/ReadVariableOp?cl_head/MatMul/ReadVariableOp_
bl_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
bl_1/Cast/xc
bl_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
bl_1/Cast_1/xu
bl_1/mulMulinputsbl_1/Cast/x:output:0*
T0*1
_output_shapes
:???????????2

bl_1/mul
bl_1/addAddV2bl_1/mul:z:0bl_1/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2

bl_1/add?
bl_2/Conv2D/ReadVariableOpReadVariableOp#bl_2_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
bl_2/Conv2D/ReadVariableOp?
bl_2/Conv2DConv2Dbl_1/add:z:0"bl_2/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????*
paddingSAME*
strides
2
bl_2/Conv2D?
bl_2/BiasAdd/ReadVariableOpReadVariableOp$bl_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
bl_2/BiasAdd/ReadVariableOp?
bl_2/BiasAddBiasAddbl_2/Conv2D:output:0#bl_2/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:???????????2
bl_2/BiasAddq
	bl_2/ReluRelubl_2/BiasAdd:output:0*
T0*1
_output_shapes
:???????????2
	bl_2/Relu?
bl_3/MaxPoolMaxPoolbl_2/Relu:activations:0*/
_output_shapes
:?????????ll*
ksize
*
paddingVALID*
strides
2
bl_3/MaxPool?
bl_4/Conv2D/ReadVariableOpReadVariableOp#bl_4_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype02
bl_4/Conv2D/ReadVariableOp?
bl_4/Conv2DConv2Dbl_3/MaxPool:output:0"bl_4/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ll *
paddingSAME*
strides
2
bl_4/Conv2D?
bl_4/BiasAdd/ReadVariableOpReadVariableOp$bl_4_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
bl_4/BiasAdd/ReadVariableOp?
bl_4/BiasAddBiasAddbl_4/Conv2D:output:0#bl_4/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????ll 2
bl_4/BiasAddo
	bl_4/ReluRelubl_4/BiasAdd:output:0*
T0*/
_output_shapes
:?????????ll 2
	bl_4/Relu?
bl_5/MaxPoolMaxPoolbl_4/Relu:activations:0*/
_output_shapes
:?????????66 *
ksize
*
paddingVALID*
strides
2
bl_5/MaxPool?
bl_6/Conv2D/ReadVariableOpReadVariableOp#bl_6_conv2d_readvariableop_resource*&
_output_shapes
: @*
dtype02
bl_6/Conv2D/ReadVariableOp?
bl_6/Conv2DConv2Dbl_5/MaxPool:output:0"bl_6/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????66@*
paddingSAME*
strides
2
bl_6/Conv2D?
bl_6/BiasAdd/ReadVariableOpReadVariableOp$bl_6_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
bl_6/BiasAdd/ReadVariableOp?
bl_6/BiasAddBiasAddbl_6/Conv2D:output:0#bl_6/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:?????????66@2
bl_6/BiasAddo
	bl_6/ReluRelubl_6/BiasAdd:output:0*
T0*/
_output_shapes
:?????????66@2
	bl_6/Relu?
bl_7/MaxPoolMaxPoolbl_6/Relu:activations:0*/
_output_shapes
:?????????@*
ksize
*
paddingVALID*
strides
2
bl_7/MaxPooli

bl_8/ConstConst*
_output_shapes
:*
dtype0*
valueB"????@?  2

bl_8/Const?
bl_8/ReshapeReshapebl_7/MaxPool:output:0bl_8/Const:output:0*
T0*)
_output_shapes
:???????????2
bl_8/Reshape?
bb_1/MatMul/ReadVariableOpReadVariableOp#bb_1_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02
bb_1/MatMul/ReadVariableOp?
bb_1/MatMulMatMulbl_8/Reshape:output:0"bb_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
bb_1/MatMul?
bb_1/BiasAdd/ReadVariableOpReadVariableOp$bb_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
bb_1/BiasAdd/ReadVariableOp?
bb_1/BiasAddBiasAddbb_1/MatMul:product:0#bb_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
bb_1/BiasAddh
	bb_1/ReluRelubb_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
	bb_1/Relu?
bb_2/MatMul/ReadVariableOpReadVariableOp#bb_2_matmul_readvariableop_resource*
_output_shapes
:	?@*
dtype02
bb_2/MatMul/ReadVariableOp?
bb_2/MatMulMatMulbb_1/Relu:activations:0"bb_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
bb_2/MatMul?
bb_2/BiasAdd/ReadVariableOpReadVariableOp$bb_2_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
bb_2/BiasAdd/ReadVariableOp?
bb_2/BiasAddBiasAddbb_2/MatMul:product:0#bb_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????@2
bb_2/BiasAddg
	bb_2/ReluRelubb_2/BiasAdd:output:0*
T0*'
_output_shapes
:?????????@2
	bb_2/Relu?
bb_3/MatMul/ReadVariableOpReadVariableOp#bb_3_matmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
bb_3/MatMul/ReadVariableOp?
bb_3/MatMulMatMulbb_2/Relu:activations:0"bb_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
bb_3/MatMul?
bb_3/BiasAdd/ReadVariableOpReadVariableOp$bb_3_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02
bb_3/BiasAdd/ReadVariableOp?
bb_3/BiasAddBiasAddbb_3/MatMul:product:0#bb_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
bb_3/BiasAddg
	bb_3/ReluRelubb_3/BiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
	bb_3/Relu?
cl_1/MatMul/ReadVariableOpReadVariableOp#cl_1_matmul_readvariableop_resource*!
_output_shapes
:???*
dtype02
cl_1/MatMul/ReadVariableOp?
cl_1/MatMulMatMulbl_8/Reshape:output:0"cl_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
cl_1/MatMul?
cl_1/BiasAdd/ReadVariableOpReadVariableOp$cl_1_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype02
cl_1/BiasAdd/ReadVariableOp?
cl_1/BiasAddBiasAddcl_1/MatMul:product:0#cl_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????2
cl_1/BiasAddh
	cl_1/ReluRelucl_1/BiasAdd:output:0*
T0*(
_output_shapes
:??????????2
	cl_1/Relu?
bb_head/MatMul/ReadVariableOpReadVariableOp&bb_head_matmul_readvariableop_resource*
_output_shapes

: *
dtype02
bb_head/MatMul/ReadVariableOp?
bb_head/MatMulMatMulbb_3/Relu:activations:0%bb_head/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
bb_head/MatMul?
bb_head/BiasAdd/ReadVariableOpReadVariableOp'bb_head_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
bb_head/BiasAdd/ReadVariableOp?
bb_head/BiasAddBiasAddbb_head/MatMul:product:0&bb_head/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
bb_head/BiasAddy
bb_head/SigmoidSigmoidbb_head/BiasAdd:output:0*
T0*'
_output_shapes
:?????????2
bb_head/Sigmoid?
cl_head/MatMul/ReadVariableOpReadVariableOp&cl_head_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype02
cl_head/MatMul/ReadVariableOp?
cl_head/MatMulMatMulcl_1/Relu:activations:0%cl_head/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
cl_head/MatMul?
cl_head/BiasAdd/ReadVariableOpReadVariableOp'cl_head_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
cl_head/BiasAdd/ReadVariableOp?
cl_head/BiasAddBiasAddcl_head/MatMul:product:0&cl_head/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????2
cl_head/BiasAdd?
IdentityIdentitycl_head/BiasAdd:output:0^bb_1/BiasAdd/ReadVariableOp^bb_1/MatMul/ReadVariableOp^bb_2/BiasAdd/ReadVariableOp^bb_2/MatMul/ReadVariableOp^bb_3/BiasAdd/ReadVariableOp^bb_3/MatMul/ReadVariableOp^bb_head/BiasAdd/ReadVariableOp^bb_head/MatMul/ReadVariableOp^bl_2/BiasAdd/ReadVariableOp^bl_2/Conv2D/ReadVariableOp^bl_4/BiasAdd/ReadVariableOp^bl_4/Conv2D/ReadVariableOp^bl_6/BiasAdd/ReadVariableOp^bl_6/Conv2D/ReadVariableOp^cl_1/BiasAdd/ReadVariableOp^cl_1/MatMul/ReadVariableOp^cl_head/BiasAdd/ReadVariableOp^cl_head/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identitybb_head/Sigmoid:y:0^bb_1/BiasAdd/ReadVariableOp^bb_1/MatMul/ReadVariableOp^bb_2/BiasAdd/ReadVariableOp^bb_2/MatMul/ReadVariableOp^bb_3/BiasAdd/ReadVariableOp^bb_3/MatMul/ReadVariableOp^bb_head/BiasAdd/ReadVariableOp^bb_head/MatMul/ReadVariableOp^bl_2/BiasAdd/ReadVariableOp^bl_2/Conv2D/ReadVariableOp^bl_4/BiasAdd/ReadVariableOp^bl_4/Conv2D/ReadVariableOp^bl_6/BiasAdd/ReadVariableOp^bl_6/Conv2D/ReadVariableOp^cl_1/BiasAdd/ReadVariableOp^cl_1/MatMul/ReadVariableOp^cl_head/BiasAdd/ReadVariableOp^cl_head/MatMul/ReadVariableOp*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : 2:
bb_1/BiasAdd/ReadVariableOpbb_1/BiasAdd/ReadVariableOp28
bb_1/MatMul/ReadVariableOpbb_1/MatMul/ReadVariableOp2:
bb_2/BiasAdd/ReadVariableOpbb_2/BiasAdd/ReadVariableOp28
bb_2/MatMul/ReadVariableOpbb_2/MatMul/ReadVariableOp2:
bb_3/BiasAdd/ReadVariableOpbb_3/BiasAdd/ReadVariableOp28
bb_3/MatMul/ReadVariableOpbb_3/MatMul/ReadVariableOp2@
bb_head/BiasAdd/ReadVariableOpbb_head/BiasAdd/ReadVariableOp2>
bb_head/MatMul/ReadVariableOpbb_head/MatMul/ReadVariableOp2:
bl_2/BiasAdd/ReadVariableOpbl_2/BiasAdd/ReadVariableOp28
bl_2/Conv2D/ReadVariableOpbl_2/Conv2D/ReadVariableOp2:
bl_4/BiasAdd/ReadVariableOpbl_4/BiasAdd/ReadVariableOp28
bl_4/Conv2D/ReadVariableOpbl_4/Conv2D/ReadVariableOp2:
bl_6/BiasAdd/ReadVariableOpbl_6/BiasAdd/ReadVariableOp28
bl_6/Conv2D/ReadVariableOpbl_6/Conv2D/ReadVariableOp2:
cl_1/BiasAdd/ReadVariableOpcl_1/BiasAdd/ReadVariableOp28
cl_1/MatMul/ReadVariableOpcl_1/MatMul/ReadVariableOp2@
cl_head/BiasAdd/ReadVariableOpcl_head/BiasAdd/ReadVariableOp2>
cl_head/MatMul/ReadVariableOpcl_head/MatMul/ReadVariableOp:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?
Z
>__inference_bl_3_layer_call_and_return_conditional_losses_8847

inputs
identity?
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4????????????????????????????????????*
ksize
*
paddingVALID*
strides
2	
MaxPool?
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4????????????????????????????????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4????????????????????????????????????:r n
J
_output_shapes8
6:4????????????????????????????????????
 
_user_specified_nameinputs
?@
?
?__inference_model_layer_call_and_return_conditional_losses_9053

inputs#
	bl_2_8900:
	bl_2_8902:#
	bl_4_8918: 
	bl_4_8920: #
	bl_6_8936: @
	bl_6_8938:@
	bb_1_8962:???
	bb_1_8964:	?
	bb_2_8979:	?@
	bb_2_8981:@
	bb_3_8996:@ 
	bb_3_8998: 
	cl_1_9013:???
	cl_1_9015:	?
bb_head_9030: 
bb_head_9032:
cl_head_9046:	?
cl_head_9048:
identity

identity_1??bb_1/StatefulPartitionedCall?bb_2/StatefulPartitionedCall?bb_3/StatefulPartitionedCall?bb_head/StatefulPartitionedCall?bl_2/StatefulPartitionedCall?bl_4/StatefulPartitionedCall?bl_6/StatefulPartitionedCall?cl_1/StatefulPartitionedCall?cl_head/StatefulPartitionedCall_
bl_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
bl_1/Cast/xc
bl_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
bl_1/Cast_1/xu
bl_1/mulMulinputsbl_1/Cast/x:output:0*
T0*1
_output_shapes
:???????????2

bl_1/mul
bl_1/addAddV2bl_1/mul:z:0bl_1/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2

bl_1/add?
bl_2/StatefulPartitionedCallStatefulPartitionedCallbl_1/add:z:0	bl_2_8900	bl_2_8902*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_2_layer_call_and_return_conditional_losses_88992
bl_2/StatefulPartitionedCall?
bl_3/PartitionedCallPartitionedCall%bl_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ll* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_3_layer_call_and_return_conditional_losses_88472
bl_3/PartitionedCall?
bl_4/StatefulPartitionedCallStatefulPartitionedCallbl_3/PartitionedCall:output:0	bl_4_8918	bl_4_8920*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ll *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_4_layer_call_and_return_conditional_losses_89172
bl_4/StatefulPartitionedCall?
bl_5/PartitionedCallPartitionedCall%bl_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????66 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_5_layer_call_and_return_conditional_losses_88592
bl_5/PartitionedCall?
bl_6/StatefulPartitionedCallStatefulPartitionedCallbl_5/PartitionedCall:output:0	bl_6_8936	bl_6_8938*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????66@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_6_layer_call_and_return_conditional_losses_89352
bl_6/StatefulPartitionedCall?
bl_7/PartitionedCallPartitionedCall%bl_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_7_layer_call_and_return_conditional_losses_88712
bl_7/PartitionedCall?
bl_8/PartitionedCallPartitionedCallbl_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_8_layer_call_and_return_conditional_losses_89482
bl_8/PartitionedCall?
bb_1/StatefulPartitionedCallStatefulPartitionedCallbl_8/PartitionedCall:output:0	bb_1_8962	bb_1_8964*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bb_1_layer_call_and_return_conditional_losses_89612
bb_1/StatefulPartitionedCall?
bb_2/StatefulPartitionedCallStatefulPartitionedCall%bb_1/StatefulPartitionedCall:output:0	bb_2_8979	bb_2_8981*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bb_2_layer_call_and_return_conditional_losses_89782
bb_2/StatefulPartitionedCall?
bb_3/StatefulPartitionedCallStatefulPartitionedCall%bb_2/StatefulPartitionedCall:output:0	bb_3_8996	bb_3_8998*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bb_3_layer_call_and_return_conditional_losses_89952
bb_3/StatefulPartitionedCall?
cl_1/StatefulPartitionedCallStatefulPartitionedCallbl_8/PartitionedCall:output:0	cl_1_9013	cl_1_9015*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_cl_1_layer_call_and_return_conditional_losses_90122
cl_1/StatefulPartitionedCall?
bb_head/StatefulPartitionedCallStatefulPartitionedCall%bb_3/StatefulPartitionedCall:output:0bb_head_9030bb_head_9032*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_bb_head_layer_call_and_return_conditional_losses_90292!
bb_head/StatefulPartitionedCall?
cl_head/StatefulPartitionedCallStatefulPartitionedCall%cl_1/StatefulPartitionedCall:output:0cl_head_9046cl_head_9048*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_cl_head_layer_call_and_return_conditional_losses_90452!
cl_head/StatefulPartitionedCall?
IdentityIdentity(cl_head/StatefulPartitionedCall:output:0^bb_1/StatefulPartitionedCall^bb_2/StatefulPartitionedCall^bb_3/StatefulPartitionedCall ^bb_head/StatefulPartitionedCall^bl_2/StatefulPartitionedCall^bl_4/StatefulPartitionedCall^bl_6/StatefulPartitionedCall^cl_1/StatefulPartitionedCall ^cl_head/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity(bb_head/StatefulPartitionedCall:output:0^bb_1/StatefulPartitionedCall^bb_2/StatefulPartitionedCall^bb_3/StatefulPartitionedCall ^bb_head/StatefulPartitionedCall^bl_2/StatefulPartitionedCall^bl_4/StatefulPartitionedCall^bl_6/StatefulPartitionedCall^cl_1/StatefulPartitionedCall ^cl_head/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : 2<
bb_1/StatefulPartitionedCallbb_1/StatefulPartitionedCall2<
bb_2/StatefulPartitionedCallbb_2/StatefulPartitionedCall2<
bb_3/StatefulPartitionedCallbb_3/StatefulPartitionedCall2B
bb_head/StatefulPartitionedCallbb_head/StatefulPartitionedCall2<
bl_2/StatefulPartitionedCallbl_2/StatefulPartitionedCall2<
bl_4/StatefulPartitionedCallbl_4/StatefulPartitionedCall2<
bl_6/StatefulPartitionedCallbl_6/StatefulPartitionedCall2<
cl_1/StatefulPartitionedCallcl_1/StatefulPartitionedCall2B
cl_head/StatefulPartitionedCallcl_head/StatefulPartitionedCall:Y U
1
_output_shapes
:???????????
 
_user_specified_nameinputs
?@
?
?__inference_model_layer_call_and_return_conditional_losses_9435
input_1#
	bl_2_9384:
	bl_2_9386:#
	bl_4_9390: 
	bl_4_9392: #
	bl_6_9396: @
	bl_6_9398:@
	bb_1_9403:???
	bb_1_9405:	?
	bb_2_9408:	?@
	bb_2_9410:@
	bb_3_9413:@ 
	bb_3_9415: 
	cl_1_9418:???
	cl_1_9420:	?
bb_head_9423: 
bb_head_9425:
cl_head_9428:	?
cl_head_9430:
identity

identity_1??bb_1/StatefulPartitionedCall?bb_2/StatefulPartitionedCall?bb_3/StatefulPartitionedCall?bb_head/StatefulPartitionedCall?bl_2/StatefulPartitionedCall?bl_4/StatefulPartitionedCall?bl_6/StatefulPartitionedCall?cl_1/StatefulPartitionedCall?cl_head/StatefulPartitionedCall_
bl_1/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???;2
bl_1/Cast/xc
bl_1/Cast_1/xConst*
_output_shapes
: *
dtype0*
valueB
 *    2
bl_1/Cast_1/xv
bl_1/mulMulinput_1bl_1/Cast/x:output:0*
T0*1
_output_shapes
:???????????2

bl_1/mul
bl_1/addAddV2bl_1/mul:z:0bl_1/Cast_1/x:output:0*
T0*1
_output_shapes
:???????????2

bl_1/add?
bl_2/StatefulPartitionedCallStatefulPartitionedCallbl_1/add:z:0	bl_2_9384	bl_2_9386*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:???????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_2_layer_call_and_return_conditional_losses_88992
bl_2/StatefulPartitionedCall?
bl_3/PartitionedCallPartitionedCall%bl_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ll* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_3_layer_call_and_return_conditional_losses_88472
bl_3/PartitionedCall?
bl_4/StatefulPartitionedCallStatefulPartitionedCallbl_3/PartitionedCall:output:0	bl_4_9390	bl_4_9392*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????ll *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_4_layer_call_and_return_conditional_losses_89172
bl_4/StatefulPartitionedCall?
bl_5/PartitionedCallPartitionedCall%bl_4/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????66 * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_5_layer_call_and_return_conditional_losses_88592
bl_5/PartitionedCall?
bl_6/StatefulPartitionedCallStatefulPartitionedCallbl_5/PartitionedCall:output:0	bl_6_9396	bl_6_9398*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????66@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_6_layer_call_and_return_conditional_losses_89352
bl_6/StatefulPartitionedCall?
bl_7/PartitionedCallPartitionedCall%bl_6/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:?????????@* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_7_layer_call_and_return_conditional_losses_88712
bl_7/PartitionedCall?
bl_8/PartitionedCallPartitionedCallbl_7/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:???????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bl_8_layer_call_and_return_conditional_losses_89482
bl_8/PartitionedCall?
bb_1/StatefulPartitionedCallStatefulPartitionedCallbl_8/PartitionedCall:output:0	bb_1_9403	bb_1_9405*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bb_1_layer_call_and_return_conditional_losses_89612
bb_1/StatefulPartitionedCall?
bb_2/StatefulPartitionedCallStatefulPartitionedCall%bb_1/StatefulPartitionedCall:output:0	bb_2_9408	bb_2_9410*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????@*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bb_2_layer_call_and_return_conditional_losses_89782
bb_2/StatefulPartitionedCall?
bb_3/StatefulPartitionedCallStatefulPartitionedCall%bb_2/StatefulPartitionedCall:output:0	bb_3_9413	bb_3_9415*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:????????? *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_bb_3_layer_call_and_return_conditional_losses_89952
bb_3/StatefulPartitionedCall?
cl_1/StatefulPartitionedCallStatefulPartitionedCallbl_8/PartitionedCall:output:0	cl_1_9418	cl_1_9420*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_cl_1_layer_call_and_return_conditional_losses_90122
cl_1/StatefulPartitionedCall?
bb_head/StatefulPartitionedCallStatefulPartitionedCall%bb_3/StatefulPartitionedCall:output:0bb_head_9423bb_head_9425*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_bb_head_layer_call_and_return_conditional_losses_90292!
bb_head/StatefulPartitionedCall?
cl_head/StatefulPartitionedCallStatefulPartitionedCall%cl_1/StatefulPartitionedCall:output:0cl_head_9428cl_head_9430*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *J
fERC
A__inference_cl_head_layer_call_and_return_conditional_losses_90452!
cl_head/StatefulPartitionedCall?
IdentityIdentity(cl_head/StatefulPartitionedCall:output:0^bb_1/StatefulPartitionedCall^bb_2/StatefulPartitionedCall^bb_3/StatefulPartitionedCall ^bb_head/StatefulPartitionedCall^bl_2/StatefulPartitionedCall^bl_4/StatefulPartitionedCall^bl_6/StatefulPartitionedCall^cl_1/StatefulPartitionedCall ^cl_head/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity?

Identity_1Identity(bb_head/StatefulPartitionedCall:output:0^bb_1/StatefulPartitionedCall^bb_2/StatefulPartitionedCall^bb_3/StatefulPartitionedCall ^bb_head/StatefulPartitionedCall^bl_2/StatefulPartitionedCall^bl_4/StatefulPartitionedCall^bl_6/StatefulPartitionedCall^cl_1/StatefulPartitionedCall ^cl_head/StatefulPartitionedCall*
T0*'
_output_shapes
:?????????2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:???????????: : : : : : : : : : : : : : : : : : 2<
bb_1/StatefulPartitionedCallbb_1/StatefulPartitionedCall2<
bb_2/StatefulPartitionedCallbb_2/StatefulPartitionedCall2<
bb_3/StatefulPartitionedCallbb_3/StatefulPartitionedCall2B
bb_head/StatefulPartitionedCallbb_head/StatefulPartitionedCall2<
bl_2/StatefulPartitionedCallbl_2/StatefulPartitionedCall2<
bl_4/StatefulPartitionedCallbl_4/StatefulPartitionedCall2<
bl_6/StatefulPartitionedCallbl_6/StatefulPartitionedCall2<
cl_1/StatefulPartitionedCallcl_1/StatefulPartitionedCall2B
cl_head/StatefulPartitionedCallcl_head/StatefulPartitionedCall:Z V
1
_output_shapes
:???????????
!
_user_specified_name	input_1
?
?
#__inference_cl_1_layer_call_fn_9913

inputs
unknown:???
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *G
fBR@
>__inference_cl_1_layer_call_and_return_conditional_losses_90122
StatefulPartitionedCall?
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:??????????2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:???????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:???????????
 
_user_specified_nameinputs
?

?
>__inference_bb_3_layer_call_and_return_conditional_losses_8995

inputs0
matmul_readvariableop_resource:@ -
biasadd_readvariableop_resource: 
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOp?
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:@ *
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2
MatMul?
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOp?
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:????????? 2	
BiasAddX
ReluReluBiasAdd:output:0*
T0*'
_output_shapes
:????????? 2
Relu?
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:????????? 2

Identity"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:?????????@: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:?????????@
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
E
input_1:
serving_default_input_1:0???????????;
bb_head0
StatefulPartitionedCall:0?????????;
cl_head0
StatefulPartitionedCall:1?????????tensorflow/serving/predict:??
ʂ
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer_with_weights-3

layer-9
layer_with_weights-4
layer-10
layer_with_weights-5
layer-11
layer_with_weights-6
layer-12
layer_with_weights-7
layer-13
layer_with_weights-8
layer-14
	optimizer
loss

signatures
#_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
+?&call_and_return_all_conditional_losses
?__call__
?_default_save_signature"?}
_tf_keras_network?|{"name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 216, 216, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "Rescaling", "config": {"name": "bl_1", "trainable": false, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}, "name": "bl_1", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "bl_2", "trainable": false, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "bl_2", "inbound_nodes": [[["bl_1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "bl_3", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "bl_3", "inbound_nodes": [[["bl_2", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "bl_4", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "bl_4", "inbound_nodes": [[["bl_3", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "bl_5", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "bl_5", "inbound_nodes": [[["bl_4", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "bl_6", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "bl_6", "inbound_nodes": [[["bl_5", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "bl_7", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "bl_7", "inbound_nodes": [[["bl_6", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "bl_8", "trainable": false, "dtype": "float32", "data_format": "channels_last"}, "name": "bl_8", "inbound_nodes": [[["bl_7", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "bb_1", "trainable": false, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "bb_1", "inbound_nodes": [[["bl_8", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "bb_2", "trainable": false, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "bb_2", "inbound_nodes": [[["bb_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "cl_1", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "cl_1", "inbound_nodes": [[["bl_8", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "bb_3", "trainable": false, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "bb_3", "inbound_nodes": [[["bb_2", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "cl_head", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "cl_head", "inbound_nodes": [[["cl_1", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "bb_head", "trainable": false, "dtype": "float32", "units": 4, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "bb_head", "inbound_nodes": [[["bb_3", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["cl_head", 0, 0], ["bb_head", 0, 0]]}, "shared_object_id": 33, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 216, 216, 3]}, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 216, 216, 3]}, "is_graph_network": true, "save_spec": {"class_name": "TypeSpec", "type_spec": "tf.TensorSpec", "serialized": [{"class_name": "TensorShape", "items": [null, 216, 216, 3]}, "float32", "input_1"]}, "keras_version": "2.5.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 216, 216, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": [], "shared_object_id": 0}, {"class_name": "Rescaling", "config": {"name": "bl_1", "trainable": false, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}, "name": "bl_1", "inbound_nodes": [[["input_1", 0, 0, {}]]], "shared_object_id": 1}, {"class_name": "Conv2D", "config": {"name": "bl_2", "trainable": false, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "bl_2", "inbound_nodes": [[["bl_1", 0, 0, {}]]], "shared_object_id": 4}, {"class_name": "MaxPooling2D", "config": {"name": "bl_3", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "bl_3", "inbound_nodes": [[["bl_2", 0, 0, {}]]], "shared_object_id": 5}, {"class_name": "Conv2D", "config": {"name": "bl_4", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "bl_4", "inbound_nodes": [[["bl_3", 0, 0, {}]]], "shared_object_id": 8}, {"class_name": "MaxPooling2D", "config": {"name": "bl_5", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "bl_5", "inbound_nodes": [[["bl_4", 0, 0, {}]]], "shared_object_id": 9}, {"class_name": "Conv2D", "config": {"name": "bl_6", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "bl_6", "inbound_nodes": [[["bl_5", 0, 0, {}]]], "shared_object_id": 12}, {"class_name": "MaxPooling2D", "config": {"name": "bl_7", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "name": "bl_7", "inbound_nodes": [[["bl_6", 0, 0, {}]]], "shared_object_id": 13}, {"class_name": "Flatten", "config": {"name": "bl_8", "trainable": false, "dtype": "float32", "data_format": "channels_last"}, "name": "bl_8", "inbound_nodes": [[["bl_7", 0, 0, {}]]], "shared_object_id": 14}, {"class_name": "Dense", "config": {"name": "bb_1", "trainable": false, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "bb_1", "inbound_nodes": [[["bl_8", 0, 0, {}]]], "shared_object_id": 17}, {"class_name": "Dense", "config": {"name": "bb_2", "trainable": false, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "bb_2", "inbound_nodes": [[["bb_1", 0, 0, {}]]], "shared_object_id": 20}, {"class_name": "Dense", "config": {"name": "cl_1", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "cl_1", "inbound_nodes": [[["bl_8", 0, 0, {}]]], "shared_object_id": 23}, {"class_name": "Dense", "config": {"name": "bb_3", "trainable": false, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 24}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "bb_3", "inbound_nodes": [[["bb_2", 0, 0, {}]]], "shared_object_id": 26}, {"class_name": "Dense", "config": {"name": "cl_head", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 27}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 28}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "cl_head", "inbound_nodes": [[["cl_1", 0, 0, {}]]], "shared_object_id": 29}, {"class_name": "Dense", "config": {"name": "bb_head", "trainable": false, "dtype": "float32", "units": 4, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 30}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 31}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "bb_head", "inbound_nodes": [[["bb_3", 0, 0, {}]]], "shared_object_id": 32}], "input_layers": [["input_1", 0, 0]], "output_layers": [["cl_head", 0, 0], ["bb_head", 0, 0]]}}, "training_config": {"loss": {"cl_head": {"class_name": "SparseCategoricalCrossentropy", "config": {"reduction": "auto", "name": "sparse_categorical_crossentropy", "from_logits": true}, "shared_object_id": 35}, "bb_head": "mean_squared_error"}, "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "cl_head_accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 36}], [{"class_name": "MeanMetricWrapper", "config": {"name": "bb_head_accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 37}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
?
#_self_saveable_object_factories"?
_tf_keras_input_layer?{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 216, 216, 3]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 216, 216, 3]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}
?
#_self_saveable_object_factories
	keras_api"?
_tf_keras_layer?{"name": "bl_1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "class_name": "Rescaling", "config": {"name": "bl_1", "trainable": false, "dtype": "float32", "scale": 0.00392156862745098, "offset": 0.0}, "inbound_nodes": [[["input_1", 0, 0, {}]]], "shared_object_id": 1}
?

kernel
bias
#_self_saveable_object_factories
	variables
trainable_variables
 regularization_losses
!	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "bl_2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "bl_2", "trainable": false, "dtype": "float32", "filters": 16, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 2}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 3}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["bl_1", 0, 0, {}]]], "shared_object_id": 4, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 3}}, "shared_object_id": 38}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 216, 216, 3]}}
?
#"_self_saveable_object_factories
#	variables
$trainable_variables
%regularization_losses
&	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "bl_3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "bl_3", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["bl_2", 0, 0, {}]]], "shared_object_id": 5, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 39}}
?

'kernel
(bias
#)_self_saveable_object_factories
*	variables
+trainable_variables
,regularization_losses
-	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "bl_4", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "bl_4", "trainable": false, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 6}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 7}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["bl_3", 0, 0, {}]]], "shared_object_id": 8, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 16}}, "shared_object_id": 40}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 108, 108, 16]}}
?
#._self_saveable_object_factories
/	variables
0trainable_variables
1regularization_losses
2	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "bl_5", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "bl_5", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["bl_4", 0, 0, {}]]], "shared_object_id": 9, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 41}}
?

3kernel
4bias
#5_self_saveable_object_factories
6	variables
7trainable_variables
8regularization_losses
9	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?	
_tf_keras_layer?	{"name": "bl_6", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Conv2D", "config": {"name": "bl_6", "trainable": false, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 10}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 11}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["bl_5", 0, 0, {}]]], "shared_object_id": 12, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 32}}, "shared_object_id": 42}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 54, 54, 32]}}
?
#:_self_saveable_object_factories
;	variables
<trainable_variables
=regularization_losses
>	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "bl_7", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "MaxPooling2D", "config": {"name": "bl_7", "trainable": false, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [2, 2]}, "data_format": "channels_last"}, "inbound_nodes": [[["bl_6", 0, 0, {}]]], "shared_object_id": 13, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}, "shared_object_id": 43}}
?
#?_self_saveable_object_factories
@	variables
Atrainable_variables
Bregularization_losses
C	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "bl_8", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Flatten", "config": {"name": "bl_8", "trainable": false, "dtype": "float32", "data_format": "channels_last"}, "inbound_nodes": [[["bl_7", 0, 0, {}]]], "shared_object_id": 14, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}, "shared_object_id": 44}}
?	

Dkernel
Ebias
#F_self_saveable_object_factories
G	variables
Htrainable_variables
Iregularization_losses
J	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "bb_1", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "bb_1", "trainable": false, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 15}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 16}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["bl_8", 0, 0, {}]]], "shared_object_id": 17, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 46656}}, "shared_object_id": 45}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 46656]}}
?	

Kkernel
Lbias
#M_self_saveable_object_factories
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "bb_2", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "bb_2", "trainable": false, "dtype": "float32", "units": 64, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 18}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 19}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["bb_1", 0, 0, {}]]], "shared_object_id": 20, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 46}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?	

Rkernel
Sbias
#T_self_saveable_object_factories
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "cl_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "cl_1", "trainable": true, "dtype": "float32", "units": 128, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 21}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 22}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["bl_8", 0, 0, {}]]], "shared_object_id": 23, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 46656}}, "shared_object_id": 47}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 46656]}}
?	

Ykernel
Zbias
#[_self_saveable_object_factories
\	variables
]trainable_variables
^regularization_losses
_	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "bb_3", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "bb_3", "trainable": false, "dtype": "float32", "units": 32, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 24}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 25}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["bb_2", 0, 0, {}]]], "shared_object_id": 26, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 64}}, "shared_object_id": 48}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 64]}}
?	

`kernel
abias
#b_self_saveable_object_factories
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "cl_head", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "cl_head", "trainable": true, "dtype": "float32", "units": 2, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 27}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 28}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["cl_1", 0, 0, {}]]], "shared_object_id": 29, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 128}}, "shared_object_id": 49}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 128]}}
?	

gkernel
hbias
#i_self_saveable_object_factories
j	variables
ktrainable_variables
lregularization_losses
m	keras_api
+?&call_and_return_all_conditional_losses
?__call__"?
_tf_keras_layer?{"name": "bb_head", "trainable": false, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "class_name": "Dense", "config": {"name": "bb_head", "trainable": false, "dtype": "float32", "units": 4, "activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}, "shared_object_id": 30}, "bias_initializer": {"class_name": "Zeros", "config": {}, "shared_object_id": 31}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "inbound_nodes": [[["bb_3", 0, 0, {}]]], "shared_object_id": 32, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 32}}, "shared_object_id": 50}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32]}}
?
niter

obeta_1

pbeta_2
	qdecay
rlearning_rateRm?Sm?`m?am?Rv?Sv?`v?av?"
	optimizer
 "
trackable_dict_wrapper
-
?serving_default"
signature_map
 "
trackable_dict_wrapper
?
0
1
'2
(3
34
45
D6
E7
K8
L9
R10
S11
Y12
Z13
`14
a15
g16
h17"
trackable_list_wrapper
<
R0
S1
`2
a3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
snon_trainable_variables
	variables
trainable_variables
tmetrics
regularization_losses

ulayers
vlayer_regularization_losses
wlayer_metrics
?__call__
?_default_save_signature
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_dict_wrapper
"
_generic_user_object
%:#2bl_2/kernel
:2	bl_2/bias
 "
trackable_dict_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
xnon_trainable_variables
	variables
ymetrics
trainable_variables
 regularization_losses

zlayers
{layer_regularization_losses
|layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
}non_trainable_variables
#	variables
~metrics
$trainable_variables
%regularization_losses

layers
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
%:# 2bl_4/kernel
: 2	bl_4/bias
 "
trackable_dict_wrapper
.
'0
(1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
*	variables
?metrics
+trainable_variables
,regularization_losses
?layers
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
/	variables
?metrics
0trainable_variables
1regularization_losses
?layers
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
%:# @2bl_6/kernel
:@2	bl_6/bias
 "
trackable_dict_wrapper
.
30
41"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
6	variables
?metrics
7trainable_variables
8regularization_losses
?layers
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
;	variables
?metrics
<trainable_variables
=regularization_losses
?layers
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
@	variables
?metrics
Atrainable_variables
Bregularization_losses
?layers
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :???2bb_1/kernel
:?2	bb_1/bias
 "
trackable_dict_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
G	variables
?metrics
Htrainable_variables
Iregularization_losses
?layers
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	?@2bb_2/kernel
:@2	bb_2/bias
 "
trackable_dict_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
N	variables
?metrics
Otrainable_variables
Pregularization_losses
?layers
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 :???2cl_1/kernel
:?2	cl_1/bias
 "
trackable_dict_wrapper
.
R0
S1"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
U	variables
?metrics
Vtrainable_variables
Wregularization_losses
?layers
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:@ 2bb_3/kernel
: 2	bb_3/bias
 "
trackable_dict_wrapper
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
\	variables
?metrics
]trainable_variables
^regularization_losses
?layers
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
!:	?2cl_head/kernel
:2cl_head/bias
 "
trackable_dict_wrapper
.
`0
a1"
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
c	variables
?metrics
dtrainable_variables
eregularization_losses
?layers
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
 : 2bb_head/kernel
:2bb_head/bias
 "
trackable_dict_wrapper
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
j	variables
?metrics
ktrainable_variables
lregularization_losses
?layers
 ?layer_regularization_losses
?layer_metrics
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
?
0
1
'2
(3
34
45
D6
E7
K8
L9
Y10
Z11
g12
h13"
trackable_list_wrapper
H
?0
?1
?2
?3
?4"
trackable_list_wrapper
?
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
0
1"
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
.
'0
(1"
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
.
30
41"
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
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
K0
L1"
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
.
Y0
Z1"
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
.
g0
h1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}, "shared_object_id": 51}
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "cl_head_loss", "dtype": "float32", "config": {"name": "cl_head_loss", "dtype": "float32"}, "shared_object_id": 52}
?

?total

?count
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "Mean", "name": "bb_head_loss", "dtype": "float32", "config": {"name": "bb_head_loss", "dtype": "float32"}, "shared_object_id": 53}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "cl_head_accuracy", "dtype": "float32", "config": {"name": "cl_head_accuracy", "dtype": "float32", "fn": "sparse_categorical_accuracy"}, "shared_object_id": 36}
?

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"?
_tf_keras_metric?{"class_name": "MeanMetricWrapper", "name": "bb_head_accuracy", "dtype": "float32", "config": {"name": "bb_head_accuracy", "dtype": "float32", "fn": "categorical_accuracy"}, "shared_object_id": 37}
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
%:#???2Adam/cl_1/kernel/m
:?2Adam/cl_1/bias/m
&:$	?2Adam/cl_head/kernel/m
:2Adam/cl_head/bias/m
%:#???2Adam/cl_1/kernel/v
:?2Adam/cl_1/bias/v
&:$	?2Adam/cl_head/kernel/v
:2Adam/cl_head/bias/v
?2?
?__inference_model_layer_call_and_return_conditional_losses_9620
?__inference_model_layer_call_and_return_conditional_losses_9696
?__inference_model_layer_call_and_return_conditional_losses_9435
?__inference_model_layer_call_and_return_conditional_losses_9493?
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
?2?
$__inference_model_layer_call_fn_9094
$__inference_model_layer_call_fn_9739
$__inference_model_layer_call_fn_9782
$__inference_model_layer_call_fn_9377?
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
?2?
__inference__wrapped_model_8841?
???
FullArgSpec
args? 
varargsjargs
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *0?-
+?(
input_1???????????
?2?
>__inference_bl_2_layer_call_and_return_conditional_losses_9793?
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
#__inference_bl_2_layer_call_fn_9802?
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
?2?
>__inference_bl_3_layer_call_and_return_conditional_losses_8847?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
#__inference_bl_3_layer_call_fn_8853?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
>__inference_bl_4_layer_call_and_return_conditional_losses_9813?
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
#__inference_bl_4_layer_call_fn_9822?
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
?2?
>__inference_bl_5_layer_call_and_return_conditional_losses_8859?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
#__inference_bl_5_layer_call_fn_8865?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
>__inference_bl_6_layer_call_and_return_conditional_losses_9833?
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
#__inference_bl_6_layer_call_fn_9842?
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
?2?
>__inference_bl_7_layer_call_and_return_conditional_losses_8871?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
#__inference_bl_7_layer_call_fn_8877?
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
annotations? *@?=
;?84????????????????????????????????????
?2?
>__inference_bl_8_layer_call_and_return_conditional_losses_9848?
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
#__inference_bl_8_layer_call_fn_9853?
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
>__inference_bb_1_layer_call_and_return_conditional_losses_9864?
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
#__inference_bb_1_layer_call_fn_9873?
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
>__inference_bb_2_layer_call_and_return_conditional_losses_9884?
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
#__inference_bb_2_layer_call_fn_9893?
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
>__inference_cl_1_layer_call_and_return_conditional_losses_9904?
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
#__inference_cl_1_layer_call_fn_9913?
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
>__inference_bb_3_layer_call_and_return_conditional_losses_9924?
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
#__inference_bb_3_layer_call_fn_9933?
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
A__inference_cl_head_layer_call_and_return_conditional_losses_9943?
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
&__inference_cl_head_layer_call_fn_9952?
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
A__inference_bb_head_layer_call_and_return_conditional_losses_9963?
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
&__inference_bb_head_layer_call_fn_9972?
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
?B?
"__inference_signature_wrapper_9544input_1"?
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
 ?
__inference__wrapped_model_8841?'(34DEKLYZRSgh`a:?7
0?-
+?(
input_1???????????
? "_?\
,
bb_head!?
bb_head?????????
,
cl_head!?
cl_head??????????
>__inference_bb_1_layer_call_and_return_conditional_losses_9864_DE1?.
'?$
"?
inputs???????????
? "&?#
?
0??????????
? y
#__inference_bb_1_layer_call_fn_9873RDE1?.
'?$
"?
inputs???????????
? "????????????
>__inference_bb_2_layer_call_and_return_conditional_losses_9884]KL0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????@
? w
#__inference_bb_2_layer_call_fn_9893PKL0?-
&?#
!?
inputs??????????
? "??????????@?
>__inference_bb_3_layer_call_and_return_conditional_losses_9924\YZ/?,
%?"
 ?
inputs?????????@
? "%?"
?
0????????? 
? v
#__inference_bb_3_layer_call_fn_9933OYZ/?,
%?"
 ?
inputs?????????@
? "?????????? ?
A__inference_bb_head_layer_call_and_return_conditional_losses_9963\gh/?,
%?"
 ?
inputs????????? 
? "%?"
?
0?????????
? y
&__inference_bb_head_layer_call_fn_9972Ogh/?,
%?"
 ?
inputs????????? 
? "???????????
>__inference_bl_2_layer_call_and_return_conditional_losses_9793p9?6
/?,
*?'
inputs???????????
? "/?,
%?"
0???????????
? ?
#__inference_bl_2_layer_call_fn_9802c9?6
/?,
*?'
inputs???????????
? ""?????????????
>__inference_bl_3_layer_call_and_return_conditional_losses_8847?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
#__inference_bl_3_layer_call_fn_8853?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
>__inference_bl_4_layer_call_and_return_conditional_losses_9813l'(7?4
-?*
(?%
inputs?????????ll
? "-?*
#? 
0?????????ll 
? ?
#__inference_bl_4_layer_call_fn_9822_'(7?4
-?*
(?%
inputs?????????ll
? " ??????????ll ?
>__inference_bl_5_layer_call_and_return_conditional_losses_8859?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
#__inference_bl_5_layer_call_fn_8865?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
>__inference_bl_6_layer_call_and_return_conditional_losses_9833l347?4
-?*
(?%
inputs?????????66 
? "-?*
#? 
0?????????66@
? ?
#__inference_bl_6_layer_call_fn_9842_347?4
-?*
(?%
inputs?????????66 
? " ??????????66@?
>__inference_bl_7_layer_call_and_return_conditional_losses_8871?R?O
H?E
C?@
inputs4????????????????????????????????????
? "H?E
>?;
04????????????????????????????????????
? ?
#__inference_bl_7_layer_call_fn_8877?R?O
H?E
C?@
inputs4????????????????????????????????????
? ";?84?????????????????????????????????????
>__inference_bl_8_layer_call_and_return_conditional_losses_9848b7?4
-?*
(?%
inputs?????????@
? "'?$
?
0???????????
? |
#__inference_bl_8_layer_call_fn_9853U7?4
-?*
(?%
inputs?????????@
? "?????????????
>__inference_cl_1_layer_call_and_return_conditional_losses_9904_RS1?.
'?$
"?
inputs???????????
? "&?#
?
0??????????
? y
#__inference_cl_1_layer_call_fn_9913RRS1?.
'?$
"?
inputs???????????
? "????????????
A__inference_cl_head_layer_call_and_return_conditional_losses_9943]`a0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? z
&__inference_cl_head_layer_call_fn_9952P`a0?-
&?#
!?
inputs??????????
? "???????????
?__inference_model_layer_call_and_return_conditional_losses_9435?'(34DEKLYZRSgh`aB??
8?5
+?(
input_1???????????
p 

 
? "K?H
A?>
?
0/0?????????
?
0/1?????????
? ?
?__inference_model_layer_call_and_return_conditional_losses_9493?'(34DEKLYZRSgh`aB??
8?5
+?(
input_1???????????
p

 
? "K?H
A?>
?
0/0?????????
?
0/1?????????
? ?
?__inference_model_layer_call_and_return_conditional_losses_9620?'(34DEKLYZRSgh`aA?>
7?4
*?'
inputs???????????
p 

 
? "K?H
A?>
?
0/0?????????
?
0/1?????????
? ?
?__inference_model_layer_call_and_return_conditional_losses_9696?'(34DEKLYZRSgh`aA?>
7?4
*?'
inputs???????????
p

 
? "K?H
A?>
?
0/0?????????
?
0/1?????????
? ?
$__inference_model_layer_call_fn_9094?'(34DEKLYZRSgh`aB??
8?5
+?(
input_1???????????
p 

 
? "=?:
?
0?????????
?
1??????????
$__inference_model_layer_call_fn_9377?'(34DEKLYZRSgh`aB??
8?5
+?(
input_1???????????
p

 
? "=?:
?
0?????????
?
1??????????
$__inference_model_layer_call_fn_9739?'(34DEKLYZRSgh`aA?>
7?4
*?'
inputs???????????
p 

 
? "=?:
?
0?????????
?
1??????????
$__inference_model_layer_call_fn_9782?'(34DEKLYZRSgh`aA?>
7?4
*?'
inputs???????????
p

 
? "=?:
?
0?????????
?
1??????????
"__inference_signature_wrapper_9544?'(34DEKLYZRSgh`aE?B
? 
;?8
6
input_1+?(
input_1???????????"_?\
,
bb_head!?
bb_head?????????
,
cl_head!?
cl_head?????????