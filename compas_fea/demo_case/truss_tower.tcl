#------------------------------------------------------------------
# Heading
#------------------------------------------------------------------
#
wipe
model basic -ndm 3 -ndf 3
#
#
#------------------------------------------------------------------
# Nodes
#------------------------------------------------------------------
#
node 1 0.250 0.750 2.500
node 2 0.625 0.625 3.750
node 3 0.250 0.250 2.500
node 4 0.375 0.625 3.750
node 5 0.625 0.375 3.750
node 6 0.750 0.750 2.500
node 7 0.375 0.375 3.750
node 8 0.750 0.250 2.500
node 9 0.500 0.500 5.000
node 10 0.000 0.000 0.000
node 11 0.125 0.125 1.250
node 12 0.000 1.000 0.000
node 13 0.125 0.875 1.250
node 14 1.000 0.000 0.000
node 15 0.875 0.125 1.250
node 16 1.000 1.000 0.000
node 17 0.875 0.875 1.250
node 18 0.125 0.500 1.250
node 19 0.500 0.125 1.250
node 20 0.875 0.500 1.250
node 21 0.500 0.875 1.250
#
#
#
#------------------------------------------------------------------
# Boundary conditions
#------------------------------------------------------------------
#
# disp_pinned
#------------
#
fix 10 1 1 1
fix 12 1 1 1
fix 14 1 1 1
fix 16 1 1 1
#
#
#
#------------------------------------------------------------------
# Materials
#------------------------------------------------------------------
#
# mat_elastic
#------------
#
uniaxialMaterial Elastic 1 200000000000
nDMaterial ElasticIsotropic 1001 200000000000 0.3 7850
#
#
#
#------------------------------------------------------------------
# Elements
#------------------------------------------------------------------
#
# ep_truss
#---------
#
element corotTruss 1 1 2 0.0001 1
#
element corotTruss 2 3 4 0.0001 1
#
element corotTruss 3 3 5 0.0001 1
#
element corotTruss 4 5 6 0.0001 1
#
element corotTruss 5 4 1 0.0001 1
#
element corotTruss 6 3 7 0.0001 1
#
element corotTruss 7 2 6 0.0001 1
#
element corotTruss 8 3 8 0.0001 1
#
element corotTruss 9 8 6 0.0001 1
#
element corotTruss 10 6 1 0.0001 1
#
element corotTruss 11 1 3 0.0001 1
#
element corotTruss 12 7 5 0.0001 1
#
element corotTruss 13 5 2 0.0001 1
#
element corotTruss 14 2 4 0.0001 1
#
element corotTruss 15 4 7 0.0001 1
#
element corotTruss 16 7 9 0.0001 1
#
element corotTruss 17 4 9 0.0001 1
#
element corotTruss 18 8 5 0.0001 1
#
element corotTruss 19 5 9 0.0001 1
#
element corotTruss 20 2 9 0.0001 1
#
element corotTruss 21 10 11 0.0001 1
#
element corotTruss 22 11 3 0.0001 1
#
element corotTruss 23 12 13 0.0001 1
#
element corotTruss 24 13 1 0.0001 1
#
element corotTruss 25 14 15 0.0001 1
#
element corotTruss 26 15 8 0.0001 1
#
element corotTruss 27 16 17 0.0001 1
#
element corotTruss 28 17 6 0.0001 1
#
element corotTruss 29 12 18 0.0001 1
#
element corotTruss 30 18 10 0.0001 1
#
element corotTruss 31 10 19 0.0001 1
#
element corotTruss 32 19 14 0.0001 1
#
element corotTruss 33 20 14 0.0001 1
#
element corotTruss 34 20 16 0.0001 1
#
element corotTruss 35 21 16 0.0001 1
#
element corotTruss 36 21 12 0.0001 1
#
element corotTruss 37 11 19 0.0001 1
#
element corotTruss 38 19 15 0.0001 1
#
element corotTruss 39 15 20 0.0001 1
#
element corotTruss 40 20 17 0.0001 1
#
element corotTruss 41 13 21 0.0001 1
#
element corotTruss 42 21 17 0.0001 1
#
element corotTruss 43 13 18 0.0001 1
#
element corotTruss 44 18 11 0.0001 1
#
element corotTruss 45 20 6 0.0001 1
#
element corotTruss 46 20 8 0.0001 1
#
element corotTruss 47 6 21 0.0001 1
#
element corotTruss 48 21 1 0.0001 1
#
element corotTruss 49 3 18 0.0001 1
#
element corotTruss 50 1 18 0.0001 1
#
element corotTruss 51 3 19 0.0001 1
#
element corotTruss 52 8 19 0.0001 1
#
element corotTruss 53 6 3 0.0001 1
#
element corotTruss 54 4 5 0.0001 1
#
element corotTruss 55 18 19 0.0001 1
#
element corotTruss 56 19 20 0.0001 1
#
element corotTruss 57 20 21 0.0001 1
#
element corotTruss 58 21 18 0.0001 1
#
element corotTruss 59 21 19 0.0001 1
#
#
#
#------------------------------------------------------------------
# Steps
#------------------------------------------------------------------
#
# step_load
#----------
#
timeSeries Constant 1 -factor 1.0
pattern Plain 1 1 -fact 1 {
#
# load_top
#---------
#
load 9 2000.0 1000.0 -100000.0
#
#
#
# Output
#-------
#
}
#
# Node recorders
#---------------
#
recorder Node -file C:/Temp/truss_tower/step_load_u.out -time -nodeRange 1 21 -dof 1 2 3 disp
#
recorder Node -file C:/Temp/truss_tower/step_load_rf.out -time -nodeRange 1 21 -dof 1 2 3 reaction
#
#
# Element recorders
#------------------
#
recorder Element -file C:/Temp/truss_tower/step_load_sf_truss.out -time -ele 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54 55 56 57 58 59  axialForce
#
# Solver
#-------
#
#
constraints Transformation
numberer RCM
system ProfileSPD
test NormUnbalance 0.01 100 5
algorithm NewtonLineSearch
integrator LoadControl 0.01
analysis Static
analyze 100
