.class public Lcom/android/huawei/projectmenu/ProjectMenu;
.super Ljava/lang/Object;
.source "ProjectMenu.java"


# static fields
.field public static mListPlmn:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field public static m_hw_ver:Ljava/lang/String;

.field public static m_imei:Ljava/lang/String;

.field public static m_nv114:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const-string v0, "projectmenu"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/huawei/projectmenu/ProjectMenu;->mListPlmn:Ljava/util/ArrayList;

    .line 20
    const/4 v0, 0x0

    invoke-static {v2, v2, v0}, Lcom/android/huawei/projectmenu/ProjectMenu;->setPlmnNode(IILjava/lang/String;)V

    .line 22
    return-void
.end method

.method public static native InitNVBkInfo()Z
.end method

.method public static native diagLock()Z
.end method

.method public static native diagLockStateQuery()Z
.end method

.method public static native diagUnLock(Ljava/lang/String;)Z
.end method

.method public static native export_OTP_QCN()I
.end method

.method public static native getCamSensorInfo(I)Ljava/lang/String;
.end method

.method public static native getChangingFlag()I
.end method

.method public static native getQfuseStatus()I
.end method

.method public static native getSHVersion(I)Ljava/lang/String;
.end method

.method public static native getSimLockStatus()I
.end method

.method public static native getTouchScreenID()Ljava/lang/String;
.end method

.method public static native getTouchScreenVersion()Ljava/lang/String;
.end method

.method public static native getWakeFlag()I
.end method

.method public static native initPLMN()Z
.end method

.method public static native lockCdmaFreq(Ljava/lang/String;)Z
.end method

.method public static native lockFreq(I)Z
.end method

.method public static native logOnOff(Z)Z
.end method

.method public static native logPrioritySetting(I)Z
.end method

.method public static final native nativeHW_widevine_cmp_key([BI)Z
.end method

.method public static native phuLock()Z
.end method

.method public static native phuLockStateQuery()Z
.end method

.method public static native phuUnLock(Ljava/lang/String;)Z
.end method

.method public static native readBoardID()Ljava/lang/String;
.end method

.method public static native readFlashID()Ljava/lang/String;
.end method

.method public static native readHWBoardID()Ljava/lang/String;
.end method

.method public static native readLCDID()Ljava/lang/String;
.end method

.method public static native readMemType()Ljava/lang/String;
.end method

.method public static native readNv114()Z
.end method

.method public static native serviceDomainGetting()I
.end method

.method public static native serviceDomainSetting(I)Z
.end method

.method public static native setChangingFlag(I)Z
.end method

.method public static setPlmnNode(IILjava/lang/String;)V
    .locals 3
    .parameter "i"
    .parameter "j"
    .parameter "str_plmn"

    .prologue
    const/4 v1, -0x1

    .line 70
    if-ne p0, v1, :cond_0

    if-ne p1, v1, :cond_0

    if-nez p2, :cond_0

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v0, node:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    sget-object v1, Lcom/android/huawei/projectmenu/ProjectMenu;->mListPlmn:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static native setWakeFlag(I)Z
.end method

.method public static native touchScreenFirmwareUpgrade()I
.end method

.method public static native updateCompass()Z
.end method

.method public static native updateModemAndApp()Z
.end method


# virtual methods
.method public getPlmnNode()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    sget-object v0, Lcom/android/huawei/projectmenu/ProjectMenu;->mListPlmn:Ljava/util/ArrayList;

    return-object v0
.end method
