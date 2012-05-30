.class public Landroid/hardware/fmradio/FmTransmitter;
.super Landroid/hardware/fmradio/FmTransceiver;
.source "FmTransmitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fmradio/FmTransmitter$TransmitterCallbacks;,
        Landroid/hardware/fmradio/FmTransmitter$FmPSFeatures;
    }
.end annotation


# static fields
.field public static final RDS_GRPS_TX_PAUSE:I = 0x0

.field public static final RDS_GRPS_TX_RESUME:I = 0x1

.field public static final RDS_GRPS_TX_STOP:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/hardware/fmradio/FmTransceiver;-><init>()V

    .line 69
    new-instance v0, Landroid/hardware/fmradio/FmRxControls;

    invoke-direct {v0}, Landroid/hardware/fmradio/FmRxControls;-><init>()V

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransmitter;->mControl:Landroid/hardware/fmradio/FmRxControls;

    .line 70
    new-instance v0, Landroid/hardware/fmradio/FmRxRdsData;

    sget v1, Landroid/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-direct {v0, v1}, Landroid/hardware/fmradio/FmRxRdsData;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransmitter;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    .line 71
    new-instance v0, Landroid/hardware/fmradio/FmRxEventListner;

    invoke-direct {v0}, Landroid/hardware/fmradio/FmRxEventListner;-><init>()V

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransmitter;->mRxEvents:Landroid/hardware/fmradio/FmRxEventListner;

    .line 72
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/hardware/fmradio/FmRxEvCallbacksAdaptor;)V
    .locals 2
    .parameter "path"
    .parameter "callbacks"

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/hardware/fmradio/FmTransceiver;-><init>()V

    .line 81
    invoke-virtual {p0, p1}, Landroid/hardware/fmradio/FmTransmitter;->acquire(Ljava/lang/String;)Z

    .line 82
    invoke-virtual {p0, p2}, Landroid/hardware/fmradio/FmTransmitter;->registerTransmitClient(Landroid/hardware/fmradio/FmRxEvCallbacks;)Z

    .line 83
    new-instance v0, Landroid/hardware/fmradio/FmRxControls;

    invoke-direct {v0}, Landroid/hardware/fmradio/FmRxControls;-><init>()V

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransmitter;->mControl:Landroid/hardware/fmradio/FmRxControls;

    .line 84
    new-instance v0, Landroid/hardware/fmradio/FmRxRdsData;

    sget v1, Landroid/hardware/fmradio/FmTransmitter;->sFd:I

    invoke-direct {v0, v1}, Landroid/hardware/fmradio/FmRxRdsData;-><init>(I)V

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransmitter;->mRdsData:Landroid/hardware/fmradio/FmRxRdsData;

    .line 85
    new-instance v0, Landroid/hardware/fmradio/FmRxEventListner;

    invoke-direct {v0}, Landroid/hardware/fmradio/FmRxEventListner;-><init>()V

    iput-object v0, p0, Landroid/hardware/fmradio/FmTransmitter;->mRxEvents:Landroid/hardware/fmradio/FmRxEventListner;

    .line 86
    return-void
.end method


# virtual methods
.method public disable()Z
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Landroid/hardware/fmradio/FmTransceiver;->disable()Z

    move-result v0

    .line 159
    .local v0, status:Z
    return v0
.end method

.method public enable(Landroid/hardware/fmradio/FmConfig;)Z
    .locals 2
    .parameter "configSettings"

    .prologue
    .line 129
    const/4 v1, 0x2

    invoke-super {p0, p1, v1}, Landroid/hardware/fmradio/FmTransceiver;->enable(Landroid/hardware/fmradio/FmConfig;I)Z

    move-result v0

    .line 133
    .local v0, status:Z
    const/4 v1, 0x1

    return v1
.end method

.method public getPSFeatures()Landroid/hardware/fmradio/FmTransmitter$FmPSFeatures;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 227
    new-instance v0, Landroid/hardware/fmradio/FmTransmitter$FmPSFeatures;

    invoke-direct {v0, p0}, Landroid/hardware/fmradio/FmTransmitter$FmPSFeatures;-><init>(Landroid/hardware/fmradio/FmTransmitter;)V

    .line 228
    .local v0, psFeatures:Landroid/hardware/fmradio/FmTransmitter$FmPSFeatures;
    iput v1, v0, Landroid/hardware/fmradio/FmTransmitter$FmPSFeatures;->maxPSCharacters:I

    .line 229
    iput v1, v0, Landroid/hardware/fmradio/FmTransmitter$FmPSFeatures;->maxPSStringRepeatCount:I

    .line 230
    return-object v0
.end method

.method public getRdsGroupBufSize()I
    .locals 1

    .prologue
    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method isAntennaAvailable()Z
    .locals 1

    .prologue
    .line 567
    const/4 v0, 0x1

    return v0
.end method

.method public reset()Z
    .locals 1

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 184
    .local v0, status:Z
    invoke-virtual {p0}, Landroid/hardware/fmradio/FmTransmitter;->unregisterTransmitClient()Z

    move-result v0

    .line 185
    return v0
.end method

.method public setPSInfo([Ljava/lang/String;IJ)Z
    .locals 1
    .parameter "psStr"
    .parameter "pty"
    .parameter "repeatCount"

    .prologue
    .line 296
    const/4 v0, 0x0

    .line 298
    .local v0, bStatus:Z
    return v0
.end method

.method public setPSRTProgramType(I)Z
    .locals 1
    .parameter "pty"

    .prologue
    .line 436
    const/4 v0, 0x0

    .line 438
    .local v0, bStatus:Z
    return v0
.end method

.method public setRTInfo(Ljava/lang/String;)Z
    .locals 1
    .parameter "rtStr"

    .prologue
    .line 369
    const/4 v0, 0x0

    .line 371
    .local v0, bStatus:Z
    return v0
.end method

.method public stopPSInfo()Z
    .locals 1

    .prologue
    .line 320
    const/4 v0, 0x0

    .line 322
    .local v0, bStatus:Z
    return v0
.end method

.method public stopRTInfo()Z
    .locals 1

    .prologue
    .line 392
    const/4 v0, 0x0

    .line 394
    .local v0, bStatus:Z
    return v0
.end method

.method public transmitRdsGroupControl(I)Z
    .locals 1
    .parameter "ctrlCmd"

    .prologue
    .line 543
    const/4 v0, 0x0

    .line 545
    .local v0, bStatus:Z
    return v0
.end method

.method public transmitRdsGroups([BJ)I
    .locals 1
    .parameter "rdsGroups"
    .parameter "numGroupsToTransmit"

    .prologue
    .line 518
    const/4 v0, -0x1

    return v0
.end method
