.class public Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;
.super Ljava/lang/Object;
.source "BluetoothServiceConfig.java"


# static fields
.field public static final AVRCP_PROFILE:Ljava/lang/String; = "bluetooth_avrcp"

.field public static final D:Z = true

.field public static final DISABLE_SCAN_ON_PHONECALL:Z = false

.field public static final DM_PROFILE:Ljava/lang/String; = "bluetooth_dm"

.field public static final DUN_PROFILE:Ljava/lang/String; = "bluetooth_dun"

.field public static final FLICK_PROFILE:Ljava/lang/String; = "bluetooth_flick"

.field public static final FTP_PROFILE:Ljava/lang/String; = "bluetooth_ftp"

.field public static final GATT_SERVICE:Ljava/lang/String; = "bluetooth_gatt"

.field public static final HDP_PROFILE:Ljava/lang/String; = "bluetooth_hdp"

.field public static final HF_AUTOCONNECT_BITMAP_PROPERTY:Ljava/lang/String; = "service.brcm.bt.autoconnect"

.field public static final HID_PROFILE:Ljava/lang/String; = "bluetooth_hid"

.field public static final HID_TEST_MODE_ENABLED:Z = true

.field public static IS_DEVELOPMENT_MODE:Z = false

.field private static IS_STANDALONE_PROCESS:Z = false

.field public static final L2CAP_ENABLED:Z = true

.field public static final L2CAP_TEST_MODE_ENABLED:Z = true

.field public static final MAP_PROFILE:Ljava/lang/String; = "bluetooth_map"

.field public static final MODE_LOAD_AS_SYSTEM_SVC:I = 0x1

.field public static final MODE_USE_APP_SERVICES:I = 0x2

.field public static final OPP_PROFILE:Ljava/lang/String; = "bluetooth_opp"

.field public static final PAN_PROFILE:Ljava/lang/String; = "bluetooth_pan"

.field public static final PBAP_PROFILE:Ljava/lang/String; = "bluetooth_pbap"

.field public static final PRINT_PROFILE:Ljava/lang/String; = "bluetooth_print"

.field public static final SAP_PROFILE:Ljava/lang/String; = "bluetooth_sap"

.field public static final SERVICES:[Ljava/lang/String; = null

.field public static final SERVICES_AVAILABLE:[Z = null

.field public static final SERVICES_STARTUP_ENABLED:[Z = null

.field public static final SETTINGS_PREFIX:Ljava/lang/String; = "bt_svcst_"

.field public static final SHOW_ADVANCED_SETTINGS:Z = true

.field public static final STATE_NOT_AVAILABLE:I = -0x1

.field public static final STATE_STARTED:I = 0x2

.field public static final STATE_STOPPED:I = 0x1

.field public static final TESTMODE_PROFILE:Ljava/lang/String; = "bluetooth_test"

.field public static final V:Z = true

.field public static dualhf_enabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/16 v4, 0xe

    const/4 v3, 0x0

    .line 52
    sput-boolean v2, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->IS_DEVELOPMENT_MODE:Z

    .line 98
    sput-boolean v3, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->IS_STANDALONE_PROCESS:Z

    .line 110
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "bluetooth_print"

    aput-object v1, v0, v3

    const-string v1, "bluetooth_dm"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "bluetooth_dun"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "bluetooth_ftp"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bluetooth_gatt"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "bluetooth_opp"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bluetooth_pbap"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "bluetooth_sap"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "bluetooth_map"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bluetooth_test"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "bluetooth_avrcp"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "bluetooth_flick"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "bluetooth_hid"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "bluetooth_hdp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    .line 137
    new-array v0, v4, [Z

    fill-array-data v0, :array_0

    sput-object v0, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES_AVAILABLE:[Z

    .line 169
    new-array v0, v4, [Z

    fill-array-data v0, :array_1

    sput-object v0, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES_STARTUP_ENABLED:[Z

    .line 233
    sput-boolean v3, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->dualhf_enabled:Z

    .line 237
    const-string v0, "com.brcm.bt.dualhf"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->dualhf_enabled:Z

    .line 238
    return-void

    .line 137
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data

    .line 169
    nop

    :array_1
    .array-data 0x1
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isAccessRequestEnabled()Z
    .locals 3

    .prologue
    .line 326
    const-string/jumbo v1, "service.brcm.bt.secure_mode"

    const-string/jumbo v2, "property not found"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 328
    .local v0, mSecureModeProperty:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isBluetoothSupported()Z
    .locals 1

    .prologue
    .line 278
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isScanAllowed(Landroid/content/Context;)Z
    .locals 1
    .parameter "ctx"

    .prologue
    .line 300
    if-eqz p0, :cond_0

    .line 313
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5
    .parameter "ctx"
    .parameter "svcName"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 285
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->isServiceSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 287
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 288
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bt_svcst_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 291
    .end local v0           #cr:Landroid/content/ContentResolver;
    :goto_0
    return v1

    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_0
    move v1, v2

    .line 288
    goto :goto_0

    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_1
    move v1, v2

    .line 291
    goto :goto_0
.end method

.method public static isServiceSupported(Ljava/lang/String;)Z
    .locals 7
    .parameter "svcName"

    .prologue
    const/4 v4, 0x0

    .line 248
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v5, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_4

    .line 249
    sget-object v5, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES:[Ljava/lang/String;

    aget-object v5, v5, v0

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 250
    sget-object v5, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->SERVICES_AVAILABLE:[Z

    aget-boolean v1, v5, v0

    .line 251
    .local v1, isAvailable:Z
    sget-boolean v5, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->IS_DEVELOPMENT_MODE:Z

    if-eqz v5, :cond_1

    .line 252
    const-string v5, "bluetooth_"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "bluetooth_"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 254
    .local v3, sProp:Ljava/lang/String;
    :goto_1
    const-string v5, "_service"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 255
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const-string v6, "_service"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 257
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "service.brcm.bt.svc."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 258
    const-string v4, "BluetoothServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Getting property "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 260
    .local v2, s:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 261
    const-string v4, "1"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 262
    const-string v4, "BluetoothServiceConfig"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Debug mode enabled. Setting service supported for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    .end local v1           #isAvailable:Z
    .end local v2           #s:Ljava/lang/String;
    .end local v3           #sProp:Ljava/lang/String;
    :cond_1
    :goto_2
    return v1

    .restart local v1       #isAvailable:Z
    :cond_2
    move-object v3, p0

    .line 252
    goto :goto_1

    .line 248
    .end local v1           #isAvailable:Z
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    move v1, v4

    .line 268
    goto :goto_2
.end method

.method public static isSoftOnOffEnabled()Z
    .locals 3

    .prologue
    .line 317
    const-string/jumbo v1, "service.brcm.bt.soft_onoff"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    .local v0, softOnOff:Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static final isStandaloneProcess()Z
    .locals 4

    .prologue
    .line 333
    sget-boolean v1, Lcom/broadcom/bt/service/framework/BluetoothServiceConfig;->IS_STANDALONE_PROCESS:Z

    if-nez v1, :cond_0

    const-string v1, "1"

    const-string/jumbo v2, "service.brcm.bt.is_sta"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 335
    .local v0, isStandalone:Z
    :goto_0
    return v0

    .line 333
    .end local v0           #isStandalone:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
