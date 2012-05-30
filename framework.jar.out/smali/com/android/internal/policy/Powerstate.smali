.class public Lcom/android/internal/policy/Powerstate;
.super Ljava/lang/Object;
.source "Powerstate.java"


# static fields
.field private static final AIRPLANE_MODE:Ljava/lang/String; = "airplanemode"

.field private static final BLUETOOTH_STATE:Ljava/lang/String; = "btstate"

.field private static DEBUG:Z = false

.field private static final DELAY_FM_TIME:I = 0x64

.field private static final DELEY_WAITTOSHOW_TIME:I = 0x64

.field private static final FAST_POWER_OFF:Ljava/lang/String; = "fastpoweroff"

.field private static final FAST_POWER_STATE_FILENAME:Ljava/lang/String; = "before_power_off.xml"

.field private static final GPS_STATE:Ljava/lang/String; = "gpsstate"

.field private static final MAX_BROADCAST_TIME:I = 0x2710

.field private static final MAX_NUM_STATE_READS:I = 0x10

.field static final MAX_RECENT_TASKS:I = 0x14

.field private static final MAX_SERVICES:I = 0x64

.field private static final MAX_TIMES_WAIT_ANIMATION:I = 0x28

.field private static final MAX_TIMES_WAIT_FM:I = 0x14

.field private static final MAX_WAIT_TIME_CLOSETETHER:I = 0x1b58

.field public static final POWERUP_ANIMATION:I = 0x1

.field private static final RADIO_STATE:Ljava/lang/String; = "radiostate"

.field private static final RINGER_MODE:Ljava/lang/String; = "ringermode"

.field private static final STATE_DISABLED:I = 0x0

.field private static final STATE_ENABLED:I = 0x1

.field private static final STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "Powerstate"

.field private static final TIME_POWERON_ANIMATION:I = 0x1388

.field private static final TIME_SECOND_KILL_WAIT:I = 0x258

.field private static final WIFI_STATE:Ljava/lang/String; = "wifistate"

.field private static bGetWallPaperProc:Z

.field private static bootAnimateIsRun:Z

.field private static broadcastDone:Z

.field private static mAudioManager:Landroid/media/AudioManager;

.field private static mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mPowerManagerService:Landroid/os/IPowerManager;

.field public static sHandler:Landroid/os/Handler;

.field private static wallPaperProcName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    .line 93
    sput-boolean v1, Lcom/android/internal/policy/Powerstate;->bootAnimateIsRun:Z

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    .line 101
    sput-object v2, Lcom/android/internal/policy/Powerstate;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 102
    sput-object v2, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    .line 114
    sput-boolean v1, Lcom/android/internal/policy/Powerstate;->bGetWallPaperProc:Z

    .line 115
    sput-object v2, Lcom/android/internal/policy/Powerstate;->wallPaperProcName:Ljava/lang/String;

    .line 583
    sput-boolean v1, Lcom/android/internal/policy/Powerstate;->broadcastDone:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    return v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    sput-boolean p0, Lcom/android/internal/policy/Powerstate;->broadcastDone:Z

    return p0
.end method

.method public static checkIfNotKilled(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 13
    .parameter "rapi"

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 443
    move-object v4, p0

    .line 445
    .local v4, rapInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->bGetWallPaperProc:Z

    if-nez v10, :cond_5

    .line 446
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "Powerstate"

    const-string v11, "begin parser"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v10, "/data/system/wallpaper_info.xml"

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 449
    .local v2, file:Ljava/io/File;
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 450
    .local v5, stream:Ljava/io/FileInputStream;
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 451
    .local v3, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v10, 0x0

    invoke-interface {v3, v5, v10}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 454
    :cond_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v7

    .line 455
    .local v7, type:I
    const/4 v10, 0x2

    if-ne v7, v10, :cond_2

    .line 456
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    .line 457
    .local v6, tag:Ljava/lang/String;
    const-string/jumbo v10, "wp"

    invoke-virtual {v10, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 458
    const/4 v10, 0x0

    const-string v11, "component"

    invoke-interface {v3, v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 459
    .local v0, comp:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 460
    const/4 v10, 0x0

    const/16 v11, 0x2f

    invoke-virtual {v0, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    invoke-virtual {v0, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    sput-object v10, Lcom/android/internal/policy/Powerstate;->wallPaperProcName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 464
    .end local v0           #comp:Ljava/lang/String;
    .end local v6           #tag:Ljava/lang/String;
    :cond_2
    if-ne v7, v9, :cond_1

    .line 466
    if-eqz v5, :cond_3

    .line 467
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 476
    .end local v2           #file:Ljava/io/File;
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #stream:Ljava/io/FileInputStream;
    .end local v7           #type:I
    :cond_3
    :goto_0
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v10, :cond_4

    const-string v10, "Powerstate"

    const-string v11, "end parser"

    invoke-static {v10, v11}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    :cond_4
    sput-boolean v9, Lcom/android/internal/policy/Powerstate;->bGetWallPaperProc:Z

    .line 480
    :cond_5
    const-string v10, "com.android.settings"

    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 499
    :cond_6
    :goto_1
    return v8

    .line 469
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #parser:Lorg/xmlpull/v1/XmlPullParser;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    .restart local v7       #type:I
    :catch_0
    move-exception v1

    .line 470
    .local v1, e:Ljava/io/IOException;
    const/4 v10, 0x1

    :try_start_2
    sput-boolean v10, Lcom/android/internal/policy/Powerstate;->bGetWallPaperProc:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 472
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v5           #stream:Ljava/io/FileInputStream;
    .end local v7           #type:I
    :catch_1
    move-exception v1

    .line 473
    .local v1, e:Ljava/lang/Exception;
    const-string v10, "Powerstate"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "failed parsing  "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    sput-boolean v9, Lcom/android/internal/policy/Powerstate;->bGetWallPaperProc:Z

    goto :goto_0

    .line 484
    .end local v1           #e:Ljava/lang/Exception;
    :cond_7
    if-nez v4, :cond_9

    .line 485
    sget-boolean v8, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v8, :cond_8

    const-string v8, "Powerstate"

    const-string v10, "   null skip return true............................. "

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    move v8, v9

    .line 486
    goto :goto_1

    .line 488
    :cond_9
    sget-boolean v10, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v10, :cond_a

    const-string v10, "Powerstate"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "killRunningProcess  packagename: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  uid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "  wpn: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-object v12, Lcom/android/internal/policy/Powerstate;->wallPaperProcName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_a
    iget v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    const/16 v11, 0x3e8

    if-eq v10, v11, :cond_d

    iget v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    const/16 v11, 0x3e9

    if-eq v10, v11, :cond_d

    iget-object v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v10, :cond_b

    const-string v10, "android.process.acore"

    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    :cond_b
    iget-object v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v10, :cond_c

    const-string v10, "android.process.media"

    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    :cond_c
    iget-object v10, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v10, :cond_f

    sget-object v10, Lcom/android/internal/policy/Powerstate;->wallPaperProcName:Ljava/lang/String;

    if-eqz v10, :cond_f

    sget-object v10, Lcom/android/internal/policy/Powerstate;->wallPaperProcName:Ljava/lang/String;

    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 495
    :cond_d
    sget-boolean v8, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v8, :cond_e

    const-string v8, "Powerstate"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "   skip return true............................. pkg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move v8, v9

    .line 496
    goto/16 :goto_1

    .line 498
    :cond_f
    sget-boolean v9, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v9, :cond_6

    const-string v9, "Powerstate"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "   return false******************* pkg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private static getAirplaneModeOn(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static getBluetoothState(Landroid/content/Context;)I
    .locals 4
    .parameter "context"

    .prologue
    .line 124
    const-string v3, "bluetooth"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 126
    .local v0, bluetooth:Landroid/bluetooth/IBluetooth;
    const/16 v2, 0xa

    .line 128
    .local v2, state:I
    if-nez v0, :cond_0

    .line 129
    const/16 v3, 0xa

    .line 137
    :goto_0
    return v3

    .line 133
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    move v3, v2

    .line 137
    goto :goto_0

    .line 134
    :catch_0
    move-exception v1

    .line 135
    .local v1, e:Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getGpsState(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 164
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "gps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private static getWifiState(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 147
    const-string/jumbo v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 149
    .local v1, wfm:Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    .line 150
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 153
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public static isAllowToShow(I)Z
    .locals 3
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 862
    if-ne v1, p0, :cond_0

    .line 864
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->bootAnimateIsRun:Z

    if-ne v2, v1, :cond_1

    .line 866
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 864
    goto :goto_0
.end method

.method public static killRunningProcess(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    .line 405
    const-string v8, "activity"

    invoke-virtual {p0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 407
    .local v0, am:Landroid/app/ActivityManager;
    const/16 v8, 0x64

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v5

    .line 409
    .local v5, runServiceInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningServiceInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    .line 411
    .local v6, sumRS:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_3

    .line 412
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 413
    .local v3, rs:Landroid/app/ActivityManager$RunningServiceInfo;
    sget-boolean v8, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "Powerstate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "RunningServiceInfo  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "  service name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    :cond_0
    const-string v8, "android.process.acore"

    iget-object v9, v3, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const/16 v8, 0x3e9

    iget v9, v3, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    if-eq v8, v9, :cond_1

    const/16 v8, 0x3e8

    iget v9, v3, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    if-eq v8, v9, :cond_1

    const-string v8, "android.process.media"

    iget-object v9, v3, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 411
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    :cond_2
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    iget-object v9, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {p0, v8}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 420
    sget-boolean v8, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v8, :cond_1

    const-string v8, "Powerstate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "stop RunningServiceInfo name:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 423
    .end local v3           #rs:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_3
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 425
    .local v4, runAppInfo:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    .line 426
    .local v7, sumRunProcesses:I
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v7, :cond_5

    .line 427
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 429
    .local v2, rapInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-static {v2}, Lcom/android/internal/policy/Powerstate;->checkIfNotKilled(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 426
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 432
    :cond_4
    iget v8, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v8}, Landroid/os/Process;->killProcess(I)V

    goto :goto_3

    .line 434
    .end local v2           #rapInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_5
    const/4 v8, 0x0

    sput-boolean v8, Lcom/android/internal/policy/Powerstate;->bGetWallPaperProc:Z

    .line 435
    invoke-virtual {v0}, Landroid/app/ActivityManager;->clearRecentTasks()V

    .line 436
    return-void
.end method

.method public static powerOnforAlarm(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v0, 0x1

    .line 877
    sget-boolean v8, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "Powerstate"

    const-string/jumbo v9, "restorePhoneState"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    :cond_0
    const-string/jumbo v8, "persist.sys.quickpoweron"

    const-string/jumbo v9, "startpoweron"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->readStateFromFile()Z

    move-result v4

    .line 881
    .local v4, result:Z
    if-nez v4, :cond_1

    .line 883
    const-string v7, "Powerstate"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restorePhoneState readStateFromFile result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    :goto_0
    return-void

    .line 886
    :cond_1
    sget-object v8, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v9, "wifistate"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 888
    .local v6, wifiState:Ljava/lang/Integer;
    if-nez v6, :cond_2

    .line 890
    const-string v8, "Powerstate"

    const-string/jumbo v9, "restorePhoneState wifiState get failed use the default value"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 893
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {p0, v8}, Lcom/android/internal/policy/Powerstate;->toggleWifi(Landroid/content/Context;I)V

    .line 895
    sget-object v8, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v9, "btstate"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 896
    .local v1, bluethState:Ljava/lang/Integer;
    sget-boolean v8, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "Powerstate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "restorePhoneState bluethState ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    :cond_3
    if-nez v1, :cond_4

    .line 899
    const-string v8, "Powerstate"

    const-string/jumbo v9, "restorePhoneState bluethState get failed use the default value"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 902
    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {p0, v8}, Lcom/android/internal/policy/Powerstate;->toggleBluetooth(Landroid/content/Context;I)V

    .line 904
    sget-object v8, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v9, "gpsstate"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 905
    .local v2, gpsState:Ljava/lang/Integer;
    if-nez v2, :cond_5

    .line 907
    const-string v8, "Powerstate"

    const-string/jumbo v9, "restorePhoneState gpsState get failed use the default value"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 910
    :cond_5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v0, :cond_a

    .line 911
    .local v0, bgpsState:Z
    :goto_1
    sget-boolean v7, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v7, :cond_6

    const-string v7, "Powerstate"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restorePhoneState gpsState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " bgpsState:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_6
    invoke-static {p0, v0}, Lcom/android/internal/policy/Powerstate;->toggleGps(Landroid/content/Context;Z)V

    .line 914
    sget-object v7, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v8, "ringermode"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 915
    .local v5, ringtoneMode:Ljava/lang/Integer;
    if-nez v5, :cond_7

    .line 917
    const-string v7, "Powerstate"

    const-string/jumbo v8, "restorePhoneState ringtoneMode get failed use the default value"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 920
    :cond_7
    sget-boolean v7, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v7, :cond_8

    const-string v7, "Powerstate"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restorePhoneState ringtonemode ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_8
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p0, v7}, Lcom/android/internal/policy/Powerstate;->toggleRingToneMode(Landroid/content/Context;I)V

    .line 924
    const-string/jumbo v7, "true"

    const-string/jumbo v8, "ro.poweroff_alarm"

    const-string v9, "false"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 927
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v9, "user_set_airplane"

    sget-object v7, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v10, "airplanemode"

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {v8, v9, v7}, Landroid/provider/Settings$Systemex;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 930
    :cond_9
    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->showAnimationAgain(Landroid/content/Context;)V

    .line 932
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v3, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 933
    .local v3, mHomeIntent:Landroid/content/Intent;
    const-string v7, "android.intent.category.HOME"

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 934
    const/high16 v7, 0x1020

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 935
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v0           #bgpsState:Z
    .end local v3           #mHomeIntent:Landroid/content/Intent;
    .end local v5           #ringtoneMode:Ljava/lang/Integer;
    :cond_a
    move v0, v7

    .line 910
    goto/16 :goto_1
.end method

.method private static readStateFromFile()Z
    .locals 14

    .prologue
    .line 804
    sget-boolean v11, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string v11, "Powerstate"

    const-string/jumbo v12, "readStateFromFile begin"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v11, "/data/system/before_power_off.xml"

    invoke-direct {v1, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 807
    .local v1, file:Ljava/io/File;
    sget-object v11, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 808
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    .line 809
    const/4 v7, 0x0

    .line 853
    :cond_1
    :goto_0
    return v7

    .line 812
    :cond_2
    const/4 v5, 0x0

    .line 813
    .local v5, stream:Ljava/io/FileInputStream;
    const/4 v7, 0x0

    .line 815
    .local v7, success:Z
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_4

    .line 816
    .end local v5           #stream:Ljava/io/FileInputStream;
    .local v6, stream:Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 817
    .local v4, parser:Lorg/xmlpull/v1/XmlPullParser;
    const/4 v11, 0x0

    invoke-interface {v4, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 820
    const/4 v2, 0x0

    .line 822
    .local v2, itemIndex:I
    :cond_3
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    .line 823
    .local v9, type:I
    const/4 v11, 0x2

    if-ne v9, v11, :cond_4

    .line 824
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 825
    .local v8, tag:Ljava/lang/String;
    const-string v11, "item"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 826
    const/4 v11, 0x0

    const-string/jumbo v12, "name"

    invoke-interface {v4, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 827
    .local v3, k:Ljava/lang/String;
    const/4 v11, 0x0

    const-string/jumbo v12, "value"

    invoke-interface {v4, v11, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 828
    .local v10, v:Ljava/lang/Integer;
    sget-object v11, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    invoke-interface {v11, v3, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_6

    .line 831
    .end local v3           #k:Ljava/lang/String;
    .end local v8           #tag:Ljava/lang/String;
    .end local v10           #v:Ljava/lang/Integer;
    :cond_4
    const/4 v11, 0x1

    if-ne v9, v11, :cond_3

    .line 832
    const/4 v7, 0x1

    move-object v5, v6

    .line 846
    .end local v2           #itemIndex:I
    .end local v4           #parser:Lorg/xmlpull/v1/XmlPullParser;
    .end local v6           #stream:Ljava/io/FileInputStream;
    .end local v9           #type:I
    .restart local v5       #stream:Ljava/io/FileInputStream;
    :goto_1
    if-eqz v5, :cond_5

    .line 847
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 852
    :cond_5
    :goto_2
    sget-boolean v11, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v11, :cond_1

    const-string v11, "Powerstate"

    const-string/jumbo v12, "readStateFromFile end"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 833
    :catch_0
    move-exception v0

    .line 834
    .local v0, e:Ljava/lang/NullPointerException;
    :goto_3
    const-string v11, "Powerstate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "failed parsing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 835
    .end local v0           #e:Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 836
    .local v0, e:Ljava/lang/NumberFormatException;
    :goto_4
    const-string v11, "Powerstate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "failed parsing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 837
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_2
    move-exception v0

    .line 838
    .local v0, e:Lorg/xmlpull/v1/XmlPullParserException;
    :goto_5
    const-string v11, "Powerstate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "failed parsing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 839
    .end local v0           #e:Lorg/xmlpull/v1/XmlPullParserException;
    :catch_3
    move-exception v0

    .line 840
    .local v0, e:Ljava/io/IOException;
    :goto_6
    const-string v11, "Powerstate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "failed parsing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 841
    .end local v0           #e:Ljava/io/IOException;
    :catch_4
    move-exception v0

    .line 842
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    :goto_7
    const-string v11, "Powerstate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "failed parsing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 849
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    :catch_5
    move-exception v11

    goto/16 :goto_2

    .line 841
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_6
    move-exception v0

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_7

    .line 839
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_7
    move-exception v0

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_6

    .line 837
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_8
    move-exception v0

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_5

    .line 835
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_9
    move-exception v0

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto :goto_4

    .line 833
    .end local v5           #stream:Ljava/io/FileInputStream;
    .restart local v6       #stream:Ljava/io/FileInputStream;
    :catch_a
    move-exception v0

    move-object v5, v6

    .end local v6           #stream:Ljava/io/FileInputStream;
    .restart local v5       #stream:Ljava/io/FileInputStream;
    goto/16 :goto_3
.end method

.method public static restorePhoneState(Landroid/content/Context;)V
    .locals 11
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    const/4 v7, 0x0

    .line 507
    sget-boolean v8, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "Powerstate"

    const-string/jumbo v9, "restorePhoneState"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_0
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->readStateFromFile()Z

    move-result v4

    .line 510
    .local v4, result:Z
    if-nez v4, :cond_1

    .line 512
    const-string v7, "Powerstate"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restorePhoneState readStateFromFile result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :goto_0
    return-void

    .line 515
    :cond_1
    sget-object v8, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v9, "wifistate"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 517
    .local v6, wifiState:Ljava/lang/Integer;
    if-nez v6, :cond_2

    .line 519
    const-string v8, "Powerstate"

    const-string/jumbo v9, "restorePhoneState wifiState get failed use the default value"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 522
    :cond_2
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {p0, v8}, Lcom/android/internal/policy/Powerstate;->toggleWifi(Landroid/content/Context;I)V

    .line 524
    sget-object v8, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v9, "btstate"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 525
    .local v2, bluethState:Ljava/lang/Integer;
    sget-boolean v8, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v8, :cond_3

    const-string v8, "Powerstate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "restorePhoneState bluethState ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_3
    if-nez v2, :cond_4

    .line 528
    const-string v8, "Powerstate"

    const-string/jumbo v9, "restorePhoneState bluethState get failed use the default value"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 531
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {p0, v8}, Lcom/android/internal/policy/Powerstate;->toggleBluetooth(Landroid/content/Context;I)V

    .line 533
    sget-object v8, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v9, "gpsstate"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 534
    .local v3, gpsState:Ljava/lang/Integer;
    if-nez v3, :cond_5

    .line 536
    const-string v8, "Powerstate"

    const-string/jumbo v9, "restorePhoneState gpsState get failed use the default value"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 539
    :cond_5
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v1, :cond_c

    .line 540
    .local v1, bgpsState:Z
    :goto_1
    sget-boolean v8, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v8, :cond_6

    const-string v8, "Powerstate"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "restorePhoneState gpsState:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bgpsState:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_6
    invoke-static {p0, v1}, Lcom/android/internal/policy/Powerstate;->toggleGps(Landroid/content/Context;Z)V

    .line 545
    const-string v8, "RTC"

    const-string/jumbo v9, "persist.sys.powerup_reason"

    const-string v10, "NORMAL"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 546
    sget-object v8, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v9, "airplanemode"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 547
    .local v0, airplaneMode:Ljava/lang/Integer;
    if-nez v0, :cond_7

    .line 549
    const-string v8, "Powerstate"

    const-string/jumbo v9, "restorePhoneState airplaneMode get failed use the default value"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 552
    :cond_7
    sget-boolean v7, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v7, :cond_8

    const-string v7, "Powerstate"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restorePhoneState airplaneMode:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    :cond_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p0, v7}, Lcom/android/internal/policy/Powerstate;->toggleAirPlane(Landroid/content/Context;I)V

    .line 557
    .end local v0           #airplaneMode:Ljava/lang/Integer;
    :cond_9
    sget-object v7, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v8, "ringermode"

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 558
    .local v5, ringtoneMode:Ljava/lang/Integer;
    if-nez v5, :cond_a

    .line 560
    const-string v7, "Powerstate"

    const-string/jumbo v8, "restorePhoneState ringtoneMode get failed use the default value"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 563
    :cond_a
    sget-boolean v7, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v7, :cond_b

    const-string v7, "Powerstate"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restorePhoneState ringtonemode ="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_b
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-static {p0, v7}, Lcom/android/internal/policy/Powerstate;->toggleRingToneMode(Landroid/content/Context;I)V

    goto/16 :goto_0

    .end local v1           #bgpsState:Z
    .end local v5           #ringtoneMode:Ljava/lang/Integer;
    :cond_c
    move v1, v7

    .line 539
    goto/16 :goto_1
.end method

.method public static savePhoneSate(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v2, 0x1

    const/4 v6, -0x1

    .line 366
    sget-object v3, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v4, "fastpoweroff"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v3, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v4, "wifistate"

    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getWifiState(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    sget-object v3, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v4, "btstate"

    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getBluetoothState(Landroid/content/Context;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    sget-object v3, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v4, "gpsstate"

    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getGpsState(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    const-string/jumbo v2, "true"

    const-string/jumbo v3, "ro.poweroff_alarm"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "RTC"

    const-string/jumbo v3, "persist.sys.powerup_reason"

    const-string v4, "NORMAL"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 376
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "user_set_airplane"

    invoke-static {v2, v3, v6}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 378
    .local v1, userSetAirplane:I
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string v2, "Powerstate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Power off Alarm userSetAirplane : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_0
    if-ne v6, v1, :cond_1

    .line 381
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v3, "airplanemode"

    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getAirplaneModeOn(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    .end local v1           #userSetAirplane:I
    :cond_1
    :goto_1
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_2

    .line 390
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    sput-object v2, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    .line 392
    :cond_2
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string/jumbo v3, "ringermode"

    sget-object v4, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->saveStateToFile()Z

    move-result v0

    .line 395
    .local v0, bResult:Z
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "Powerstate"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "savePhoneSatesaveStateToFile bResult:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_3
    return-void

    .line 369
    .end local v0           #bResult:Z
    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 384
    :cond_5
    sget-object v2, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v3, "airplanemode"

    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getAirplaneModeOn(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static saveStateToFile()Z
    .locals 15

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 748
    sget-boolean v12, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v12, :cond_0

    const-string v12, "Powerstate"

    const-string/jumbo v13, "saveStateToFile"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_0
    new-instance v2, Ljava/io/File;

    const-string v12, "/data/system/before_power_off.xml"

    invoke-direct {v2, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 752
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_1

    .line 754
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 760
    :cond_1
    :goto_0
    const/4 v7, 0x0

    .line 762
    .local v7, stream:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v8, Ljava/io/FileOutputStream;

    const/4 v12, 0x0

    invoke-direct {v8, v2, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 763
    .end local v7           #stream:Ljava/io/FileOutputStream;
    .local v8, stream:Ljava/io/FileOutputStream;
    :try_start_2
    new-instance v6, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v6}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    .line 764
    .local v6, out:Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v12, "utf-8"

    invoke-interface {v6, v8, v12}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 765
    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-interface {v6, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 766
    const/4 v12, 0x0

    const-string/jumbo v13, "state"

    invoke-interface {v6, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 767
    const/4 v4, 0x0

    .line 769
    .local v4, itemIndex:I
    sget-object v12, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->size()I

    move-result v4

    .line 770
    sget-object v12, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 771
    .local v1, e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 772
    .local v5, k:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 773
    .local v9, v:Ljava/lang/Object;
    const/4 v12, 0x0

    const-string v13, "item"

    invoke-interface {v6, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 774
    const/4 v12, 0x0

    const-string/jumbo v13, "name"

    invoke-interface {v6, v12, v13, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 775
    const/4 v12, 0x0

    const-string/jumbo v13, "value"

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v6, v12, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 776
    const/4 v12, 0x0

    const-string v13, "item"

    invoke-interface {v6, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 783
    .end local v1           #e:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #itemIndex:I
    .end local v5           #k:Ljava/lang/String;
    .end local v6           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v9           #v:Ljava/lang/Object;
    :catch_0
    move-exception v0

    move-object v7, v8

    .line 785
    .end local v8           #stream:Ljava/io/FileOutputStream;
    .local v0, e:Ljava/io/IOException;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    :goto_2
    if-eqz v7, :cond_2

    .line 786
    :try_start_3
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 791
    :cond_2
    :goto_3
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 792
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_3
    move v10, v11

    .line 794
    .end local v0           #e:Ljava/io/IOException;
    :goto_4
    return v10

    .line 779
    .end local v7           #stream:Ljava/io/FileOutputStream;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v4       #itemIndex:I
    .restart local v6       #out:Lorg/xmlpull/v1/XmlSerializer;
    .restart local v8       #stream:Ljava/io/FileOutputStream;
    :cond_4
    const/4 v12, 0x0

    :try_start_4
    const-string/jumbo v13, "state"

    invoke-interface {v6, v12, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 780
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 781
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v7, v8

    .line 782
    .end local v8           #stream:Ljava/io/FileOutputStream;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    goto :goto_4

    .line 755
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #itemIndex:I
    .end local v6           #out:Lorg/xmlpull/v1/XmlSerializer;
    .end local v7           #stream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v12

    goto/16 :goto_0

    .line 788
    .restart local v0       #e:Ljava/io/IOException;
    .restart local v7       #stream:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v10

    goto :goto_3

    .line 783
    .end local v0           #e:Ljava/io/IOException;
    :catch_3
    move-exception v0

    goto :goto_2
.end method

.method public static sendStopBC(Landroid/content/Context;)V
    .locals 21
    .parameter "context"

    .prologue
    .line 594
    :try_start_0
    const-string v18, "com.huawei.android.FMRadio"

    .line 596
    .local v18, fmPackageName:Ljava/lang/String;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v17

    .line 597
    .local v17, fmContext:Landroid/content/Context;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    .line 600
    .local v19, fmSp:Landroid/content/SharedPreferences;
    const-string v2, "fm_state"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 602
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.huawei.android.FMRadio.fmradioservicecommand.stop"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 604
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    const/16 v2, 0x14

    move/from16 v0, v20

    if-ge v0, v2, :cond_0

    .line 605
    const-wide/16 v2, 0x64

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 607
    const-string v2, "fm_state"

    const/4 v3, 0x1

    move-object/from16 v0, v19

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_2

    .line 618
    .end local v17           #fmContext:Landroid/content/Context;
    .end local v18           #fmPackageName:Ljava/lang/String;
    .end local v19           #fmSp:Landroid/content/SharedPreferences;
    .end local v20           #i:I
    :cond_0
    :goto_1
    new-instance v11, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v11, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 619
    .local v11, closeDialogs:Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 623
    new-instance v10, Ljava/lang/Object;

    invoke-direct {v10}, Ljava/lang/Object;-><init>()V

    .line 624
    .local v10, broadcastDoneSync:Ljava/lang/Object;
    new-instance v5, Lcom/android/internal/policy/Powerstate$2;

    invoke-direct {v5, v10}, Lcom/android/internal/policy/Powerstate$2;-><init>(Ljava/lang/Object;)V

    .line 633
    .local v5, br:Landroid/content/BroadcastReceiver;
    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/internal/policy/Powerstate;->broadcastDone:Z

    .line 634
    const-string v2, "Powerstate"

    const-string v3, "begin Sending shutdown broadcast"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    new-instance v3, Landroid/content/Intent;

    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    sget-object v6, Lcom/android/internal/policy/Powerstate;->sHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 636
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v6, 0x2710

    add-long v15, v2, v6

    .line 637
    .local v15, endTime:J
    monitor-enter v10

    .line 638
    :goto_2
    :try_start_1
    sget-boolean v2, Lcom/android/internal/policy/Powerstate;->broadcastDone:Z

    if-nez v2, :cond_1

    .line 639
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v12, v15, v2

    .line 640
    .local v12, delay:J
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-gtz v2, :cond_3

    .line 641
    const-string v2, "Powerstate"

    const-string/jumbo v3, "shutdown broadcast timed out"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    .end local v12           #delay:J
    :cond_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 650
    const-string v2, "Powerstate"

    const-string v3, "end Sending shutdown broadcast"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    return-void

    .line 604
    .end local v5           #br:Landroid/content/BroadcastReceiver;
    .end local v10           #broadcastDoneSync:Ljava/lang/Object;
    .end local v11           #closeDialogs:Landroid/content/Intent;
    .end local v15           #endTime:J
    .restart local v17       #fmContext:Landroid/content/Context;
    .restart local v18       #fmPackageName:Ljava/lang/String;
    .restart local v19       #fmSp:Landroid/content/SharedPreferences;
    .restart local v20       #i:I
    :cond_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 612
    .end local v17           #fmContext:Landroid/content/Context;
    .end local v18           #fmPackageName:Ljava/lang/String;
    .end local v19           #fmSp:Landroid/content/SharedPreferences;
    .end local v20           #i:I
    :catch_0
    move-exception v14

    .line 613
    .local v14, e:Ljava/lang/Exception;
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 645
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v5       #br:Landroid/content/BroadcastReceiver;
    .restart local v10       #broadcastDoneSync:Ljava/lang/Object;
    .restart local v11       #closeDialogs:Landroid/content/Intent;
    .restart local v12       #delay:J
    .restart local v15       #endTime:J
    :cond_3
    :try_start_2
    invoke-virtual {v10, v12, v13}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 646
    :catch_1
    move-exception v2

    goto :goto_2

    .line 649
    .end local v12           #delay:J
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v10
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public static setPoweroffState(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 575
    sget-boolean v0, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Powerstate"

    const-string/jumbo v1, "setPoweroffState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :cond_0
    invoke-static {p0, v3}, Lcom/android/internal/policy/Powerstate;->toggleWifi(Landroid/content/Context;I)V

    .line 577
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/android/internal/policy/Powerstate;->toggleBluetooth(Landroid/content/Context;I)V

    .line 578
    invoke-static {p0, v2}, Lcom/android/internal/policy/Powerstate;->toggleGps(Landroid/content/Context;Z)V

    .line 579
    invoke-static {p0, v3}, Lcom/android/internal/policy/Powerstate;->toggleAirPlane(Landroid/content/Context;I)V

    .line 580
    invoke-static {p0, v2}, Lcom/android/internal/policy/Powerstate;->toggleRingToneMode(Landroid/content/Context;I)V

    .line 581
    return-void
.end method

.method public static showAnimationAgain(Landroid/content/Context;)V
    .locals 10
    .parameter "mContext"

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 664
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->bootAnimateIsRun:Z

    if-eqz v6, :cond_1

    .line 666
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "Powerstate"

    const-string v7, "Power on animation is running"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_0
    :goto_0
    return-void

    .line 671
    :cond_1
    sput-boolean v7, Lcom/android/internal/policy/Powerstate;->bootAnimateIsRun:Z

    .line 675
    invoke-static {v9}, Landroid/os/Power;->notifyArmNineSleep(Z)Z

    move-result v0

    .line 676
    .local v0, bSleep:Z
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifiy the arm nine to stop sleep : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :cond_2
    const-string/jumbo v6, "vibrator"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    .line 680
    .local v5, vibrator:Landroid/os/Vibrator;
    if-eqz v5, :cond_3

    .line 681
    const/4 v6, 0x2

    new-array v6, v6, [J

    fill-array-data v6, :array_0

    const/4 v7, -0x1

    invoke-virtual {v5, v6, v7}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 684
    :cond_3
    const/4 v2, 0x0

    .line 688
    .local v2, fProcess:Ljava/lang/Process;
    const-string/jumbo v6, "power"

    invoke-static {v6}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v6

    sput-object v6, Lcom/android/internal/policy/Powerstate;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 690
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "Powerstate"

    const-string/jumbo v7, "start to show power on AnimationAgain"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    :cond_4
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v6

    const-string v7, "/system/bin/bootanimationex"

    invoke-virtual {v6, v7}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 696
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    const/16 v6, 0x28

    if-ge v3, v6, :cond_5

    .line 697
    const-string/jumbo v6, "true"

    const-string/jumbo v7, "persist.sys.animationstart"

    const-string v8, "false"

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    if-eqz v6, :cond_a

    .line 706
    :cond_5
    :try_start_1
    sget-object v6, Lcom/android/internal/policy/Powerstate;->mPowerManagerService:Landroid/os/IPowerManager;

    const/4 v7, 0x1

    invoke-interface {v6, v7}, Landroid/os/IPowerManager;->allowShowScreenWithDelay(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 712
    :cond_6
    :goto_2
    :try_start_2
    const-string/jumbo v6, "ro.config.hw_poanimation"

    const/16 v7, 0x1388

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 713
    .local v4, timeLong:I
    int-to-long v6, v4

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 717
    .end local v4           #timeLong:I
    :goto_3
    if-eqz v2, :cond_7

    .line 718
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 719
    const/4 v2, 0x0

    .line 722
    :cond_7
    const-string/jumbo v6, "persist.sys.animationstart"

    const-string v7, "false"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    const-string/jumbo v6, "persist.sys.quickpoweron"

    const-string/jumbo v7, "normal"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 726
    :try_start_4
    sget-object v6, Lcom/android/internal/policy/Powerstate;->mPowerManagerService:Landroid/os/IPowerManager;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Landroid/os/IPowerManager;->allowShowScreenWithDelay(Z)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 738
    .end local v3           #i:I
    :cond_8
    :goto_4
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_9

    const-string v6, "Powerstate"

    const-string/jumbo v7, "showAnimation finished"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    :cond_9
    sput-boolean v9, Lcom/android/internal/policy/Powerstate;->bootAnimateIsRun:Z

    goto/16 :goto_0

    .line 700
    .restart local v3       #i:I
    :cond_a
    :try_start_5
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_b

    const-string v6, "Powerstate"

    const-string/jumbo v7, "wait to show animation"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    :cond_b
    const-wide/16 v6, 0x64

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    .line 696
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 707
    :catch_0
    move-exception v1

    .line 708
    .local v1, e:Landroid/os/RemoteException;
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_6

    const-string v6, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mPowerManagerService.allowShowScreenWithDelay true failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 730
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #i:I
    :catch_1
    move-exception v1

    .line 731
    .local v1, e:Ljava/io/IOException;
    if-eqz v2, :cond_c

    .line 732
    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    .line 733
    const/4 v2, 0x0

    .line 735
    :cond_c
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 714
    .end local v1           #e:Ljava/io/IOException;
    .restart local v3       #i:I
    :catch_2
    move-exception v1

    .line 715
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_6
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 727
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catch_3
    move-exception v1

    .line 728
    .local v1, e:Landroid/os/RemoteException;
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_8

    const-string v6, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "mPowerManagerService.allowShowScreenWithDelay false failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    .line 681
    nop

    :array_0
    .array-data 0x8
        0xat 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static synAirplaneMode(Landroid/content/Context;)V
    .locals 10
    .parameter "mContext"

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 945
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string v6, "Powerstate"

    const-string/jumbo v7, "synairplanemode"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 946
    :cond_0
    move-object v2, p0

    .line 947
    .local v2, modeContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->readStateFromFile()Z

    move-result v3

    .line 948
    .local v3, resultReadStateFromFile:Z
    if-nez v3, :cond_2

    .line 949
    const-string v6, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "synAirplaneMode readStateFromFile result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :cond_1
    :goto_0
    return-void

    .line 953
    :cond_2
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "user_set_airplane"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 954
    .local v5, userChangeAirplane:I
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 956
    .local v4, stateAirPlane:I
    if-ne v8, v5, :cond_3

    .line 958
    sget-object v6, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v7, "airplanemode"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->saveStateToFile()Z

    move-result v1

    .line 960
    .local v1, bResultSaveStateToFile:Z
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "Powerstate"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "user have change airplane and saveStateToFile result = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 963
    .end local v1           #bResultSaveStateToFile:Z
    :cond_3
    sget-object v6, Lcom/android/internal/policy/Powerstate;->mMap:Ljava/util/Map;

    const-string v7, "airplanemode"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 964
    .local v0, airplaneMode:Ljava/lang/Integer;
    if-nez v0, :cond_4

    .line 965
    const-string v6, "Powerstate"

    const-string/jumbo v7, "user not change airplane, synAirplaneMode airplaneMode get failed use the default value"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 968
    :cond_4
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "airplane_mode_on"

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private static toggleAirPlane(Landroid/content/Context;I)V
    .locals 14
    .parameter "mContext"
    .parameter "isOn"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 279
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on"

    invoke-static {v11, v12, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 282
    .local v7, stateAirPlane:I
    sget-boolean v11, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v11, :cond_0

    const-string v11, "Powerstate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "toggle AirPlane now stateAirPlane is :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    :cond_0
    if-ne p1, v7, :cond_2

    .line 285
    sget-boolean v9, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v9, :cond_1

    const-string v9, "Powerstate"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "toggle AirPlane now is :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  then return"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_1
    :goto_0
    return-void

    .line 289
    :cond_2
    sget-boolean v11, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v11, :cond_3

    const-string v11, "Powerstate"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "toggleAirPlane switch air mode: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_3
    if-nez p1, :cond_4

    .line 291
    move-object v4, p0

    .line 292
    .local v4, modeContext:Landroid/content/Context;
    move v8, p1

    .line 293
    .local v8, stateIson:I
    new-instance v0, Lcom/android/internal/policy/Powerstate$1;

    invoke-direct {v0, v4, v8}, Lcom/android/internal/policy/Powerstate$1;-><init>(Landroid/content/Context;I)V

    .line 314
    .local v0, aThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 315
    .end local v0           #aThread:Ljava/lang/Thread;
    .end local v4           #modeContext:Landroid/content/Context;
    .end local v8           #stateIson:I
    :cond_4
    if-ne v9, p1, :cond_1

    .line 316
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on"

    invoke-static {v11, v12, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 317
    new-instance v3, Landroid/content/Intent;

    const-string v11, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 319
    .local v3, intent:Landroid/content/Intent;
    const-string/jumbo v11, "state"

    invoke-virtual {v3, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 321
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 323
    const-string/jumbo v11, "phone"

    invoke-static {v11}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 325
    .local v5, phone:Lcom/android/internal/telephony/ITelephony;
    if-nez v5, :cond_6

    move v6, v9

    .line 327
    .local v6, radioOff:Z
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    const/16 v11, 0x10

    if-ge v2, v11, :cond_1

    .line 328
    if-nez v6, :cond_5

    .line 330
    :try_start_0
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-nez v11, :cond_7

    move v6, v9

    .line 336
    :cond_5
    :goto_3
    if-eqz v6, :cond_8

    .line 337
    const-string v9, "Powerstate"

    const-string v10, "Radio shutdown complete."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2           #i:I
    .end local v6           #radioOff:Z
    :cond_6
    move v6, v10

    .line 325
    goto :goto_1

    .restart local v2       #i:I
    .restart local v6       #radioOff:Z
    :cond_7
    move v6, v10

    .line 330
    goto :goto_3

    .line 331
    :catch_0
    move-exception v1

    .line 332
    .local v1, ex:Landroid/os/RemoteException;
    const-string v11, "Powerstate"

    const-string v12, "RemoteException during radio shutdown"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 333
    const/4 v6, 0x1

    goto :goto_3

    .line 340
    .end local v1           #ex:Landroid/os/RemoteException;
    :cond_8
    const-wide/16 v11, 0x1f4

    invoke-static {v11, v12}, Landroid/os/SystemClock;->sleep(J)V

    .line 327
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private static toggleBluetooth(Landroid/content/Context;I)V
    .locals 9
    .parameter "context"
    .parameter "state"

    .prologue
    const/16 v8, 0xa

    const/4 v5, 0x0

    .line 184
    const-string v6, "bluetooth"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Landroid/bluetooth/IBluetooth$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    .line 187
    .local v0, bluetooth:Landroid/bluetooth/IBluetooth;
    if-nez v0, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    invoke-static {p0}, Lcom/android/internal/policy/Powerstate;->getBluetoothState(Landroid/content/Context;)I

    move-result v6

    if-ne v6, p1, :cond_2

    .line 192
    sget-boolean v5, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string v5, "Powerstate"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "toggleBluetooth now is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ,then  return"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 197
    :cond_2
    if-ne v8, p1, :cond_5

    .line 198
    sget-boolean v6, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v6, :cond_3

    const-string v6, "Powerstate"

    const-string v7, "Disabling Bluetooth..."

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_3
    const/4 v6, 0x0

    :try_start_0
    invoke-interface {v0, v6}, Landroid/bluetooth/IBluetooth;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    .line 202
    const/4 v1, 0x0

    .line 203
    .local v1, bluetoothOff:Z
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    const/16 v6, 0x10

    if-ge v4, v6, :cond_5

    .line 204
    if-nez v1, :cond_4

    .line 206
    :try_start_1
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getBluetoothState()I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v6

    if-ne v6, v8, :cond_7

    const/4 v1, 0x1

    .line 212
    :cond_4
    :goto_2
    if-eqz v1, :cond_8

    .line 213
    :try_start_2
    const-string v5, "Powerstate"

    const-string v6, "Bluetooth shutdown complete."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 224
    .end local v1           #bluetoothOff:Z
    .end local v4           #i:I
    :cond_5
    :goto_3
    const/16 v5, 0xc

    if-ne v5, p1, :cond_0

    .line 225
    sget-boolean v5, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v5, :cond_6

    const-string v5, "Powerstate"

    const-string v6, "enable Bluetooth..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_6
    :try_start_3
    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->enable()Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v2

    .line 229
    .local v2, e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .end local v2           #e:Landroid/os/RemoteException;
    .restart local v1       #bluetoothOff:Z
    .restart local v4       #i:I
    :cond_7
    move v1, v5

    .line 206
    goto :goto_2

    .line 207
    :catch_1
    move-exception v3

    .line 208
    .local v3, ex:Landroid/os/RemoteException;
    :try_start_4
    const-string v6, "Powerstate"

    const-string v7, "RemoteException during bluetooth shutdown"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    const/4 v1, 0x1

    goto :goto_2

    .line 216
    .end local v3           #ex:Landroid/os/RemoteException;
    :cond_8
    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    .line 203
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 219
    .end local v1           #bluetoothOff:Z
    .end local v4           #i:I
    :catch_2
    move-exception v2

    .line 220
    .restart local v2       #e:Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3
.end method

.method private static toggleGps(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 267
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-boolean v1, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Powerstate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "toggleGps "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    const-string v1, "gps"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 270
    return-void
.end method

.method private static toggleRingToneMode(Landroid/content/Context;I)V
    .locals 3
    .parameter "mContext"
    .parameter "mode"

    .prologue
    .line 352
    sget-object v0, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 353
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    sput-object v0, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    .line 355
    :cond_0
    sget-object v0, Lcom/android/internal/policy/Powerstate;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 356
    sget-boolean v0, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Powerstate"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toggleRingToneMode mAudioManager mode is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    :cond_1
    return-void
.end method

.method private static toggleWifi(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "state"

    .prologue
    const/4 v2, 0x1

    .line 240
    const-string/jumbo v1, "wifi"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 242
    .local v0, wifiManager:Landroid/net/wifi/WifiManager;
    if-nez v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 247
    sget-boolean v1, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Powerstate"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiState now is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " , nothing then  return"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 251
    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    .line 252
    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 253
    sget-boolean v1, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Powerstate"

    const-string/jumbo v2, "wifi state is enable"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 254
    :cond_3
    if-ne p1, v2, :cond_0

    .line 255
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 256
    sget-boolean v1, Lcom/android/internal/policy/Powerstate;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "Powerstate"

    const-string/jumbo v2, "wifi state is disable"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
