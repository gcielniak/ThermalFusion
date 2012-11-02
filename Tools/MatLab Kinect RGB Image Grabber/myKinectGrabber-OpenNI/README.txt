This folder contains mex files to execute functions acquiring images via Kinect. 
The MEX files are used on MATLAB.

************************************************************************************
* * We require that you have an environment that Kinect,                           *
*   OpenNI on the following version and                                            *
*   its sample files works on your PC.                                             *
*   If you don't have it, please setup it.                                         *
*                                                                                  *
* [Requirements]                                                                   *
* * Kinect MEX ver1.3 supports only the following OpenNI and SensorKinect driver   *
*                                                                                  *
*	[OpenNI]                                                                   *
*   	OpenNI Unstable Build for Windows v1.0.0.25                                *
*	* Uploaded : 06 Jan, 2011                                                  *
*	* http://www.openni.org/downloadfiles/openni-binaries/20-latest-unstable   *
*   		                                                                   *
*	[SensorKinect]                                                             *
*	SensorKinect v0.4                                                          *
*	* Uploaded : 07 Jan, 2011                                                  *
*	* https://github.com/avin2/SensorKinect                                    *
*                                                                                  *
************************************************************************************

NOTE:
  [for 64bit]
  On 64bit machine, you should build OpenNI and the driver from their source files.
  The *.mexw64 files can link to only 64 bit dll files.
  So, if these 64 bit dll files don't exist, Matlab gets an error,
    "*.mexw64 is not a valid Win32 application". 
	
HOW TO SETUP:
1. Uncompress the downloaded file at the arbitrary folder where you want to put mex files.
2. Start up MATLAB, and run the follwoing command.
    >> edit startup.m
    (If you don't have startup.m at "MyDocuments\startup.m", 
	see MATLAB help, and create it.)
3. Add "addpath" command and set the path where you put the mex files.
    (About "addpath" command, see MATLAB help)
4. To make the change effective, restart MATLAB.
   Now, You can use our mex files after these setting. 

We provide the following files :
------------------------------------------------------------------------------------
*  mxNiUpdateContext.mexw32 (for 32bit)
*  mxNiUpdateContext.mexw64 (for 64bit)
	The function to update data from Kinect
	
* mxNiSetProperty.mexw32 (for 32bit)
* mxNiSetProperty,mexw64 (for 64bit)
	The fuction to set the value of property

* mxNiGetProperty.mexw32 (for 32bit)
* mxNiGetProperty.mexw64 (for 64bit)
	The function to get the value property
 	
* mxNiEnumerateDevices.mexw32 (for 32bit)
* mxNiEnumerateDevices.mexw64 (for 64bit)
	The function to return the number of connected devices		

* mxNiCreateContext.mexw32 (for 32bit)
* mxNiCreateContext.mexw64 (for 64bit)
	The function to initialise context to access to Kinect, 
	which should be called before mxNiImage is called.
	After version1.3, we supports mulitiple Kinect ,
	so that, if you use multiple Kinect, 
	you need call mxNiCreateContext for every Kinect device. 
	
* mxNiImage.mexw32 (for 32bit)
* mxNiImage.mexw64 (for 64bit)
	The function to get rgb and depth images from Kinect

* mxNiIRImage.mexw32 (for 32bit)
* mxNiIRImage.mexw64 (for 64bit)
	The function to get IR images from Kinect

* mxNiConvertProjectiveToRealWorld.mexw32 (for 32bit)
* mxNiConvertProjectiveToRealWorld.mexw64 (for 64bit)
	The function to convert pixel (u,v) of depth image 
	and depth[mm] to world coordinate XYZ	

* mxNiConvertRealWorldToProjective.mexw32 (for 32bit)
* mxNiConvertRealWorldToProjective.mexw64 (for 64bit)
	The function to convert XYZ on world coordinate system 
	to pixel (u,v) and depth value[mm]

* mxNiDeleteContext.mexw32 (for 32bit)
* mxNiDeleteContext.mexw64 (for 64bit)
	The function to delete the context pointer created by mxNiCreateContext 

* mxNiCreateContext.m
* mxNiDeleteContext.m
* mxNiImage.m, and so on.
        Command help files. 
	For example, when you put the command,
	>> help mxNiCreateContext
	you can see the explanation and usage of this command.
	They should be at the same folder which our providing mex files exist.

------------------------------------------------------------------------------------

MATLAB is registered trademarks of The MathWorks, Inc.

Please see www.mathworks.com/trademarks for a list of additional trademarks.
Other product or brand names may be trademarks or registered trademarks of their respective holders.

Kinect is registered trademarks of Microsoft Corporation.

OpenNI is available under GNU LESSER GENERAL PUBLIC LICENSE,
Copyright (C) 2007 Free Software Foundation, Inc. <http://fsf.org/>
Please see http://www.openni.org/

NITE and Prime Sensor, Copyright (C) PrimeSense Ltd 2010. All rights reserved.
Please see http://www.primesense.com/