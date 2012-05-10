#ifndef YAGAL_CONFIG_H
#define YAGAL_CONFIG_H

#ifdef _WIN32
    #define __YAGAL_VISIBLE __declspec(dllimport)
#else
    #define __YAGAL_VISIBLE __attribute__ ((visibility("default")))
#endif
#endif
