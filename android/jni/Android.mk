# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE    := cryptopp


ifeq ($(TARGET_ARCH_ABI),arm64-v8a)
    LOCAL_CPPFLAGS +=-funwind-tables -fexceptions -frtti
else ifeq ($(TARGET_ARCH_ABI),armeabi)
    LOCAL_CPPFLAGS +=-march=armv5te -mtune=xscale -mthumb -msoft-float -funwind-tables -fexceptions -frtti
else ifeq ($(TARGET_ARCH_ABI),armeabi-v7a)
    LOCAL_CPPFLAGS +=-march=armv7-a -mthumb -mfpu=vfpv3-d16 -mfloat-abi=softfp -Wl,--fix-cortex-a8 -funwind-tables -fexceptions -frtti
else ifeq ($(TARGET_ARCH_ABI),mips)
    LOCAL_CPPFLAGS +=-funwind-tables -fexceptions -frtti
else ifeq ($(TARGET_ARCH_ABI),mips64)
    LOCAL_CPPFLAGS +=-funwind-tables -fexceptions -frtti
else ifeq ($(TARGET_ARCH_ABI),x86)
    LOCAL_CPPFLAGS +=-march=i686 -mtune=intel -mssse3 -mfpmath=sse -funwind-tables -fexceptions -frtti
else ifeq ($(TARGET_ARCH_ABI),x86_64)
    LOCAL_CPPFLAGS +=-march=x86-64 -msse4.2 -mpopcnt -mtune=intel -funwind-tables -fexceptions -frtti
else
    LOCAL_CPPFLAGS +=-fexceptions -frtti
endif


LOCAL_SRC_FILES :=  ../../3way.cpp \
 ../../adhoc.cpp \
 ../../adler32.cpp \
 ../../algebra.cpp \
 ../../algparam.cpp \
 ../../arc4.cpp \
 ../../asn.cpp \
 ../../authenc.cpp \
 ../../base32.cpp \
 ../../base64.cpp \
 ../../basecode.cpp \
 ../../bench1.cpp \
 ../../bench2.cpp \
 ../../bfinit.cpp \
 ../../blake2.cpp \
 ../../blowfish.cpp \
 ../../blumshub.cpp \
 ../../camellia.cpp \
 ../../cast.cpp \
 ../../casts.cpp \
 ../../cbcmac.cpp \
 ../../ccm.cpp \
 ../../chacha.cpp \
 ../../channels.cpp \
 ../../cmac.cpp \
 ../../cpu.cpp \
 ../../crc.cpp \
 ../../cryptlib.cpp \
 ../../datatest.cpp \
 ../../default.cpp \
 ../../des.cpp \
 ../../dessp.cpp \
 ../../dh.cpp \
 ../../dh2.cpp \
 ../../dll.cpp \
 ../../dlltest.cpp \
 ../../dsa.cpp \
 ../../eax.cpp \
 ../../ec2n.cpp \
 ../../eccrypto.cpp \
 ../../ecp.cpp \
 ../../elgamal.cpp \
 ../../emsa2.cpp \
 ../../eprecomp.cpp \
 ../../esign.cpp \
 ../../files.cpp \
 ../../filters.cpp \
 ../../fips140.cpp \
 ../../fipsalgt.cpp \
 ../../fipstest.cpp \
 ../../gcm.cpp \
 ../../gf256.cpp \
 ../../gf2n.cpp \
 ../../gf2_32.cpp \
 ../../gfpcrypt.cpp \
 ../../gost.cpp \
 ../../gzip.cpp \
 ../../hex.cpp \
 ../../hmac.cpp \
 ../../hrtimer.cpp \
 ../../ida.cpp \
 ../../idea.cpp \
 ../../integer.cpp \
 ../../iterhash.cpp \
 ../../keccak.cpp \
 ../../luc.cpp \
 ../../mars.cpp \
 ../../marss.cpp \
 ../../md2.cpp \
 ../../md4.cpp \
 ../../md5.cpp \
 ../../misc.cpp \
 ../../modes.cpp \
 ../../mqueue.cpp \
 ../../mqv.cpp \
 ../../nbtheory.cpp \
 ../../network.cpp \
 ../../oaep.cpp \
 ../../osrng.cpp \
 ../../panama.cpp \
 ../../pch.cpp \
 ../../pkcspad.cpp \
 ../../polynomi.cpp \
 ../../pssr.cpp \
 ../../pubkey.cpp \
 ../../queue.cpp \
 ../../rabin.cpp \
 ../../randpool.cpp \
 ../../rc2.cpp \
 ../../rc5.cpp \
 ../../rc6.cpp \
 ../../rdrand.cpp \
 ../../rdtables.cpp \
 ../../regtest.cpp \
 ../../rijndael.cpp \
 ../../ripemd.cpp \
 ../../rng.cpp \
 ../../rsa.cpp \
 ../../rw.cpp \
 ../../safer.cpp \
 ../../salsa.cpp \
 ../../seal.cpp \
 ../../seed.cpp \
 ../../serpent.cpp \
 ../../sha.cpp \
 ../../sha3.cpp \
 ../../shacal2.cpp \
 ../../shark.cpp \
 ../../sharkbox.cpp \
 ../../simple.cpp \
 ../../skipjack.cpp \
 ../../socketft.cpp \
 ../../sosemanuk.cpp \
 ../../square.cpp \
 ../../squaretb.cpp \
 ../../strciphr.cpp \
 ../../tea.cpp \
 ../../test.cpp \
 ../../tftables.cpp \
 ../../tiger.cpp \
 ../../tigertab.cpp \
 ../../trdlocal.cpp \
 ../../ttmac.cpp \
 ../../twofish.cpp \
 ../../validat1.cpp \
 ../../validat2.cpp \
 ../../validat3.cpp \
 ../../vmac.cpp \
 ../../wait.cpp \
 ../../wake.cpp \
 ../../whrlpool.cpp \
 ../../winpipes.cpp \
 ../../xtr.cpp \
 ../../xtrcrypt.cpp \
 ../../zdeflate.cpp \
 ../../zinflate.cpp \
 ../../zlib.cpp

include $(BUILD_STATIC_LIBRARY)
