//Maya ASCII 2020 scene
//Name: Biker.ma
//Last modified: Fri, Oct 22, 2021 01:11:03 PM
//Codeset: 1252
requires maya "2020";
requires "mtoa" "4.1.1";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2020";
fileInfo "version" "2020";
fileInfo "cutIdentifier" "202011110415-b1e20b88e2";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 19042)\n";
fileInfo "UUID" "9B355A90-43A5-8C25-D19D-D480B22FA891";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "267406FE-4366-E61C-3397-0F82174091AE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -13.942817631536672 10.126964018959686 -2.079532478945592 ;
	setAttr ".r" -type "double3" -9.3383526982708087 -1178.5999999998769 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "C1FB1276-484D-9E81-DD14-A594E561FF31";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 10.17773151085297;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 11.146932199124366 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "24C9D3F6-4F77-55CE-1162-FF8358E19039";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "CD207F34-4683-620B-0507-F997A90E9F2E";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "0BE530E0-4F20-8CAB-6827-E2A68606FE1A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.18971167583734944 13.832078258826774 1000.1162728306724 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D6F786CB-4FDF-C55D-5ACD-D5950272B485";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1162728306724;
	setAttr ".ow" 3.148671282822824;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -0.020603330591708491 14.074192212446036 0 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "0704764C-45D9-0C0B-340A-94985C91C536";
	setAttr ".t" -type "double3" 1000.1030775169367 13.694131105543839 0.36943767123080495 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "5DDDEFF1-4EA6-6075-7D03-178ADEEB22D3";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1030775169367;
	setAttr ".ow" 4.0974882469688527;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0 11.980614198932511 0 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "pCube1";
	rename -uid "0061A9D5-480F-5EFC-2486-C6BDA438E79A";
	setAttr ".t" -type "double3" 0 11.816897246066317 0 ;
	setAttr ".r" -type "double3" 0 0 -3.2727936398681985 ;
	setAttr ".s" -type "double3" 1 1 2.2111111587271872 ;
	setAttr ".rp" -type "double3" 0.18207412958145142 -4.0242099761962891 0 ;
	setAttr ".sp" -type "double3" 0.18207412958145142 -4.0242099761962891 0 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "01F67089-48FD-D6F8-024F-67BF30F31CC0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.3125 0.4375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 11 ".pt";
	setAttr ".pt[0]" -type "float3" -0.12225625 -0.0069910064 0 ;
	setAttr ".pt[2]" -type "float3" 1.4988011e-15 0 -0.054302201 ;
	setAttr ".pt[3]" -type "float3" 2.4980018e-16 0 -0.054302201 ;
	setAttr ".pt[4]" -type "float3" 1.4988011e-15 0 0.054302201 ;
	setAttr ".pt[5]" -type "float3" -4.9960036e-16 0 0.054302201 ;
	setAttr ".pt[6]" -type "float3" -0.12225625 -0.0069910064 0 ;
	setAttr ".pt[11]" -type "float3" 0.078015208 0.10772425 0 ;
	setAttr ".pt[24]" -type "float3" -3.8857806e-16 0 -0.039702121 ;
	setAttr ".pt[26]" -type "float3" -3.8857806e-16 0 0.039702121 ;
	setAttr ".pt[27]" -type "float3" 1.5543122e-15 0 0.039702121 ;
	setAttr ".pt[29]" -type "float3" 1.5543122e-15 0 -0.039702121 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "imagePlane1";
	rename -uid "750B1CD0-4BCC-BAB6-A4D3-B39CC404C335";
	setAttr ".t" -type "double3" -14.171289347548743 7.5284306292645926 0.20210519101753288 ;
	setAttr ".r" -type "double3" 0 90 0 ;
	setAttr ".s" -type "double3" 0.77683806453319604 0.77683806453319604 0.77683806453319604 ;
createNode imagePlane -n "imagePlaneShape1" -p "imagePlane1";
	rename -uid "DF2223AA-4A5A-07BF-57AF-12B170CE81C2";
	setAttr -k off ".v";
	setAttr ".fc" 101;
	setAttr ".imn" -type "string" "C:/Users/ani/Documents/MayaPardo/Entornos/PR_ZAXXON/MayaScenes//sourceimages/imgbin-durarara-dullahan-izaya-orihara-celty-sturluson-render-ADFieCJG61V7VjDSGAdm2kytR.jpg";
	setAttr ".cov" -type "short2" 728 1991 ;
	setAttr ".dlc" no;
	setAttr ".w" 7.28;
	setAttr ".h" 19.91;
	setAttr ".cs" -type "string" "sRGB";
createNode transform -n "pCylinder1";
	rename -uid "2CB12017-4846-C1D5-9D48-8B99423D68BD";
	setAttr ".t" -type "double3" 0.27362314969678725 12.757573355257483 0 ;
	setAttr ".s" -type "double3" 0.50238411508000524 0.50238411508000524 0.50238411508000524 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "31FC030D-45B0-FEF1-5352-0BB14DD77136";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.43749998509883881 0.68843984603881836 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "L_Arm";
	rename -uid "5BE2FCC7-42D1-78DB-BBF1-DF85C483E77E";
	setAttr ".t" -type "double3" 0.20073996794935645 5.2608747957609197 -1.1400000000000003 ;
	setAttr ".r" -type "double3" 22.659139254904012 0 0 ;
	setAttr ".s" -type "double3" -1 1 1 ;
	setAttr ".rp" -type "double3" -0.053603893005299885 4.3580135035877072 0.33203008761867719 ;
	setAttr ".rpt" -type "double3" 0 0.076012900870739086 -1.0434484830039035 ;
	setAttr ".sp" -type "double3" 0.053603893005299885 4.3580135035877072 0.33203008761867719 ;
	setAttr ".spt" -type "double3" -0.10720778601059977 0 0 ;
createNode transform -n "ShoulderArm" -p "L_Arm";
	rename -uid "81A00FCB-4A18-00FD-EBAA-A080208C67D0";
	setAttr ".t" -type "double3" 0.053603893005299691 5.8215794161407874 0.067640011572757786 ;
	setAttr ".s" -type "double3" 0.56680904695309475 2.3082261430189623 0.42075621801182739 ;
	setAttr ".rp" -type "double3" 1.9428902930940239e-16 -1.1102230246251565e-16 0 ;
	setAttr ".spt" -type "double3" 1.9428902930940239e-16 -1.1102230246251565e-16 0 ;
createNode mesh -n "ShoulderArmShape" -p "|L_Arm|ShoulderArm";
	rename -uid "4A9B8CA8-4ED0-8640-9B57-45B50750D6DF";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000002980232239 0.3750000074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt[8:11]" -type "float3"  -0.119312 -6.4765957e-09 
		0.119312 0.119312 -6.4765957e-09 0.119312 0.119312 6.4765957e-09 -0.119312 -0.119312 
		6.4765957e-09 -0.119312;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Forearm" -p "L_Arm";
	rename -uid "3790A000-4A12-055C-DC04-F39B1D5BFDAC";
	setAttr ".t" -type "double3" 0.0096462592302323513 3.3861713891146414 0.11907938356326281 ;
	setAttr ".r" -type "double3" -9.8115330219223775 0 0 ;
	setAttr ".s" -type "double3" 0.46965652049996703 2.3082261430189623 0.44769043393968666 ;
	setAttr ".rp" -type "double3" 0.043957633775067534 0.18814001113204126 -0.053715861997391125 ;
	setAttr ".rpt" -type "double3" 0 0.015114672513056451 0.19682148831726243 ;
	setAttr ".sp" -type "double3" 0 0 -0.095460250973701477 ;
	setAttr ".spt" -type "double3" 0.043957633775067534 0.18814001113204126 0.041744388976310352 ;
createNode mesh -n "ForearmShape" -p "|L_Arm|Forearm";
	rename -uid "236A2166-4B73-1E3D-934B-DCB0D9BFA4E8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.19199599 0.625 0.19199599 0.625 0.55800402
		 0.87500006 0.19199601 0.125 0.19199601 0.37500003 0.55800402;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -5.5511151e-17 -0.35563895 ;
	setAttr ".pt[1]" -type "float3" 0 -5.5511151e-17 -0.35563895 ;
	setAttr ".pt[2]" -type "float3" 0 0 -0.14462799 ;
	setAttr ".pt[3]" -type "float3" 0 0 -0.14462799 ;
	setAttr ".pt[6]" -type "float3" 0 0 -0.0059307013 ;
	setAttr ".pt[7]" -type "float3" 0 0 -0.0059307013 ;
	setAttr ".pt[8]" -type "float3" -0.17528924 -6.4765953e-09 -0.025315978 ;
	setAttr ".pt[9]" -type "float3" 0.17528924 -6.4765953e-09 -0.025315978 ;
	setAttr ".pt[10]" -type "float3" 0.17528924 6.5714758e-09 -0.16560452 ;
	setAttr ".pt[11]" -type "float3" -0.17528924 6.5714758e-09 -0.16560452 ;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.5 0.26798397 0.5 0.5 0.26798397 0.5
		 0.5 0.26798403 -0.5 -0.5 0.26798403 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 8 0 1 9 0 2 4 0
		 3 5 0 4 11 0 5 10 0 6 0 0 7 1 0 8 2 0 9 3 0 10 7 0 11 6 0 8 9 1 9 10 1 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 16 13 -2 -13
		mu 0 4 14 15 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 18 -9
		mu 0 4 4 5 16 19
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 17 -10 -8 -14
		mu 0 4 15 17 11 3
		f 4 19 12 6 8
		mu 0 4 18 14 2 13
		f 4 0 5 -17 -5
		mu 0 4 0 1 15 14
		f 4 -12 -15 -18 -6
		mu 0 4 1 10 17 15
		f 4 -19 14 -4 -16
		mu 0 4 19 16 7 6
		f 4 10 4 -20 15
		mu 0 4 12 0 14 18;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Hand" -p "L_Arm";
	rename -uid "BF66D503-439B-3AD6-4EAC-5B9C111738B0";
	setAttr ".t" -type "double3" -0.00080791197673851789 1.657199708500168 -0.021675194888589634 ;
	setAttr ".r" -type "double3" -11.589856614118446 0 0 ;
	setAttr ".s" -type "double3" 0.43517955322133606 0.37920722438048554 0.39577423261595779 ;
	setAttr ".rp" -type "double3" 0.08188292748776077 0.38362849273747274 0.12724782362657161 ;
	setAttr ".rpt" -type "double3" 0 0.10938230359732946 0.46889236997456518 ;
	setAttr ".sp" -type "double3" 0.081183105707168579 -0.014342427253723145 0.1097666472196579 ;
	setAttr ".spt" -type "double3" 0.00069982178059219829 0.39797091999119588 0.017481176406913726 ;
createNode mesh -n "HandShape" -p "|L_Arm|Hand";
	rename -uid "E6488AF9-4F76-692F-7B91-E2A8A3681563";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.08141093 0.39451036 0.14416593 
		0.24377713 0.28600138 0.14416593 0 0.38754171 -0.33950567 0 0.38754171 -0.33950567 
		0 0.47464442 0.075367369 0 0.47464442 0.075367369 -0.08141093 -0.39482024 0.23802128 
		0.24377713 -0.50332922 0.23802128;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "R_Arm";
	rename -uid "1FDDA3AB-4639-CC5D-BCB8-6795BAB521D6";
	setAttr ".t" -type "double3" 0.20073996794935645 5.2608747957609197 2.5501764503197322 ;
	setAttr ".r" -type "double3" 22.659139254903998 180 0 ;
	setAttr ".rp" -type "double3" -0.053603893005299885 4.3580135035877072 0.33203008761867719 ;
	setAttr ".rpt" -type "double3" 0 0.076012900870739086 -1.0434484830039035 ;
	setAttr ".sp" -type "double3" 0.053603893005299885 4.3580135035877072 0.33203008761867719 ;
createNode transform -n "ShoulderArm" -p "R_Arm";
	rename -uid "FA5D93EF-475D-331F-9309-BDA618F6F890";
	setAttr ".t" -type "double3" 0.053603893005299691 5.8215794161407874 0.067640011572757786 ;
	setAttr ".s" -type "double3" 0.56680904695309475 2.3082261430189623 0.42075621801182739 ;
	setAttr ".rp" -type "double3" 1.9428902930940239e-16 -1.1102230246251565e-16 0 ;
	setAttr ".spt" -type "double3" 1.9428902930940239e-16 -1.1102230246251565e-16 0 ;
createNode mesh -n "ShoulderArmShape" -p "|R_Arm|ShoulderArm";
	rename -uid "7463B5CB-430E-6719-4315-859871863528";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000002980232239 0.3750000074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.19199599 0.625 0.19199599 0.625 0.55800402
		 0.87500006 0.19199601 0.125 0.19199601 0.37500003 0.55800402;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0 -5.5879354e-09 2.9802322e-08 
		0 -5.5879354e-09 2.9802322e-08 0 1.4901161e-07 -2.3841858e-06 0 1.4901161e-07 -2.3841858e-06 
		0 2.9802322e-08 7.1525574e-07 0 2.9802322e-08 7.1525574e-07 0 -8.9406967e-08 5.9604645e-07 
		0 -8.9406967e-08 5.9604645e-07 -0.119312 1.4901161e-07 0.11930919 0.119312 1.4901161e-07 
		0.11930919 0.119312 9.6857548e-08 -0.11931229 -0.119312 9.6857548e-08 -0.11931229;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.5 0.26798397 0.5 0.5 0.26798397 0.5
		 0.5 0.26798403 -0.5 -0.5 0.26798403 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 8 0 1 9 0 2 4 0
		 3 5 0 4 11 0 5 10 0 6 0 0 7 1 0 8 2 0 9 3 0 10 7 0 11 6 0 8 9 1 9 10 1 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 16 13 -2 -13
		mu 0 4 14 15 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 18 -9
		mu 0 4 4 5 16 19
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 17 -10 -8 -14
		mu 0 4 15 17 11 3
		f 4 19 12 6 8
		mu 0 4 18 14 2 13
		f 4 0 5 -17 -5
		mu 0 4 0 1 15 14
		f 4 -12 -15 -18 -6
		mu 0 4 1 10 17 15
		f 4 -19 14 -4 -16
		mu 0 4 19 16 7 6
		f 4 10 4 -20 15
		mu 0 4 12 0 14 18;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Forearm" -p "R_Arm";
	rename -uid "69CC127B-48BE-1A03-D0AA-C1B6D7ECFAB9";
	setAttr ".t" -type "double3" 0.0096462592302323513 3.3861713891146414 0.11907938356326281 ;
	setAttr ".r" -type "double3" -9.8115330219223775 0 0 ;
	setAttr ".s" -type "double3" 0.46965652049996703 2.3082261430189623 0.44769043393968666 ;
	setAttr ".rp" -type "double3" 0.043957633775067534 0.18814001113204126 -0.053715861997391125 ;
	setAttr ".rpt" -type "double3" 0 0.015114672513056451 0.19682148831726243 ;
	setAttr ".sp" -type "double3" 0 0 -0.095460250973701477 ;
	setAttr ".spt" -type "double3" 0.043957633775067534 0.18814001113204126 0.041744388976310352 ;
createNode mesh -n "ForearmShape" -p "|R_Arm|Forearm";
	rename -uid "C005F135-43B4-5ACA-E228-3EB469A6772E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.19199599 0.625 0.19199599 0.625 0.55800402
		 0.87500006 0.19199601 0.125 0.19199601 0.37500003 0.55800402;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0 -2.9802322e-08 -0.35563862 
		0 -2.9802322e-08 -0.35563862 0 5.5879354e-09 -0.14462832 0 5.5879354e-09 -0.14462832 
		0 -2.9802322e-08 4.7683716e-07 0 -2.9802322e-08 4.7683716e-07 0 -2.9802322e-08 -0.0059301853 
		0 -2.9802322e-08 -0.0059301853 -0.17528924 -6.0535967e-09 -0.025315911 0.17528924 
		-6.0535967e-09 -0.025315911 0.17528924 2.9802322e-08 -0.16560447 -0.17528924 2.9802322e-08 
		-0.16560447;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5 -0.5 0.26798397 0.5 0.5 0.26798397 0.5
		 0.5 0.26798403 -0.5 -0.5 0.26798403 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 8 0 1 9 0 2 4 0
		 3 5 0 4 11 0 5 10 0 6 0 0 7 1 0 8 2 0 9 3 0 10 7 0 11 6 0 8 9 1 9 10 1 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 16 13 -2 -13
		mu 0 4 14 15 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 18 -9
		mu 0 4 4 5 16 19
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 17 -10 -8 -14
		mu 0 4 15 17 11 3
		f 4 19 12 6 8
		mu 0 4 18 14 2 13
		f 4 0 5 -17 -5
		mu 0 4 0 1 15 14
		f 4 -12 -15 -18 -6
		mu 0 4 1 10 17 15
		f 4 -19 14 -4 -16
		mu 0 4 19 16 7 6
		f 4 10 4 -20 15
		mu 0 4 12 0 14 18;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "Hand" -p "R_Arm";
	rename -uid "86424614-4676-7EBD-3728-13A4548F8F1F";
	setAttr ".t" -type "double3" -0.00080791197673851789 1.657199708500168 -0.021675194888589634 ;
	setAttr ".r" -type "double3" -11.589856614118446 0 0 ;
	setAttr ".s" -type "double3" 0.43517955322133606 0.37920722438048554 0.39577423261595779 ;
	setAttr ".rp" -type "double3" 0.08188292748776077 0.38362849273747274 0.12724782362657161 ;
	setAttr ".rpt" -type "double3" 0 0.10938230359732946 0.46889236997456518 ;
	setAttr ".sp" -type "double3" 0.081183105707168579 -0.014342427253723145 0.1097666472196579 ;
	setAttr ".spt" -type "double3" 0.00069982178059219829 0.39797091999119588 0.017481176406913726 ;
createNode mesh -n "HandShape" -p "|R_Arm|Hand";
	rename -uid "76A7E6F6-4B47-B860-4E1D-729F5CBF2797";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.08141093 0.39451027 0.14416409 
		0.24377713 0.28600174 0.14416599 0 0.38754129 -0.33950639 0 0.38754129 -0.33950639 
		0 0.47464329 0.075370312 0 0.47464329 0.075370312 -0.08141093 -0.39482069 0.23802376 
		0.24377713 -0.50332922 0.23802042;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube2";
	rename -uid "451FECF9-4C0E-7137-5D58-76A927A5ADA7";
	setAttr ".t" -type "double3" 0.20734338270338015 8.0327250240877852 0.7144576685727656 ;
	setAttr ".r" -type "double3" 0 0 -0.86254324221946788 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "F8916389-4FBE-0301-F575-6FBDA7E5EC91";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0.016246766 -0.24980819 0.046433866 
		0.10713916 -0.25052992 0.046433866 -0.032481536 0.082130611 -0.12294561 0.031774234 
		0.081577808 -0.12294561 -0.032481536 0.082130611 -0.12294561 0.031774234 0.081577808 
		-0.12294561 0.016357802 -0.4709464 -0.046433866 0.10725018 -0.47166798 -0.046433866 
		0.2928336 -3.473799 0.16806771 -0.28942996 -3.4741709 0.16806771 -0.28942996 -3.4741709 
		-0.4018957 0.2928336 -3.473799 -0.4018957;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube3";
	rename -uid "F8995114-4A2D-AB9A-FD6C-D8BF40261434";
	setAttr ".t" -type "double3" 0.17356951545220312 4.2016288258806735 0.60124880053665986 ;
	setAttr ".rp" -type "double3" 0.10669596493244171 -1.547715425491333 0.022675365209579468 ;
	setAttr ".sp" -type "double3" 0.10669596493244171 -1.547715425491333 0.022675365209579468 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "41ABF867-4859-DAE5-10A4-3A81B1235050";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.3750000074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0.011045682 0 -0.022441765 
		-0.0039273943 0 -0.022441765 0.013672074 0 -0.03031468 -0.0065537859 0 -0.03031468 
		0.013672074 0 0.03031468 -0.0065537859 0 0.03031468 0.011045682 0 0.022441765 -0.0039273943 
		0 0.022441765 -0.12005929 0.14725263 0.16979142 0.33345124 0.14725263 0.16979142 
		0.33345124 -0.13262941 -0.12444067 -0.12005929 -0.13262941 -0.12444067;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube4";
	rename -uid "ACD33E72-4D11-1DA3-4689-7E95F49A5DD3";
	setAttr ".t" -type "double3" 0 0.5 0.65620226934601533 ;
	setAttr ".s" -type "double3" 0.67240908998514359 0.67240908998514359 0.67240908998514359 ;
	setAttr ".rp" -type "double3" 0.5 -0.5 0 ;
	setAttr ".sp" -type "double3" 0.5 -0.5 0 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	rename -uid "BC24BDF8-4493-59BD-A461-5DAC2A8E7AA3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0 0 -0.076328397 0 0 -0.08744245 
		0 0 -0.055198736 0 0 -0.055198736 0 0 0.076328389 0 0 0.076328389 0 0 -0.011106441 
		0 0 0.058408815 -1.2523438 0 0.10626121 -1.2523438 0 -0.19613296 -1.2523438 -0.62042719 
		-0.14818218 -1.2523438 -0.62042719 0.20490518;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube5";
	rename -uid "FF748D4E-44DA-1E6E-90AF-C796F823AF99";
	setAttr ".t" -type "double3" 0.20734338270338015 8.0327250240877852 0.7144576685727656 ;
	setAttr ".r" -type "double3" 0 0 -0.86254324221946788 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".spt" -type "double3" 0 0 -1.4289153371455312 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	rename -uid "C5415E3C-434C-041C-B858-AAA0517CB5E5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.75 0.625 0.75 0.625 1 0.375 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0.016246766 -0.24980819 0.046433866 
		0.10713916 -0.25052992 0.046433866 -0.032481536 0.082130611 -0.12294561 0.031774234 
		0.081577808 -0.12294561 -0.032481536 0.082130611 -0.12294561 0.031774234 0.081577808 
		-0.12294561 0.016357802 -0.4709464 -0.046433866 0.10725018 -0.47166798 -0.046433866 
		0.2928336 -3.473799 0.16806771 -0.28942996 -3.4741709 0.16806771 -0.28942996 -3.4741709 
		-0.4018957 0.2928336 -3.473799 -0.4018957;
	setAttr -s 12 ".vt[0:11]"  -0.64920795 0.084569931 0.591564 0.64920795 0.084569931 0.591564
		 -0.5 0.62248135 0.45560449 0.5 0.62248135 0.45560449 -0.5 0.62248135 -0.45560449
		 0.5 0.62248135 -0.45560449 -0.64920795 0.084569931 -0.59156406 0.64920795 0.084569931 -0.59156406
		 -0.64920795 0.084569931 -0.59156406 0.64920795 0.084569931 -0.59156406 0.64920795 0.084569931 0.591564
		 -0.64920795 0.084569931 0.591564;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 6 8 0 7 9 0 8 9 0 1 10 0 9 10 0 0 11 0 11 10 0 8 11 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 14 16 -19 -20
		mu 0 4 14 15 16 17
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13
		f 4 3 13 -15 -13
		mu 0 4 6 7 15 14
		f 4 11 15 -17 -14
		mu 0 4 7 9 16 15
		f 4 -1 17 18 -16
		mu 0 4 9 8 17 16
		f 4 -11 12 19 -18
		mu 0 4 8 6 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube6";
	rename -uid "C5F2E437-48E1-6DB2-E55A-E2AF3878E9BE";
	setAttr ".t" -type "double3" 0.17356951545220312 4.2016288258806735 0.60124880053665986 ;
	setAttr ".s" -type "double3" 1 1 -1 ;
	setAttr ".rp" -type "double3" 0.10669596493244171 -1.547715425491333 0.022675365209579468 ;
	setAttr ".sp" -type "double3" 0.10669596493244171 -1.547715425491333 0.022675365209579468 ;
	setAttr ".spt" -type "double3" 0 0 -1.2478483314924786 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
	rename -uid "E554B41E-4F7C-5228-5D77-2396A8268C17";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.3750000074505806 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 20 ".uvst[0].uvsp[0:19]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.375 0.19829275 0.625 0.19829275 0.625 0.55170727
		 0.875 0.19829275 0.125 0.19829275 0.375 0.55170727;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0.011045682 0 -0.022441765 
		-0.0039273943 0 -0.022441765 0.013672074 0 -0.03031468 -0.0065537859 0 -0.03031468 
		0.013672074 0 0.03031468 -0.0065537859 0 0.03031468 0.011045682 0 0.022441765 -0.0039273943 
		0 0.022441765 -0.12005929 0.14725263 0.16979142 0.33345124 0.14725263 0.16979142 
		0.33345124 -0.13262941 -0.12444067 -0.12005929 -0.13262941 -0.12444067;
	setAttr -s 12 ".vt[0:11]"  -0.22443134 -3.59543085 0.22443134 0.22443134 -3.59543085 0.22443134
		 -0.30316526 0.5 0.30316526 0.30316526 0.5 0.30316526 -0.30316526 0.5 -0.30316526
		 0.30316526 0.5 -0.30316526 -0.22443134 -3.59543085 -0.22443134 0.22443134 -3.59543085 -0.22443134
		 -0.28688079 -0.34705392 0.28688079 0.28688079 -0.34705392 0.28688079 0.28688079 -0.34705386 -0.28688079
		 -0.28688079 -0.34705386 -0.28688079;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 8 0 1 9 0 2 4 0
		 3 5 0 4 11 0 5 10 0 6 0 0 7 1 0 8 2 0 9 3 0 10 7 0 11 6 0 8 9 1 9 10 1 10 11 1 11 8 1;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 16 13 -2 -13
		mu 0 4 14 15 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 18 -9
		mu 0 4 4 5 16 19
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 17 -10 -8 -14
		mu 0 4 15 17 11 3
		f 4 19 12 6 8
		mu 0 4 18 14 2 13
		f 4 0 5 -17 -5
		mu 0 4 0 1 15 14
		f 4 -12 -15 -18 -6
		mu 0 4 1 10 17 15
		f 4 -19 14 -4 -16
		mu 0 4 19 16 7 6
		f 4 10 4 -20 15
		mu 0 4 12 0 14 18;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube7";
	rename -uid "80EEECDE-468E-64E1-294A-83931C8EECA0";
	setAttr ".t" -type "double3" 0 0.5 0.65620226934601533 ;
	setAttr ".s" -type "double3" 0.67240908998514359 0.67240908998514359 -0.67240908998514359 ;
	setAttr ".rp" -type "double3" 0.5 -0.5 0 ;
	setAttr ".sp" -type "double3" 0.5 -0.5 0 ;
	setAttr ".spt" -type "double3" 2.7755575615628914e-17 5.5511151231257827e-17 -1.3124045386920304 ;
createNode mesh -n "pCubeShape7" -p "pCube7";
	rename -uid "E896E5EB-43A6-734A-4EDE-B29A4211A83A";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 18 ".uvst[0].uvsp[0:17]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25 0.125 0 0.375 0 0.375 0.25 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 12 ".pt[0:11]" -type "float3"  0 0 -0.076328397 0 0 -0.08744245 
		0 0 -0.055198736 0 0 -0.055198736 0 0 0.076328389 0 0 0.076328389 0 0 -0.011106441 
		0 0 0.058408815 -1.2523438 0 0.10626121 -1.2523438 0 -0.19613296 -1.2523438 -0.62042719 
		-0.14818218 -1.2523438 -0.62042719 0.20490518;
	setAttr -s 12 ".vt[0:11]"  -0.5 -0.5 0.50000006 0.72092938 -0.5 0.38261539
		 -0.5 0.5 0.36158723 0.5 0.5 0.36158723 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5
		 0.72092938 -0.5 -0.38261533 -0.5 -0.5 -0.5 -0.5 -0.5 0.50000006 -0.5 0.5 0.36158723
		 -0.5 0.5 -0.5;
	setAttr -s 20 ".ed[0:19]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0 6 8 0 0 9 0 8 9 0 2 10 0 9 10 0 4 11 0 10 11 0 11 8 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 14 16 18 19
		mu 0 4 14 15 16 17
		f 4 10 13 -15 -13
		mu 0 4 12 0 15 14
		f 4 4 15 -17 -14
		mu 0 4 0 2 16 15
		f 4 6 17 -19 -16
		mu 0 4 2 13 17 16
		f 4 8 12 -20 -18
		mu 0 4 13 12 14 17;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube8";
	rename -uid "9673C2D3-4D72-E4F1-50BD-B1B5B281DA24";
	setAttr ".t" -type "double3" 0.06027099348237358 13.837158475267167 0 ;
	setAttr ".r" -type "double3" 0 0 20.870797644870304 ;
	setAttr ".s" -type "double3" 1.7707562667272732 1.7707562667272732 1.7707562667272732 ;
createNode mesh -n "pCubeShape8" -p "pCube8";
	rename -uid "B02AD793-4FFC-DA32-A2B6-63A0F1FAD11C";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 26 ".pt[0:25]" -type "float3"  0.23076932 0.14760938 -0.20871252 
		-0.31439522 0.10501684 -0.1077975 0.1117059 -0.19880436 -0.1077975 -0.21311225 -0.18247609 
		-0.1699791 0.1117059 -0.19880436 0.1077975 -0.21311225 -0.18247609 0.1699791 0.23076932 
		0.14760938 0.20871252 -0.31439522 0.10501684 0.1077975 0.024011409 -0.052644413 0 
		-0.12494364 -0.080212668 0 -0.040956348 0.033221118 0 0.089735657 0.051925115 0 0.034791965 
		0.14125398 -0.051253807 0.024389651 0.042573117 0 0.034791965 0.14125398 0.051253807 
		-0.043542355 -0.13421963 0.075591847 0.0016486999 0.048212055 0 -0.043542355 -0.13421963 
		-0.075591847 0.065345995 0.0093519958 -0.10327752 0.0083637517 0.0012291647 0.028149903 
		-0.16785364 0.038568221 -0.096043691 0.11938776 -0.030664532 0 -0.16785364 0.038568221 
		0.096043691 0.0083637517 0.0012291647 -0.028149903 0.065345995 0.0093519958 0.11778284 
		-0.11891904 0.039841171 0;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder2";
	rename -uid "B7EEA480-4DC9-A089-2C7B-A4980D502153";
	setAttr ".t" -type "double3" 0.18954621181639764 13.183469441399909 0 ;
	setAttr ".s" -type "double3" 0.38996471211249534 0.38996471211249534 0.38996471211249534 ;
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	rename -uid "9B52DE7B-4C10-587D-54C5-7A89C3FB9E2B";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5416666567325592 0.3125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 12 ".uvst[0].uvsp[0:11]" -type "float2" 0.5 0.3125 0.41666666
		 0.3125 0.45833331 0.3125 0.49999997 0.3125 0.54166663 0.3125 0.58333331 0.3125 0.5
		 0.68843985 0.41666666 0.68843985 0.45833331 0.68843985 0.49999997 0.68843985 0.54166663
		 0.68843985 0.58333331 0.68843985;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 3 ".pt";
	setAttr ".pt[0]" -type "float3" -0.091190577 0 0 ;
	setAttr ".pt[4]" -type "float3" -0.091190577 0 0 ;
	setAttr ".pt[5]" -type "float3" -0.091190577 0 0 ;
	setAttr -s 12 ".vt[0:11]"  0.50000018 -1 -0.86602533 -0.49999994 -1 -0.86602551
		 -1 -1 -1.4901161e-07 -0.50000024 -1 0.86602539 0.49999994 -1 0.86602545 1 -1 0 0.20788342 0.29670906 -0.70557874
		 -0.60684901 0.29670906 -0.70557886 -1.01421535 0.29670906 -1.2692597e-07 -0.60684925 0.29670906 0.7055788
		 0.20788318 0.29670906 0.7055788 0.61524934 0.29670906 -5.52141e-09;
	setAttr -s 20 ".ed[0:19]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 0
		 7 8 0 8 9 0 9 10 0 10 11 0 11 6 0 0 6 0 1 7 0 2 8 0 3 9 0 4 10 0 5 11 0 8 11 0 2 5 0;
	setAttr -s 10 -ch 40 ".fc[0:9]" -type "polyFaces" 
		f 4 0 13 -7 -13
		mu 0 4 0 1 7 6
		f 4 1 14 -8 -14
		mu 0 4 1 2 8 7
		f 4 2 15 -9 -15
		mu 0 4 2 3 9 8
		f 4 3 16 -10 -16
		mu 0 4 3 4 10 9
		f 4 4 17 -11 -17
		mu 0 4 4 5 11 10
		f 4 5 12 -12 -18
		mu 0 4 5 0 6 11
		f 4 7 18 11 6
		mu 0 4 7 8 11 6
		f 4 8 9 10 -19
		mu 0 4 8 9 10 11
		f 4 -3 19 -5 -4
		mu 0 4 3 2 5 4
		f 4 -2 -1 -6 -20
		mu 0 4 2 1 0 5;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 2 
		0 0 
		6 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube9";
	rename -uid "F675597D-4092-218A-C3D3-CF81BD6E1F70";
	setAttr ".t" -type "double3" 0.33778559198379154 14.366973243247804 0.42845606117052826 ;
	setAttr ".r" -type "double3" -32.952480040766496 0 0 ;
	setAttr ".rp" -type "double3" -0.37217229604721069 0.1497078537940979 0.1181587427854538 ;
	setAttr ".rpt" -type "double3" 0 0.033158553697923115 -0.063994114149819814 ;
	setAttr ".sp" -type "double3" -0.37217229604721069 0.1497078537940979 0.1181587427854538 ;
createNode mesh -n "pCubeShape9" -p "pCube9";
	rename -uid "A87497F4-49F5-35D3-F1EB-CEACF11F4837";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.625 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "4D05C4F6-4830-F605-12DF-59970471834C";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "8C1290DB-4225-0F1E-B1E2-099FBE7F883F";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "E3FD6BDA-4B29-2174-C206-2198135D46E0";
createNode displayLayerManager -n "layerManager";
	rename -uid "32F59D02-43C6-06DB-E030-98A0F67D6809";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "74255BD1-462F-4BD3-0A9F-A0935B55D4F4";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "59F2603D-49AD-2DA6-1F93-59A92B7C4AE6";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "EF85004E-41BF-7D3B-ADD3-C5AB2AD4DBAE";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "1EF9F92D-4F71-791A-E127-B2B102770215";
	setAttr ".cuv" 4;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "AFEE3D9A-428A-313A-BBD8-77BF412D5EF0";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 336\n            -height 336\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 336\n            -height 335\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 336\n            -height 335\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 679\n            -height 715\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n"
		+ "            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -autoExpandAnimatedShapes 1\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n"
		+ "            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"0\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n"
		+ "            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -autoExpandAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n"
		+ "                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n"
		+ "                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n"
		+ "                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -autoExpandAnimatedShapes 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n"
		+ "                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n"
		+ "                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n"
		+ "                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n"
		+ "                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 679\\n    -height 715\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 679\\n    -height 715\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "1373AFBD-4F67-4086-9B31-5DB9CB100C62";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polyTweak -n "polyTweak1";
	rename -uid "BDABF50C-44CB-3580-625A-4FB08D2AF6D2";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -2.6021047 0 ;
	setAttr ".tk[1]" -type "float3" 0 -2.6021047 0 ;
	setAttr ".tk[6]" -type "float3" 0 -2.6021047 0 ;
	setAttr ".tk[7]" -type "float3" 0 -2.6021047 0 ;
createNode polySplit -n "polySplit1";
	rename -uid "1976AE8A-47DD-8C7F-318E-E78BD7C42B49";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483642 -2147483641 -2147483637 -2147483638 -2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak2";
	rename -uid "23CC6589-4EEA-356C-2D09-C093E1AF1723";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[10:11]" -type "float3"  0 -0.92210507 0 0 -0.92210507
		 0;
createNode polySplit -n "polySplit2";
	rename -uid "53CEFC29-4242-2B1A-B6BC-B9BF3C3512FC";
	setAttr -s 7 ".e[0:6]"  0.37375799 0.37375799 0.62624198 0.62624198
		 0.62624198 0.37375799 0.37375799;
	setAttr -s 7 ".d[0:6]"  -2147483644 -2147483643 -2147483631 -2147483639 -2147483640 -2147483629 
		-2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyTweak -n "polyTweak3";
	rename -uid "7F9BB59C-41AA-F93A-CEBA-7482A887481E";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[12]" -type "float3" 0 -0.28872776 0 ;
	setAttr ".tk[13]" -type "float3" 0 -0.28872776 0 ;
	setAttr ".tk[14]" -type "float3" 0 0.28872767 0 ;
	setAttr ".tk[15]" -type "float3" 0 -0.28872785 0 ;
	setAttr ".tk[16]" -type "float3" 0 -0.28872785 0 ;
	setAttr ".tk[17]" -type "float3" 0 0.28872776 0 ;
createNode polySplit -n "polySplit3";
	rename -uid "25074D82-4760-1312-0DBD-00B52AF708FB";
	setAttr -s 7 ".e[0:6]"  0.459604 0.459604 0.459604 0.54039598 0.54039598
		 0.54039598 0.459604;
	setAttr -s 7 ".d[0:6]"  -2147483640 -2147483639 -2147483631 -2147483627 -2147483628 -2147483623 
		-2147483640;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode displayLayer -n "Ref_LYR";
	rename -uid "4065280C-4AC2-F6FC-DF80-84871B155F19";
	setAttr ".dt" 2;
	setAttr ".c" 1;
	setAttr ".do" 1;
createNode polyTweak -n "polyTweak4";
	rename -uid "98D0B883-41CD-31BF-B079-47A0AAAF5E51";
	setAttr ".uopa" yes;
	setAttr -s 22 ".tk";
	setAttr ".tk[0]" -type "float3" 0.28459966 0 0 ;
	setAttr ".tk[1]" -type "float3" 0.27839813 0 0 ;
	setAttr ".tk[3]" -type "float3" 0.12063209 0 0 ;
	setAttr ".tk[5]" -type "float3" 0.12063209 0 0 ;
	setAttr ".tk[6]" -type "float3" 0.28459966 0 0 ;
	setAttr ".tk[7]" -type "float3" 0.27839813 0 0 ;
	setAttr ".tk[8]" -type "float3" 0 0.26526308 0 ;
	setAttr ".tk[9]" -type "float3" 0.12063209 0.26526308 0 ;
	setAttr ".tk[10]" -type "float3" 0.52033341 0 0 ;
	setAttr ".tk[11]" -type "float3" -0.062855266 0 0 ;
	setAttr ".tk[12]" -type "float3" 0 0 -0.11111112 ;
	setAttr ".tk[13]" -type "float3" 0.010473336 0 -0.11111112 ;
	setAttr ".tk[14]" -type "float3" 0.010473336 0 0 ;
	setAttr ".tk[15]" -type "float3" 0.010473336 0 0.11111112 ;
	setAttr ".tk[16]" -type "float3" 0 0 0.11111112 ;
	setAttr ".tk[17]" -type "float3" -0.17559367 0 0 ;
	setAttr ".tk[18]" -type "float3" -0.27486971 0 0.029259263 ;
	setAttr ".tk[19]" -type "float3" -0.16598135 0 0.029259263 ;
	setAttr ".tk[20]" -type "float3" -0.16598135 0 0 ;
	setAttr ".tk[21]" -type "float3" -0.16598135 0 -0.029259263 ;
	setAttr ".tk[22]" -type "float3" -0.27486971 0 -0.029259263 ;
	setAttr ".tk[23]" -type "float3" -0.62672883 0 0 ;
createNode polySplit -n "polySplit4";
	rename -uid "03D8A340-42BD-BC92-2EED-D7B28D07DCBE";
	setAttr -s 7 ".e[0:6]"  0.54685801 0.54685801 0.54685801 0.45314199
		 0.45314199 0.45314199 0.54685801;
	setAttr -s 7 ".d[0:6]"  -2147483640 -2147483639 -2147483631 -2147483613 -2147483612 -2147483611 
		-2147483640;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit5";
	rename -uid "F343478D-48D3-177D-98B3-4496C6AD4ECA";
	setAttr -s 7 ".e[0:6]"  0.65707099 0.65707099 0.34292901 0.34292901
		 0.34292901 0.65707099 0.65707099;
	setAttr -s 7 ".d[0:6]"  -2147483628 -2147483627 -2147483614 -2147483615 -2147483616 -2147483623 
		-2147483628;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "E6BF85E9-4CF4-08EA-A4D2-329CA6B4695A";
	setAttr ".ics" -type "componentList" 1 "e[62:67]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak5";
	rename -uid "A51FDA9B-461D-DD74-546E-C7A02EFAD6D1";
	setAttr ".uopa" yes;
	setAttr -s 19 ".tk";
	setAttr ".tk[3]" -type "float3" -0.44269666 0 0 ;
	setAttr ".tk[5]" -type "float3" -0.19616647 0 0 ;
	setAttr ".tk[14]" -type "float3" 0.32882616 0 0 ;
	setAttr ".tk[18]" -type "float3" -0.073219232 0 -0.025344526 ;
	setAttr ".tk[19]" -type "float3" 0 0 -0.025344526 ;
	setAttr ".tk[20]" -type "float3" 0.12658781 0 0 ;
	setAttr ".tk[21]" -type "float3" 0 0 0.025344526 ;
	setAttr ".tk[22]" -type "float3" -0.10466554 0 0.025344526 ;
	setAttr ".tk[24]" -type "float3" -0.028115507 0 0 ;
	setAttr ".tk[25]" -type "float3" -0.073460795 0 0 ;
	setAttr ".tk[26]" -type "float3" 0.12658766 0 0 ;
	setAttr ".tk[27]" -type "float3" -0.073460802 0 0 ;
	setAttr ".tk[28]" -type "float3" -0.028115507 0 0 ;
	setAttr ".tk[29]" -type "float3" 0.12072707 0.15831988 0 ;
	setAttr ".tk[32]" -type "float3" 0.12658772 0 0 ;
	setAttr ".tk[35]" -type "float3" 0.13624458 0 0 ;
createNode polyDelEdge -n "polyDelEdge2";
	rename -uid "4D091BB9-485B-E9F8-564E-20A7EB434E1F";
	setAttr ".ics" -type "componentList" 1 "e[46:51]";
	setAttr ".cv" yes;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "8BC8059F-4898-96CE-0490-7D91D5F71587";
	setAttr ".sa" 6;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "408A3286-4556-4CB6-B80F-C5BFC4AE5AA0";
	setAttr ".dc" -type "componentList" 1 "f[6:17]";
createNode polyCube -n "polyCube2";
	rename -uid "BFB3A0E6-45B0-4763-BA5D-22B7D2434090";
	setAttr ".cuv" 4;
createNode polySplit -n "polySplit6";
	rename -uid "47EB3DD0-4DC7-1B8C-1949-358D94A16EDE";
	setAttr -s 5 ".e[0:4]"  0.76798397 0.76798397 0.232016 0.232016 0.76798397;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483643 -2147483639 -2147483640 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCube -n "polyCube3";
	rename -uid "997A7F59-4F25-24B7-AE71-97A1A7041789";
	setAttr ".cuv" 4;
createNode polyCube -n "polyCube4";
	rename -uid "AAA9BEE7-40FF-0402-EDF6-109CAFB67976";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "2BE0780D-4C35-8CC6-10BB-45BE4780F0BE";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0.24706030208448326 8.0327250240877852 0.7144576685727656 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.2470603 8.1172943 0.71445769 ;
	setAttr ".rs" 50921;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.40214764755388344 8.1172946570948348 0.12289360931525828 ;
	setAttr ".cbx" -type "double3" 0.89626825172284996 8.1172946570948348 1.3060217278302728 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak6";
	rename -uid "D0DE999F-4138-0912-C86B-009D98B06F3C";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  -0.14920793 0.58456963 0.091564067
		 0.14920793 0.58456963 0.091564067 0 0.1224812 -0.04439551 0 0.1224812 -0.04439551
		 0 0.1224812 0.04439551 0 0.1224812 0.04439551 -0.14920793 0.58456963 -0.091564067
		 0.14920793 0.58456963 -0.091564067;
createNode polyCube -n "polyCube5";
	rename -uid "B2F5BB81-4BC5-BAEE-3E05-5A863DA7CADE";
	setAttr ".cuv" 4;
createNode polyTweak -n "polyTweak7";
	rename -uid "B281F900-49C9-496D-A6F5-0FAFB6F76878";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0.27556866 -3.095430851 -0.27556866
		 -0.27556866 -3.095430851 -0.27556866 0.19683473 0 -0.19683473 -0.19683473 0 -0.19683473
		 0.19683473 0 0.19683473 -0.19683473 0 0.19683473 0.27556866 -3.095430851 0.27556866
		 -0.27556866 -3.095430851 0.27556866;
createNode polySplit -n "polySplit7";
	rename -uid "CACCAD2C-4E35-008B-3BE3-CEA1A5C1CA42";
	setAttr -s 5 ".e[0:4]"  0.79317099 0.79317099 0.206829 0.206829 0.79317099;
	setAttr -s 5 ".d[0:4]"  -2147483644 -2147483643 -2147483639 -2147483640 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCube -n "polyCube6";
	rename -uid "8F019632-4E6B-ADAF-79CE-20B492C511F9";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "B49EEED6-407D-AC4C-B207-2D946E2F8458";
	setAttr ".ics" -type "componentList" 1 "f[5]";
	setAttr ".ix" -type "matrix" 0.67240908998514359 0 0 0 0 0.67240908998514359 0 0
		 0 0 0.67240908998514359 0 0.1637954550074282 0.3362045449925718 0.65620226934601533 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.17240909 0.33620456 0.65620226 ;
	setAttr ".rs" 40620;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.17240908998514359 0 0.31999772435344354 ;
	setAttr ".cbx" -type "double3" -0.17240908998514359 0.67240908998514359 0.99240681433858713 ;
	setAttr ".raf" no;
createNode polyTweak -n "polyTweak8";
	rename -uid "3E894131-444F-AF2F-17D8-A09010738C9A";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[1]" -type "float3" 0.22092941 0 -0.11738466 ;
	setAttr ".tk[2]" -type "float3" 0 0 -0.13841277 ;
	setAttr ".tk[3]" -type "float3" 0 0 -0.13841277 ;
	setAttr ".tk[7]" -type "float3" 0.22092941 0 0.11738466 ;
createNode polyTweak -n "polyTweak9";
	rename -uid "50CF4966-4902-586F-7D87-728504ED8A7B";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[0]" -type "float3" -0.093329906 0 0 ;
	setAttr ".tk[6]" -type "float3" -0.093329906 0 0 ;
	setAttr ".tk[8]" -type "float3" -0.13183506 -0.14195274 0 ;
	setAttr ".tk[9]" -type "float3" -0.060532141 0.070783108 -2.9802322e-08 ;
	setAttr ".tk[10]" -type "float3" 0.036853321 0.0021073923 0 ;
	setAttr ".tk[11]" -type "float3" -0.093329906 0 0 ;
	setAttr ".tk[14]" -type "float3" -0.25425336 0 0 ;
	setAttr ".tk[17]" -type "float3" 0.066163838 0 0 ;
	setAttr ".tk[18]" -type "float3" -0.047424648 0.39270678 0 ;
	setAttr ".tk[19]" -type "float3" 0.061425865 0.39270678 0 ;
	setAttr ".tk[20]" -type "float3" 0.073082291 0.39270678 0 ;
	setAttr ".tk[21]" -type "float3" 0.061425865 0.39270678 0 ;
	setAttr ".tk[22]" -type "float3" -0.050320279 0.39270678 0 ;
	setAttr ".tk[23]" -type "float3" -0.073082298 0.39270678 0 ;
createNode polySplit -n "polySplit8";
	rename -uid "65733054-4F10-C3F3-E360-D8B3D6E7DC4B";
	setAttr -s 7 ".e[0:6]"  0.51224703 0.487753 0.487753 0.487753 0.51224703
		 0.51224703 0.51224703;
	setAttr -s 7 ".d[0:6]"  -2147483629 -2147483607 -2147483606 -2147483605 -2147483625 -2147483608 
		-2147483629;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCube -n "polyCube7";
	rename -uid "BB32F082-46D8-A70D-37A9-D6B6FC38D655";
	setAttr ".cuv" 4;
createNode polyBridgeEdge -n "polyBridgeEdge1";
	rename -uid "4CF08059-4376-E12F-28CE-1894C2CC6EA0";
	setAttr ".ics" -type "componentList" 2 "e[7:8]" "e[10:11]";
	setAttr ".ix" -type "matrix" 0.50238411508000524 0 0 0 0 0.50238411508000524 0 0
		 0 0 0.50238411508000524 0 0.27362314969678725 12.757573355257483 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 7;
	setAttr ".sv2" 10;
	setAttr ".d" 1;
	setAttr ".sd" 1;
createNode polyTweak -n "polyTweak10";
	rename -uid "EE0B3186-4307-6B49-E3FC-37992C3E507F";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[6]" -type "float3" -0.2921167 -0.703291 0.1604466 ;
	setAttr ".tk[7]" -type "float3" -0.10684904 -0.703291 0.16044663 ;
	setAttr ".tk[8]" -type "float3" -0.014215142 -0.703291 2.208564e-08 ;
	setAttr ".tk[9]" -type "float3" -0.10684901 -0.703291 -0.16044661 ;
	setAttr ".tk[10]" -type "float3" -0.2921167 -0.703291 -0.16044663 ;
	setAttr ".tk[11]" -type "float3" -0.3847506 -0.703291 -5.52141e-09 ;
createNode polyBridgeEdge -n "polyBridgeEdge2";
	rename -uid "782F2921-4FF3-3779-7C1D-4BA3F8A9B0FC";
	setAttr ".ics" -type "componentList" 2 "e[1:2]" "e[4:5]";
	setAttr ".ix" -type "matrix" 0.50238411508000524 0 0 0 0 0.50238411508000524 0 0
		 0 0 0.50238411508000524 0 0.27362314969678725 12.757573355257483 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 3;
	setAttr ".sv2" 0;
	setAttr ".d" 1;
	setAttr ".td" 1;
createNode polyTweak -n "polyTweak11";
	rename -uid "6DEA6A28-44D6-6E9A-DBD5-D9B460586A2C";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk";
	setAttr ".tk[0]" -type "float3" -0.34370705 -0.0022169051 0 ;
	setAttr ".tk[6]" -type "float3" -0.34370705 -0.0022169051 0 ;
createNode polySplit -n "polySplit9";
	rename -uid "3C083AF8-48D1-8C69-7F93-FBB87FB2B9BB";
	setAttr -s 5 ".e[0:4]"  0.5 0.5 0.5 0.5 0.5;
	setAttr -s 5 ".d[0:4]"  -2147483642 -2147483641 -2147483637 -2147483638 -2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "4A132A88-4BCF-DA2F-A7BE-CEACF39B4356";
	setAttr -s 7 ".e[0:6]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 7 ".d[0:6]"  -2147483648 -2147483630 -2147483645 -2147483646 -2147483632 -2147483647 
		-2147483648;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit11";
	rename -uid "A4A73EA5-414F-E3BD-C987-B3BA965B97E4";
	setAttr -s 9 ".e[0:8]"  0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5 0.5;
	setAttr -s 9 ".d[0:8]"  -2147483644 -2147483617 -2147483643 -2147483631 -2147483639 -2147483620 
		-2147483640 -2147483629 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCube -n "polyCube8";
	rename -uid "72F32653-4B94-5049-86C6-EDADB5D2114F";
	setAttr ".cuv" 4;
createNode polyTweak -n "polyTweak12";
	rename -uid "4D49B79C-4BEC-03DA-1F09-388710382939";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  -0.10110877 0.27745897 -0.30429032
		 -0.6432358 0.27745897 -0.30429032 0 0.01279689 -0.014034398 -0.75768459 -0.17913254
		 -0.18904012 -0.10110877 -0.32560503 0.26038963 -0.6432358 -0.32560503 0.26038963
		 -0.10110877 0.46676806 0.48808324 -0.6432358 0.46676806 0.48808324;
createNode polySplit -n "polySplit12";
	rename -uid "8EC9F68F-419E-648C-81EF-E1B6D8630AF1";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483640 -2147483644;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit13";
	rename -uid "D3DB5506-40D2-E520-D449-3C9E1898C687";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483639 -2147483643;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "FCFBAE13-4DE0-806D-5486-DB8267E97D5D";
	setAttr ".dc" -type "componentList" 3 "f[1:2]" "f[5]" "f[7]";
createNode polyMirror -n "polyMirror1";
	rename -uid "BE810F50-4D23-F730-9192-6094DCB040BE";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.738934253811103 -0.6737775363906312 0 0 0.6737775363906312 0.738934253811103 0
		 0 16.460976809813623 0 1;
	setAttr ".ws" yes;
	setAttr ".a" 2;
	setAttr ".mtt" 1;
	setAttr ".mt" 1.0652788877487183;
	setAttr ".fnf" 4;
	setAttr ".lnf" 7;
createNode polyDelEdge -n "polyDelEdge3";
	rename -uid "38E0041B-444D-253D-6CA9-D6BC8C239FC7";
	setAttr ".ics" -type "componentList" 1 "e[7:8]";
	setAttr ".cv" yes;
createNode polyMirror -n "polyMirror2";
	rename -uid "49F759D9-44D0-B802-50B3-DE9EFB4C5C47";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.83912199203134719 -0.54394327138897824 0
		 0 0.54394327138897824 0.83912199203134719 0 0.33778559198379154 14.359944845147455 0.46490366992949711 1;
	setAttr ".ws" yes;
	setAttr ".a" 2;
	setAttr ".mm" 3;
	setAttr ".sp" -type "double3" -0.37217229604721069 0.1497078537940979 0.1181587427854538 ;
	setAttr ".fnf" 6;
	setAttr ".lnf" 11;
createNode polyTweak -n "polyTweak13";
	rename -uid "AC76E2B6-43DE-C453-A7FB-B1A0CF6283E8";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk[1:5]" -type "float3"  0 0.072132245 -0.07910344
		 0 1.3532025e-07 -1.484062e-07 0 1.1545751e-07 -1.2662265e-07 0 -1.2710602e-07 1.3939767e-07
		 0 -1.2710602e-07 1.3939767e-07;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 17 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polySplit8.out" "pCubeShape1.i";
connectAttr "Ref_LYR.di" "imagePlane1.do";
connectAttr ":defaultColorMgtGlobals.cme" "imagePlaneShape1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "imagePlaneShape1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "imagePlaneShape1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "imagePlaneShape1.ws";
connectAttr ":sideShape.msg" "imagePlaneShape1.ltc";
connectAttr "polyBridgeEdge2.out" "pCylinderShape1.i";
connectAttr "polySplit6.out" "|L_Arm|ShoulderArm|ShoulderArmShape.i";
connectAttr "polyCube3.out" "|L_Arm|Hand|HandShape.i";
connectAttr "polyExtrudeFace1.out" "pCubeShape2.i";
connectAttr "polySplit7.out" "pCubeShape3.i";
connectAttr "polyExtrudeFace2.out" "pCubeShape4.i";
connectAttr "polySplit11.out" "pCubeShape8.i";
connectAttr "polyMirror2.out" "pCubeShape9.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyTweak1.out" "polySplit1.ip";
connectAttr "polySplit1.out" "polyTweak2.ip";
connectAttr "polyTweak2.out" "polySplit2.ip";
connectAttr "polySplit2.out" "polyTweak3.ip";
connectAttr "polyTweak3.out" "polySplit3.ip";
connectAttr "layerManager.dli[1]" "Ref_LYR.id";
connectAttr "polySplit3.out" "polyTweak4.ip";
connectAttr "polyTweak4.out" "polySplit4.ip";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polyTweak5.out" "polyDelEdge1.ip";
connectAttr "polySplit5.out" "polyTweak5.ip";
connectAttr "polyDelEdge1.out" "polyDelEdge2.ip";
connectAttr "polyCylinder1.out" "deleteComponent1.ig";
connectAttr "polyCube2.out" "polySplit6.ip";
connectAttr "polyTweak6.out" "polyExtrudeFace1.ip";
connectAttr "pCubeShape2.wm" "polyExtrudeFace1.mp";
connectAttr "polyCube4.out" "polyTweak6.ip";
connectAttr "polyCube5.out" "polyTweak7.ip";
connectAttr "polyTweak7.out" "polySplit7.ip";
connectAttr "polyTweak8.out" "polyExtrudeFace2.ip";
connectAttr "pCubeShape4.wm" "polyExtrudeFace2.mp";
connectAttr "polyCube6.out" "polyTweak8.ip";
connectAttr "polyDelEdge2.out" "polyTweak9.ip";
connectAttr "polyTweak9.out" "polySplit8.ip";
connectAttr "polyTweak10.out" "polyBridgeEdge1.ip";
connectAttr "pCylinderShape1.wm" "polyBridgeEdge1.mp";
connectAttr "deleteComponent1.og" "polyTweak10.ip";
connectAttr "polyBridgeEdge1.out" "polyBridgeEdge2.ip";
connectAttr "pCylinderShape1.wm" "polyBridgeEdge2.mp";
connectAttr "polyCube7.out" "polyTweak11.ip";
connectAttr "polyTweak11.out" "polySplit9.ip";
connectAttr "polySplit9.out" "polySplit10.ip";
connectAttr "polySplit10.out" "polySplit11.ip";
connectAttr "polyCube8.out" "polyTweak12.ip";
connectAttr "polyTweak12.out" "polySplit12.ip";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplit13.out" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "polyMirror1.ip";
connectAttr "pCubeShape9.wm" "polyMirror1.mp";
connectAttr "polyMirror1.out" "polyDelEdge3.ip";
connectAttr "polyTweak13.out" "polyMirror2.ip";
connectAttr "pCubeShape9.wm" "polyMirror2.mp";
connectAttr "polyDelEdge3.out" "polyTweak13.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|L_Arm|ShoulderArm|ShoulderArmShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|L_Arm|Forearm|ForearmShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|L_Arm|Hand|HandShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|R_Arm|ShoulderArm|ShoulderArmShape.iog" ":initialShadingGroup.dsm"
		 -na;
connectAttr "|R_Arm|Forearm|ForearmShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "|R_Arm|Hand|HandShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape8.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape9.iog" ":initialShadingGroup.dsm" -na;
// End of Biker.ma
