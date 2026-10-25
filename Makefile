ifeq ($(strip $(DEVKITPRO)),)
$(error DEVKITPRO is not set. Use the devkitPro devkitARM environment.)
endif

TARGET      := DSI-Playtime
BUILD       := build
SOURCES     := source
DATA        :=
INCLUDES    :=
GRAPHICS    :=

ARCH        := -mthumb -mthumb-interwork
CFLAGS      := -g -Wall -O2 -ffunction-sections $(ARCH)
CXXFLAGS    := $(CFLAGS) -fno-rtti -fno-exceptions -std=gnu++17
ASFLAGS     := $(ARCH)
LDFLAGS     := -specs=ds_arm9.specs -g $(ARCH) -Wl,--gc-sections
LIBS        := -lnds9

include $(DEVKITPRO)/libnds/base_rules
