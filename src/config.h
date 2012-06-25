#ifndef YAGAL_CONFIG_H
#define YAGAL_CONFIG_H

#ifdef _WIN32
#   define YagalAPI(RTYPE) __declspec(dllimport) RTYPE
#else
#   define YagalAPI(RTYPE) extern RTYPE
#endif

#endif
