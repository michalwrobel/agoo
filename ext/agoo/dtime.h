// Copyright 2009, 2015, 2018, 2016 by Peter Ohler, All Rights Reserved

#ifndef __AGOO_DTIME_H__
#define __AGOO_DTIME_H__

struct timezone {
    int tz_minuteswest;     /* minutes west of Greenwich */
    int tz_dsttime;         /* type of DST correction */
};

extern double	dtime(void);
extern double	dsleep(double t);
extern double	dwait(double t);

#endif /* __AGOO_DTIME_H__ */
