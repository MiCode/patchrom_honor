.class public Lcom/huawei/telephony/HuaweiPhoneService;
.super Lcom/huawei/telephony/IHuaweiTelephony$Stub;
.source "HuaweiPhoneService.java"

# interfaces
.implements Lcom/android/internal/telephony/PhoneFactory$PhoneServiceInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/telephony/HuaweiPhoneService$1;,
        Lcom/huawei/telephony/HuaweiPhoneService$MainThreadRequest;,
        Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;
    }
.end annotation


# static fields
.field private static final CMD_HANDLE_DEMO:I = 0x1

.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "HuaweiPhoneService"

.field private static final READ_PHONE_STATE:Ljava/lang/String; = "android.permission.READ_PHONE_STATE"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMainHandler:Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;

.field private mPhone:Lcom/huawei/telephony/HuaweiPhone;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/huawei/telephony/IHuaweiTelephony$Stub;-><init>()V

    .line 49
    new-instance v0, Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;-><init>(Lcom/huawei/telephony/HuaweiPhoneService;Lcom/huawei/telephony/HuaweiPhoneService$1;)V

    iput-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMainHandler:Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;

    .line 50
    const-string v0, "huaweiphone"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 51
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 124
    const-string v0, "HuaweiPhoneService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneIntfMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void
.end method

.method private sendRequest(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "command"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 94
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMainHandler:Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;

    invoke-virtual {v3}, Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 95
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "This method will deadlock if called from the main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_0
    new-instance v1, Lcom/huawei/telephony/HuaweiPhoneService$MainThreadRequest;

    invoke-direct {v1, p2, p3}, Lcom/huawei/telephony/HuaweiPhoneService$MainThreadRequest;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    .local v1, request:Lcom/huawei/telephony/HuaweiPhoneService$MainThreadRequest;
    iget-object v2, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mMainHandler:Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;

    invoke-virtual {v2, p1, v1}, Lcom/huawei/telephony/HuaweiPhoneService$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 100
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 102
    monitor-enter v1

    .line 103
    :goto_0
    :try_start_0
    iget-object v2, v1, Lcom/huawei/telephony/HuaweiPhoneService$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 105
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v2

    goto :goto_0

    .line 110
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    iget-object v2, v1, Lcom/huawei/telephony/HuaweiPhoneService$MainThreadRequest;->result:Ljava/lang/Object;

    return-object v2

    .line 110
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method


# virtual methods
.method public getCdmaPrlVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const-string v2, "Requires READ_PHONE_STATE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    invoke-virtual {v0}, Lcom/huawei/telephony/HuaweiPhone;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDemoString(Ljava/lang/Object;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    invoke-virtual {v0, p1}, Lcom/huawei/telephony/HuaweiPhone;->getDemoString(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public getDemoStringAsync(Lcom/huawei/telephony/IPhoneCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/huawei/telephony/HuaweiPhoneService;->getDemoString(Ljava/lang/Object;)V

    .line 117
    return-void
.end method

.method public getEsn()Ljava/lang/String;
    .locals 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    invoke-virtual {v0}, Lcom/huawei/telephony/HuaweiPhone;->getEsn()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMin()Ljava/lang/String;
    .locals 3

    .prologue
    .line 145
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    invoke-virtual {v0}, Lcom/huawei/telephony/HuaweiPhone;->getMin()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServiceState()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 136
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 138
    .local v0, data:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    invoke-virtual {v1}, Lcom/huawei/telephony/HuaweiPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/ServiceState;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 139
    return-object v0
.end method

.method public getSignalStrength()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 129
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_PHONE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 131
    .local v0, data:Landroid/os/Bundle;
    iget-object v1, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    invoke-virtual {v1}, Lcom/huawei/telephony/HuaweiPhone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/telephony/SignalStrength;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 132
    return-object v0
.end method

.method public setPhone(Lcom/android/internal/telephony/Phone;Landroid/content/Context;)V
    .locals 1
    .parameter "phone"
    .parameter "context"

    .prologue
    .line 55
    new-instance v0, Lcom/huawei/telephony/HuaweiPhone;

    invoke-direct {v0, p1}, Lcom/huawei/telephony/HuaweiPhone;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mPhone:Lcom/huawei/telephony/HuaweiPhone;

    .line 56
    iput-object p2, p0, Lcom/huawei/telephony/HuaweiPhoneService;->mContext:Landroid/content/Context;

    .line 57
    return-void
.end method
