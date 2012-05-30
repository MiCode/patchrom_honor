.class public Lcom/huawei/telephony/HuaweiTelephonyManager;
.super Ljava/lang/Object;
.source "HuaweiTelephonyManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HuaweiTelephonyManager"

.field private static sInstance:Lcom/huawei/telephony/HuaweiTelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/huawei/telephony/HuaweiTelephonyManager;

    invoke-direct {v0}, Lcom/huawei/telephony/HuaweiTelephonyManager;-><init>()V

    sput-object v0, Lcom/huawei/telephony/HuaweiTelephonyManager;->sInstance:Lcom/huawei/telephony/HuaweiTelephonyManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method public static getDefault()Lcom/huawei/telephony/HuaweiTelephonyManager;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/huawei/telephony/HuaweiTelephonyManager;->sInstance:Lcom/huawei/telephony/HuaweiTelephonyManager;

    return-object v0
.end method

.method private getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;
    .locals 1

    .prologue
    .line 52
    const-string v0, "huaweiphone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 123
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/telephony/IHuaweiTelephony;->getCdmaPrlVersion()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 127
    :goto_0
    return-object v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 126
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 127
    .local v0, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getDemoString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    const-string v0, ""

    return-object v0
.end method

.method public getDemoStringAsync(Lcom/huawei/telephony/IPhoneCallback;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 62
    const-string v1, "HuaweiTelephonyManager"

    const-string v2, "getDemoStringAsync in"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/huawei/telephony/IHuaweiTelephony;->getDemoStringAsync(Lcom/huawei/telephony/IPhoneCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "HuaweiTelephonyManager"

    const-string v2, "getDemoStringAsync remoteException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, esnStr:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/telephony/IHuaweiTelephony;->getEsn()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 160
    :goto_0
    return-object v0

    .line 154
    :catch_0
    move-exception v1

    .line 155
    .local v1, ex:Landroid/os/RemoteException;
    const/4 v0, 0x0

    .line 159
    goto :goto_0

    .line 156
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 158
    .local v1, ex:Ljava/lang/NullPointerException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMin()Ljava/lang/String;
    .locals 3

    .prologue
    .line 134
    const/4 v1, 0x0

    .line 137
    .local v1, mString:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 138
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/huawei/telephony/IHuaweiTelephony;->getMin()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 147
    :cond_0
    :goto_0
    return-object v1

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, ex:Landroid/os/RemoteException;
    const/4 v1, 0x0

    .line 145
    goto :goto_0

    .line 142
    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 144
    .local v0, ex:Ljava/lang/NullPointerException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 106
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/huawei/telephony/IHuaweiTelephony;->getServiceState()Landroid/os/Bundle;

    move-result-object v0

    .line 107
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 112
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 109
    :catch_0
    move-exception v1

    .line 110
    .local v1, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 111
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 112
    .local v1, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 86
    :try_start_0
    invoke-direct {p0}, Lcom/huawei/telephony/HuaweiTelephonyManager;->getIHuaweiTelephony()Lcom/huawei/telephony/IHuaweiTelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/huawei/telephony/IHuaweiTelephony;->getSignalStrength()Landroid/os/Bundle;

    move-result-object v0

    .line 87
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {v0}, Landroid/telephony/SignalStrength;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/SignalStrength;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 92
    .end local v0           #bundle:Landroid/os/Bundle;
    :goto_0
    return-object v2

    .line 89
    :catch_0
    move-exception v1

    .line 90
    .local v1, ex:Landroid/os/RemoteException;
    goto :goto_0

    .line 91
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .line 92
    .local v1, ex:Ljava/lang/NullPointerException;
    goto :goto_0
.end method
