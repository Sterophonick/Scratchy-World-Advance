HEADERS = defs.h
OBJECTS = main.o build/btl.o build/r1.o build/r2.o build/r3.o build/sprs.o build/stry1.o build/stry2.o build/stry3.o build/stry4.o build/stry5.o build/ttlscr.o build/r3b.o build/r4.o
ELFS = main.elf

default: scratchy.gba

main.o: main.c $(HEADERS)
	C:\devkitPro\devkitARM\bin\arm-none-eabi-gcc -g -MMD -MP -MF -Wall -Og -O1 -O2 -O3 -O -Os -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -fomit-frame-pointer -marm -mthumb -mthumb-interwork -c main.c
build/r1.o: data/r1.c
	C:\devkitPro\devkitARM\bin\arm-none-eabi-gcc -g -MMD -MP -MF -Wall -Og -O1 -O2 -O3 -O -Os -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -fomit-frame-pointer -marm -mthumb -mthumb-interwork -c data/r1.c
	mv r1.o build
build/r2.o: data/r2.c
	C:\devkitPro\devkitARM\bin\arm-none-eabi-gcc -g -MMD -MP -MF -Wall -Og -O1 -O2 -O3 -O -Os -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -fomit-frame-pointer -marm -mthumb -mthumb-interwork -c data/r2.c
	mv r2.o build
build/r3.o: data/r3.c
	C:\devkitPro\devkitARM\bin\arm-none-eabi-gcc -g -MMD -MP -MF -Wall -Og -O1 -O2 -O3 -O -Os -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -fomit-frame-pointer -marm -mthumb -mthumb-interwork -c data/r3.c
	mv r3.o build
build/sprs.o: data/sprs.c
	C:\devkitPro\devkitARM\bin\arm-none-eabi-gcc -g -MMD -MP -MF -Wall -Og -O1 -O2 -O3 -O -Os -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -fomit-frame-pointer -marm -mthumb -mthumb-interwork -c data/sprs.c
	mv sprs.o build
build/btl.o: data/btl.c
	C:\devkitPro\devkitARM\bin\arm-none-eabi-gcc -g -MMD -MP -MF -Wall -Og -O1 -O2 -O3 -O -Os -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -fomit-frame-pointer -marm -mthumb -mthumb-interwork -c data/btl.c
	mv btl.o build
build/stry1.o: data/stry1.c
	C:\devkitPro\devkitARM\bin\arm-none-eabi-gcc -g -MMD -MP -MF -Wall -Og -O1 -O2 -O3 -O -Os -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -fomit-frame-pointer -marm -mthumb -mthumb-interwork -c data/stry1.c
	mv stry1.o build
build/stry2.o: data/stry2.c
	C:\devkitPro\devkitARM\bin\arm-none-eabi-gcc -g -MMD -MP -MF -Wall -Og -O1 -O2 -O3 -O -Os -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -fomit-frame-pointer -marm -mthumb -mthumb-interwork -c data/stry2.c
	mv stry2.o build
build/stry3.o: data/stry3.c
	C:\devkitPro\devkitARM\bin\arm-none-eabi-gcc -g -MMD -MP -MF -Wall -Og -O1 -O2 -O3 -O -Os -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -fomit-frame-pointer -marm -mthumb -mthumb-interwork -c data/stry3.c
	mv stry3.o build
build/stry4.o: data/stry4.c
	C:\devkitPro\devkitARM\bin\arm-none-eabi-gcc -g -MMD -MP -MF -Wall -Og -O1 -O2 -O3 -O -Os -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -fomit-frame-pointer -marm -mthumb -mthumb-interwork -c data/stry4.c
	mv stry4.o build
build/stry5.o: data/stry5.c
	C:\devkitPro\devkitARM\bin\arm-none-eabi-gcc -g -MMD -MP -MF -Wall -Og -O1 -O2 -O3 -O -Os -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -fomit-frame-pointer -marm -mthumb -mthumb-interwork -c data/stry5.c
	mv stry5.o build
build/ttlscr.o: data/ttlscr.c
	C:\devkitPro\devkitARM\bin\arm-none-eabi-gcc -g -MMD -MP -MF -Wall -Og -O1 -O2 -O3 -O -Os -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -fomit-frame-pointer -marm -mthumb -mthumb-interwork -c data/ttlscr.c
	mv ttlscr.o build
build/r3b.o: data/r3b.c
	C:\devkitPro\devkitARM\bin\arm-none-eabi-gcc -g -MMD -MP -MF -Wall -Og -O1 -O2 -O3 -O -Os -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -fomit-frame-pointer -marm -mthumb -mthumb-interwork -c data/r3b.c
	mv r3b.o build
build/r4.o: data/r4.c
	C:\devkitPro\devkitARM\bin\arm-none-eabi-gcc -g -MMD -MP -MF -Wall -Og -O1 -O2 -O3 -O -Os -ffast-math -mlong-calls -mcpu=arm7tdmi -mtune=arm7tdmi -fomit-frame-pointer -marm -mthumb -mthumb-interwork -c data/r4.c
	mv r4.o build
main.elf: $(OBJECTS) 
	C:\devkitPro\devkitARM\bin\arm-none-eabi-gcc -specs=gba.specs -mthumb -mthumb-interwork $(OBJECTS) -o main.elf
scratchy.gba: $(ELFS)
	C:\devkitPro\devkitARM\bin\arm-none-eabi-objcopy -O binary main.elf scratchy.gba
	C:\devkitPro\devkitARM\bin\gbafix scratchy.gba
	mv *.o build 
	mv *.elf build 
clean:
	-rm -f *.o
	-rm -f main.elf
	-rm -f scratchy.gba