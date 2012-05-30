.class public Landroid/hardware/fmradio/FmRxRdsData;
.super Ljava/lang/Object;
.source "FmRxRdsData.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "FmRxRdsData"

.field private static final RDS_AF_AUTO:I = 0x40

.field private static final RDS_GROUP_AF:I = 0x4

.field private static final RDS_GROUP_PS:I = 0x2

.field private static final RDS_GROUP_RT:I = 0x1

.field private static final RDS_PS_ALL:I = 0x10

.field private static final V4L2_CID_PRIVATE_BASE:I = 0x8000000

.field private static final V4L2_CID_PRIVATE_TAVARUA_PSALL:I = 0x8000014

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSD_BUF:I = 0x8000013

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSGROUP_MASK:I = 0x8000006

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSGROUP_PROC:I = 0x8000010

.field private static final V4L2_CID_PRIVATE_TAVARUA_RDSON:I = 0x800000f


# instance fields
.field private mFd:I

.field private mPrgmId:I

.field private mPrgmServices:Ljava/lang/String;

.field private mPrgmType:I

.field private mRadioText:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "fd"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput p1, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    .line 66
    return-void
.end method


# virtual methods
.method public enableAFjump(Z)I
    .locals 5
    .parameter "AFenable"

    .prologue
    const v4, 0x8000010

    .line 157
    const-string v1, "FmRxRdsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In enableAFjump: AFenable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget v1, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    invoke-static {v1, v4}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v0

    .line 161
    .local v0, rds_group_mask:I
    const-string v1, "FmRxRdsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In enableAFjump: rds_group_mask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    if-eqz p1, :cond_0

    .line 164
    iget v1, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    or-int/lit8 v2, v0, 0x40

    invoke-static {v1, v4, v2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    .line 171
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 168
    :cond_0
    iget v1, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    and-int/lit8 v2, v0, -0x41

    invoke-static {v1, v4, v2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    goto :goto_0
.end method

.method public getPrgmId()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Landroid/hardware/fmradio/FmRxRdsData;->mPrgmId:I

    return v0
.end method

.method public getPrgmServices()Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Landroid/hardware/fmradio/FmRxRdsData;->mPrgmServices:Ljava/lang/String;

    return-object v0
.end method

.method public getPrgmType()I
    .locals 1

    .prologue
    .line 201
    iget v0, p0, Landroid/hardware/fmradio/FmRxRdsData;->mPrgmType:I

    return v0
.end method

.method public getRadioText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Landroid/hardware/fmradio/FmRxRdsData;->mRadioText:Ljava/lang/String;

    return-object v0
.end method

.method public rdsGrpOptions(IIZ)I
    .locals 6
    .parameter "grpMask"
    .parameter "buffSize"
    .parameter "rdsFilter"

    .prologue
    const v5, 0x8000010

    .line 96
    iget v4, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    invoke-static {v4, v5}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v4

    int-to-byte v1, v4

    .line 98
    .local v1, rds_group_mask:B
    and-int/lit16 v4, v1, 0xfe

    int-to-byte v1, v4

    .line 101
    if-eqz p3, :cond_0

    .line 102
    const/4 v0, 0x1

    .line 106
    .local v0, rdsFilt:I
    :goto_0
    or-int v4, v1, v0

    int-to-byte v1, v4

    .line 108
    iget v4, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    invoke-static {v4, v5, v1}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v2

    .line 110
    .local v2, re:I
    if-eqz v2, :cond_1

    move v3, v2

    .line 121
    .end local v2           #re:I
    .local v3, re:I
    :goto_1
    return v3

    .line 104
    .end local v0           #rdsFilt:I
    .end local v3           #re:I
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #rdsFilt:I
    goto :goto_0

    .line 113
    .restart local v2       #re:I
    :cond_1
    iget v4, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    const v5, 0x8000013

    invoke-static {v4, v5, p2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v2

    .line 115
    if-eqz v2, :cond_2

    move v3, v2

    .line 116
    .end local v2           #re:I
    .restart local v3       #re:I
    goto :goto_1

    .line 119
    .end local v3           #re:I
    .restart local v2       #re:I
    :cond_2
    iget v4, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    const v5, 0x8000006

    invoke-static {v4, v5, p1}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v2

    move v3, v2

    .line 121
    .end local v2           #re:I
    .restart local v3       #re:I
    goto :goto_1
.end method

.method public rdsOn(Z)I
    .locals 5
    .parameter "on"

    .prologue
    const v4, 0x800000f

    .line 74
    const-string v1, "FmRxRdsData"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "In rdsOn: RDS is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    if-eqz p1, :cond_0

    .line 77
    iget v1, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    const/4 v2, 0x1

    invoke-static {v1, v4, v2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .line 84
    .local v0, ret:I
    :goto_0
    return v0

    .line 80
    .end local v0           #ret:I
    :cond_0
    iget v1, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    const/4 v2, 0x0

    invoke-static {v1, v4, v2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v0

    .restart local v0       #ret:I
    goto :goto_0
.end method

.method public rdsOptions(I)I
    .locals 8
    .parameter "rdsMask"

    .prologue
    const v7, 0x8000010

    .line 130
    const/4 v3, 0x0

    .line 132
    .local v3, re:I
    iget v4, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    invoke-static {v4, v7}, Landroid/hardware/fmradio/FmReceiverJNI;->getControlNative(II)I

    move-result v4

    int-to-byte v2, v4

    .line 133
    .local v2, rds_group_mask:B
    const/4 v1, 0x0

    .line 134
    .local v1, rdsFilt:B
    and-int/lit8 v0, p1, 0x10

    .line 136
    .local v0, psAllVal:I
    const-string v4, "FmRxRdsData"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In rdsOptions: rdsMask: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    and-int/lit16 v4, v2, 0xc7

    int-to-byte v2, v4

    .line 142
    and-int/lit8 v4, p1, 0x7

    shl-int/lit8 v4, v4, 0x3

    or-int/2addr v4, v2

    int-to-byte v2, v4

    .line 145
    iget v4, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    invoke-static {v4, v7, v2}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v3

    .line 147
    iget v4, p0, Landroid/hardware/fmradio/FmRxRdsData;->mFd:I

    const v5, 0x8000014

    shr-int/lit8 v6, v0, 0x4

    invoke-static {v4, v5, v6}, Landroid/hardware/fmradio/FmReceiverJNI;->setControlNative(III)I

    move-result v3

    .line 149
    return v3
.end method

.method public setPrgmId(I)V
    .locals 0
    .parameter "x"

    .prologue
    .line 197
    iput p1, p0, Landroid/hardware/fmradio/FmRxRdsData;->mPrgmId:I

    .line 198
    return-void
.end method

.method public setPrgmServices(Ljava/lang/String;)V
    .locals 0
    .parameter "x"

    .prologue
    .line 189
    iput-object p1, p0, Landroid/hardware/fmradio/FmRxRdsData;->mPrgmServices:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setPrgmType(I)V
    .locals 0
    .parameter "x"

    .prologue
    .line 204
    iput p1, p0, Landroid/hardware/fmradio/FmRxRdsData;->mPrgmType:I

    .line 205
    return-void
.end method

.method public setRadioText(Ljava/lang/String;)V
    .locals 0
    .parameter "x"

    .prologue
    .line 181
    iput-object p1, p0, Landroid/hardware/fmradio/FmRxRdsData;->mRadioText:Ljava/lang/String;

    .line 182
    return-void
.end method
