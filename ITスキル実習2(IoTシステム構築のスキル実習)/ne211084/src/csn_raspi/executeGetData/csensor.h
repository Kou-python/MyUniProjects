#ifndef _CSENSOR_H_
#define _CSENSOR_H_

/*
 *  csensor.h
 *
 *  Created by Carl Christensen on 08/11/2007.
 *  Copyright 2007 Stanford University
 *
 * This file contains the base class for QCN-approved accelerometers, mostly pure virtual functions requiring definition in csensor-*
 */

#include "define.h"
#include <stdlib.h>
#include <stdio.h>
#include <string>
#include <deque>
#ifndef _WIN32
#include <unistd.h>
#endif

// this is the base class for all QCN sensors
class CSensor
{
	private:
		// private member vars
		e_sensor m_iType; // what type of sensor, i.e. Thinkpad, HP, USB?
		int m_port;  // port number, -1 if no sensor opened, if >-1 then we have a port number (i.e. joystick port, Apple I/O port, subclass-specific)
		bool m_bSingleSampleDT; // set to true if just want a single sample per dt interval
		std::string m_strSensor;  // identifying string (optional, can also use getTypeStr() for a generic sensor name)

		// akisue adding member vars
		class PreserveXYZ
		{
			public:
				float tmp_x, tmp_y, tmp_z;
				double tmp_t, tmp_id_t;
				long int sampleSize, offSet;

				PreserveXYZ(const float* x, const float* y, const float* z, const double* t, const double* id_t, const long int* size, const long int* offset)
				{
					tmp_x = *x; tmp_y = *y; tmp_z = *z;
					tmp_t = *t; tmp_id_t = *id_t;
					sampleSize = *size; offSet = *offset;
				}
				~PreserveXYZ(){}  // デストラクタ

		};
		std::deque<PreserveXYZ> preserve_xyz;
		std::deque<PreserveXYZ> triggered_xyz;
		std::deque<PreserveXYZ> info_xyz;

		// private function
		virtual bool read_xyz(float& x1, float& y1, float& z1) = 0;   // read raw sensor data, pure virtual function subclass implemented

		//akisue
		virtual bool isStrikeEarthQuake();
		virtual bool isQuitRecording();
		virtual bool outputEarthQuake();

	public:
		CSensor();
		virtual ~CSensor();  // virtual destructor that will basically just call closePort

		void setPort(const int iPort = -1);
		int getPort();

		void setType(e_sensor esType = SENSOR_NOTFOUND);

		const char* getSensorStr();
		void setSensorStr(const char* strIn = NULL);

		bool getSingleSampleDT();
		void setSingleSampleDT(const bool bSingle);

		// pure virtual functions that subclasses of CSensor (for specific sensor types) need to implement
		virtual bool detect() = 0;   // this detects & initializes a sensor on a Mac G4/PPC or Intel laptop, sets m_iType to 0 if not found

		// public virtual functions implemented in CSensor but can be overridden
		virtual void closePort(); // closes the port if open
		virtual const e_sensor getTypeEnum(); // return the iType member variable
		virtual const char* getTypeStr();  // return the iType member variable
		virtual bool mean_xyz(const bool bVerbose);   // mean sensor data, implemented here but can be overridden, not virtual

};

#endif
