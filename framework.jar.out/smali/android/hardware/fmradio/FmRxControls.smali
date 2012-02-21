.class Landroid/hardware/fmradio/FmRxControls;
.super Ljava/lang/Object;
.source "FmRxControls.java"


# static fields
.field static final SCAN_BACKWARD:I = 0x3

.field static final SCAN_FORWARD:I = 0x2

.field static final SEEK_BACKWARD:I = 0x1

.field static final SEEK_FORWARD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FmRxControls"

.field private static final V4L2_CID_AUDIO_MUTE:I = 0x980909

.field private static final V4L2_CID_BASE:I = 0x980900

.field private static final V4L2_CID_PRIVATE_BASE:I = 0x8000000

.field private static final V4L2_CID_PRIVATE_TAVARUA_EMPHASIS:I = 0x800000c

.field private static final V4L2_CID_PRIVATE_TAVARUA_LP_MODE:I = 0x8000011

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSGROUP_MASK:I = 0x8000006

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSGROUP_PROC:I = 0x8000010

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSON:I = 0x800000f

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDS_STD:I = 0x800000d

.field private static final V4L2_CID_PRIVATE_TAVARUA_REGION:I = 0x8000007

.field private static final V4L2_CID_PRIVATE_TAVARUA_SCANDWELL:I = 0x8000002

.field private static final V4L2_CID_PRIVATE_TAVARUA_SIGNAL_TH:I = 0x8000008

.field private static final V4L2_CID_PRIVATE_TAVARUA_SPACING:I = 0x800000e

.field private static final V4L2_CID_PRIVATE_TAVARUA_SRCHMODE:I = 0x8000001

.field private static final V4L2_CID_PRIVATE_TAVARUA_SRCHON:I = 0x8000003

.field private static final V4L2_CID_PRIVATE_TAVARUA_SRCH_CNT:I = 0x800000b

.field private static final V4L2_CID_PRIVATE_TAVARUA_SRCH_PI:I = 0x800000a

.field private static final V4L2_CID_PRIVATE_TAVARUA_SRCH_PTY:I = 0x8000009

.field private static final V4L2_CID_PRIVATE_TAVARUA_STATE:I = 0x8000004

.field private static final V4L2_CID_PRIVATE_TAVARUA_TRANSMIT_MODE:I = 0x8000005

.field private static final V4L2_CTRL_CLASS_USER:I = 0x980000


# instance fields
.field private mFreq:I

.field private mPrgmId:I

.field private mPrgmType:I

.field private mScanTime:I

.field private mSrchDir:I

.field private mSrchListMode:I

.field private mSrchMode:I

.field private mStateMute:Z

.field private mStateStereo:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelSearch(I)V
    .locals 0
    .parameter "fd"

    .prologue
    .line 283
    invoke-static {p1}, Landroid/hardware/fmradio/FmReceiverJNI;->cancelSearchNative(I)I

    .line 284
    return-void
.end method

.method public fmOff(I)V
    .locals 2
    .parameter "fd"

    .prologue
    .line 93
    const v0, 0x8000004

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    .line 94
    return-void
.end method

.method public fmOn(II)V
    .locals 1
    .parameter "fd"
    .parameter "device"

    .prologue
    .line 86
    const v0, 0x8000004

    invoke-static {p1, v0, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    .line 87
    return-void
.end method

.method public getFreq()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Landroid/hardware/fmradio/FmRxControls;->mFreq:I

    return v0
.end method

.method public getPwrMode(I)I
    .locals 2
    .parameter "fd"

    .prologue
    .line 305
    const/4 v0, 0x0

    .line 307
    .local v0, re:I
    const v1, 0x8000011

    invoke-static {p1, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    .line 309
    return v0
.end method

.method public getTunedFrequency(I)I
    .locals 4
    .parameter "fd"

    .prologue
    .line 122
    invoke-static {p1}, Landroid/hardware/fmradio/FmReceiverJNI;->getFreqNative(I)I

    move-result v0

    .line 123
    .local v0, frequency:I
    const-string v1, "FmRxControls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTunedFrequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    return v0
.end method

.method public muteControl(IZ)V
    .locals 2
    .parameter "fd"
    .parameter "on"

    .prologue
    const v1, 0x980909

    .line 100
    if-eqz p2, :cond_0

    .line 102
    const/4 v0, 0x3

    invoke-static {p1, v1, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v1, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    goto :goto_0
.end method

.method public searchRdsStations(IIIII)V
    .locals 0
    .parameter "mode"
    .parameter "dwelling"
    .parameter "direction"
    .parameter "RdsSrchPty"
    .parameter "RdsSrchPI"

    .prologue
    .line 274
    return-void
.end method

.method public searchStationList(IIIII)I
    .locals 2
    .parameter "fd"
    .parameter "mode"
    .parameter "preset_num"
    .parameter "dir"
    .parameter "pty"

    .prologue
    .line 145
    const v1, 0x8000001

    invoke-static {p1, v1, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 146
    .local v0, re:I
    if-eqz v0, :cond_0

    move v1, v0

    .line 171
    :goto_0
    return v1

    .line 151
    :cond_0
    const v1, 0x800000b

    invoke-static {p1, v1, p3}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 152
    if-eqz v0, :cond_1

    move v1, v0

    .line 153
    goto :goto_0

    .line 157
    :cond_1
    if-lez p5, :cond_2

    .line 158
    const v1, 0x8000009

    invoke-static {p1, v1, p5}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 160
    :cond_2
    if-eqz v0, :cond_3

    move v1, v0

    .line 161
    goto :goto_0

    .line 166
    :cond_3
    invoke-static {p1, p4}, Landroid/hardware/fmradio/FmReceiverJNI;->startSearchNative(II)I

    move-result v0

    .line 167
    if-eqz v0, :cond_4

    move v1, v0

    .line 168
    goto :goto_0

    .line 171
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public searchStations(IIIIII)V
    .locals 5
    .parameter "fd"
    .parameter "mode"
    .parameter "dwell"
    .parameter "dir"
    .parameter "pty"
    .parameter "pi"

    .prologue
    const v4, 0x8000001

    .line 231
    const/4 v0, 0x0

    .line 234
    .local v0, re:I
    const-string v1, "FmRxControls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mode is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Dwell is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const-string v1, "FmRxControls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dir is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " PTY is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v1, "FmRxControls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pi is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-static {p1, v4, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 242
    const v1, 0x8000002

    invoke-static {p1, v1, p3}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 244
    if-eqz p5, :cond_0

    .line 246
    const v1, 0x8000009

    invoke-static {p1, v1, p5}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 249
    :cond_0
    if-eqz p6, :cond_1

    .line 251
    const v1, 0x800000a

    invoke-static {p1, v1, p6}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 254
    :cond_1
    invoke-static {p1, p4}, Landroid/hardware/fmradio/FmReceiverJNI;->startSearchNative(II)I

    move-result v0

    .line 256
    return-void
.end method

.method public setFreq(I)V
    .locals 0
    .parameter "f"

    .prologue
    .line 132
    iput p1, p0, Landroid/hardware/fmradio/FmRxControls;->mFreq:I

    .line 133
    return-void
.end method

.method public setLowPwrMode(IZ)I
    .locals 3
    .parameter "fd"
    .parameter "lpmOn"

    .prologue
    const v2, 0x8000011

    .line 289
    const/4 v0, 0x0

    .line 291
    .local v0, re:I
    if-eqz p2, :cond_0

    .line 292
    const/4 v1, 0x1

    invoke-static {p1, v2, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 298
    :goto_0
    return v0

    .line 295
    :cond_0
    const/4 v1, 0x0

    invoke-static {p1, v2, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    goto :goto_0
.end method

.method public setStation(I)V
    .locals 4
    .parameter "fd"

    .prologue
    .line 113
    const-string v1, "FmRxControls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "** Tune Using: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget v1, p0, Landroid/hardware/fmradio/FmRxControls;->mFreq:I

    invoke-static {p1, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->setFreqNative(II)I

    move-result v0

    .line 115
    .local v0, ret:I
    const-string v1, "FmRxControls"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "** Returned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-void
.end method

.method public stationList(I)[I
    .locals 14
    .parameter "fd"

    .prologue
    .line 179
    const/4 v1, 0x0

    .line 180
    .local v1, freq:I
    const/4 v2, 0x0

    .line 182
    .local v2, i:I
    const/4 v4, 0x0

    .line 184
    .local v4, real_freq:F
    const/16 v10, 0x64

    new-array v5, v10, [B

    .line 185
    .local v5, sList:[B
    const/4 v8, 0x0

    .line 186
    .local v8, tmpFreqByte1:I
    const/4 v9, 0x0

    .line 190
    .local v9, tmpFreqByte2:I
    invoke-static {p1}, Landroid/hardware/fmradio/FmReceiverJNI;->getLowerBandNative(I)I

    move-result v10

    int-to-double v10, v10

    const-wide v12, 0x408f400000000000L

    div-double/2addr v10, v12

    double-to-float v3, v10

    .line 191
    .local v3, lowBand:F
    const-string v10, "FmRxControls"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "lowBand: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/4 v10, 0x0

    invoke-static {p1, v5, v10}, Landroid/hardware/fmradio/FmReceiverJNI;->getBufferNative(I[BI)I

    .line 194
    const/4 v10, 0x0

    aget-byte v7, v5, v10

    .line 195
    .local v7, station_num:I
    add-int/lit8 v10, v7, 0x1

    new-array v6, v10, [I

    .line 196
    .local v6, stationList:[I
    const-string v10, "FmRxControls"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "station_num: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v7, :cond_0

    .line 199
    const/4 v1, 0x0

    .line 200
    const-string v10, "FmRxControls"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " Byte1 = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    mul-int/lit8 v12, v2, 0x2

    add-int/lit8 v12, v12, 0x1

    aget-byte v12, v5, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string v10, "FmRxControls"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " Byte2 = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    mul-int/lit8 v12, v2, 0x2

    add-int/lit8 v12, v12, 0x2

    aget-byte v12, v5, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    mul-int/lit8 v10, v2, 0x2

    add-int/lit8 v10, v10, 0x1

    aget-byte v10, v5, v10

    and-int/lit16 v8, v10, 0xff

    .line 203
    mul-int/lit8 v10, v2, 0x2

    add-int/lit8 v10, v10, 0x2

    aget-byte v10, v5, v10

    and-int/lit16 v9, v10, 0xff

    .line 204
    const-string v10, "FmRxControls"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " tmpFreqByte1 = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    const-string v10, "FmRxControls"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " tmpFreqByte2 = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    and-int/lit8 v10, v8, 0x3

    shl-int/lit8 v1, v10, 0x8

    .line 207
    or-int/2addr v1, v9

    .line 208
    const-string v10, "FmRxControls"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " freq: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    int-to-double v10, v1

    const-wide v12, 0x3fa999999999999aL

    mul-double/2addr v10, v12

    double-to-float v10, v10

    add-float v4, v10, v3

    .line 210
    const-string v10, "FmRxControls"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " real_freq: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/high16 v10, 0x447a

    mul-float/2addr v10, v4

    float-to-int v10, v10

    aput v10, v6, v2

    .line 212
    const-string v10, "FmRxControls"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " stationList: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget v12, v6, v2

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 217
    :cond_0
    const/4 v10, 0x0

    :try_start_0
    aput v10, v6, v7
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_1
    return-object v6

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const-string v10, "FmRxControls"

    const-string v11, "ArrayIndexOutOfBoundsException !!"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public stereoControl(IZ)I
    .locals 1
    .parameter "fd"
    .parameter "stereo"

    .prologue
    .line 261
    if-eqz p2, :cond_0

    .line 262
    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->setMonoStereoNative(II)I

    move-result v0

    .line 265
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/hardware/fmradio/FmReceiverJNI;->setMonoStereoNative(II)I

    move-result v0

    goto :goto_0
.end method
