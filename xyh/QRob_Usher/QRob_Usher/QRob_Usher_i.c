

/* this ALWAYS GENERATED file contains the IIDs and CLSIDs */

/* link this file in with the server and any clients */


 /* File created by MIDL compiler version 7.00.0555 */
/* at Sun Jun 16 23:42:39 2013
 */
/* Compiler settings for QRob_Usher.idl:
    Oicf, W1, Zp8, env=Win32 (32b run), target_arch=X86 7.00.0555 
    protocol : dce , ms_ext, c_ext, robust
    error checks: allocation ref bounds_check enum stub_data 
    VC __declspec() decoration level: 
         __declspec(uuid()), __declspec(selectany), __declspec(novtable)
         DECLSPEC_UUID(), MIDL_INTERFACE()
*/
/* @@MIDL_FILE_HEADING(  ) */

#pragma warning( disable: 4049 )  /* more than 64k source lines */


#ifdef __cplusplus
extern "C"{
#endif 


#include <rpc.h>
#include <rpcndr.h>

#ifdef _MIDL_USE_GUIDDEF_

#ifndef INITGUID
#define INITGUID
#include <guiddef.h>
#undef INITGUID
#else
#include <guiddef.h>
#endif

#define MIDL_DEFINE_GUID(type,name,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8) \
        DEFINE_GUID(name,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8)

#else // !_MIDL_USE_GUIDDEF_

#ifndef __IID_DEFINED__
#define __IID_DEFINED__

typedef struct _IID
{
    unsigned long x;
    unsigned short s1;
    unsigned short s2;
    unsigned char  c[8];
} IID;

#endif // __IID_DEFINED__

#ifndef CLSID_DEFINED
#define CLSID_DEFINED
typedef IID CLSID;
#endif // CLSID_DEFINED

#define MIDL_DEFINE_GUID(type,name,l,w1,w2,b1,b2,b3,b4,b5,b6,b7,b8) \
        const type name = {l,w1,w2,{b1,b2,b3,b4,b5,b6,b7,b8}}

#endif !_MIDL_USE_GUIDDEF_

MIDL_DEFINE_GUID(IID, LIBID_QRob_UsherLib,0x871CD819,0x5001,0x4684,0xA1,0xAF,0x69,0x62,0x84,0x47,0x86,0xF5);


MIDL_DEFINE_GUID(IID, DIID__DQRob_Usher,0x816048DA,0xD1E1,0x45D3,0x9F,0x83,0x7C,0x11,0xC1,0xD3,0x6F,0xD4);


MIDL_DEFINE_GUID(IID, DIID__DQRob_UsherEvents,0x765C8152,0x2646,0x4792,0xB0,0x8E,0x88,0x07,0xF0,0x6D,0x1C,0x1A);


MIDL_DEFINE_GUID(CLSID, CLSID_QRob_Usher,0x89E57454,0xD37D,0x4021,0xB6,0xCD,0x82,0xE1,0x61,0x67,0x0F,0x79);

#undef MIDL_DEFINE_GUID

#ifdef __cplusplus
}
#endif



