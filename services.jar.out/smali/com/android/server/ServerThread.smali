.class Lcom/android/server/ServerThread;
.super Ljava/lang/Thread;
.source "SystemServer.java"


# static fields
.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "SystemServer"


# instance fields
.field mContentResolver:Landroid/content/ContentResolver;

.field private mDrmDialogService:Lcom/android/server/HWDrmDialogsService;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ServerThread;->mDrmDialogService:Lcom/android/server/HWDrmDialogsService;

    return-void
.end method

.method private sendAirplaneModeChangedBroadcast(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "on"

    .prologue
    .line 880
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 881
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 882
    const-string v1, "state"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 883
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 884
    return-void
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 889
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 890
    .local v0, intent:Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.systemui.SystemUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 892
    const-string v1, "SystemServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 894
    return-void
.end method


# virtual methods
.method reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 91
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-string v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    return-void
.end method

.method public run()V
    .locals 104

    .prologue
    .line 97
    const/16 v3, 0xbc2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-static {v3, v9, v10}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 100
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 102
    const/4 v3, -0x2

    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 105
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 106
    const/4 v3, 0x0

    invoke-static {v3}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 110
    const-string v3, "sys.shutdown.requested"

    const-string v9, ""

    invoke-static {v3, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v84

    .line 112
    .local v84, shutdownAction:Ljava/lang/String;
    if-eqz v84, :cond_0

    invoke-virtual/range {v84 .. v84}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 113
    const/4 v3, 0x0

    move-object/from16 v0, v84

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v9, 0x31

    if-ne v3, v9, :cond_9

    const/16 v81, 0x1

    .line 116
    .local v81, reboot:Z
    :goto_0
    invoke-virtual/range {v84 .. v84}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v9, 0x1

    if-le v3, v9, :cond_a

    .line 117
    const/4 v3, 0x1

    invoke-virtual/range {v84 .. v84}, Ljava/lang/String;->length()I

    move-result v9

    move-object/from16 v0, v84

    invoke-virtual {v0, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v80

    .line 122
    .local v80, reason:Ljava/lang/String;
    :goto_1
    move/from16 v0, v81

    move-object/from16 v1, v80

    invoke-static {v0, v1}, Lcom/android/internal/app/ShutdownThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 126
    .end local v80           #reason:Ljava/lang/String;
    .end local v81           #reboot:Z
    :cond_0
    const-string v3, "ro.factorytest"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v61

    .line 127
    .local v61, factoryTestStr:Ljava/lang/String;
    const-string v3, ""

    move-object/from16 v0, v61

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/16 v60, 0x0

    .line 130
    .local v60, factoryTest:I
    :goto_2
    const/16 v66, 0x0

    .line 131
    .local v66, lights:Lcom/android/server/LightsService;
    const/16 v79, 0x0

    .line 132
    .local v79, power:Lcom/android/server/PowerManagerService;
    const/16 v55, 0x0

    .line 133
    .local v55, dmm:Lcom/android/server/DynamicMemoryManagerService;
    const/16 v40, 0x0

    .line 134
    .local v40, battery:Lcom/android/server/BatteryService;
    const/16 v36, 0x0

    .line 135
    .local v36, alarm:Lcom/android/server/AlarmManagerService;
    const/4 v13, 0x0

    .line 136
    .local v13, networkManagement:Lcom/android/server/NetworkManagementService;
    const/4 v12, 0x0

    .line 137
    .local v12, networkStats:Lcom/android/server/net/NetworkStatsService;
    const/16 v71, 0x0

    .line 138
    .local v71, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v46, 0x0

    .line 139
    .local v46, connectivity:Lcom/android/server/ConnectivityService;
    const/16 v101, 0x0

    .line 140
    .local v101, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    const/16 v99, 0x0

    .line 141
    .local v99, wifi:Lcom/android/server/WifiService;
    const/16 v78, 0x0

    .line 142
    .local v78, pm:Landroid/content/pm/IPackageManager;
    const/4 v4, 0x0

    .line 143
    .local v4, context:Landroid/content/Context;
    const/16 v103, 0x0

    .line 144
    .local v103, wm:Lcom/android/server/wm/WindowManagerService;
    const/16 v41, 0x0

    .line 145
    .local v41, bluetooth:Landroid/server/BluetoothService;
    const/16 v43, 0x0

    .line 146
    .local v43, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    const/16 v57, 0x0

    .line 147
    .local v57, dock:Lcom/android/server/DockObserver;
    const/16 v93, 0x0

    .line 148
    .local v93, usb:Lcom/android/server/usb/UsbService;
    const/16 v91, 0x0

    .line 149
    .local v91, uiMode:Lcom/android/server/UiModeManagerService;
    const/16 v82, 0x0

    .line 150
    .local v82, recognition:Lcom/android/server/RecognitionManagerService;
    const/16 v87, 0x0

    .line 151
    .local v87, throttle:Lcom/android/server/ThrottleService;
    const/16 v73, 0x0

    .line 152
    .local v73, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    const/16 v50, 0x0

    .line 156
    .local v50, cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    :try_start_0
    const-string v3, "SystemServer"

    const-string v9, "Entropy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v3, "entropy"

    new-instance v9, Lcom/android/server/EntropyService;

    invoke-direct {v9}, Lcom/android/server/EntropyService;-><init>()V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 159
    const-string v3, "SystemServer"

    const-string v9, "Power Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance v6, Lcom/android/server/PowerManagerService;

    invoke-direct {v6}, Lcom/android/server/PowerManagerService;-><init>()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3e

    .line 161
    .end local v79           #power:Lcom/android/server/PowerManagerService;
    .local v6, power:Lcom/android/server/PowerManagerService;
    :try_start_1
    const-string v3, "power"

    invoke-static {v3, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 163
    const-string v3, "SystemServer"

    const-string v9, "Activity Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static/range {v60 .. v60}, Lcom/android/server/am/ActivityManagerService;->main(I)Landroid/content/Context;

    move-result-object v4

    .line 166
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 167
    const-string v3, "SystemServer"

    const-string v9, "MSimTelephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v3, "telephony.msim.registry"

    new-instance v9, Lcom/android/server/MSimTelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/MSimTelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 175
    :goto_3
    invoke-static {v4}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 177
    const-string v3, "SystemServer"

    const-string v9, "Package Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const-string v3, "vold.decrypt"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v52

    .line 180
    .local v52, cryptState:Ljava/lang/String;
    const/16 v77, 0x0

    .line 181
    .local v77, onlyCore:Z
    const-string v3, "trigger_restart_min_framework"

    move-object/from16 v0, v52

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 182
    const-string v3, "SystemServer"

    const-string v9, "Detected encryption in progress - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const/16 v77, 0x1

    .line 189
    :cond_1
    :goto_4
    if-eqz v60, :cond_e

    const/4 v3, 0x1

    :goto_5
    move/from16 v0, v77

    invoke-static {v4, v3, v0}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;ZZ)Landroid/content/pm/IPackageManager;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v78

    .line 192
    const/16 v62, 0x0

    .line 194
    .local v62, firstBoot:Z
    :try_start_2
    invoke-interface/range {v78 .. v78}, Landroid/content/pm/IPackageManager;->isFirstBoot()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2c
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v62

    .line 198
    :goto_6
    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 200
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mContentResolver:Landroid/content/ContentResolver;
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 204
    :try_start_4
    const-string v3, "SystemServer"

    const-string v9, "Account Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v3, "account"

    new-instance v9, Landroid/accounts/AccountManagerService;

    invoke-direct {v9, v4}, Landroid/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 212
    :goto_7
    :try_start_5
    const-string v3, "SystemServer"

    const-string v9, "Content Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v3, 0x1

    move/from16 v0, v60

    if-ne v0, v3, :cond_f

    const/4 v3, 0x1

    :goto_8
    invoke-static {v4, v3}, Landroid/content/ContentService;->main(Landroid/content/Context;Z)Landroid/content/IContentService;

    .line 217
    const-string v3, "SystemServer"

    const-string v9, "System Content Providers"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 220
    const-string v3, "SystemServer"

    const-string v9, "Lights Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v67, Lcom/android/server/MiuiLightsService;

    move-object/from16 v0, v67

    invoke-direct {v0, v4}, Lcom/android/server/MiuiLightsService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    .line 223
    .end local v66           #lights:Lcom/android/server/LightsService;
    .local v67, lights:Lcom/android/server/LightsService;
    :try_start_6
    const-string v3, "SystemServer"

    const-string v9, "Battery Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v5, Lcom/android/server/BatteryService;

    move-object/from16 v0, v67

    invoke-direct {v5, v4, v0}, Lcom/android/server/BatteryService;-><init>(Landroid/content/Context;Lcom/android/server/LightsService;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_3f

    .line 225
    .end local v40           #battery:Lcom/android/server/BatteryService;
    .local v5, battery:Lcom/android/server/BatteryService;
    :try_start_7
    const-string v3, "battery"

    invoke-static {v3, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 227
    const-string v3, "SystemServer"

    const-string v9, "Vibrator Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const-string v3, "vibrator"

    new-instance v9, Lcom/android/server/VibratorService;

    invoke-direct {v9, v4}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 232
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v67

    invoke-virtual {v6, v4, v0, v3, v5}, Lcom/android/server/PowerManagerService;->init(Landroid/content/Context;Lcom/android/server/LightsService;Landroid/app/IActivityManager;Lcom/android/server/BatteryService;)V

    .line 234
    const-string v3, "SystemServer"

    const-string v9, "Alarm Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    new-instance v7, Lcom/android/server/AlarmManagerService;

    invoke-direct {v7, v4}, Lcom/android/server/AlarmManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_40

    .line 236
    .end local v36           #alarm:Lcom/android/server/AlarmManagerService;
    .local v7, alarm:Lcom/android/server/AlarmManagerService;
    :try_start_8
    const-string v3, "alarm"

    invoke-static {v3, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 239
    const-string v3, "SystemServer"

    const-string v9, "HWDrmDialogs Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v3, Lcom/android/server/HWDrmDialogsService;

    invoke-direct {v3, v4}, Lcom/android/server/HWDrmDialogsService;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/server/ServerThread;->mDrmDialogService:Lcom/android/server/HWDrmDialogsService;

    .line 244
    const-string v3, "SystemServer"

    const-string v9, "Init Watchdog"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/PowerManagerService;Lcom/android/server/AlarmManagerService;Lcom/android/server/am/ActivityManagerService;)V

    .line 248
    const-string v3, "SystemServer"

    const-string v9, "Window Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v3, 0x1

    move/from16 v0, v60

    if-eq v0, v3, :cond_10

    const/4 v3, 0x1

    move v9, v3

    :goto_9
    if-nez v62, :cond_11

    const/4 v3, 0x1

    :goto_a
    invoke-static {v4, v6, v9, v3}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/PowerManagerService;ZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v103

    .line 252
    const-string v3, "window"

    move-object/from16 v0, v103

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 254
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    move-object/from16 v0, v103

    invoke-virtual {v3, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 259
    move/from16 v0, v60

    invoke-static {v4, v0}, Lcom/broadcom/bt/server/BrcmBtServiceLoader;->loadServices(Landroid/content/Context;I)V

    .line 269
    const/4 v3, 0x1

    move/from16 v0, v60

    if-ne v0, v3, :cond_12

    .line 270
    const-string v3, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :goto_b
    const-string v3, "SystemServer"

    const-string v9, "DynamicMemoryManager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v56, Lcom/android/server/DynamicMemoryManagerService;

    move-object/from16 v0, v56

    invoke-direct {v0, v4}, Lcom/android/server/DynamicMemoryManagerService;-><init>(Landroid/content/Context;)V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_41

    .line 295
    .end local v55           #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .local v56, dmm:Lcom/android/server/DynamicMemoryManagerService;
    :try_start_9
    new-instance v51, Lcom/android/server/CpuGovernorService;

    move-object/from16 v0, v51

    invoke-direct {v0, v4}, Lcom/android/server/CpuGovernorService;-><init>(Landroid/content/Context;)V
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_9} :catch_44

    .line 297
    .end local v50           #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .local v51, cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    if-nez v51, :cond_2

    .line 298
    :try_start_a
    const-string v3, "SystemServer"

    const-string v9, "CpuGovernorService failed to start"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_45

    :cond_2
    move-object/from16 v50, v51

    .end local v51           #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .restart local v50       #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    move-object/from16 v55, v56

    .end local v56           #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .restart local v55       #dmm:Lcom/android/server/DynamicMemoryManagerService;
    move-object/from16 v66, v67

    .line 305
    .end local v52           #cryptState:Ljava/lang/String;
    .end local v62           #firstBoot:Z
    .end local v67           #lights:Lcom/android/server/LightsService;
    .end local v77           #onlyCore:Z
    .restart local v66       #lights:Lcom/android/server/LightsService;
    :goto_c
    const/16 v53, 0x0

    .line 306
    .local v53, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    const/16 v85, 0x0

    .line 307
    .local v85, statusBar:Lcom/android/server/StatusBarManagerService;
    const/16 v63, 0x0

    .line 308
    .local v63, imm:Lcom/android/server/InputMethodManagerService;
    const/16 v37, 0x0

    .line 309
    .local v37, appWidget:Lcom/android/server/AppWidgetService;
    const/16 v75, 0x0

    .line 310
    .local v75, notification:Lcom/android/server/NotificationManagerService;
    const/16 v97, 0x0

    .line 311
    .local v97, wallpaper:Lcom/android/server/WallpaperManagerService;
    const/16 v68, 0x0

    .line 312
    .local v68, location:Lcom/android/server/LocationManagerService;
    const/16 v48, 0x0

    .line 313
    .local v48, countryDetector:Lcom/android/server/CountryDetectorService;
    const/16 v89, 0x0

    .line 316
    .local v89, tsms:Lcom/android/server/TextServicesManagerService;
    const/4 v3, 0x1

    move/from16 v0, v60

    if-eq v0, v3, :cond_3

    .line 318
    :try_start_b
    const-string v3, "SystemServer"

    const-string v9, "Input Method Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    new-instance v64, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v64

    invoke-direct {v0, v4}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_2

    .line 320
    .end local v63           #imm:Lcom/android/server/InputMethodManagerService;
    .local v64, imm:Lcom/android/server/InputMethodManagerService;
    :try_start_c
    const-string v3, "input_method"

    move-object/from16 v0, v64

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_3d

    move-object/from16 v63, v64

    .line 326
    .end local v64           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v63       #imm:Lcom/android/server/InputMethodManagerService;
    :goto_d
    :try_start_d
    const-string v3, "SystemServer"

    const-string v9, "Accessibility Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const-string v3, "accessibility"

    new-instance v9, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3

    .line 335
    :cond_3
    :goto_e
    :try_start_e
    invoke-virtual/range {v103 .. v103}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4

    .line 341
    :goto_f
    :try_start_f
    invoke-interface/range {v78 .. v78}, Landroid/content/pm/IPackageManager;->performBootDexOpt()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_5

    .line 347
    :goto_10
    :try_start_10
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10403ba

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v3, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Ljava/lang/CharSequence;Z)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_3c

    .line 354
    :goto_11
    const/4 v3, 0x1

    move/from16 v0, v60

    if-eq v0, v3, :cond_16

    .line 356
    :try_start_11
    const-string v3, "SystemServer"

    const-string v9, "Device Policy"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance v54, Lcom/android/server/DevicePolicyManagerService;

    move-object/from16 v0, v54

    invoke-direct {v0, v4}, Lcom/android/server/DevicePolicyManagerService;-><init>(Landroid/content/Context;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_6

    .line 358
    .end local v53           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .local v54, devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :try_start_12
    const-string v3, "device_policy"

    move-object/from16 v0, v54

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_3b

    move-object/from16 v53, v54

    .line 364
    .end local v54           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v53       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :goto_12
    :try_start_13
    const-string v3, "SystemServer"

    const-string v9, "Status Bar"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    new-instance v86, Lcom/android/server/StatusBarManagerService;

    move-object/from16 v0, v86

    move-object/from16 v1, v103

    invoke-direct {v0, v4, v1}, Lcom/android/server/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_7

    .line 366
    .end local v85           #statusBar:Lcom/android/server/StatusBarManagerService;
    .local v86, statusBar:Lcom/android/server/StatusBarManagerService;
    :try_start_14
    const-string v3, "statusbar"

    move-object/from16 v0, v86

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_3a

    move-object/from16 v85, v86

    .line 372
    .end local v86           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v85       #statusBar:Lcom/android/server/StatusBarManagerService;
    :goto_13
    :try_start_15
    const-string v3, "SystemServer"

    const-string v9, "Clipboard Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v3, "clipboard"

    new-instance v9, Lcom/android/server/ClipboardService;

    invoke-direct {v9, v4}, Lcom/android/server/ClipboardService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_8

    .line 380
    :goto_14
    :try_start_16
    const-string v3, "SystemServer"

    const-string v9, "NetworkManagement Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v13

    .line 382
    const-string v3, "network_management"

    invoke-static {v3, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_9

    .line 388
    :goto_15
    :try_start_17
    const-string v3, "SystemServer"

    const-string v9, "Text Service Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    new-instance v90, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v90

    invoke-direct {v0, v4}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_a

    .line 390
    .end local v89           #tsms:Lcom/android/server/TextServicesManagerService;
    .local v90, tsms:Lcom/android/server/TextServicesManagerService;
    :try_start_18
    const-string v3, "textservices"

    move-object/from16 v0, v90

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_39

    move-object/from16 v89, v90

    .line 396
    .end local v90           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v89       #tsms:Lcom/android/server/TextServicesManagerService;
    :goto_16
    :try_start_19
    const-string v3, "SystemServer"

    const-string v9, "NetworkStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    new-instance v72, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v72

    invoke-direct {v0, v4, v13, v7}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_b

    .line 398
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .local v72, networkStats:Lcom/android/server/net/NetworkStatsService;
    :try_start_1a
    const-string v3, "netstats"

    move-object/from16 v0, v72

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_38

    move-object/from16 v12, v72

    .line 404
    .end local v72           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :goto_17
    :try_start_1b
    const-string v3, "SystemServer"

    const-string v9, "NetworkPolicy Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Lcom/android/server/net/MiuiNetworkPolicyManagerService;

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v10

    move-object v9, v4

    move-object v11, v6

    invoke-direct/range {v8 .. v13}, Lcom/android/server/net/MiuiNetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_c

    .line 408
    .end local v71           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1c
    const-string v3, "netpolicy"

    invoke-static {v3, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_37

    .line 414
    :goto_18
    :try_start_1d
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi P2pService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    new-instance v102, Landroid/net/wifi/p2p/WifiP2pService;

    move-object/from16 v0, v102

    invoke-direct {v0, v4}, Landroid/net/wifi/p2p/WifiP2pService;-><init>(Landroid/content/Context;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_d

    .line 416
    .end local v101           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .local v102, wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :try_start_1e
    const-string v3, "wifip2p"

    move-object/from16 v0, v102

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_36

    move-object/from16 v101, v102

    .line 422
    .end local v102           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v101       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :goto_19
    :try_start_1f
    const-string v3, "SystemServer"

    const-string v9, "Wi-Fi Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    new-instance v100, Lcom/android/server/WifiService;

    move-object/from16 v0, v100

    invoke-direct {v0, v4}, Lcom/android/server/WifiService;-><init>(Landroid/content/Context;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_e

    .line 424
    .end local v99           #wifi:Lcom/android/server/WifiService;
    .local v100, wifi:Lcom/android/server/WifiService;
    :try_start_20
    const-string v3, "wifi"

    move-object/from16 v0, v100

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_35

    move-object/from16 v99, v100

    .line 430
    .end local v100           #wifi:Lcom/android/server/WifiService;
    .restart local v99       #wifi:Lcom/android/server/WifiService;
    :goto_1a
    :try_start_21
    const-string v3, "SystemServer"

    const-string v9, "Connectivity Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    new-instance v47, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v47

    invoke-direct {v0, v4, v13, v12, v8}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_f

    .line 433
    .end local v46           #connectivity:Lcom/android/server/ConnectivityService;
    .local v47, connectivity:Lcom/android/server/ConnectivityService;
    :try_start_22
    const-string v3, "connectivity"

    move-object/from16 v0, v47

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 434
    move-object/from16 v0, v47

    invoke-virtual {v12, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 435
    move-object/from16 v0, v47

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 436
    invoke-virtual/range {v99 .. v99}, Lcom/android/server/WifiService;->checkAndStartWifi()V

    .line 437
    invoke-virtual/range {v101 .. v101}, Landroid/net/wifi/p2p/WifiP2pService;->connectivityServiceReady()V

    .line 438
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/ConnectivityService;->startCne()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_34

    move-object/from16 v46, v47

    .line 444
    .end local v47           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v46       #connectivity:Lcom/android/server/ConnectivityService;
    :goto_1b
    :try_start_23
    const-string v3, "SystemServer"

    const-string v9, "Throttle Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    new-instance v88, Lcom/android/server/ThrottleService;

    move-object/from16 v0, v88

    invoke-direct {v0, v4}, Lcom/android/server/ThrottleService;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_10

    .line 446
    .end local v87           #throttle:Lcom/android/server/ThrottleService;
    .local v88, throttle:Lcom/android/server/ThrottleService;
    :try_start_24
    const-string v3, "throttle"

    move-object/from16 v0, v88

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_33

    move-object/from16 v87, v88

    .line 457
    .end local v88           #throttle:Lcom/android/server/ThrottleService;
    .restart local v87       #throttle:Lcom/android/server/ThrottleService;
    :goto_1c
    :try_start_25
    const-string v3, "SystemServer"

    const-string v9, "Mount Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const-string v3, "mount"

    new-instance v9, Lcom/android/server/MountService;

    invoke-direct {v9, v4}, Lcom/android/server/MountService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_11

    .line 464
    :goto_1d
    :try_start_26
    const-string v3, "SystemServer"

    const-string v9, "Notification Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    new-instance v76, Lcom/android/server/NotificationManagerService;

    move-object/from16 v0, v76

    move-object/from16 v1, v85

    move-object/from16 v2, v66

    invoke-direct {v0, v4, v1, v2}, Lcom/android/server/NotificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LightsService;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_12

    .line 466
    .end local v75           #notification:Lcom/android/server/NotificationManagerService;
    .local v76, notification:Lcom/android/server/NotificationManagerService;
    :try_start_27
    const-string v3, "notification"

    move-object/from16 v0, v76

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 467
    move-object/from16 v0, v76

    invoke-virtual {v8, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_32

    move-object/from16 v75, v76

    .line 473
    .end local v76           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v75       #notification:Lcom/android/server/NotificationManagerService;
    :goto_1e
    :try_start_28
    const-string v3, "SystemServer"

    const-string v9, "HDMI Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const-string v3, "hdmi"

    new-instance v9, Lcom/android/server/HDMIService;

    invoke-direct {v9, v4}, Lcom/android/server/HDMIService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_13

    .line 480
    :goto_1f
    :try_start_29
    const-string v3, "SystemServer"

    const-string v9, "Device Storage Monitor"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const-string v3, "devicestoragemonitor"

    new-instance v9, Lcom/android/server/DeviceStorageMonitorService;

    invoke-direct {v9, v4}, Lcom/android/server/DeviceStorageMonitorService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_14

    .line 488
    :goto_20
    :try_start_2a
    const-string v3, "SystemServer"

    const-string v9, "Location Manager"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    new-instance v69, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v69

    invoke-direct {v0, v4}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_15

    .line 490
    .end local v68           #location:Lcom/android/server/LocationManagerService;
    .local v69, location:Lcom/android/server/LocationManagerService;
    :try_start_2b
    const-string v3, "location"

    move-object/from16 v0, v69

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_31

    move-object/from16 v68, v69

    .line 496
    .end local v69           #location:Lcom/android/server/LocationManagerService;
    .restart local v68       #location:Lcom/android/server/LocationManagerService;
    :goto_21
    :try_start_2c
    const-string v3, "SystemServer"

    const-string v9, "Country Detector"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    new-instance v49, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v49

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_16

    .line 498
    .end local v48           #countryDetector:Lcom/android/server/CountryDetectorService;
    .local v49, countryDetector:Lcom/android/server/CountryDetectorService;
    :try_start_2d
    const-string v3, "country_detector"

    move-object/from16 v0, v49

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_30

    move-object/from16 v48, v49

    .line 504
    .end local v49           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v48       #countryDetector:Lcom/android/server/CountryDetectorService;
    :goto_22
    :try_start_2e
    const-string v3, "SystemServer"

    const-string v9, "Search Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const-string v3, "search"

    new-instance v9, Landroid/server/search/SearchManagerService;

    invoke-direct {v9, v4}, Landroid/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_17

    .line 512
    :goto_23
    :try_start_2f
    const-string v3, "SystemServer"

    const-string v9, "DropBox Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const-string v3, "dropbox"

    new-instance v9, Lcom/android/server/DropBoxManagerService;

    new-instance v10, Ljava/io/File;

    const-string v11, "/data/system/dropbox"

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v4, v10}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_18

    .line 520
    :goto_24
    :try_start_30
    const-string v3, "SystemServer"

    const-string v9, "Wallpaper Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    new-instance v98, Lcom/android/server/WallpaperManagerService;

    move-object/from16 v0, v98

    invoke-direct {v0, v4}, Lcom/android/server/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_19

    .line 522
    .end local v97           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .local v98, wallpaper:Lcom/android/server/WallpaperManagerService;
    :try_start_31
    const-string v3, "wallpaper"

    move-object/from16 v0, v98

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_2f

    move-object/from16 v97, v98

    .line 528
    .end local v98           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v97       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :goto_25
    :try_start_32
    const-string v3, "SystemServer"

    const-string v9, "Audio Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string v3, "audio"

    new-instance v9, Landroid/media/AudioService;

    invoke-direct {v9, v4}, Landroid/media/AudioService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_1a

    .line 535
    :goto_26
    :try_start_33
    const-string v3, "SystemServer"

    const-string v9, "Dock Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    new-instance v58, Lcom/android/server/DockObserver;

    move-object/from16 v0, v58

    invoke-direct {v0, v4, v6}, Lcom/android/server/DockObserver;-><init>(Landroid/content/Context;Lcom/android/server/PowerManagerService;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_1b

    .end local v57           #dock:Lcom/android/server/DockObserver;
    .local v58, dock:Lcom/android/server/DockObserver;
    move-object/from16 v57, v58

    .line 543
    .end local v58           #dock:Lcom/android/server/DockObserver;
    .restart local v57       #dock:Lcom/android/server/DockObserver;
    :goto_27
    :try_start_34
    const-string v3, "SystemServer"

    const-string v9, "Wired Accessory Observer"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    new-instance v3, Lcom/android/server/WiredAccessoryObserver;

    invoke-direct {v3, v4}, Lcom/android/server/WiredAccessoryObserver;-><init>(Landroid/content/Context;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_1c

    .line 551
    :goto_28
    :try_start_35
    const-string v3, "SystemServer"

    const-string v9, "USB Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    new-instance v94, Lcom/android/server/usb/UsbService;

    move-object/from16 v0, v94

    invoke-direct {v0, v4}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_1d

    .line 554
    .end local v93           #usb:Lcom/android/server/usb/UsbService;
    .local v94, usb:Lcom/android/server/usb/UsbService;
    :try_start_36
    const-string v3, "usb"

    move-object/from16 v0, v94

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_2e

    move-object/from16 v93, v94

    .line 560
    .end local v94           #usb:Lcom/android/server/usb/UsbService;
    .restart local v93       #usb:Lcom/android/server/usb/UsbService;
    :goto_29
    :try_start_37
    const-string v3, "SystemServer"

    const-string v9, "UI Mode Manager Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    new-instance v92, Lcom/android/server/UiModeManagerService;

    move-object/from16 v0, v92

    invoke-direct {v0, v4}, Lcom/android/server/UiModeManagerService;-><init>(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_1e

    .end local v91           #uiMode:Lcom/android/server/UiModeManagerService;
    .local v92, uiMode:Lcom/android/server/UiModeManagerService;
    move-object/from16 v91, v92

    .line 568
    .end local v92           #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v91       #uiMode:Lcom/android/server/UiModeManagerService;
    :goto_2a
    :try_start_38
    const-string v3, "SystemServer"

    const-string v9, "Backup Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    const-string v3, "backup"

    new-instance v9, Lcom/android/server/BackupManagerService;

    invoke-direct {v9, v4}, Lcom/android/server/BackupManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_1f

    .line 576
    :goto_2b
    :try_start_39
    const-string v3, "SystemServer"

    const-string v9, "AppWidget Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    new-instance v38, Lcom/android/server/AppWidgetService;

    move-object/from16 v0, v38

    invoke-direct {v0, v4}, Lcom/android/server/AppWidgetService;-><init>(Landroid/content/Context;)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_20

    .line 578
    .end local v37           #appWidget:Lcom/android/server/AppWidgetService;
    .local v38, appWidget:Lcom/android/server/AppWidgetService;
    :try_start_3a
    const-string v3, "appwidget"

    move-object/from16 v0, v38

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_2d

    move-object/from16 v37, v38

    .line 584
    .end local v38           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v37       #appWidget:Lcom/android/server/AppWidgetService;
    :goto_2c
    :try_start_3b
    const-string v3, "SystemServer"

    const-string v9, "Recognition Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    new-instance v83, Lcom/android/server/RecognitionManagerService;

    move-object/from16 v0, v83

    invoke-direct {v0, v4}, Lcom/android/server/RecognitionManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_21

    .end local v82           #recognition:Lcom/android/server/RecognitionManagerService;
    .local v83, recognition:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v82, v83

    .line 591
    .end local v83           #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v82       #recognition:Lcom/android/server/RecognitionManagerService;
    :goto_2d
    :try_start_3c
    const-string v3, "SystemServer"

    const-string v9, "DiskStats Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const-string v3, "diskstats"

    new-instance v9, Lcom/android/server/DiskStatsService;

    invoke-direct {v9, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_3c .. :try_end_3c} :catch_22

    .line 598
    :goto_2e
    :try_start_3d
    const-string v3, "SystemServer"

    const-string v9, "AtCmdFwd Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    new-instance v39, Lcom/android/internal/atfwd/AtCmdFwdService;

    move-object/from16 v0, v39

    invoke-direct {v0, v4}, Lcom/android/internal/atfwd/AtCmdFwdService;-><init>(Landroid/content/Context;)V

    .line 600
    .local v39, atfwd:Lcom/android/internal/atfwd/AtCmdFwdService;
    const-string v3, "AtCmdFwd"

    move-object/from16 v0, v39

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_23

    .line 610
    .end local v39           #atfwd:Lcom/android/internal/atfwd/AtCmdFwdService;
    :goto_2f
    :try_start_3e
    const-string v3, "SystemServer"

    const-string v9, "SamplingProfiler Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    const-string v3, "samplingprofiler"

    new-instance v9, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v9, v4}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_24

    .line 618
    :goto_30
    :try_start_3f
    const-string v3, "SystemServer"

    const-string v9, "NetworkTimeUpdateService"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    new-instance v74, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v74

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_25

    .end local v73           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .local v74, networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v73, v74

    .line 627
    .end local v74           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v73       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    :goto_31
    :try_start_40
    const-string v3, "SystemServer"

    const-string v9, "BT FM Power Management Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    const-string v3, "bt_fm_radio"

    new-instance v9, Lcom/broadcom/bt/service/framework/PowerManagementService;

    invoke-direct {v9, v4}, Lcom/broadcom/bt/service/framework/PowerManagementService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_26

    .line 637
    :goto_32
    invoke-virtual/range {v103 .. v103}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v27

    .line 638
    .local v27, safeMode:Z
    if-eqz v27, :cond_13

    .line 639
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 641
    const/4 v3, 0x1

    sput-boolean v3, Ldalvik/system/Zygote;->systemInSafeMode:Z

    .line 643
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 651
    :goto_33
    if-eqz v53, :cond_4

    .line 653
    :try_start_41
    invoke-virtual/range {v53 .. v53}, Lcom/android/server/DevicePolicyManagerService;->systemReady()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_27

    .line 659
    :cond_4
    :goto_34
    if-eqz v75, :cond_5

    .line 661
    :try_start_42
    invoke-virtual/range {v75 .. v75}, Lcom/android/server/NotificationManagerService;->systemReady()V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_28

    .line 668
    :cond_5
    :goto_35
    :try_start_43
    invoke-virtual/range {v103 .. v103}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_29

    .line 673
    :goto_36
    if-eqz v27, :cond_6

    .line 674
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 680
    :cond_6
    invoke-virtual/range {v103 .. v103}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v45

    .line 681
    .local v45, config:Landroid/content/res/Configuration;
    new-instance v70, Landroid/util/DisplayMetrics;

    invoke-direct/range {v70 .. v70}, Landroid/util/DisplayMetrics;-><init>()V

    .line 682
    .local v70, metrics:Landroid/util/DisplayMetrics;
    const-string v3, "window"

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v96

    check-cast v96, Landroid/view/WindowManager;

    .line 683
    .local v96, w:Landroid/view/WindowManager;
    invoke-interface/range {v96 .. v96}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object/from16 v0, v70

    invoke-virtual {v3, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 684
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move-object/from16 v0, v45

    move-object/from16 v1, v70

    invoke-virtual {v3, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 686
    invoke-virtual {v6}, Lcom/android/server/PowerManagerService;->systemReady()V

    .line 688
    :try_start_44
    invoke-interface/range {v78 .. v78}, Landroid/content/pm/IPackageManager;->systemReady()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_2a

    .line 694
    :goto_37
    move-object/from16 v16, v4

    .line 695
    .local v16, contextF:Landroid/content/Context;
    move-object/from16 v17, v5

    .line 696
    .local v17, batteryF:Lcom/android/server/BatteryService;
    move-object/from16 v18, v13

    .line 697
    .local v18, networkManagementF:Lcom/android/server/NetworkManagementService;
    move-object/from16 v19, v12

    .line 698
    .local v19, networkStatsF:Lcom/android/server/net/NetworkStatsService;
    move-object/from16 v20, v8

    .line 699
    .local v20, networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v21, v46

    .line 700
    .local v21, connectivityF:Lcom/android/server/ConnectivityService;
    move-object/from16 v22, v57

    .line 701
    .local v22, dockF:Lcom/android/server/DockObserver;
    move-object/from16 v23, v93

    .line 702
    .local v23, usbF:Lcom/android/server/usb/UsbService;
    move-object/from16 v33, v87

    .line 703
    .local v33, throttleF:Lcom/android/server/ThrottleService;
    move-object/from16 v24, v91

    .line 704
    .local v24, uiModeF:Lcom/android/server/UiModeManagerService;
    move-object/from16 v26, v37

    .line 705
    .local v26, appWidgetF:Lcom/android/server/AppWidgetService;
    move-object/from16 v28, v97

    .line 706
    .local v28, wallpaperF:Lcom/android/server/WallpaperManagerService;
    move-object/from16 v29, v63

    .line 707
    .local v29, immF:Lcom/android/server/InputMethodManagerService;
    move-object/from16 v25, v82

    .line 708
    .local v25, recognitionF:Lcom/android/server/RecognitionManagerService;
    move-object/from16 v31, v68

    .line 709
    .local v31, locationF:Lcom/android/server/LocationManagerService;
    move-object/from16 v32, v48

    .line 710
    .local v32, countryDetectorF:Lcom/android/server/CountryDetectorService;
    move-object/from16 v34, v73

    .line 711
    .local v34, networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v35, v89

    .line 712
    .local v35, textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    move-object/from16 v30, v85

    .line 719
    .local v30, statusBarF:Lcom/android/server/StatusBarManagerService;
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->self()Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    new-instance v14, Lcom/android/server/ServerThread$1;

    move-object/from16 v15, p0

    invoke-direct/range {v14 .. v35}, Lcom/android/server/ServerThread$1;-><init>(Lcom/android/server/ServerThread;Landroid/content/Context;Lcom/android/server/BatteryService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/DockObserver;Lcom/android/server/usb/UsbService;Lcom/android/server/UiModeManagerService;Lcom/android/server/RecognitionManagerService;Lcom/android/server/AppWidgetService;ZLcom/android/server/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/ThrottleService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/TextServicesManagerService;)V

    invoke-virtual {v3, v14}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 819
    const-string v3, "true"

    const-string v9, "ro.poweroff_alarm"

    const-string v10, "false"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 822
    :try_start_45
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v9, "airplane_mode_on"

    const/4 v10, 0x0

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v65

    .line 827
    .local v65, lastAirplaneMode:I
    const-string v3, "RTC"

    const-string v9, "persist.sys.powerup_reason"

    const-string v10, "NORMAL"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 832
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v9, "airplane_mode_on"

    const/4 v10, 0x1

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 836
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v9, "user_set_airplane"

    move/from16 v0, v65

    invoke-static {v3, v9, v0}, Landroid/provider/Settings$Systemex;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 839
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/server/ServerThread;->sendAirplaneModeChangedBroadcast(Landroid/content/Context;Z)V
    :try_end_45
    .catch Ljava/lang/Throwable; {:try_start_45 .. :try_end_45} :catch_2b

    .line 864
    .end local v65           #lastAirplaneMode:I
    :cond_7
    :goto_38
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 865
    const-string v3, "SystemServer"

    const-string v9, "Enabled StrictMode for system server main thread."

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_8
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 869
    const-string v3, "SystemServer"

    const-string v9, "System ServerThread is exiting!"

    invoke-static {v3, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    return-void

    .line 113
    .end local v4           #context:Landroid/content/Context;
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .end local v13           #networkManagement:Lcom/android/server/NetworkManagementService;
    .end local v16           #contextF:Landroid/content/Context;
    .end local v17           #batteryF:Lcom/android/server/BatteryService;
    .end local v18           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v19           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v20           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v21           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v22           #dockF:Lcom/android/server/DockObserver;
    .end local v23           #usbF:Lcom/android/server/usb/UsbService;
    .end local v24           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v25           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v26           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v27           #safeMode:Z
    .end local v28           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v29           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v30           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v31           #locationF:Lcom/android/server/LocationManagerService;
    .end local v32           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v33           #throttleF:Lcom/android/server/ThrottleService;
    .end local v34           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v35           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v37           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v41           #bluetooth:Landroid/server/BluetoothService;
    .end local v43           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v45           #config:Landroid/content/res/Configuration;
    .end local v46           #connectivity:Lcom/android/server/ConnectivityService;
    .end local v48           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v50           #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .end local v53           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v55           #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .end local v57           #dock:Lcom/android/server/DockObserver;
    .end local v60           #factoryTest:I
    .end local v61           #factoryTestStr:Ljava/lang/String;
    .end local v63           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v66           #lights:Lcom/android/server/LightsService;
    .end local v68           #location:Lcom/android/server/LocationManagerService;
    .end local v70           #metrics:Landroid/util/DisplayMetrics;
    .end local v73           #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .end local v75           #notification:Lcom/android/server/NotificationManagerService;
    .end local v78           #pm:Landroid/content/pm/IPackageManager;
    .end local v82           #recognition:Lcom/android/server/RecognitionManagerService;
    .end local v85           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v87           #throttle:Lcom/android/server/ThrottleService;
    .end local v89           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v91           #uiMode:Lcom/android/server/UiModeManagerService;
    .end local v93           #usb:Lcom/android/server/usb/UsbService;
    .end local v96           #w:Landroid/view/WindowManager;
    .end local v97           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .end local v99           #wifi:Lcom/android/server/WifiService;
    .end local v101           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .end local v103           #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_9
    const/16 v81, 0x0

    goto/16 :goto_0

    .line 119
    .restart local v81       #reboot:Z
    :cond_a
    const/16 v80, 0x0

    .restart local v80       #reason:Ljava/lang/String;
    goto/16 :goto_1

    .line 127
    .end local v80           #reason:Ljava/lang/String;
    .end local v81           #reboot:Z
    .restart local v61       #factoryTestStr:Ljava/lang/String;
    :cond_b
    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v60

    goto/16 :goto_2

    .line 171
    .restart local v4       #context:Landroid/content/Context;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v13       #networkManagement:Lcom/android/server/NetworkManagementService;
    .restart local v36       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v40       #battery:Lcom/android/server/BatteryService;
    .restart local v41       #bluetooth:Landroid/server/BluetoothService;
    .restart local v43       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v46       #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v50       #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .restart local v55       #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .restart local v57       #dock:Lcom/android/server/DockObserver;
    .restart local v60       #factoryTest:I
    .restart local v66       #lights:Lcom/android/server/LightsService;
    .restart local v71       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v73       #networkTimeUpdater:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v78       #pm:Landroid/content/pm/IPackageManager;
    .restart local v82       #recognition:Lcom/android/server/RecognitionManagerService;
    .restart local v87       #throttle:Lcom/android/server/ThrottleService;
    .restart local v91       #uiMode:Lcom/android/server/UiModeManagerService;
    .restart local v93       #usb:Lcom/android/server/usb/UsbService;
    .restart local v99       #wifi:Lcom/android/server/WifiService;
    .restart local v101       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v103       #wm:Lcom/android/server/wm/WindowManagerService;
    :cond_c
    :try_start_46
    const-string v3, "SystemServer"

    const-string v9, "Telephony Registry"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v3, "telephony.registry"

    new-instance v9, Lcom/android/server/TelephonyRegistry;

    invoke-direct {v9, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_46
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_46} :catch_0

    goto/16 :goto_3

    .line 300
    :catch_0
    move-exception v59

    move-object/from16 v7, v36

    .end local v36           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v40

    .line 301
    .end local v40           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .local v59, e:Ljava/lang/RuntimeException;
    :goto_39
    const-string v3, "System"

    const-string v9, "******************************************"

    invoke-static {v3, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const-string v3, "System"

    const-string v9, "************ Failure starting core service"

    move-object/from16 v0, v59

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .line 184
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v59           #e:Ljava/lang/RuntimeException;
    .restart local v36       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v40       #battery:Lcom/android/server/BatteryService;
    .restart local v52       #cryptState:Ljava/lang/String;
    .restart local v77       #onlyCore:Z
    :cond_d
    :try_start_47
    const-string v3, "1"

    move-object/from16 v0, v52

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    const-string v3, "SystemServer"

    const-string v9, "Device encrypted - only parsing core apps"

    invoke-static {v3, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    const/16 v77, 0x1

    goto/16 :goto_4

    .line 189
    :cond_e
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 207
    .restart local v62       #firstBoot:Z
    :catch_1
    move-exception v59

    .line 208
    .local v59, e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Account Manager"

    move-object/from16 v0, v59

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_47
    .catch Ljava/lang/RuntimeException; {:try_start_47 .. :try_end_47} :catch_0

    goto/16 :goto_7

    .line 213
    .end local v59           #e:Ljava/lang/Throwable;
    :cond_f
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 249
    .end local v36           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v40           #battery:Lcom/android/server/BatteryService;
    .end local v66           #lights:Lcom/android/server/LightsService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v67       #lights:Lcom/android/server/LightsService;
    :cond_10
    const/4 v3, 0x0

    move v9, v3

    goto/16 :goto_9

    :cond_11
    const/4 v3, 0x0

    goto/16 :goto_a

    .line 272
    :cond_12
    :try_start_48
    const-string v3, "SystemServer"

    const-string v9, "Bluetooth Service"

    invoke-static {v3, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    new-instance v42, Landroid/server/BluetoothService;

    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Landroid/server/BluetoothService;-><init>(Landroid/content/Context;)V
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_48 .. :try_end_48} :catch_41

    .line 274
    .end local v41           #bluetooth:Landroid/server/BluetoothService;
    .local v42, bluetooth:Landroid/server/BluetoothService;
    :try_start_49
    const-string v3, "bluetooth"

    move-object/from16 v0, v42

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 275
    invoke-virtual/range {v42 .. v42}, Landroid/server/BluetoothService;->initAfterRegistration()V

    .line 276
    new-instance v44, Landroid/server/BluetoothA2dpService;

    move-object/from16 v0, v44

    move-object/from16 v1, v42

    invoke-direct {v0, v4, v1}, Landroid/server/BluetoothA2dpService;-><init>(Landroid/content/Context;Landroid/server/BluetoothService;)V
    :try_end_49
    .catch Ljava/lang/RuntimeException; {:try_start_49 .. :try_end_49} :catch_42

    .line 277
    .end local v43           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .local v44, bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    :try_start_4a
    const-string v3, "bluetooth_a2dp"

    move-object/from16 v0, v44

    invoke-static {v3, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 279
    invoke-virtual/range {v42 .. v42}, Landroid/server/BluetoothService;->initAfterA2dpRegistration()V
    :try_end_4a
    .catch Ljava/lang/RuntimeException; {:try_start_4a .. :try_end_4a} :catch_43

    move-object/from16 v43, v44

    .end local v44           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v43       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v41, v42

    .end local v42           #bluetooth:Landroid/server/BluetoothService;
    .restart local v41       #bluetooth:Landroid/server/BluetoothService;
    goto/16 :goto_b

    .line 321
    .end local v52           #cryptState:Ljava/lang/String;
    .end local v62           #firstBoot:Z
    .end local v67           #lights:Lcom/android/server/LightsService;
    .end local v77           #onlyCore:Z
    .restart local v37       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v48       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v53       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v63       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v66       #lights:Lcom/android/server/LightsService;
    .restart local v68       #location:Lcom/android/server/LocationManagerService;
    .restart local v75       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v85       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v89       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v97       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_2
    move-exception v59

    .line 322
    .restart local v59       #e:Ljava/lang/Throwable;
    :goto_3a
    const-string v3, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 329
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_3
    move-exception v59

    .line 330
    .restart local v59       #e:Ljava/lang/Throwable;
    const-string v3, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 336
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_4
    move-exception v59

    .line 337
    .restart local v59       #e:Ljava/lang/Throwable;
    const-string v3, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 342
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_5
    move-exception v59

    .line 343
    .restart local v59       #e:Ljava/lang/Throwable;
    const-string v3, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 359
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_6
    move-exception v59

    .line 360
    .restart local v59       #e:Ljava/lang/Throwable;
    :goto_3b
    const-string v3, "starting DevicePolicyService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 367
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_7
    move-exception v59

    .line 368
    .restart local v59       #e:Ljava/lang/Throwable;
    :goto_3c
    const-string v3, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 375
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_8
    move-exception v59

    .line 376
    .restart local v59       #e:Ljava/lang/Throwable;
    const-string v3, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 383
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_9
    move-exception v59

    .line 384
    .restart local v59       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 391
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_a
    move-exception v59

    .line 392
    .restart local v59       #e:Ljava/lang/Throwable;
    :goto_3d
    const-string v3, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_16

    .line 399
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_b
    move-exception v59

    .line 400
    .restart local v59       #e:Ljava/lang/Throwable;
    :goto_3e
    const-string v3, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 409
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_c
    move-exception v59

    move-object/from16 v8, v71

    .line 410
    .end local v71           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v59       #e:Ljava/lang/Throwable;
    :goto_3f
    const-string v3, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 417
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_d
    move-exception v59

    .line 418
    .restart local v59       #e:Ljava/lang/Throwable;
    :goto_40
    const-string v3, "starting Wi-Fi P2pService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 425
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_e
    move-exception v59

    .line 426
    .restart local v59       #e:Ljava/lang/Throwable;
    :goto_41
    const-string v3, "starting Wi-Fi Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 439
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_f
    move-exception v59

    .line 440
    .restart local v59       #e:Ljava/lang/Throwable;
    :goto_42
    const-string v3, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 448
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_10
    move-exception v59

    .line 449
    .restart local v59       #e:Ljava/lang/Throwable;
    :goto_43
    const-string v3, "starting ThrottleService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 459
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_11
    move-exception v59

    .line 460
    .restart local v59       #e:Ljava/lang/Throwable;
    const-string v3, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 468
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_12
    move-exception v59

    .line 469
    .restart local v59       #e:Ljava/lang/Throwable;
    :goto_44
    const-string v3, "starting Notification Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 475
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_13
    move-exception v59

    .line 476
    .restart local v59       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting HDMI Service "

    move-object/from16 v0, v59

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    .line 483
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_14
    move-exception v59

    .line 484
    .restart local v59       #e:Ljava/lang/Throwable;
    const-string v3, "starting DeviceStorageMonitor service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    .line 491
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_15
    move-exception v59

    .line 492
    .restart local v59       #e:Ljava/lang/Throwable;
    :goto_45
    const-string v3, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 499
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_16
    move-exception v59

    .line 500
    .restart local v59       #e:Ljava/lang/Throwable;
    :goto_46
    const-string v3, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 507
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_17
    move-exception v59

    .line 508
    .restart local v59       #e:Ljava/lang/Throwable;
    const-string v3, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 515
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_18
    move-exception v59

    .line 516
    .restart local v59       #e:Ljava/lang/Throwable;
    const-string v3, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 523
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_19
    move-exception v59

    .line 524
    .restart local v59       #e:Ljava/lang/Throwable;
    :goto_47
    const-string v3, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 530
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_1a
    move-exception v59

    .line 531
    .restart local v59       #e:Ljava/lang/Throwable;
    const-string v3, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 538
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_1b
    move-exception v59

    .line 539
    .restart local v59       #e:Ljava/lang/Throwable;
    const-string v3, "starting DockObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_27

    .line 546
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_1c
    move-exception v59

    .line 547
    .restart local v59       #e:Ljava/lang/Throwable;
    const-string v3, "starting WiredAccessoryObserver"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 555
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_1d
    move-exception v59

    .line 556
    .restart local v59       #e:Ljava/lang/Throwable;
    :goto_48
    const-string v3, "starting UsbService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 563
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_1e
    move-exception v59

    .line 564
    .restart local v59       #e:Ljava/lang/Throwable;
    const-string v3, "starting UiModeManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2a

    .line 571
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_1f
    move-exception v59

    .line 572
    .restart local v59       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting Backup Service"

    move-object/from16 v0, v59

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2b

    .line 579
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_20
    move-exception v59

    .line 580
    .restart local v59       #e:Ljava/lang/Throwable;
    :goto_49
    const-string v3, "starting AppWidget Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2c

    .line 586
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_21
    move-exception v59

    .line 587
    .restart local v59       #e:Ljava/lang/Throwable;
    const-string v3, "starting Recognition Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 593
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_22
    move-exception v59

    .line 594
    .restart local v59       #e:Ljava/lang/Throwable;
    const-string v3, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 601
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_23
    move-exception v59

    .line 602
    .restart local v59       #e:Ljava/lang/Throwable;
    const-string v3, "starting AtCmdFwd Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 613
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_24
    move-exception v59

    .line 614
    .restart local v59       #e:Ljava/lang/Throwable;
    const-string v3, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 620
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_25
    move-exception v59

    .line 621
    .restart local v59       #e:Ljava/lang/Throwable;
    const-string v3, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 629
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_26
    move-exception v59

    .line 630
    .restart local v59       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "Failure starting BT FM Power Management Service"

    move-object/from16 v0, v59

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_32

    .line 646
    .end local v59           #e:Ljava/lang/Throwable;
    .restart local v27       #safeMode:Z
    :cond_13
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_33

    .line 654
    :catch_27
    move-exception v59

    .line 655
    .restart local v59       #e:Ljava/lang/Throwable;
    const-string v3, "making Device Policy Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 662
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_28
    move-exception v59

    .line 663
    .restart local v59       #e:Ljava/lang/Throwable;
    const-string v3, "making Notification Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_35

    .line 669
    .end local v59           #e:Ljava/lang/Throwable;
    :catch_29
    move-exception v59

    .line 670
    .restart local v59       #e:Ljava/lang/Throwable;
    const-string v3, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_36

    .line 689
    .end local v59           #e:Ljava/lang/Throwable;
    .restart local v45       #config:Landroid/content/res/Configuration;
    .restart local v70       #metrics:Landroid/util/DisplayMetrics;
    .restart local v96       #w:Landroid/view/WindowManager;
    :catch_2a
    move-exception v59

    .line 690
    .restart local v59       #e:Ljava/lang/Throwable;
    const-string v3, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-virtual {v0, v3, v1}, Lcom/android/server/ServerThread;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_37

    .line 843
    .end local v59           #e:Ljava/lang/Throwable;
    .restart local v16       #contextF:Landroid/content/Context;
    .restart local v17       #batteryF:Lcom/android/server/BatteryService;
    .restart local v18       #networkManagementF:Lcom/android/server/NetworkManagementService;
    .restart local v19       #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .restart local v20       #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v21       #connectivityF:Lcom/android/server/ConnectivityService;
    .restart local v22       #dockF:Lcom/android/server/DockObserver;
    .restart local v23       #usbF:Lcom/android/server/usb/UsbService;
    .restart local v24       #uiModeF:Lcom/android/server/UiModeManagerService;
    .restart local v25       #recognitionF:Lcom/android/server/RecognitionManagerService;
    .restart local v26       #appWidgetF:Lcom/android/server/AppWidgetService;
    .restart local v28       #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .restart local v29       #immF:Lcom/android/server/InputMethodManagerService;
    .restart local v30       #statusBarF:Lcom/android/server/StatusBarManagerService;
    .restart local v31       #locationF:Lcom/android/server/LocationManagerService;
    .restart local v32       #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .restart local v33       #throttleF:Lcom/android/server/ThrottleService;
    .restart local v34       #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .restart local v35       #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .restart local v65       #lastAirplaneMode:I
    :cond_14
    :try_start_4b
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v9, "user_set_airplane"

    const/4 v10, -0x1

    invoke-static {v3, v9, v10}, Landroid/provider/Settings$Systemex;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v95

    .line 849
    .local v95, userChangeAirplane:I
    const/4 v3, -0x1

    move/from16 v0, v95

    if-eq v3, v0, :cond_7

    .line 852
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v9, "airplane_mode_on"

    move/from16 v0, v95

    invoke-static {v3, v9, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 853
    const/4 v3, 0x1

    move/from16 v0, v95

    if-ne v0, v3, :cond_15

    const/4 v3, 0x1

    :goto_4a
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v3}, Lcom/android/server/ServerThread;->sendAirplaneModeChangedBroadcast(Landroid/content/Context;Z)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_2b

    goto/16 :goto_38

    .line 856
    .end local v65           #lastAirplaneMode:I
    .end local v95           #userChangeAirplane:I
    :catch_2b
    move-exception v59

    .line 857
    .restart local v59       #e:Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v9, "power off alarm occure error:"

    move-object/from16 v0, v59

    invoke-static {v3, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_38

    .line 853
    .end local v59           #e:Ljava/lang/Throwable;
    .restart local v65       #lastAirplaneMode:I
    .restart local v95       #userChangeAirplane:I
    :cond_15
    const/4 v3, 0x0

    goto :goto_4a

    .line 195
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v16           #contextF:Landroid/content/Context;
    .end local v17           #batteryF:Lcom/android/server/BatteryService;
    .end local v18           #networkManagementF:Lcom/android/server/NetworkManagementService;
    .end local v19           #networkStatsF:Lcom/android/server/net/NetworkStatsService;
    .end local v20           #networkPolicyF:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v21           #connectivityF:Lcom/android/server/ConnectivityService;
    .end local v22           #dockF:Lcom/android/server/DockObserver;
    .end local v23           #usbF:Lcom/android/server/usb/UsbService;
    .end local v24           #uiModeF:Lcom/android/server/UiModeManagerService;
    .end local v25           #recognitionF:Lcom/android/server/RecognitionManagerService;
    .end local v26           #appWidgetF:Lcom/android/server/AppWidgetService;
    .end local v27           #safeMode:Z
    .end local v28           #wallpaperF:Lcom/android/server/WallpaperManagerService;
    .end local v29           #immF:Lcom/android/server/InputMethodManagerService;
    .end local v30           #statusBarF:Lcom/android/server/StatusBarManagerService;
    .end local v31           #locationF:Lcom/android/server/LocationManagerService;
    .end local v32           #countryDetectorF:Lcom/android/server/CountryDetectorService;
    .end local v33           #throttleF:Lcom/android/server/ThrottleService;
    .end local v34           #networkTimeUpdaterF:Lcom/android/server/NetworkTimeUpdateService;
    .end local v35           #textServiceManagerServiceF:Lcom/android/server/TextServicesManagerService;
    .end local v37           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v45           #config:Landroid/content/res/Configuration;
    .end local v48           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v53           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v63           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v65           #lastAirplaneMode:I
    .end local v68           #location:Lcom/android/server/LocationManagerService;
    .end local v70           #metrics:Landroid/util/DisplayMetrics;
    .end local v75           #notification:Lcom/android/server/NotificationManagerService;
    .end local v85           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v89           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v95           #userChangeAirplane:I
    .end local v96           #w:Landroid/view/WindowManager;
    .end local v97           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v36       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v40       #battery:Lcom/android/server/BatteryService;
    .restart local v52       #cryptState:Ljava/lang/String;
    .restart local v62       #firstBoot:Z
    .restart local v71       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v77       #onlyCore:Z
    :catch_2c
    move-exception v3

    goto/16 :goto_6

    .line 579
    .end local v36           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v40           #battery:Lcom/android/server/BatteryService;
    .end local v52           #cryptState:Ljava/lang/String;
    .end local v62           #firstBoot:Z
    .end local v71           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v77           #onlyCore:Z
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v38       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v48       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v53       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v63       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v68       #location:Lcom/android/server/LocationManagerService;
    .restart local v75       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v85       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v89       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v97       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_2d
    move-exception v59

    move-object/from16 v37, v38

    .end local v38           #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v37       #appWidget:Lcom/android/server/AppWidgetService;
    goto/16 :goto_49

    .line 555
    .end local v93           #usb:Lcom/android/server/usb/UsbService;
    .restart local v94       #usb:Lcom/android/server/usb/UsbService;
    :catch_2e
    move-exception v59

    move-object/from16 v93, v94

    .end local v94           #usb:Lcom/android/server/usb/UsbService;
    .restart local v93       #usb:Lcom/android/server/usb/UsbService;
    goto/16 :goto_48

    .line 523
    .end local v97           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v98       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :catch_2f
    move-exception v59

    move-object/from16 v97, v98

    .end local v98           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v97       #wallpaper:Lcom/android/server/WallpaperManagerService;
    goto/16 :goto_47

    .line 499
    .end local v48           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v49       #countryDetector:Lcom/android/server/CountryDetectorService;
    :catch_30
    move-exception v59

    move-object/from16 v48, v49

    .end local v49           #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v48       #countryDetector:Lcom/android/server/CountryDetectorService;
    goto/16 :goto_46

    .line 491
    .end local v68           #location:Lcom/android/server/LocationManagerService;
    .restart local v69       #location:Lcom/android/server/LocationManagerService;
    :catch_31
    move-exception v59

    move-object/from16 v68, v69

    .end local v69           #location:Lcom/android/server/LocationManagerService;
    .restart local v68       #location:Lcom/android/server/LocationManagerService;
    goto/16 :goto_45

    .line 468
    .end local v75           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v76       #notification:Lcom/android/server/NotificationManagerService;
    :catch_32
    move-exception v59

    move-object/from16 v75, v76

    .end local v76           #notification:Lcom/android/server/NotificationManagerService;
    .restart local v75       #notification:Lcom/android/server/NotificationManagerService;
    goto/16 :goto_44

    .line 448
    .end local v87           #throttle:Lcom/android/server/ThrottleService;
    .restart local v88       #throttle:Lcom/android/server/ThrottleService;
    :catch_33
    move-exception v59

    move-object/from16 v87, v88

    .end local v88           #throttle:Lcom/android/server/ThrottleService;
    .restart local v87       #throttle:Lcom/android/server/ThrottleService;
    goto/16 :goto_43

    .line 439
    .end local v46           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v47       #connectivity:Lcom/android/server/ConnectivityService;
    :catch_34
    move-exception v59

    move-object/from16 v46, v47

    .end local v47           #connectivity:Lcom/android/server/ConnectivityService;
    .restart local v46       #connectivity:Lcom/android/server/ConnectivityService;
    goto/16 :goto_42

    .line 425
    .end local v99           #wifi:Lcom/android/server/WifiService;
    .restart local v100       #wifi:Lcom/android/server/WifiService;
    :catch_35
    move-exception v59

    move-object/from16 v99, v100

    .end local v100           #wifi:Lcom/android/server/WifiService;
    .restart local v99       #wifi:Lcom/android/server/WifiService;
    goto/16 :goto_41

    .line 417
    .end local v101           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v102       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    :catch_36
    move-exception v59

    move-object/from16 v101, v102

    .end local v102           #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    .restart local v101       #wifiP2p:Landroid/net/wifi/p2p/WifiP2pService;
    goto/16 :goto_40

    .line 409
    :catch_37
    move-exception v59

    goto/16 :goto_3f

    .line 399
    .end local v8           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v71       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v72       #networkStats:Lcom/android/server/net/NetworkStatsService;
    :catch_38
    move-exception v59

    move-object/from16 v12, v72

    .end local v72           #networkStats:Lcom/android/server/net/NetworkStatsService;
    .restart local v12       #networkStats:Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_3e

    .line 391
    .end local v89           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v90       #tsms:Lcom/android/server/TextServicesManagerService;
    :catch_39
    move-exception v59

    move-object/from16 v89, v90

    .end local v90           #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v89       #tsms:Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_3d

    .line 367
    .end local v85           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v86       #statusBar:Lcom/android/server/StatusBarManagerService;
    :catch_3a
    move-exception v59

    move-object/from16 v85, v86

    .end local v86           #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v85       #statusBar:Lcom/android/server/StatusBarManagerService;
    goto/16 :goto_3c

    .line 359
    .end local v53           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v54       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    :catch_3b
    move-exception v59

    move-object/from16 v53, v54

    .end local v54           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v53       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    goto/16 :goto_3b

    .line 351
    :catch_3c
    move-exception v3

    goto/16 :goto_11

    .line 321
    .end local v63           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v64       #imm:Lcom/android/server/InputMethodManagerService;
    :catch_3d
    move-exception v59

    move-object/from16 v63, v64

    .end local v64           #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v63       #imm:Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_3a

    .line 300
    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v6           #power:Lcom/android/server/PowerManagerService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v37           #appWidget:Lcom/android/server/AppWidgetService;
    .end local v48           #countryDetector:Lcom/android/server/CountryDetectorService;
    .end local v53           #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .end local v63           #imm:Lcom/android/server/InputMethodManagerService;
    .end local v68           #location:Lcom/android/server/LocationManagerService;
    .end local v75           #notification:Lcom/android/server/NotificationManagerService;
    .end local v85           #statusBar:Lcom/android/server/StatusBarManagerService;
    .end local v89           #tsms:Lcom/android/server/TextServicesManagerService;
    .end local v97           #wallpaper:Lcom/android/server/WallpaperManagerService;
    .restart local v36       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v40       #battery:Lcom/android/server/BatteryService;
    .restart local v79       #power:Lcom/android/server/PowerManagerService;
    :catch_3e
    move-exception v59

    move-object/from16 v7, v36

    .end local v36           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v40

    .end local v40           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v6, v79

    .end local v79           #power:Lcom/android/server/PowerManagerService;
    .restart local v6       #power:Lcom/android/server/PowerManagerService;
    goto/16 :goto_39

    .end local v5           #battery:Lcom/android/server/BatteryService;
    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v66           #lights:Lcom/android/server/LightsService;
    .restart local v36       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v40       #battery:Lcom/android/server/BatteryService;
    .restart local v52       #cryptState:Ljava/lang/String;
    .restart local v62       #firstBoot:Z
    .restart local v67       #lights:Lcom/android/server/LightsService;
    .restart local v77       #onlyCore:Z
    :catch_3f
    move-exception v59

    move-object/from16 v7, v36

    .end local v36           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v5, v40

    .end local v40           #battery:Lcom/android/server/BatteryService;
    .restart local v5       #battery:Lcom/android/server/BatteryService;
    move-object/from16 v66, v67

    .end local v67           #lights:Lcom/android/server/LightsService;
    .restart local v66       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_39

    .end local v7           #alarm:Lcom/android/server/AlarmManagerService;
    .end local v66           #lights:Lcom/android/server/LightsService;
    .restart local v36       #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v67       #lights:Lcom/android/server/LightsService;
    :catch_40
    move-exception v59

    move-object/from16 v7, v36

    .end local v36           #alarm:Lcom/android/server/AlarmManagerService;
    .restart local v7       #alarm:Lcom/android/server/AlarmManagerService;
    move-object/from16 v66, v67

    .end local v67           #lights:Lcom/android/server/LightsService;
    .restart local v66       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_39

    .end local v66           #lights:Lcom/android/server/LightsService;
    .restart local v67       #lights:Lcom/android/server/LightsService;
    :catch_41
    move-exception v59

    move-object/from16 v66, v67

    .end local v67           #lights:Lcom/android/server/LightsService;
    .restart local v66       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_39

    .end local v41           #bluetooth:Landroid/server/BluetoothService;
    .end local v66           #lights:Lcom/android/server/LightsService;
    .restart local v42       #bluetooth:Landroid/server/BluetoothService;
    .restart local v67       #lights:Lcom/android/server/LightsService;
    :catch_42
    move-exception v59

    move-object/from16 v41, v42

    .end local v42           #bluetooth:Landroid/server/BluetoothService;
    .restart local v41       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v66, v67

    .end local v67           #lights:Lcom/android/server/LightsService;
    .restart local v66       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_39

    .end local v41           #bluetooth:Landroid/server/BluetoothService;
    .end local v43           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .end local v66           #lights:Lcom/android/server/LightsService;
    .restart local v42       #bluetooth:Landroid/server/BluetoothService;
    .restart local v44       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v67       #lights:Lcom/android/server/LightsService;
    :catch_43
    move-exception v59

    move-object/from16 v43, v44

    .end local v44           #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    .restart local v43       #bluetoothA2dp:Landroid/server/BluetoothA2dpService;
    move-object/from16 v41, v42

    .end local v42           #bluetooth:Landroid/server/BluetoothService;
    .restart local v41       #bluetooth:Landroid/server/BluetoothService;
    move-object/from16 v66, v67

    .end local v67           #lights:Lcom/android/server/LightsService;
    .restart local v66       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_39

    .end local v55           #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .end local v66           #lights:Lcom/android/server/LightsService;
    .restart local v56       #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .restart local v67       #lights:Lcom/android/server/LightsService;
    :catch_44
    move-exception v59

    move-object/from16 v55, v56

    .end local v56           #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .restart local v55       #dmm:Lcom/android/server/DynamicMemoryManagerService;
    move-object/from16 v66, v67

    .end local v67           #lights:Lcom/android/server/LightsService;
    .restart local v66       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_39

    .end local v50           #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .end local v55           #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .end local v66           #lights:Lcom/android/server/LightsService;
    .restart local v51       #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .restart local v56       #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .restart local v67       #lights:Lcom/android/server/LightsService;
    :catch_45
    move-exception v59

    move-object/from16 v50, v51

    .end local v51           #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    .restart local v50       #cpuGovernorManager:Lcom/android/server/CpuGovernorService;
    move-object/from16 v55, v56

    .end local v56           #dmm:Lcom/android/server/DynamicMemoryManagerService;
    .restart local v55       #dmm:Lcom/android/server/DynamicMemoryManagerService;
    move-object/from16 v66, v67

    .end local v67           #lights:Lcom/android/server/LightsService;
    .restart local v66       #lights:Lcom/android/server/LightsService;
    goto/16 :goto_39

    .end local v52           #cryptState:Ljava/lang/String;
    .end local v62           #firstBoot:Z
    .end local v77           #onlyCore:Z
    .restart local v37       #appWidget:Lcom/android/server/AppWidgetService;
    .restart local v48       #countryDetector:Lcom/android/server/CountryDetectorService;
    .restart local v53       #devicePolicy:Lcom/android/server/DevicePolicyManagerService;
    .restart local v63       #imm:Lcom/android/server/InputMethodManagerService;
    .restart local v68       #location:Lcom/android/server/LocationManagerService;
    .restart local v75       #notification:Lcom/android/server/NotificationManagerService;
    .restart local v85       #statusBar:Lcom/android/server/StatusBarManagerService;
    .restart local v89       #tsms:Lcom/android/server/TextServicesManagerService;
    .restart local v97       #wallpaper:Lcom/android/server/WallpaperManagerService;
    :cond_16
    move-object/from16 v8, v71

    .end local v71           #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8       #networkPolicy:Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_32
.end method
