char* buf[256];
typedef struct
{
	int e_hardhead;
	int e_sharpblox;
	int e_supersonicmeow;
	int e_largercreation;
	int e_hax;
}upgrades;

typedef struct
{
	int __dbg_wallcolrngenc;
	int seed;
	int rngnum;
	int musici;
	int room;
	int i;
	int arpos;
	int usedatk;
	int dealt;
	int timer;
}rom;

typedef struct
{
	int sharpblox;
	int supersonicmeow;
	int maxhp;
	int shield;
	int largercreation;
	int movecnt;
	int health;
	int exp;
	int coins;
	int udframe;
	int lvl;
	int x;
	int y;
	int tilex;
	int tiley;
	int dir;
	int anim;
	int frames;
	int hardhead;
	int earned;
	int reqexp;
}plr;
typedef struct
{
	int hp;
	int id;
}ene;

rom game;
plr player;
ene enemy;
#include <agb_lib.h>
#include <string.h>
#include <math.h>
#include "defs.h"
u8* buf2;
void battle()
{
	game.arpos = 0;
	game.i = 5;
	while (game.i--)
	{
		game.seed = game.rngnum / 2;
		game.rngnum = (rand() % 2) + 1;
		SaveInt(0, game.seed);
		game.timer++;
	}
	enemy.id = game.rngnum;
	memcpy(videoBuffer, btlBitmap, 76800);
	SetMode(MODE_3 | BG2_ENABLE | OBJ_ENABLE | OBJ_MAP_1D);
	MoveSprite(&sprites[0], 240, 160);
		sprites[2].attribute0 = COLOR_256 | TALL | 10;
		sprites[2].attribute1 = SIZE_64 | 108;
		sprites[2].attribute2 = 512 + 184 ; // NOTE: mode4 doesn't support the first tiles, so offset of 512 is requirerd
	enemy.hp = player.lvl * 30;
	CopyOAM();
	enemy.id = 1;
	loadSpritePal((void*)sprsPalette); 
	offsetOAM = 0;
	loadSpriteGraphics((void*)sprs, 7104);
	FadeIn(2);
	sprintf((char*)buf, "ENEMY HP: %d", enemy.hp);
	Print(-1, 8, (char*)buf, WHITE, BLACK);
	Print(25, 110, "A WILD MISSINGNO.", BLACK, WHITE);
	Print(25, 119, "APPEARED!", BLACK, WHITE);
	while (!(keyDown(KEY_A)));
	while ((keyDown(KEY_A)));
	memcpy(videoBuffer, btlBitmap, 76800);
	Print(25, 110, "WHAT WILL SCRATCH DO?", BLACK, WHITE);
	Print(41, 126, "FIGHT!        RUN...", BLACK, WHITE);
	sprites[1].attribute0 = COLOR_256 | SQUARE | 126;
	sprites[1].attribute1 = SIZE_8 | 33;
	sprites[1].attribute2 = 512 + 440; // NOTE: mode4 doesn't support the first tiles, so offset
	sprintf((char*)buf, "HP:%d COINS:%d LVL:%d ", player.health, player.coins, player.lvl);
	Print(-1, 0, (char*)buf, WHITE, BLACK);
	sprintf((char*)buf, "ENEMY HP: %d", enemy.hp);
	Print(-1, 8, (char*)buf, WHITE, BLACK);
	CopyOAM();
	while ((player.health> 0)OR(enemy.hp>0))
	{
		game.timer++;
		game.seed = game.rngnum / 2;
		game.rngnum = (rand() % 2) + 1;
		SaveInt(0, game.seed);
		CopyOAM();
		if (keyDown(KEY_LEFT))
		{
			game.arpos = 0;
		}
		if (keyDown(KEY_RIGHT))
		{
			game.arpos = 1;
		}
		if (game.arpos == 0)
		{
			MoveSprite(&sprites[1], 36, 126); 
		}
		if (game.arpos == 1)
		{
			MoveSprite(&sprites[1], 148, 126);
		}
		if (keyDown(KEY_A))
		{
			while (keyDown(KEY_A));
			game.seed = game.rngnum / 2;
			game.rngnum = (rand() % 2) + 1;
			SaveInt(0, game.seed);
			if (game.arpos == 0)
			{
				sprites[1].attribute0 = COLOR_256 | SQUARE | 126;
				sprites[1].attribute1 = SIZE_8 | HORIZONTAL_FLIP | 33;
				sprites[1].attribute2 = 512 + 440; // NOTE: mode4 doesn't support the first tiles, so offset
				memcpy(videoBuffer, btlBitmap, 76800);
				sprintf((char*)buf, "HP:%d COINS:%d LVL:%d ", player.health, player.coins, player.lvl);
				Print(-1, 0, (char*)buf, WHITE, BLACK);
				sprintf((char*)buf, "ENEMY HP: %d", enemy.hp);
				Print(-1, 8, (char*)buf, WHITE, BLACK);
				Print(25, 106, "TACKLE", BLACK, WHITE);
				player.movecnt = 4;
				game.arpos = 1;
				if (player.movecnt > 1)
				{
					Print(25, 115, "SNAP ATTACK", BLACK, WHITE);
				}
				if (player.movecnt > 2)
				{
					Print(25, 124, "MEOW", BLACK, WHITE);
				}
				if (player.movecnt > 3)
				{
					Print(25, 133, "COMMUNITY CREATION", BLACK, WHITE);
				}
				while (!(keyDown(KEY_A)))
				{
					game.timer++;
					CopyOAM();
					if ((keyDown(KEY_DOWN))AND(player.movecnt>1)AND(!(game.arpos==4)))
					{
						while ((keyDown(KEY_DOWN)));
						game.arpos++;
					}
					if ((keyDown(KEY_UP))AND(player.movecnt>1)AND(!(game.arpos == 0)))
					{
						while ((keyDown(KEY_UP)));
						game.arpos--;
					}
					if (game.arpos == 1)
					{
						MoveSprite(&sprites[1], 73, 107);
					}
					if (game.arpos == 2)
					{
						MoveSprite(&sprites[1], 113, 115);
					}
					if (game.arpos == 3)
					{
						MoveSprite(&sprites[1],58, 124);
					}
					if (game.arpos == 4)
					{
						MoveSprite(&sprites[1], 169, 133);
					}
				}
				while (keyDown(KEY_A));
				MoveSprite(&sprites[1], 240, 160);
				CopyOAM();
				game.usedatk = game.arpos;
				if (game.usedatk == 1)
				{
					game.dealt = ((player.lvl * 2)+10) + (player.hardhead * 25);
					enemy.hp -= ((player.lvl * 2) + (player.hardhead * 25));
				}
				if (game.usedatk == 2)
				{
					game.dealt = ((player.lvl * 2) + 15)+(player.sharpblox*15);
					enemy.hp -= ((player.lvl * 2) + 15) + (player.sharpblox * 15);
				}
				if (game.usedatk == 3)
				{
					game.dealt = ((player.lvl * 3) + 17)+(player.supersonicmeow *25);
					enemy.hp -= ((player.lvl * 3) + 17) + (player.supersonicmeow * 25);
					player.health += 15;
				}
				if (game.usedatk == 4)
				{
					game.dealt = (player.lvl * 5) + (player.largercreation*30);
					enemy.hp -= ((player.lvl * 5) + (player.largercreation * 30));
				}
				memcpy(videoBuffer, btlBitmap, 76800);
				sprintf((char*)buf, "HP:%d COINS:%d LVL:%d ", player.health, player.coins, player.lvl);
				Print(-1, 0, (char*)buf, WHITE, BLACK);
				sprintf((char*)buf, "ENEMY HP: %d", enemy.hp);
				Print(-1, 8, (char*)buf, WHITE, BLACK);
				Print(25, 106, "SCRATCH ATTACKS!", BLACK, WHITE);
				while (!(keyDown(KEY_A)));
				while (keyDown(KEY_A));
				sprintf((char*)buf, "%d DAMAGE WAS DONE TO", game.dealt);
				Print(25, 106, (char*)buf, BLACK, WHITE);
				Print(25, 115, "THE FOE!", BLACK, WHITE);
				while (!(keyDown(KEY_A)));
				while (keyDown(KEY_A));
				memcpy(videoBuffer, btlBitmap, 76800);
				if ((enemy.hp == 0)OR(enemy.hp < 0))
				{
					memcpy(videoBuffer, btlBitmap, 76800);
					sprintf((char*)buf, "HP:%d COINS:%d LVL:%d ", player.health, player.coins, player.lvl);
					Print(-1, 0, (char*)buf, WHITE, BLACK);
					MoveSprite(&sprites[2], 240, 160);
					CopyOAM();
					game.dealt = rand() % 5 + 1;
					player.earned = ((game.timer / 500) - player.lvl) + 45;
					player.coins += game.dealt;
					Print(25, 106, "YOU WON!", BLACK, WHITE);
					while (!(keyDown(KEY_A)));
					while (keyDown(KEY_A));
					player.exp += player.earned;
					sprintf((char*)buf, "YOU EARNED %d EXP AND", player.earned);
					Print(25, 115, (char*)buf, BLACK, WHITE);
					sprintf((char*)buf, "%d COINS.", game.dealt);
					Print(25, 124, (char*)buf, BLACK, WHITE);
					if (player.exp >= player.reqexp)
					{
						player.exp = player.reqexp - player.exp;
						player.reqexp = round((((player.lvl * 20) + (abs(player.lvl))) * 4) / 3);
						player.maxhp += 50;
						player.health = player.maxhp;
						player.lvl++;
					}
					while (!(keyDown(KEY_A)));
					while (keyDown(KEY_A));
					FadeOut(5);
					if (game.room == 1)
					{
						memcpy(videoBuffer, r1Bitmap, 76800);
					}else if (game.room == 2)
					{
						memcpy(videoBuffer, r2Bitmap, 76800);
					}
					else if (game.room == 3)
					{
						memcpy(videoBuffer, r3Bitmap, 76800);
					}
					else if (game.room == 4)
					{
						memcpy(videoBuffer, r4Bitmap, 76800);
					}
					sprintf((char*)buf, "HP:%d COINS:%d LVL:%d ", player.health, player.coins, player.lvl);
					Print(-1, 0, (char*)buf, WHITE, BLACK);
					MoveSprite(&sprites[0], player.x, player.y);
					MoveSprite(&sprites[1], 240, 160);
					MoveSprite(&sprites[2], 240, 160);
					CopyOAM();
					FadeIn(2);
					break;
				}
				sprintf((char*)buf, "HP:%d COINS:%d LVL:%d ", player.health, player.coins, player.lvl);
				Print(-1, 0, (char*)buf, WHITE, BLACK);
				sprintf((char*)buf, "ENEMY HP: %d", enemy.hp);
				Print(-1, 8, (char*)buf, WHITE, BLACK);
				Print(25, 106, "THE FOE ATTACKS!", BLACK, WHITE);
				while (!(keyDown(KEY_A)));
				while (keyDown(KEY_A));
				game.dealt = rand() % (player.lvl/2 + (game.timer / 750));
				player.health -= rand() % (player.lvl/2 + (game.timer / 750));
				memcpy(videoBuffer, btlBitmap, 76800);
				sprintf((char*)buf, "HP:%d COINS:%d LVL:%d ", player.health, player.coins, player.lvl);
				Print(-1, 0, (char*)buf, WHITE, BLACK);
				sprintf((char*)buf, "ENEMY HP: %d", enemy.hp);
				Print(-1, 8, (char*)buf, WHITE, BLACK);
				sprintf((char*)buf, "%d DAMAGE WAS DONE TO", game.dealt);
				Print(25, 106, (char*)buf, BLACK, WHITE);
				Print(25, 115, "SCRATCH!", BLACK, WHITE);
				game.arpos = 0;
				while (!(keyDown(KEY_A)));
				while (keyDown(KEY_A));
				if (player.health <= 0)
				{
					SetMode(MODE_3 | BG2_ENABLE);
					fillscreen3(0x0000);
					Sleep(60);
					Print(84, 76, "GAME OVER", WHITE, BLACK);
					while (1)
					{
						if (KEY_ANY_PRESSED)
						{
							asm("swi 0x26");
						}
					}

				}
				sprites[1].attribute0 = COLOR_256 | SQUARE | 126;
				sprites[1].attribute1 = SIZE_8 | 33;
				sprites[1].attribute2 = 512 + 440; // NOTE: mode4 doesn't support the first tiles, so offset

				memcpy(videoBuffer, btlBitmap, 76800);
				Print(25, 110, "WHAT WILL SCRATCH DO?", BLACK, WHITE);
				Print(41, 126, "FIGHT!        RUN...", BLACK, WHITE);
				sprintf((char*)buf, "HP:%d COINS:%d LVL:%d ", player.health, player.coins, player.lvl);
				Print(-1, 0, (char*)buf, WHITE, BLACK);
				sprintf((char*)buf, "ENEMY HP: %d", enemy.hp);
				Print(-1, 8, (char*)buf, WHITE, BLACK);
				game.arpos = 0;
			}
			if (game.arpos == 1)
			{
				sprintf((char*)buf, "HP:%d COINS:%d LVL:%d ", player.health, player.coins, player.lvl);
				Print(-1, 0, (char*)buf, WHITE, BLACK);
				sprintf((char*)buf, "ENEMY HP: %d", enemy.hp);
				Print(-1, 8, (char*)buf, WHITE, BLACK);
				memcpy(videoBuffer, btlBitmap, 76800);
				Print(25, 110, "GOT AWAY!", BLACK, WHITE);
				while (!(keyDown(KEY_A)));
				while (keyDown(KEY_A));
				FadeOut(5);
				if (game.room == 1)
				{
					memcpy(videoBuffer, r1Bitmap, 76800);
				}
				else if (game.room == 2)
				{
					memcpy(videoBuffer, r2Bitmap, 76800);
				}
				else if (game.room == 3)
				{
					memcpy(videoBuffer, r3Bitmap, 76800);
				}
				else if (game.room == 4)
				{
					memcpy(videoBuffer, r4Bitmap, 76800);
				}
				sprintf((char*)buf, "HP:%d COINS:%d LVL:%d ", player.health, player.coins, player.lvl);
				Print(-1, 0, (char*)buf, WHITE, BLACK);
				MoveSprite(&sprites[0], player.x, player.y);
				MoveSprite(&sprites[1], 240, 160);
				MoveSprite(&sprites[2], 240, 160);
				CopyOAM();
				FadeIn(2);
				break;
			}
		}
	}
}
void playSound(int s) {
	REG_SOUNDCNT1_H = 0x0B0F;                                                       //REG_SOUNDCNT_H = 0000 1011 0000 0100, volume = 100, sound goes to the left, sound goes to the right, timer 0 is used, FIFO buffer reset
	REG_SOUNDCNT1_X = 0x0080;                                                       //REG_SOUNDCNT_X = 0000 0000 1000 0000, enable the sound system, DMA 1
	REG_SD1SAD = (unsigned long)sound[s].song;                                //REG_DM1SAD = NAME, address of DMA source is the digitized music sample
	REG_SD1DAD = 0x040000A0;                                                   //REG_DM1DAD = REG_SGFIFOA, address of DMA destination is FIFO buffer for direct sound A
	REG_SD1CNT_H = 0xB640;                                                       //REG_DM1CNT_H = 1011 0110 0100 0000, DMA destination is fixed, repeat transfer of 4 bytes when FIFO , buffer is empty, enable DMA 1 (number of DMA transfers is ignored), INTERRUPT
	REG_TM0SD = 65536 - (16777216 / sound[s].frequency);                          //REG_TM0D = 65536-(16777216/frequency);, play sample every 16777216/frequency CPU cycles
	REG_TMSDCNT = 0x00C0;
}

void tstsndcmp(int s, int time) {
	if (game.musici >= time) {
		REG_SOUNDCNT_H = 0;                                                      //REG_SOUNDCNT_H = 0000 1011 0000 0100, volume = 100, sound goes to the left, sound goes to the right, timer 0 is used, FIFO buffer reset
		REG_SOUNDCNT_X = 0;                                                       //REG_SOUNDCNT_X = 0000 0000 1000 0000, enable the sound system, DMA 1
		REG_DM1SAD = 0;                               //REG_DM1SAD = NAME, address of DMA source is the digitized music sample
		REG_DM1DAD = 0;                                                   //REG_DM1DAD = REG_SGFIFOA, address of DMA destination is FIFO buffer for direct sound A
		REG_DM1CNT_H = 0;                                                    //REG_DM1CNT_H = 1011 0110 0100 0000, DMA destination is fixed, repeat transfer of 4 bytes when FIFO , buffer is empty, enable DMA 1 (number of DMA transfers is ignored), INTERRUPT
		REG_TM0D = 0;                         //REG_TM0D = 65536-(16777216/frequency);, play sample every 16777216/frequency CPU cycles
		REG_TM0CNT = 0;
		playSound(s);
		game.musici = 0;
	}
	else {
		game.musici++;
	}
}
int main()
{
	player.maxhp = 100;
		game.seed = LoadInt(0);
		int s;
		loadSpritePal((void*)sprsPalette);
		loadSpriteGraphics((void*)sprs, 7104);
		REG_BLDMOD = 0x00D6;
		WaitForVblank();
		fillpal("bg", 0xFFFF);
		SetMode(MODE_4 | BG2_ENABLE);
		REG_BG2CNT = BG_MOSAIC_ENABLE;
		Sleep(25);
		MoveSprite(&sprites[0], 240, 160);
		MoveSprite(&sprites[1], 240, 160);
		CopyOAM();
		FadeOut(3);
		SetMode(MODE_4 | BG2_ENABLE | OBJ_ENABLE | OBJ_MAP_1D);
		SetPalette((void*)ttlscrPalette);
		memcpy(videoBuffer, ttlscrBitmap, 38400);
		FadeIn(8);
		Sleep(30);
		srand(game.seed);
		initSprite(2, SIZE_8, 88);
		while (!(KEY_ANY_PRESSED))
		{
			game.seed = game.rngnum / 2;
			game.rngnum = (rand() % 200) + 1;
			SaveInt(0, game.seed);
		}
		SetMode(MODE_4 | BG2_ENABLE | OBJ_ENABLE | OBJ_MAP_1D);
		vsync
		SetPalette((void*)stry1Palette);
		memcpy(videoBuffer, stry1Bitmap, 38400);
			Sleep(60 * 6);
			vsync
				SetPalette((void*)stry2Palette);
			memcpy(videoBuffer, stry2Bitmap, 38400);
			Sleep(60 * 6);
			vsync
				SetPalette((void*)stry3Palette);
			memcpy(videoBuffer, stry3Bitmap, 38400);
			Sleep(60 * 6);
			vsync
				SetPalette((void*)stry4Palette);
			memcpy(videoBuffer, stry4Bitmap, 38400);
			Sleep(60 * 6);
			vsync
				SetPalette((void*)stry5Palette);
			memcpy(videoBuffer, stry5Bitmap, 38400);
			Sleep(60 * 6);
			sprites[0].attribute0 = COLOR_256 | TALL | 160;
			sprites[0].attribute1 = SIZE_32 | 240;
			sprites[0].attribute2 = 512 + 24; // NOTE: mode4 doesn't support the first tiles, so offset of 512 is requirerd
			memcpy(videoBuffer, r1Bitmap, 76800);
			MoveSprite(&sprites[0], 0, 0);
			player.x = 16, player.y = 64, player.tilex = 2, player.tiley = 5;
			vsync
			SetMode(MODE_3 | BG2_ENABLE | OBJ_ENABLE | OBJ_MAP_1D);
			CopyOAM();
			player.coins=0;
			player.health = 100;
			player.lvl = 1;
			game.room = 1;
			sprintf((char*)buf, "HP:%d COINS:%d LVL:%d ", player.health, player.coins, player.lvl);
			Print(-1, 0, (char*)buf,WHITE, BLACK);
			player.reqexp = round((((4 * 20) + (abs(4))) * 4) / 3);
			while (1)
			{
				if (game.room == 1)
				{
					if ((player.tilex == 15)AND(player.tiley == 5))
					{
						FadeOut(2);
						game.room++;
						memcpy(videoBuffer, r2Bitmap, 76800);
						sprintf((char*)buf, "HP:%d COINS:%d LVL:%d ", player.health, player.coins, player.lvl);
						Print(-1, 0, (char*)buf, WHITE, BLACK);
						player.x = 16, player.y = 64, player.tilex = 2, player.tiley = 5;
						MoveSprite(&sprites[0], player.x, player.y);
						CopyOAM();
						FadeIn(2);
					}
				}else	 if (game.room == 2)
				{
					if ((player.tilex == 1)AND(player.tiley == 5))
					{
						FadeOut(2);
						game.room--;
						memcpy(videoBuffer, r1Bitmap, 76800);
						sprintf((char*)buf, "HP:%d COINS:%d LVL:%d ", player.health, player.coins, player.lvl);
						Print(-1, 0, (char*)buf, WHITE, BLACK);
						player.x = 208, player.y = 64, player.tilex = 14, player.tiley = 5;
						MoveSprite(&sprites[0], player.x, player.y);
						CopyOAM();
						FadeIn(2);
					}
					if ((player.tilex > 5)AND(player.tiley == 9))
					{
						FadeOut(2);
						game.room++;
						memcpy(videoBuffer, r3Bitmap, 76800);
						sprintf((char*)buf, "HP:%d COINS:%d LVL:%d ", player.health, player.coins, player.lvl);
						Print(-1, 0, (char*)buf, WHITE, BLACK);
						player.x = 16, player.y = 64, player.tilex = 2, player.tiley = 5;
						MoveSprite(&sprites[0], player.x, player.y);
						CopyOAM();
						FadeIn(2);
					}
				}
				else if (game.room == 3)
				{
					if ((player.tilex == 1)AND(player.tiley == 5))
					{
						FadeOut(2);
						game.room--;
						memcpy(videoBuffer, r2Bitmap, 76800);
						sprintf((char*)buf, "HP:%d COINS:%d LVL:%d ", player.health, player.coins, player.lvl);
						Print(-1, 0, (char*)buf, WHITE, BLACK);
						player.x = 208, player.y = 64, player.tilex = 14, player.tiley = 5;
						MoveSprite(&sprites[0], player.x, player.y);
						CopyOAM();
						FadeIn(2);
					}
					if ((player.tilex == 15)AND(player.tiley == 5))
					{
						FadeOut(2);
						game.room++;
						memcpy(videoBuffer, r4Bitmap, 76800);
						sprintf((char*)buf, "HP:%d COINS:%d LVL:%d ", player.health, player.coins, player.lvl);
						Print(-1, 0, (char*)buf, WHITE, BLACK);
						player.x = 16, player.y = 64, player.tilex = 2, player.tiley = 5;
						MoveSprite(&sprites[0], player.x, player.y);
						CopyOAM();
						FadeIn(2);
					}
				}
				game.seed = game.rngnum / 2;
				game.rngnum = (rand() % 25) + 1;
				SaveInt(0, game.seed);
				if (keyDown(KEY_RIGHT)) {
					sprites[0].attribute1 = SIZE_32 | player.x;
					updateSprite(0, 0, 0, 0);
					player.frames = 0;
					player.tilex++;
					player.dir = 0;
					game.__dbg_wallcolrngenc = 1;
					for (game.i = 0; game.i < 16; game.i++) {
						game.seed = game.rngnum / 2;
						game.rngnum = (rand() %15) + 1;
						SaveInt(0, game.seed);
						if (GetPixel3(player.x + 16, player.y) == 0x0000){
							player.tilex--;
							game.__dbg_wallcolrngenc = 0;
							break;
						}
						if (GetPixel3(player.x + 16, player.y+16) == 0x0000) {
							player.tilex--;
							game.__dbg_wallcolrngenc = 0;
							break;
						}

						vsync
							tstsndcmp(1, sound[1].end);
						player.frames++;
						if (keyDown(KEY_B))
						{
							player.frames++;
							player.x++;
							game.i++;
							if (GetPixel3(player.x + 16, player.y) == 0x0000) {
								player.tilex--;
								game.__dbg_wallcolrngenc = 0;
								break;
							}
							if (GetPixel3(player.x + 16, player.y + 16) == 0x0000) {
								player.tilex--;
								game.__dbg_wallcolrngenc = 0;
								break;
							}
						}
						if (!(player.frames % 8)) {
							player.anim++;
							if (player.anim >= 4) {
								player.anim = 0;
							}
						}
						if (player.anim == 0) {
							updateSprite(0, 88, 0, 0);
						}
						else if (player.anim == 1) {
							updateSprite(0, 104, 0, 0);
						}
						else if (player.anim == 2) {
							updateSprite(0, 88, 0, 0);
						}
						else {
							updateSprite(0, 104, 0, 0);
						}
						player.x++;
						MoveSprite(&sprites[0], player.x, player.y);
						CopyOAM();
						player.dir = 0;
					}
					game.i = 0;
					if ((game.rngnum == 1)AND(game.__dbg_wallcolrngenc == 1))
					{
						SetMode(MODE_3 | BG2_ENABLE);
						scanlines3(0x0000, 0.5);
						fillscreen3(0x0000);
						SetMode(MODE_3 | BG2_ENABLE);
						battle();
					}
				}
				if (!((player.dir == 2)OR(player.dir == 1))) {
					player.anim = 0;
				}
				if (keyDown(KEY_UP)) {
					player.tiley--;
					sprites[0].attribute1 = SIZE_32 | player.x;
					updateSprite(0, 56, 0, 0);
					player.frames = 0;
					game.__dbg_wallcolrngenc = 1;
					for (game.i = 0; game.i < 16; game.i++) {
						game.seed = game.rngnum / 2;
						game.rngnum = (rand() % 15) + 1;
						SaveInt(0, game.seed);
						player.dir = 1;
						if (GetPixel3(player.x, player.y - 1) == 0x0000) {
							player.tiley++;
							game.__dbg_wallcolrngenc = 0;
							break;
						}
						vsync
							tstsndcmp(1, sound[1].end);
						player.udframe++;
						if (keyDown(KEY_B))
						{
							player.udframe++;
							player.y--;
							game.i++;
							if (GetPixel3(player.x, player.y - 1) == 0x0000) {
								player.tiley++;
								game.__dbg_wallcolrngenc = 0;
								break;
							}
						}
						if (!(player.udframe % 8)) {
							player.anim++;
							if (player.anim >= 4) {
								player.anim = 0;
							}
						}
						if (player.anim == 0) {
							sprites[0].attribute1 = SIZE_32 | player.x;
							updateSprite(0, 56, 0, 0);
						}
						else if (player.anim == 1) {
							sprites[0].attribute1 = SIZE_32 | player.x;
							updateSprite(0, 72, 0, 0);
						}
						else if (player.anim == 2) {
							sprites[0].attribute1 = SIZE_32 | player.x;
							updateSprite(0, 56, 0, 0);
						}
						else {
							sprites[0].attribute1 = SIZE_32 | HORIZONTAL_FLIP | player.x;
							updateSprite(0, 72, 0, 0);
						}
						player.y--;
						MoveSprite(&sprites[0], player.x, player.y);
						CopyOAM();
						player.dir = 1;
					}
					game.i = 0;
					if ((game.rngnum == 1)AND(game.__dbg_wallcolrngenc == 1))
					{
						SetMode(MODE_3 | BG2_ENABLE);
						scanlines3(0x0000, 0.5);
						fillscreen3(0x0000);
						SetMode(MODE_3 | BG2_ENABLE);
						battle();
					}
				}
				if (!((player.dir == 2)OR(player.dir == 1))) {
					player.anim = 0;
				}
				if (keyDown(KEY_LEFT)) {
					player.dir = 3;
					player.tilex--;
					sprites[0].attribute1 = SIZE_32 | HORIZONTAL_FLIP | player.x;
					updateSprite(0, 0, 0, 0);
					player.frames = 0;
					game.__dbg_wallcolrngenc = 1;
					for (game.i = 0; game.i < 16; game.i++) {
						player.dir = 3;
						if (GetPixel3(player.x - 1, player.y) == 0x0000) {
							player.tilex++;
							game.__dbg_wallcolrngenc = 0;
							break;
						}
						if (GetPixel3(player.x -1, player.y + 16) == 0x0000) {
							player.tilex--;
							game.__dbg_wallcolrngenc = 0;
							break;
						} 
						vsync
							tstsndcmp(1, sound[1].end);
						game.seed = game.rngnum / 2;
						game.rngnum = (rand() % 15) + 1;
						SaveInt(0, game.seed);
						player.frames++;
						if (keyDown(KEY_B))
						{
							player.frames++;
							player.x--;
							game.i++;
							if (GetPixel3(player.x - 1, player.y) == 0x0000) {
								player.tilex++;
								game.__dbg_wallcolrngenc = 0;
								break;
							}
							if (GetPixel3(player.x - 1, player.y + 16) == 0x0000) {
								player.tilex--;
								game.__dbg_wallcolrngenc = 0;
								break;
							}
						}
						if (!(player.frames % 8)) {
							player.anim++;
							if (player.anim >= 4) {
								player.anim = 0;
							}
						}
						if (player.anim == 0) {
							updateSprite(0, 88, 0, 0);
						}
						else if (player.anim == 1) {
							updateSprite(0, 104, 0, 0);
						}
						else if (player.anim == 2) {
							updateSprite(0, 88, 0, 0);
						}
						else {
							updateSprite(0, 104, 0, 0);
						}

						player.x--;
						MoveSprite(&sprites[0], player.x, player.y);
						CopyOAM();
					}
					game.i = 0;
					if ((game.rngnum == 1)AND(game.__dbg_wallcolrngenc == 1))
					{
						SetMode(MODE_3 | BG2_ENABLE);
						scanlines3(0x0000, 0.5);
						fillscreen3(0x0000);
						SetMode(MODE_3 | BG2_ENABLE);
						battle();
					}
				}
				if (!((player.dir == 2)OR(player.dir == 1))) {
					player.anim = 0;
				}
				if (keyDown(KEY_DOWN)) {
					player.dir = 2;
					player.tiley++;
					sprites[0].attribute1 = SIZE_32 | player.x;
					updateSprite(0, 32, 0, 0);
					player.frames = 0;
					game.__dbg_wallcolrngenc = 1;
					for (game.i = 0; game.i < 16; game.i++) {
						game.seed = game.rngnum / 2;
						game.rngnum = (rand() % 15) + 1;
						SaveInt(0, game.seed);
						if (GetPixel3(player.x, player.y + 32) == 0x0000) {
							player.tiley--;
							game.__dbg_wallcolrngenc = 0;
							break;
						}
						vsync
							tstsndcmp(1, sound[1].end);
						player.udframe++;
						if (keyDown(KEY_B))
						{
							player.udframe++;
							player.y++;
							game.i++;
							if (GetPixel3(player.x, player.y + 32) == 0x0000) {
								player.tiley--;
								game.__dbg_wallcolrngenc = 0;
								break;
							}
						}
						if (!(player.udframe % 8)) {
							player.anim++;
							if (player.anim >= 4) {
								player.anim = 0;
							}
						}
							if (player.anim == 0) {
								sprites[0].attribute1 = SIZE_32 | player.x;
								updateSprite(0, 24, 0, 0);
							}
							else if (player.anim == 1) {
								sprites[0].attribute1 = SIZE_32 | player.x;
								updateSprite(0, 40, 0, 0);
							}
							else if (player.anim == 2) {
								sprites[0].attribute1 = SIZE_32 | player.x;
								updateSprite(0, 24, 0, 0);
							}
							else {
								sprites[0].attribute1 = SIZE_32 | HORIZONTAL_FLIP | player.x;
								updateSprite(0, 40, 0, 0);
							}
							player.y++;
						MoveSprite(&sprites[0], player.x, player.y);
						CopyOAM();
						player.dir = 2;
					}
					game.i = 0;
					if ((game.rngnum == 1)AND(game.__dbg_wallcolrngenc == 1))
					{
						SetMode(MODE_3 | BG2_ENABLE);
						scanlines3(0x0000, 0.5);
						fillscreen3(0x0000);
						SetMode(MODE_3 | BG2_ENABLE);
						battle();
					}
				}
			}
	return 0;
}