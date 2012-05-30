.class public Landroid/net/QoSTracker;
.super Ljava/lang/Object;
.source "QoSTracker.java"


# static fields
.field private static final LOCAL_TAG:Ljava/lang/String; = "QoSTracker_DEBUG"

.field private static final LOG_TAG:Ljava/lang/String; = "QoSTracker"


# instance fields
.field private final DBG:Z

.field private final capRoKeys:[I

.field private isWaitingForSpecUpdate:Z

.field private lastState:Ljava/lang/String;

.field private mDetailedState:I

.field private mId:I

.field private mNotifier:Landroid/net/ILinkSocketMessageHandler;

.field private mQosId:I

.field private mQosSpec:Lcom/android/internal/telephony/QosSpec;

.field private mSetupRequested:Z

.field private mState:Ljava/lang/String;

.field private mTeardownRequested:Z

.field private myCap:Landroid/net/ExtraLinkCapabilities;

.field private notifyQosToSocket:Z


# direct methods
.method public constructor <init>(ILandroid/net/ILinkSocketMessageHandler;Landroid/net/ExtraLinkCapabilities;)V
    .locals 4
    .parameter "id"
    .parameter "lsmh"
    .parameter "eCap"

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/QoSTracker;->DBG:Z

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/QoSTracker;->myCap:Landroid/net/ExtraLinkCapabilities;

    .line 66
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/net/QoSTracker;->capRoKeys:[I

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "socket id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " QoSTracker EX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/QoSTracker;->dlogd(Ljava/lang/String;)V

    .line 89
    iput p1, p0, Landroid/net/QoSTracker;->mId:I

    .line 90
    iput-object p2, p0, Landroid/net/QoSTracker;->mNotifier:Landroid/net/ILinkSocketMessageHandler;

    .line 91
    iput-object p3, p0, Landroid/net/QoSTracker;->myCap:Landroid/net/ExtraLinkCapabilities;

    .line 92
    iput v2, p0, Landroid/net/QoSTracker;->mQosId:I

    .line 93
    iput v2, p0, Landroid/net/QoSTracker;->mDetailedState:I

    .line 94
    const-string v0, "inactive"

    iput-object v0, p0, Landroid/net/QoSTracker;->mState:Ljava/lang/String;

    .line 95
    const-string v0, "inactive"

    iput-object v0, p0, Landroid/net/QoSTracker;->lastState:Ljava/lang/String;

    .line 96
    iput-boolean v3, p0, Landroid/net/QoSTracker;->mSetupRequested:Z

    .line 97
    iput-boolean v3, p0, Landroid/net/QoSTracker;->mTeardownRequested:Z

    .line 98
    iget-object v0, p0, Landroid/net/QoSTracker;->myCap:Landroid/net/ExtraLinkCapabilities;

    const/16 v1, 0x14

    iget-object v2, p0, Landroid/net/QoSTracker;->mState:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/ExtraLinkCapabilities;->put(ILjava/lang/String;)V

    .line 99
    iput-boolean v3, p0, Landroid/net/QoSTracker;->isWaitingForSpecUpdate:Z

    .line 100
    return-void

    .line 66
    nop

    :array_0
    .array-data 0x4
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private disableQos(I)Z
    .locals 7
    .parameter "qosId"

    .prologue
    .line 428
    const/4 v3, 0x0

    .line 430
    .local v3, res:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disabling qos for id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->dlogi(Ljava/lang/String;)V

    .line 431
    invoke-direct {p0}, Landroid/net/QoSTracker;->getPhone()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 432
    .local v1, mPhone:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 433
    const-string/jumbo v5, "telephony service is unavailable"

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->logw(Ljava/lang/String;)V

    move v4, v3

    .line 445
    .end local v3           #res:Z
    .local v4, res:I
    :goto_0
    return v4

    .line 438
    .end local v4           #res:I
    .restart local v3       #res:Z
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->disableQos(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v4, v3

    .line 445
    .restart local v4       #res:I
    goto :goto_0

    .line 438
    .end local v4           #res:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 439
    :catch_0
    move-exception v2

    .line 440
    .local v2, re:Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remote exception while using telephony service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->logw(Ljava/lang/String;)V

    goto :goto_1

    .line 441
    .end local v2           #re:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 442
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception while using telephony service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->logw(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private dlogd(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 517
    const-string v0, "QoSTracker_DEBUG"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-void
.end method

.method private dloge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 520
    const-string v0, "QoSTracker_DEBUG"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    return-void
.end method

.method private dlogi(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 529
    const-string v0, "QoSTracker_DEBUG"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void
.end method

.method private dlogv(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 526
    const-string v0, "QoSTracker_DEBUG"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    return-void
.end method

.method private dlogw(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 523
    const-string v0, "QoSTracker_DEBUG"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    return-void
.end method

.method private enableQoS(Lcom/android/internal/telephony/QosSpec;Ljava/lang/String;)Z
    .locals 7
    .parameter "spec"
    .parameter "apnType"

    .prologue
    .line 399
    const/4 v3, 0x0

    .line 401
    .local v3, res:Z
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 402
    :cond_0
    const-string v5, "Input parameter(s) is null"

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->dloge(Ljava/lang/String;)V

    move v4, v3

    .line 424
    .end local v3           #res:Z
    .local v4, res:I
    :goto_0
    return v4

    .line 406
    .end local v4           #res:I
    .restart local v3       #res:Z
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requesting qos with spec: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/QosSpec;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for txId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/QosSpec;->getUserData()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " on apn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->dlogi(Ljava/lang/String;)V

    .line 410
    invoke-direct {p0}, Landroid/net/QoSTracker;->getPhone()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 411
    .local v1, mPhone:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_2

    .line 412
    const-string/jumbo v5, "telephony service is unavailable"

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->logw(Ljava/lang/String;)V

    move v4, v3

    .line 413
    .restart local v4       #res:I
    goto :goto_0

    .line 417
    .end local v4           #res:I
    :cond_2
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->enableQos(Lcom/android/internal/telephony/QosSpec;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_3

    const/4 v3, 0x1

    :goto_1
    move v4, v3

    .line 424
    .restart local v4       #res:I
    goto :goto_0

    .line 417
    .end local v4           #res:I
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 418
    :catch_0
    move-exception v2

    .line 419
    .local v2, re:Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remote exception while using telephony service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->logw(Ljava/lang/String;)V

    goto :goto_1

    .line 420
    .end local v2           #re:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 421
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception while using telephony service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->logw(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getPhone()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 496
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private getQos(I)Z
    .locals 7
    .parameter "qosId"

    .prologue
    .line 449
    const/4 v3, 0x0

    .line 451
    .local v3, res:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "requesting qos spec for id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->dlogi(Ljava/lang/String;)V

    .line 452
    invoke-direct {p0}, Landroid/net/QoSTracker;->getPhone()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 453
    .local v1, mPhone:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 454
    const-string/jumbo v5, "telephony service is unavailable"

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->logw(Ljava/lang/String;)V

    move v4, v3

    .line 467
    .end local v3           #res:Z
    .local v4, res:I
    :goto_0
    return v4

    .line 459
    .end local v4           #res:I
    .restart local v3       #res:Z
    :cond_0
    :try_start_0
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->getQosStatus(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_1

    const/4 v3, 0x1

    .line 466
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getQoS returned: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->dlogi(Ljava/lang/String;)V

    move v4, v3

    .line 467
    .restart local v4       #res:I
    goto :goto_0

    .line 459
    .end local v4           #res:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 460
    :catch_0
    move-exception v2

    .line 461
    .local v2, re:Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remote exception while using telephony service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->logw(Ljava/lang/String;)V

    goto :goto_1

    .line 462
    .end local v2           #re:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 463
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception while using telephony service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->logw(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleQosIndEvent(I)V
    .locals 4
    .parameter "qosIndState"

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x1

    .line 280
    iput p1, p0, Landroid/net/QoSTracker;->mDetailedState:I

    .line 304
    iget v0, p0, Landroid/net/QoSTracker;->mDetailedState:I

    packed-switch v0, :pswitch_data_0

    .line 337
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CnE got invalid qos indication: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/QoSTracker;->mDetailedState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/QoSTracker;->dlogd(Ljava/lang/String;)V

    .line 339
    :goto_0
    iget-object v0, p0, Landroid/net/QoSTracker;->myCap:Landroid/net/ExtraLinkCapabilities;

    const/16 v1, 0x14

    iget-object v2, p0, Landroid/net/QoSTracker;->mState:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/net/ExtraLinkCapabilities;->put(ILjava/lang/String;)V

    .line 343
    iget v0, p0, Landroid/net/QoSTracker;->mQosId:I

    invoke-direct {p0, v0}, Landroid/net/QoSTracker;->getQos(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/QoSTracker;->isWaitingForSpecUpdate:Z

    .line 345
    iget-object v0, p0, Landroid/net/QoSTracker;->mState:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/QoSTracker;->lastState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 346
    iput-boolean v3, p0, Landroid/net/QoSTracker;->notifyQosToSocket:Z

    .line 347
    iget-object v0, p0, Landroid/net/QoSTracker;->mState:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/QoSTracker;->lastState:Ljava/lang/String;

    .line 349
    :cond_0
    return-void

    .line 306
    :pswitch_1
    iput-boolean v1, p0, Landroid/net/QoSTracker;->mSetupRequested:Z

    .line 307
    iput-boolean v3, p0, Landroid/net/QoSTracker;->notifyQosToSocket:Z

    .line 308
    const-string v0, "failed"

    iput-object v0, p0, Landroid/net/QoSTracker;->mState:Ljava/lang/String;

    goto :goto_0

    .line 313
    :pswitch_2
    iput-boolean v1, p0, Landroid/net/QoSTracker;->mSetupRequested:Z

    .line 314
    const-string v0, "inactive"

    iput-object v0, p0, Landroid/net/QoSTracker;->mState:Ljava/lang/String;

    .line 316
    iput-boolean v3, p0, Landroid/net/QoSTracker;->notifyQosToSocket:Z

    goto :goto_0

    .line 319
    :pswitch_3
    iput-boolean v3, p0, Landroid/net/QoSTracker;->mSetupRequested:Z

    .line 320
    const-string v0, "inactive"

    iput-object v0, p0, Landroid/net/QoSTracker;->mState:Ljava/lang/String;

    goto :goto_0

    .line 327
    :pswitch_4
    iput-boolean v3, p0, Landroid/net/QoSTracker;->notifyQosToSocket:Z

    .line 331
    :pswitch_5
    const-string v0, "active"

    iput-object v0, p0, Landroid/net/QoSTracker;->mState:Ljava/lang/String;

    goto :goto_0

    .line 334
    :pswitch_6
    const-string/jumbo v0, "suspended"

    iput-object v0, p0, Landroid/net/QoSTracker;->mState:Ljava/lang/String;

    goto :goto_0

    .line 304
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 501
    const-string v0, "QoSTracker"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 504
    const-string v0, "QoSTracker"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 513
    const-string v0, "QoSTracker"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 510
    const-string v0, "QoSTracker"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    return-void
.end method

.method private logw(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 507
    const-string v0, "QoSTracker"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    return-void
.end method

.method private modifyQos(ILcom/android/internal/telephony/QosSpec;)Z
    .locals 7
    .parameter "qosId"
    .parameter "spec"

    .prologue
    .line 471
    const/4 v3, 0x0

    .line 473
    .local v3, res:Z
    if-nez p2, :cond_0

    .line 474
    const-string/jumbo v5, "qos spec is null"

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->dlogw(Ljava/lang/String;)V

    move v4, v3

    .line 492
    .end local v3           #res:Z
    .local v4, res:I
    :goto_0
    return v4

    .line 477
    .end local v4           #res:I
    .restart local v3       #res:Z
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "modifying qos spec for id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->dlogi(Ljava/lang/String;)V

    .line 478
    invoke-direct {p0}, Landroid/net/QoSTracker;->getPhone()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 479
    .local v1, mPhone:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_1

    .line 480
    const-string/jumbo v5, "telephony service is unavailable"

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->logw(Ljava/lang/String;)V

    move v4, v3

    .line 481
    .restart local v4       #res:I
    goto :goto_0

    .line 485
    .end local v4           #res:I
    :cond_1
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->modifyQos(ILcom/android/internal/telephony/QosSpec;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_2

    const/4 v3, 0x1

    :goto_1
    move v4, v3

    .line 492
    .restart local v4       #res:I
    goto :goto_0

    .line 485
    .end local v4           #res:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 486
    :catch_0
    move-exception v2

    .line 487
    .local v2, re:Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "remote exception while using telephony service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->logw(Ljava/lang/String;)V

    goto :goto_1

    .line 488
    .end local v2           #re:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 489
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "exception while using telephony service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->logw(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateCapabilitiesFromSpec(Lcom/android/internal/telephony/QosSpec;)V
    .locals 12
    .parameter "spec"

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x5

    const/4 v7, 0x4

    .line 355
    if-nez p1, :cond_0

    .line 393
    :goto_0
    return-void

    .line 356
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateCapabilities got spec: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->dlogi(Ljava/lang/String;)V

    .line 358
    const/4 v3, 0x0

    .line 359
    .local v3, temp:Ljava/lang/String;
    const/4 v4, 0x0

    .line 360
    .local v4, txPipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    const/4 v2, 0x0

    .line 362
    .local v2, rxPipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    invoke-virtual {p1}, Lcom/android/internal/telephony/QosSpec;->getQosPipes()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/QosSpec$QosPipe;

    .line 363
    .local v1, p:Lcom/android/internal/telephony/QosSpec$QosPipe;
    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/QosSpec$QosPipe;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 364
    move-object v4, v1

    .line 365
    :cond_2
    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/QosSpec$QosPipe;->get(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 366
    move-object v2, v1

    goto :goto_1

    .line 369
    .end local v1           #p:Lcom/android/internal/telephony/QosSpec$QosPipe;
    :cond_3
    if-nez v4, :cond_4

    if-nez v2, :cond_4

    .line 370
    const-string/jumbo v5, "updateCapabilities expected tx and rx pipes but did not find them"

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->dlogw(Ljava/lang/String;)V

    goto :goto_0

    .line 374
    :cond_4
    invoke-virtual {v4, v11}, Lcom/android/internal/telephony/QosSpec$QosPipe;->get(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 375
    iget-object v5, p0, Landroid/net/QoSTracker;->myCap:Landroid/net/ExtraLinkCapabilities;

    const/16 v6, 0x8

    invoke-virtual {v5, v6, v3}, Landroid/net/ExtraLinkCapabilities;->put(ILjava/lang/String;)V

    .line 377
    :cond_5
    invoke-virtual {v4, v7}, Lcom/android/internal/telephony/QosSpec$QosPipe;->get(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 378
    iget-object v5, p0, Landroid/net/QoSTracker;->myCap:Landroid/net/ExtraLinkCapabilities;

    const/16 v6, 0x9

    invoke-virtual {v5, v6, v3}, Landroid/net/ExtraLinkCapabilities;->put(ILjava/lang/String;)V

    .line 380
    :cond_6
    invoke-virtual {v2, v11}, Lcom/android/internal/telephony/QosSpec$QosPipe;->get(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 381
    iget-object v5, p0, Landroid/net/QoSTracker;->myCap:Landroid/net/ExtraLinkCapabilities;

    invoke-virtual {v5, v7, v3}, Landroid/net/ExtraLinkCapabilities;->put(ILjava/lang/String;)V

    .line 383
    :cond_7
    invoke-virtual {v2, v7}, Lcom/android/internal/telephony/QosSpec$QosPipe;->get(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    .line 384
    iget-object v5, p0, Landroid/net/QoSTracker;->myCap:Landroid/net/ExtraLinkCapabilities;

    invoke-virtual {v5, v8, v3}, Landroid/net/ExtraLinkCapabilities;->put(ILjava/lang/String;)V

    .line 386
    :cond_8
    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/QosSpec$QosPipe;->get(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 387
    iget-object v5, p0, Landroid/net/QoSTracker;->myCap:Landroid/net/ExtraLinkCapabilities;

    const/16 v6, 0xd

    invoke-virtual {v5, v6, v3}, Landroid/net/ExtraLinkCapabilities;->put(ILjava/lang/String;)V

    .line 389
    :cond_9
    invoke-virtual {v2, v8}, Lcom/android/internal/telephony/QosSpec$QosPipe;->get(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 390
    iget-object v5, p0, Landroid/net/QoSTracker;->myCap:Landroid/net/ExtraLinkCapabilities;

    const/16 v6, 0xb

    invoke-virtual {v5, v6, v3}, Landroid/net/ExtraLinkCapabilities;->put(ILjava/lang/String;)V

    .line 392
    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updated capabilities to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/QoSTracker;->myCap:Landroid/net/ExtraLinkCapabilities;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->dlogi(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public getQosCapabilities()Landroid/net/LinkCapabilities;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Landroid/net/QoSTracker;->myCap:Landroid/net/ExtraLinkCapabilities;

    return-object v0
.end method

.method public getQosId()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Landroid/net/QoSTracker;->mQosId:I

    return v0
.end method

.method public getSocketId()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Landroid/net/QoSTracker;->mId:I

    return v0
.end method

.method public handleQosEvent(IIILcom/android/internal/telephony/QosSpec;)V
    .locals 10
    .parameter "qosId"
    .parameter "qosIndState"
    .parameter "qosState"
    .parameter "spec"

    .prologue
    const/4 v9, 0x0

    .line 235
    iput p1, p0, Landroid/net/QoSTracker;->mQosId:I

    .line 236
    iget-object v7, p0, Landroid/net/QoSTracker;->myCap:Landroid/net/ExtraLinkCapabilities;

    if-nez v7, :cond_1

    .line 237
    const-string v7, "handleQosEvent failed due to null capabilities... aborting"

    invoke-direct {p0, v7}, Landroid/net/QoSTracker;->dlogw(Ljava/lang/String;)V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    const/4 v7, -0x1

    if-ne p3, v7, :cond_3

    .line 242
    invoke-direct {p0, p2}, Landroid/net/QoSTracker;->handleQosIndEvent(I)V

    .line 244
    iget-boolean v7, p0, Landroid/net/QoSTracker;->isWaitingForSpecUpdate:Z

    if-nez v7, :cond_0

    .line 260
    :goto_1
    iget-boolean v7, p0, Landroid/net/QoSTracker;->notifyQosToSocket:Z

    if-eqz v7, :cond_0

    .line 261
    new-instance v6, Landroid/net/ExtraLinkCapabilities;

    invoke-direct {v6}, Landroid/net/ExtraLinkCapabilities;-><init>()V

    .line 262
    .local v6, sendCap:Landroid/net/ExtraLinkCapabilities;
    iget-object v0, p0, Landroid/net/QoSTracker;->capRoKeys:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_2
    if-ge v1, v2, :cond_5

    aget v5, v0, v1

    .line 263
    .local v5, roKey:I
    iget-object v7, p0, Landroid/net/QoSTracker;->myCap:Landroid/net/ExtraLinkCapabilities;

    invoke-virtual {v7, v5}, Landroid/net/ExtraLinkCapabilities;->containsKey(I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 264
    iget-object v7, p0, Landroid/net/QoSTracker;->myCap:Landroid/net/ExtraLinkCapabilities;

    invoke-virtual {v7, v5}, Landroid/net/ExtraLinkCapabilities;->get(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Landroid/net/ExtraLinkCapabilities;->put(ILjava/lang/String;)V

    .line 262
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 246
    .end local v0           #arr$:[I
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v5           #roKey:I
    .end local v6           #sendCap:Landroid/net/ExtraLinkCapabilities;
    :cond_3
    if-nez p4, :cond_4

    .line 248
    iget-object v7, p0, Landroid/net/QoSTracker;->myCap:Landroid/net/ExtraLinkCapabilities;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/net/ExtraLinkCapabilities;->remove(I)V

    .line 249
    iget-object v7, p0, Landroid/net/QoSTracker;->myCap:Landroid/net/ExtraLinkCapabilities;

    const/16 v8, 0x9

    invoke-virtual {v7, v8}, Landroid/net/ExtraLinkCapabilities;->remove(I)V

    .line 250
    iget-object v7, p0, Landroid/net/QoSTracker;->myCap:Landroid/net/ExtraLinkCapabilities;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/net/ExtraLinkCapabilities;->remove(I)V

    .line 251
    iget-object v7, p0, Landroid/net/QoSTracker;->myCap:Landroid/net/ExtraLinkCapabilities;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Landroid/net/ExtraLinkCapabilities;->remove(I)V

    .line 252
    iget-object v7, p0, Landroid/net/QoSTracker;->myCap:Landroid/net/ExtraLinkCapabilities;

    const/16 v8, 0xd

    invoke-virtual {v7, v8}, Landroid/net/ExtraLinkCapabilities;->remove(I)V

    .line 253
    iget-object v7, p0, Landroid/net/QoSTracker;->myCap:Landroid/net/ExtraLinkCapabilities;

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Landroid/net/ExtraLinkCapabilities;->remove(I)V

    .line 257
    :goto_3
    iput-boolean v9, p0, Landroid/net/QoSTracker;->isWaitingForSpecUpdate:Z

    goto :goto_1

    .line 255
    :cond_4
    invoke-direct {p0, p4}, Landroid/net/QoSTracker;->updateCapabilitiesFromSpec(Lcom/android/internal/telephony/QosSpec;)V

    goto :goto_3

    .line 267
    .restart local v0       #arr$:[I
    .restart local v1       #i$:I
    .restart local v2       #len$:I
    .restart local v6       #sendCap:Landroid/net/ExtraLinkCapabilities;
    :cond_5
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "notifying socket of updated capabilities: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/net/QoSTracker;->dlogi(Ljava/lang/String;)V

    .line 268
    iget-object v7, p0, Landroid/net/QoSTracker;->mNotifier:Landroid/net/ILinkSocketMessageHandler;

    invoke-interface {v7, v6}, Landroid/net/ILinkSocketMessageHandler;->onCapabilitiesChanged(Landroid/net/LinkCapabilities;)V

    .line 269
    const/4 v7, 0x0

    iput-boolean v7, p0, Landroid/net/QoSTracker;->notifyQosToSocket:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 270
    :catch_0
    move-exception v4

    .line 271
    .local v4, re:Landroid/os/RemoteException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " oncapabilitieschanged failed for sid: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/net/QoSTracker;->mId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " with exception: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/net/QoSTracker;->dlogd(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 273
    .end local v4           #re:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 274
    .local v3, npe:Ljava/lang/NullPointerException;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " onCapabilitiesChgd got null notifier "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Landroid/net/QoSTracker;->dlogd(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public resumeQosTransaction()Z
    .locals 7

    .prologue
    .line 198
    const/4 v3, 0x0

    .line 200
    .local v3, result:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resuming qos for id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/net/QoSTracker;->mQosId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->dlogi(Ljava/lang/String;)V

    .line 201
    invoke-direct {p0}, Landroid/net/QoSTracker;->getPhone()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 202
    .local v1, mPhone:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 203
    const-string v5, "Telephony service is unavailable"

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->logw(Ljava/lang/String;)V

    move v4, v3

    .line 222
    .end local v3           #result:Z
    .local v4, result:I
    :goto_0
    return v4

    .line 209
    .end local v4           #result:I
    .restart local v3       #result:Z
    :cond_0
    iget-object v5, p0, Landroid/net/QoSTracker;->mState:Ljava/lang/String;

    const-string/jumbo v6, "suspended"

    if-eq v5, v6, :cond_1

    .line 210
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QoS state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/QoSTracker;->mState:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not the correct state to resume QoS"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->loge(Ljava/lang/String;)V

    move v4, v3

    .line 211
    .restart local v4       #result:I
    goto :goto_0

    .line 215
    .end local v4           #result:I
    :cond_1
    :try_start_0
    iget v5, p0, Landroid/net/QoSTracker;->mQosId:I

    invoke-interface {v1, v5}, Lcom/android/internal/telephony/ITelephony;->resumeQos(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_2

    const/4 v3, 0x1

    :goto_1
    move v4, v3

    .line 222
    .restart local v4       #result:I
    goto :goto_0

    .line 215
    .end local v4           #result:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 216
    :catch_0
    move-exception v2

    .line 217
    .local v2, re:Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote exception while using telephony service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->logw(Ljava/lang/String;)V

    goto :goto_1

    .line 218
    .end local v2           #re:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 219
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while using telephony service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->logw(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public startQosTransaction(Lcom/android/internal/telephony/QosSpec;Ljava/lang/String;)Z
    .locals 4
    .parameter "spec"
    .parameter "apnType"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 123
    if-nez p1, :cond_1

    .line 124
    const-string v1, "QoSSpec is null"

    invoke-direct {p0, v1}, Landroid/net/QoSTracker;->dlogi(Ljava/lang/String;)V

    .line 145
    :cond_0
    :goto_0
    return v0

    .line 127
    :cond_1
    iput-object p1, p0, Landroid/net/QoSTracker;->mQosSpec:Lcom/android/internal/telephony/QosSpec;

    .line 128
    iget-object v2, p0, Landroid/net/QoSTracker;->mQosSpec:Lcom/android/internal/telephony/QosSpec;

    iget v3, p0, Landroid/net/QoSTracker;->mId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/QosSpec;->setUserData(I)V

    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startQosTransaction got called for socket: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/QoSTracker;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Is setup requested already: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/net/QoSTracker;->mSetupRequested:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/QoSTracker;->dlogi(Ljava/lang/String;)V

    .line 132
    iget-boolean v2, p0, Landroid/net/QoSTracker;->mSetupRequested:Z

    if-nez v2, :cond_0

    .line 133
    iget-object v2, p0, Landroid/net/QoSTracker;->mQosSpec:Lcom/android/internal/telephony/QosSpec;

    invoke-direct {p0, v2, p2}, Landroid/net/QoSTracker;->enableQoS(Lcom/android/internal/telephony/QosSpec;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    iput-boolean v1, p0, Landroid/net/QoSTracker;->mSetupRequested:Z

    move v0, v1

    .line 135
    goto :goto_0

    .line 138
    :cond_2
    iput-boolean v0, p0, Landroid/net/QoSTracker;->mSetupRequested:Z

    .line 139
    const-string v1, "Enable Qos failed"

    invoke-direct {p0, v1}, Landroid/net/QoSTracker;->dlogi(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stopQosTransaction()V
    .locals 2

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "stopQosTransaction got called for sid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/QoSTracker;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/QoSTracker;->dlogd(Ljava/lang/String;)V

    .line 153
    iget-boolean v0, p0, Landroid/net/QoSTracker;->mTeardownRequested:Z

    if-nez v0, :cond_0

    .line 154
    iget v0, p0, Landroid/net/QoSTracker;->mQosId:I

    invoke-direct {p0, v0}, Landroid/net/QoSTracker;->disableQos(I)Z

    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/QoSTracker;->mTeardownRequested:Z

    .line 157
    :cond_0
    return-void
.end method

.method public suspendQosTransaction()Z
    .locals 7

    .prologue
    .line 165
    const/4 v3, 0x0

    .line 167
    .local v3, result:Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Suspending qos for id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/net/QoSTracker;->mQosId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->dlogi(Ljava/lang/String;)V

    .line 168
    invoke-direct {p0}, Landroid/net/QoSTracker;->getPhone()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 169
    .local v1, mPhone:Lcom/android/internal/telephony/ITelephony;
    if-nez v1, :cond_0

    .line 170
    const-string v5, "Telephony service is unavailable"

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->logw(Ljava/lang/String;)V

    move v4, v3

    .line 189
    .end local v3           #result:Z
    .local v4, result:I
    :goto_0
    return v4

    .line 176
    .end local v4           #result:I
    .restart local v3       #result:Z
    :cond_0
    iget-object v5, p0, Landroid/net/QoSTracker;->mState:Ljava/lang/String;

    const-string v6, "active"

    if-eq v5, v6, :cond_1

    .line 177
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "QoS state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/QoSTracker;->mState:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not the correct state to suspend QoS"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->loge(Ljava/lang/String;)V

    move v4, v3

    .line 178
    .restart local v4       #result:I
    goto :goto_0

    .line 182
    .end local v4           #result:I
    :cond_1
    :try_start_0
    iget v5, p0, Landroid/net/QoSTracker;->mQosId:I

    invoke-interface {v1, v5}, Lcom/android/internal/telephony/ITelephony;->suspendQos(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v5

    if-nez v5, :cond_2

    const/4 v3, 0x1

    :goto_1
    move v4, v3

    .line 189
    .restart local v4       #result:I
    goto :goto_0

    .line 182
    .end local v4           #result:I
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 183
    :catch_0
    move-exception v2

    .line 184
    .local v2, re:Landroid/os/RemoteException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remote exception while using telephony service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->logw(Ljava/lang/String;)V

    goto :goto_1

    .line 185
    .end local v2           #re:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 186
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception while using telephony service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/net/QoSTracker;->logw(Ljava/lang/String;)V

    goto :goto_1
.end method
