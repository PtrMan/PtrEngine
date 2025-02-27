module math.VectorAlias;

import linopterixed.linear.Vector;

alias SpatialVectorStruct!(3, float) Vector3f;
alias SpatialVectorStruct!(3, double) Vector3p; // p stands for precise

alias SpatialVectorStruct!(2, float) Vector2f;

alias SpatialVectorStruct!(2, uint) Vector2ui;
alias SpatialVectorStruct!(2, int) Vector2i;
