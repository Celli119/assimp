class box expands Actor;

#exec MESH IMPORT MESH=box ANIVFILE=MODELS\box_a.3d DATAFILE=MODELS\box_d.3d X=0 Y=0 Z=0
#exec MESH ORIGIN MESH=box X=0 Y=0 Z=0

#exec MESH SEQUENCE MESH=box SEQ=All STARTFRAME=0 NUMFRAMES=30
//#exec MESH SEQUENCE MESH=box SEQ=??? STARTFRAME=0 NUMFRAMES=30

#exec MESHMAP NEW MESHMAP=box MESH=box
#exec MESHMAP SCALE MESHMAP=box X=0.1 Y=0.1 Z=0.2

#exec TEXTURE IMPORT NAME=Jtex1 FILE=texture1.pcx GROUP=Skins FLAGS=2
#exec TEXTURE IMPORT NAME=Jtex1 FILE=texture1.pcx GROUP=Skins PALETTE=Jtex1
#exec MESHMAP SETTEXTURE MESHMAP=box NUM=1 TEXTURE=Jtex1

defaultproperties
{
    DrawType=DT_Mesh
    Mesh=box
}
