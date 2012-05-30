.class public Lcom/huawei/android/hwnv/HWNVFuncation;
.super Ljava/lang/Object;
.source "HWNVFuncation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/android/hwnv/HWNVFuncation$1;,
        Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;
    }
.end annotation


# static fields
.field private static final BC10_BIT_MASK:S = 0x4000s

.field private static final MAX_GET_NV_SIZE:I = 0x7f

.field private static final MAX_NV_MIP_MAX_ACTIVE_VALUE:B = 0x5t

.field private static final MAX_NV_PPP_PASSWORD_TRANSPORT_SIZE:B = 0x78t

.field private static final MAX_NV_PPP_USER_TRANSPORT_SIZE:B = 0x78t

.field private static final MAX_NV_SEC_CODE_SIZE:B = 0x6t

.field private static final MAX_SET_NV_SIZE:I = 0x7d

.field private static final NV_BAND_PREF_32_63_SIZE:B = 0x5t

.field private static final NV_BAND_PREF_SIZE:B = 0x3t

.field private static final NV_ESN_ME_SIZE:B = 0x8t

.field private static final NV_RF_BC_CONFIG_SIZE:B = 0x8t

.field private static final PRI_CHECKSUM_SIZE:B = 0x10t

.field private static final SECOND_TO_MILLISECOND_UNITS:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "HWNVFuncation"

.field private static final enableVLog:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 1044
    :try_start_0
    const-string v1, "hwnv"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    .local v0, e:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 1045
    .end local v0           #e:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 1047
    .restart local v0       #e:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "HWNVFuncation"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "may be can\'t load so."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBCBandValue(I)I
    .locals 7
    .parameter "BCNvitem"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 747
    const/4 v3, 0x0

    .line 748
    .local v3, nam:B
    const/4 v1, 0x0

    .line 749
    .local v1, bandPref:S
    const/4 v0, 0x0

    .line 750
    .local v0, RFBCConfig:I
    const/4 v4, 0x0

    .line 752
    .local v4, returnValue:I
    sparse-switch p0, :sswitch_data_0

    .line 781
    new-instance v5, Ljava/security/InvalidParameterException;

    const-string v6, "Invalid param"

    invoke-direct {v5, v6}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 755
    :sswitch_0
    :try_start_0
    invoke-static {v3}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNVBandPref(B)S
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 756
    move v4, v1

    .line 784
    :goto_0
    return v4

    .line 757
    :catch_0
    move-exception v2

    .line 758
    .local v2, e:Ljava/io/IOException;
    const-string v5, "HWNVFuncation"

    const-string v6, "getBCBandValue IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    new-instance v5, Ljava/io/IOException;

    const-string v6, "getNVBandPref failed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 764
    .end local v2           #e:Ljava/io/IOException;
    :sswitch_1
    :try_start_1
    invoke-static {v3}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNVBandPref1631(B)S
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 765
    move v4, v1

    goto :goto_0

    .line 766
    :catch_1
    move-exception v2

    .line 767
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "HWNVFuncation"

    const-string v6, "getBCBandValue IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    new-instance v5, Ljava/io/IOException;

    const-string v6, "getNVBandPref failed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 773
    .end local v2           #e:Ljava/io/IOException;
    :sswitch_2
    :try_start_2
    invoke-static {v3}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNVBandPref3263(B)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v0

    .line 774
    move v4, v0

    goto :goto_0

    .line 775
    :catch_2
    move-exception v2

    .line 776
    .restart local v2       #e:Ljava/io/IOException;
    const-string v5, "HWNVFuncation"

    const-string v6, "getBCBandValue IOException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    new-instance v5, Ljava/io/IOException;

    const-string v6, "getNVBandPref failed"

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 752
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b9 -> :sswitch_0
        0x3b2 -> :sswitch_1
        0xb8a -> :sswitch_2
    .end sparse-switch
.end method

.method public static getBCSupport(Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;)Z
    .locals 7
    .parameter "BCValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 645
    const/4 v0, 0x0

    .line 646
    .local v0, BCMask:I
    const/4 v2, 0x0

    .line 648
    .local v2, band:I
    const-string v4, "HWNVFuncation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBCSupport BCValue =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :try_start_0
    invoke-static {p0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getBandClassNVType(Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;)I

    move-result v1

    .line 652
    .local v1, BCNvitem:I
    invoke-static {p0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getBandClassMask(Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;)I

    move-result v0

    .line 653
    const-string v4, "HWNVFuncation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getBCSupport BCNvitem = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " BCMask = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    invoke-static {v1}, Lcom/huawei/android/hwnv/HWNVFuncation;->getBCBandValue(I)I
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 663
    and-int v4, v2, v0

    if-eqz v4, :cond_0

    .line 664
    const/4 v4, 0x1

    .line 666
    :goto_0
    return v4

    .line 655
    .end local v1           #BCNvitem:I
    :catch_0
    move-exception v3

    .line 656
    .local v3, e:Ljava/security/InvalidParameterException;
    const-string v4, "HWNVFuncation"

    const-string v5, "getBCSupport InvalidParameterException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    new-instance v4, Ljava/security/InvalidParameterException;

    const-string v5, "Invalid param"

    invoke-direct {v4, v5}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 658
    .end local v3           #e:Ljava/security/InvalidParameterException;
    :catch_1
    move-exception v3

    .line 659
    .local v3, e:Ljava/io/IOException;
    const-string v4, "HWNVFuncation"

    const-string v5, "getBCSupport IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    new-instance v4, Ljava/io/IOException;

    const-string v5, "get nv failed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 666
    .end local v3           #e:Ljava/io/IOException;
    .restart local v1       #BCNvitem:I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static getBandClassMask(Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;)I
    .locals 3
    .parameter "BandClass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 943
    const/4 v0, 0x0

    .line 945
    .local v0, returnValue:I
    sget-object v1, Lcom/huawei/android/hwnv/HWNVFuncation$1;->$SwitchMap$com$huawei$android$hwnv$HWNVFuncation$BandClassType:[I

    invoke-virtual {p0}, Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 950
    new-instance v1, Ljava/security/InvalidParameterException;

    const-string v2, "Invalid param"

    invoke-direct {v1, v2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 947
    :pswitch_0
    const/16 v0, 0x4000

    .line 953
    return v0

    .line 945
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static getBandClassNVType(Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;)I
    .locals 2
    .parameter "BandClass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 929
    sget-object v0, Lcom/huawei/android/hwnv/HWNVFuncation$1;->$SwitchMap$com$huawei$android$hwnv$HWNVFuncation$BandClassType:[I

    invoke-virtual {p0}, Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 933
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Invalid param"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 931
    :pswitch_0
    const/16 v0, 0x1b9

    return v0

    .line 929
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDsMobileIPRRPCode()I
    .locals 6

    .prologue
    .line 207
    const-string v4, "getDsMobileIPRRPCode"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 208
    new-instance v3, Lcom/huawei/android/hwnv/NvByte;

    invoke-direct {v3}, Lcom/huawei/android/hwnv/NvByte;-><init>()V

    .line 209
    .local v3, out:Lcom/huawei/android/hwnv/NvByte;
    invoke-virtual {v3}, Lcom/huawei/android/hwnv/NvByte;->getNvSize()B

    move-result v2

    .line 210
    .local v2, nvSize:B
    new-array v0, v2, [B

    .line 211
    .local v0, buf:[B
    const v4, 0xea78

    invoke-static {v4, v2, v0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV(IB[B)B

    .line 213
    :try_start_0
    invoke-virtual {v3, v0}, Lcom/huawei/android/hwnv/NvByte;->setNvByte([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    invoke-virtual {v3}, Lcom/huawei/android/hwnv/NvByte;->toDebugString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 221
    iget-short v4, v3, Lcom/huawei/android/hwnv/NvByte;->mVal:S

    return v4

    .line 215
    :catch_0
    move-exception v1

    .line 216
    .local v1, e:Ljava/io/IOException;
    const-string v4, "getDsMobileIPRRPCode: Error when setNvByte!"

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMipActiveProfile()B
    .locals 6

    .prologue
    .line 140
    const-string v4, "getMipActiveProfile"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 141
    new-instance v3, Lcom/huawei/android/hwnv/NvByte;

    invoke-direct {v3}, Lcom/huawei/android/hwnv/NvByte;-><init>()V

    .line 142
    .local v3, out:Lcom/huawei/android/hwnv/NvByte;
    invoke-virtual {v3}, Lcom/huawei/android/hwnv/NvByte;->getNvSize()B

    move-result v2

    .line 143
    .local v2, nvSize:B
    new-array v0, v2, [B

    .line 144
    .local v0, buf:[B
    const/16 v4, 0x1d0

    invoke-static {v4, v2, v0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV(IB[B)B

    .line 146
    :try_start_0
    invoke-virtual {v3, v0}, Lcom/huawei/android/hwnv/NvByte;->setNvByte([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    :goto_0
    invoke-virtual {v3}, Lcom/huawei/android/hwnv/NvByte;->toDebugString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 154
    iget-short v4, v3, Lcom/huawei/android/hwnv/NvByte;->mVal:S

    int-to-byte v4, v4

    return v4

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, e:Ljava/io/IOException;
    const-string v4, "getMipActiveProfile: Error when setNvByte!"

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getMipGenUserProf(Lcom/huawei/android/hwnv/MipGenUserProfType;I)Z
    .locals 7
    .parameter "mipUser"
    .parameter "index"

    .prologue
    const/4 v3, 0x0

    .line 594
    const-string v4, "getMipGenUserProf"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 596
    if-ltz p1, :cond_0

    const/4 v4, 0x6

    if-gt v4, p1, :cond_1

    .line 597
    :cond_0
    const-string v4, "HWNVFuncation"

    const-string v5, "getMipGenUserProf Invalid index"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    :goto_0
    return v3

    .line 602
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/huawei/android/hwnv/MipGenUserProfType;->getNvSize()B

    move-result v2

    .line 603
    .local v2, nvSize:B
    new-array v0, v2, [B

    .line 605
    .local v0, buf:[B
    const/4 v4, 0x0

    int-to-byte v5, p1

    aput-byte v5, v0, v4

    .line 606
    const-string v4, "HWNVFuncation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMipGenUserProf  index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-byte v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/16 v4, 0x1d1

    invoke-static {v4, v2, v0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV(IB[B)B

    .line 609
    invoke-virtual {p0, v0}, Lcom/huawei/android/hwnv/MipGenUserProfType;->setMipGenUserProfType([B)V

    .line 611
    invoke-virtual {p0}, Lcom/huawei/android/hwnv/MipGenUserProfType;->toDebugString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 618
    const/4 v3, 0x1

    goto :goto_0

    .line 613
    .end local v0           #buf:[B
    .end local v2           #nvSize:B
    :catch_0
    move-exception v1

    .line 614
    .local v1, e:Ljava/io/IOException;
    const-string v4, "HWNVFuncation"

    const-string v5, "getMipGenUserProf IOException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getMipTetheredNaiProf(BLcom/huawei/android/hwnv/MipTetheredNaiType;)Z
    .locals 7
    .parameter "index"
    .parameter "tetheredNai"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 545
    const-string v4, "getMipTetheredNaiProf"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 547
    if-ltz p0, :cond_0

    const/4 v4, 0x6

    if-gt v4, p0, :cond_1

    .line 548
    :cond_0
    const-string v4, "HWNVFuncation"

    const-string v5, "getMipTetheredNaiProf Invalid index"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    :goto_0
    return v3

    .line 553
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lcom/huawei/android/hwnv/MipTetheredNaiType;->getNvSize()B

    move-result v2

    .line 554
    .local v2, nvSize:B
    new-array v0, v2, [B

    .line 556
    .local v0, buf:[B
    const/4 v4, 0x0

    aput-byte p0, v0, v4

    .line 557
    const-string v4, "HWNVFuncation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getMipTetheredNaiProf index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget-byte v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/16 v4, 0xb09

    invoke-static {v4, v2, v0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV(IB[B)B

    .line 560
    invoke-virtual {p1, v0}, Lcom/huawei/android/hwnv/MipTetheredNaiType;->setMipTetheredNaiType([B)V

    .line 562
    invoke-virtual {p1}, Lcom/huawei/android/hwnv/MipTetheredNaiType;->toDebugString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 568
    const/4 v3, 0x1

    goto :goto_0

    .line 564
    .end local v0           #buf:[B
    .end local v2           #nvSize:B
    :catch_0
    move-exception v1

    .line 565
    .local v1, e:Ljava/io/IOException;
    goto :goto_0
.end method

.method private static native getNV(IB[B)B
.end method

.method public static getNVActivationDate()J
    .locals 6

    .prologue
    .line 270
    const-string v4, "getNVActivationDate"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 272
    new-instance v3, Lcom/huawei/android/hwnv/NvInteger;

    invoke-direct {v3}, Lcom/huawei/android/hwnv/NvInteger;-><init>()V

    .line 273
    .local v3, out:Lcom/huawei/android/hwnv/NvInteger;
    invoke-virtual {v3}, Lcom/huawei/android/hwnv/NvInteger;->getNvSize()B

    move-result v2

    .line 274
    .local v2, nvSize:B
    new-array v0, v2, [B

    .line 275
    .local v0, buf:[B
    const v4, 0xea79

    invoke-static {v4, v2, v0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV(IB[B)B

    .line 277
    :try_start_0
    invoke-virtual {v3, v0}, Lcom/huawei/android/hwnv/NvInteger;->setNvInteger([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    :goto_0
    invoke-virtual {v3}, Lcom/huawei/android/hwnv/NvInteger;->toDebugString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 285
    iget-wide v4, v3, Lcom/huawei/android/hwnv/NvInteger;->mVal:J

    return-wide v4

    .line 279
    :catch_0
    move-exception v1

    .line 280
    .local v1, e:Ljava/io/IOException;
    const-string v4, "getNVActivationDate: Error when setNvInteger!"

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getNVActivationDateData()Ljava/util/Date;
    .locals 9

    .prologue
    .line 309
    const-string v4, "getNVActivationDateData"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 311
    new-instance v3, Lcom/huawei/android/hwnv/NvInteger;

    invoke-direct {v3}, Lcom/huawei/android/hwnv/NvInteger;-><init>()V

    .line 312
    .local v3, out:Lcom/huawei/android/hwnv/NvInteger;
    invoke-virtual {v3}, Lcom/huawei/android/hwnv/NvInteger;->getNvSize()B

    move-result v2

    .line 313
    .local v2, nvSize:B
    new-array v0, v2, [B

    .line 314
    .local v0, buf:[B
    const v4, 0xea79

    invoke-static {v4, v2, v0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV(IB[B)B

    .line 316
    :try_start_0
    invoke-virtual {v3, v0}, Lcom/huawei/android/hwnv/NvInteger;->setNvInteger([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    invoke-virtual {v3}, Lcom/huawei/android/hwnv/NvInteger;->toDebugString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 325
    new-instance v4, Ljava/util/Date;

    iget-wide v5, v3, Lcom/huawei/android/hwnv/NvInteger;->mVal:J

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    return-object v4

    .line 318
    :catch_0
    move-exception v1

    .line 319
    .local v1, e:Ljava/io/IOException;
    const-string v4, "getNVActivationDateData: Error when setNvInteger!"

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getNVBandPref(B)S
    .locals 5
    .parameter "nam"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 826
    new-array v0, v4, [B

    .line 828
    .local v0, buf:[B
    const/4 v3, 0x0

    aput-byte p0, v0, v3

    .line 830
    const/16 v3, 0x1b9

    invoke-static {v3, v4, v0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV(IB[B)B

    move-result v2

    .line 832
    .local v2, mResult:B
    if-eqz v2, :cond_0

    .line 833
    const-string v3, "HWNVFuncation"

    const-string v4, "getNV: NV_BAND_PREF_I failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    new-instance v3, Ljava/io/IOException;

    const-string v4, "getNV: NV_BAND_PREF_I failed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 837
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 838
    .local v1, buftmp:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 839
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 840
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    return v3
.end method

.method private static getNVBandPref1631(B)S
    .locals 5
    .parameter "nam"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x3

    .line 862
    new-array v0, v4, [B

    .line 864
    .local v0, buf:[B
    const/4 v3, 0x0

    aput-byte p0, v0, v3

    .line 865
    const/16 v3, 0x3b2

    invoke-static {v3, v4, v0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV(IB[B)B

    move-result v2

    .line 866
    .local v2, mResult:B
    if-eqz v2, :cond_0

    .line 867
    const-string v3, "HWNVFuncation"

    const-string v4, "getNV: NV_BAND_PREF_16_31_I failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    new-instance v3, Ljava/io/IOException;

    const-string v4, "getNV: NV_BAND_PREF_16_31_I failed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 871
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 872
    .local v1, buftmp:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 873
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 874
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v3

    return v3
.end method

.method private static getNVBandPref3263(B)I
    .locals 5
    .parameter "nam"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x5

    .line 896
    new-array v0, v4, [B

    .line 898
    .local v0, buf:[B
    const/4 v3, 0x0

    aput-byte p0, v0, v3

    .line 899
    const/16 v3, 0xb8a

    invoke-static {v3, v4, v0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV(IB[B)B

    move-result v2

    .line 900
    .local v2, mResult:B
    if-eqz v2, :cond_0

    .line 901
    const-string v3, "HWNVFuncation"

    const-string v4, "getNV: NV_BAND_PREF_32_63_I failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    new-instance v3, Ljava/io/IOException;

    const-string v4, "getNV: NV_BAND_PREF_32_63_I failed"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 905
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 906
    .local v1, buftmp:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 907
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    .line 908
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    return v3
.end method

.method public static getNVCallLog(Lcom/huawei/android/hwnv/CallLogTypeInfo;)Z
    .locals 6
    .parameter "callLog"

    .prologue
    const/4 v3, 0x0

    .line 464
    const-string v4, "getNVCallLog"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0}, Lcom/huawei/android/hwnv/CallLogTypeInfo;->getNvSize()B

    move-result v2

    .line 467
    .local v2, nvSize:B
    new-array v0, v2, [B

    .line 469
    .local v0, buf:[B
    const v4, 0xea76

    invoke-static {v4, v2, v0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV(IB[B)B

    move-result v1

    .line 471
    .local v1, mResult:B
    invoke-virtual {p0, v0}, Lcom/huawei/android/hwnv/CallLogTypeInfo;->setCallLogTypeInfo([B)V

    .line 473
    invoke-virtual {p0}, Lcom/huawei/android/hwnv/CallLogTypeInfo;->toDebugString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 475
    if-nez v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public static getNVDirNumberPCS(Lcom/huawei/android/hwnv/DirNumberPCSInfo;)Z
    .locals 7
    .parameter "mobDirNumberInfo"

    .prologue
    const/4 v3, 0x0

    .line 521
    const-string v4, "getNVDirNumberPCS"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 523
    invoke-virtual {p0}, Lcom/huawei/android/hwnv/DirNumberPCSInfo;->getNvSize()B

    move-result v2

    .line 524
    .local v2, nvSize:B
    new-array v0, v2, [B

    .line 525
    .local v0, buf:[B
    invoke-virtual {p0}, Lcom/huawei/android/hwnv/DirNumberPCSInfo;->getNam()B

    move-result v4

    aput-byte v4, v0, v3

    .line 526
    const-string v4, "HWNVFuncation"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNVDirNumberPCS nam = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-byte v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const/16 v4, 0xd7

    invoke-static {v4, v2, v0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV(IB[B)B

    move-result v1

    .line 529
    .local v1, mResult:B
    invoke-virtual {p0, v0}, Lcom/huawei/android/hwnv/DirNumberPCSInfo;->setDirNumberPCSInfo([B)V

    .line 531
    invoke-virtual {p0}, Lcom/huawei/android/hwnv/DirNumberPCSInfo;->toDebugString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 533
    if-nez v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public static getNVHacMode()B
    .locals 6

    .prologue
    .line 103
    const-string v4, "getNVHacMode"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 104
    new-instance v3, Lcom/huawei/android/hwnv/NvByte;

    invoke-direct {v3}, Lcom/huawei/android/hwnv/NvByte;-><init>()V

    .line 105
    .local v3, out:Lcom/huawei/android/hwnv/NvByte;
    invoke-virtual {v3}, Lcom/huawei/android/hwnv/NvByte;->getNvSize()B

    move-result v2

    .line 106
    .local v2, nvSize:B
    new-array v0, v2, [B

    .line 107
    .local v0, buf:[B
    const v4, 0xea74

    invoke-static {v4, v2, v0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV(IB[B)B

    .line 109
    :try_start_0
    invoke-virtual {v3, v0}, Lcom/huawei/android/hwnv/NvByte;->setNvByte([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    invoke-virtual {v3}, Lcom/huawei/android/hwnv/NvByte;->toDebugString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 117
    iget-short v4, v3, Lcom/huawei/android/hwnv/NvByte;->mVal:S

    int-to-byte v4, v4

    return v4

    .line 111
    :catch_0
    move-exception v1

    .line 112
    .local v1, e:Ljava/io/IOException;
    const-string v4, "getNVHacMode: Error when setNvByte!"

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getNVInterface(IB[B)B
    .locals 1
    .parameter "nvItem"
    .parameter "nvSize"
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 69
    if-eqz p2, :cond_0

    if-lez p1, :cond_0

    const/16 v0, 0x7f

    if-ge v0, p1, :cond_1

    .line 70
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 72
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV(IB[B)B

    move-result v0

    return v0
.end method

.method private static getNVRFBCCONFIG()J
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 794
    new-array v0, v4, [B

    .line 796
    .local v0, buf:[B
    const/16 v3, 0x755

    invoke-static {v3, v4, v0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV(IB[B)B

    move-result v2

    .line 798
    .local v2, mResult:B
    if-eqz v2, :cond_0

    .line 799
    const-string v3, "HWNVFuncation"

    const-string v4, "getNV:NV_RF_BC_CONFIG_I failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 803
    .local v1, buftmp:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 804
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v3

    return-wide v3
.end method

.method public static getNVRefurbishCounter(Lcom/huawei/android/hwnv/RefurbishTypeInfo;)Z
    .locals 6
    .parameter "refurbishInfo"

    .prologue
    const/4 v3, 0x0

    .line 498
    const-string v4, "getNVRefurbishCounter"

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p0}, Lcom/huawei/android/hwnv/RefurbishTypeInfo;->getNvSize()B

    move-result v2

    .line 501
    .local v2, nvSize:B
    new-array v0, v2, [B

    .line 503
    .local v0, buf:[B
    const v4, 0xea72

    invoke-static {v4, v2, v0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV(IB[B)B

    move-result v1

    .line 505
    .local v1, mResult:B
    invoke-virtual {p0, v0}, Lcom/huawei/android/hwnv/RefurbishTypeInfo;->setRefurbishTypeInfo([B)V

    .line 507
    invoke-virtual {p0}, Lcom/huawei/android/hwnv/RefurbishTypeInfo;->toDebugString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 509
    if-nez v1, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3
.end method

.method public static getNVSecCode([B)Z
    .locals 6
    .parameter "NvSecCodeTypeInfo"

    .prologue
    const/4 v5, 0x6

    const/4 v2, 0x0

    .line 353
    const-string v3, "getNVSecCode"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 354
    array-length v3, p0

    if-lez v3, :cond_0

    array-length v3, p0

    if-ge v5, v3, :cond_2

    .line 355
    :cond_0
    const-string v3, "HWNVFuncation"

    const-string v4, "getNVSecCode: Invalid length"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :cond_1
    :goto_0
    return v2

    .line 359
    :cond_2
    const/16 v3, 0x55

    invoke-static {v3, v5, p0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV(IB[B)B

    move-result v1

    .line 360
    .local v1, mResult:B
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 361
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 362
    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getNVSmsBcUserPref()B
    .locals 6

    .prologue
    .line 182
    const-string v4, "getNVSmsBcUserPref"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 183
    new-instance v3, Lcom/huawei/android/hwnv/NvByte;

    invoke-direct {v3}, Lcom/huawei/android/hwnv/NvByte;-><init>()V

    .line 184
    .local v3, out:Lcom/huawei/android/hwnv/NvByte;
    invoke-virtual {v3}, Lcom/huawei/android/hwnv/NvByte;->getNvSize()B

    move-result v2

    .line 185
    .local v2, nvSize:B
    new-array v0, v2, [B

    .line 186
    .local v0, buf:[B
    const/16 v4, 0x177

    invoke-static {v4, v2, v0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV(IB[B)B

    .line 188
    :try_start_0
    invoke-virtual {v3, v0}, Lcom/huawei/android/hwnv/NvByte;->setNvByte([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :goto_0
    invoke-virtual {v3}, Lcom/huawei/android/hwnv/NvByte;->toDebugString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 196
    iget-short v4, v3, Lcom/huawei/android/hwnv/NvByte;->mVal:S

    int-to-byte v4, v4

    return v4

    .line 190
    :catch_0
    move-exception v1

    .line 191
    .local v1, e:Ljava/io/IOException;
    const-string v4, "getNVSmsBcUserPref: Error when setNvByte!"

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getNVUIMDeviceID([B)Z
    .locals 6
    .parameter "uimDeviceID"

    .prologue
    const/16 v5, 0x8

    const/4 v2, 0x0

    .line 426
    const-string v3, "getNVUIMDeviceID"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 427
    array-length v3, p0

    if-lez v3, :cond_0

    array-length v3, p0

    if-ge v5, v3, :cond_2

    .line 428
    :cond_0
    const-string v3, "HWNVFuncation"

    const-string v4, "getNVUIMDeviceID: Invalid length"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    :cond_1
    :goto_0
    return v2

    .line 432
    :cond_2
    const v3, 0xea6b

    invoke-static {v3, v5, p0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV(IB[B)B

    move-result v1

    .line 433
    .local v1, mResult:B
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 434
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 435
    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static getNVWarrantyDate()J
    .locals 6

    .prologue
    .line 231
    const-string v4, "getNVWarrantyDate"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 233
    new-instance v3, Lcom/huawei/android/hwnv/NvInteger;

    invoke-direct {v3}, Lcom/huawei/android/hwnv/NvInteger;-><init>()V

    .line 234
    .local v3, out:Lcom/huawei/android/hwnv/NvInteger;
    invoke-virtual {v3}, Lcom/huawei/android/hwnv/NvInteger;->getNvSize()B

    move-result v2

    .line 235
    .local v2, nvSize:B
    new-array v0, v2, [B

    .line 236
    .local v0, buf:[B
    const v4, 0xea71

    invoke-static {v4, v2, v0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV(IB[B)B

    .line 238
    :try_start_0
    invoke-virtual {v3, v0}, Lcom/huawei/android/hwnv/NvInteger;->setNvInteger([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    :goto_0
    invoke-virtual {v3}, Lcom/huawei/android/hwnv/NvInteger;->toDebugString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 246
    iget-wide v4, v3, Lcom/huawei/android/hwnv/NvInteger;->mVal:J

    return-wide v4

    .line 240
    :catch_0
    move-exception v1

    .line 241
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "getNVWarrantyDate: Error when setNvInteger!"

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getPPPPassword([B)J
    .locals 7
    .parameter "pppPassword"

    .prologue
    const/16 v6, 0x78

    const/4 v5, 0x0

    .line 400
    const-string v3, "getPPPPassword"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 402
    array-length v3, p0

    if-gtz v3, :cond_0

    .line 403
    const-string v3, "HWNVFuncation"

    const-string v4, "getPPPPassword: Invalid length"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_0
    new-array v1, v6, [B

    .line 408
    .local v1, pppPasswordData:[B
    const/16 v3, 0x38a

    invoke-static {v3, v6, v1}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV(IB[B)B

    .line 409
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 410
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 411
    aget-byte v2, v1, v5

    .line 412
    .local v2, pppPasswordLen:B
    const/4 v3, 0x1

    invoke-static {v1, v3, p0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 414
    int-to-long v3, v2

    return-wide v3
.end method

.method public static getPPPUser([B)J
    .locals 7
    .parameter "pppUser"

    .prologue
    const/16 v6, 0x78

    const/4 v5, 0x0

    .line 376
    const-string v3, "getPPPUser"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 377
    array-length v3, p0

    if-gtz v3, :cond_0

    .line 378
    const-string v3, "HWNVFuncation"

    const-string v4, "getPPPUser: Invalid length"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_0
    new-array v1, v6, [B

    .line 382
    .local v1, pppUserData:[B
    const/16 v3, 0x38e

    invoke-static {v3, v6, v1}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV(IB[B)B

    .line 383
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 384
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 385
    aget-byte v2, v1, v5

    .line 386
    .local v2, pppUserLen:B
    const/4 v3, 0x1

    invoke-static {v1, v3, p0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    int-to-long v3, v2

    return-wide v3
.end method

.method public static getPriChecksum()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/16 v6, 0x10

    .line 982
    const-string v4, "getPriChecksum"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 984
    const/4 v3, 0x1

    .line 985
    .local v3, notCalculated:Z
    new-array v0, v6, [B

    .line 986
    .local v0, buf:[B
    const v4, 0xea7e

    invoke-static {v4, v6, v0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNV(IB[B)B

    move-result v2

    .line 988
    .local v2, mResult:B
    if-eqz v2, :cond_0

    .line 989
    const-string v4, "HWNVFuncation"

    const-string v5, "getNV: getPriChecksum failed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    new-instance v4, Ljava/io/IOException;

    const-string v5, "getNV: getPriChecksum failed"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 998
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v6, :cond_1

    .line 999
    aget-byte v4, v0, v1

    if-eqz v4, :cond_2

    .line 1000
    const/4 v3, 0x0

    .line 1005
    :cond_1
    if-eqz v3, :cond_3

    .line 1007
    const-string v4, "HWNVFuncation"

    const-string v5, "PRI checksum not calculated!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "PRI checksum not calculated"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 998
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1011
    :cond_3
    invoke-static {v0, v7, v6}, Lcom/android/internal/util/HexDump;->toHexString([BII)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private static getRFBConfigBit(II)J
    .locals 5
    .parameter "BCNvitem"
    .parameter "mask"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 962
    const-wide/16 v0, 0x0

    .line 964
    .local v0, resValue:J
    sparse-switch p0, :sswitch_data_0

    .line 975
    new-instance v2, Ljava/security/InvalidParameterException;

    const-string v3, "Invalid param"

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 966
    :sswitch_0
    int-to-long v0, p1

    .line 978
    :goto_0
    return-wide v0

    .line 969
    :sswitch_1
    shl-int/lit8 v2, p1, 0x10

    int-to-long v0, v2

    .line 970
    goto :goto_0

    .line 972
    :sswitch_2
    int-to-long v2, p1

    const/16 v4, 0x20

    shl-long v0, v2, v4

    .line 973
    goto :goto_0

    .line 964
    nop

    :sswitch_data_0
    .sparse-switch
        0x1b9 -> :sswitch_0
        0x3b2 -> :sswitch_1
        0xb8a -> :sswitch_2
    .end sparse-switch
.end method

.method public static setBCSupport(Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;Z)Z
    .locals 13
    .parameter "BCValue"
    .parameter "setValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 680
    const/4 v8, 0x0

    .line 682
    .local v8, nam:B
    const-wide/16 v2, 0x0

    .line 683
    .local v2, RFBCConfigValue:J
    const/4 v6, 0x0

    .line 684
    .local v6, bandClassValue:I
    const/4 v0, 0x0

    .line 685
    .local v0, BCMask:I
    const-wide/16 v4, 0x0

    .line 688
    .local v4, RFBCMask:J
    :try_start_0
    invoke-static {p0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getBandClassNVType(Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;)I

    move-result v1

    .line 689
    .local v1, BCNvitem:I
    invoke-static {p0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getBandClassMask(Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;)I

    move-result v0

    .line 690
    invoke-static {v1, v0}, Lcom/huawei/android/hwnv/HWNVFuncation;->getRFBConfigBit(II)J

    move-result-wide v4

    .line 691
    invoke-static {}, Lcom/huawei/android/hwnv/HWNVFuncation;->getNVRFBCCONFIG()J

    move-result-wide v2

    .line 692
    invoke-static {v1}, Lcom/huawei/android/hwnv/HWNVFuncation;->getBCBandValue(I)I
    :try_end_0
    .catch Ljava/security/InvalidParameterException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    .line 701
    if-ne v10, p1, :cond_1

    .line 702
    or-int/2addr v6, v0

    .line 703
    or-long/2addr v2, v4

    .line 709
    :goto_0
    invoke-static {v2, v3}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNVRFBCCONFIG(J)Z

    move-result v11

    if-nez v11, :cond_2

    .line 733
    :cond_0
    :goto_1
    return v9

    .line 693
    .end local v1           #BCNvitem:I
    :catch_0
    move-exception v7

    .line 694
    .local v7, e:Ljava/security/InvalidParameterException;
    const-string v9, "HWNVFuncation"

    const-string v10, "getBCSupport InvalidParameterException"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    new-instance v9, Ljava/security/InvalidParameterException;

    const-string v10, "Invalid param"

    invoke-direct {v9, v10}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 696
    .end local v7           #e:Ljava/security/InvalidParameterException;
    :catch_1
    move-exception v7

    .line 697
    .local v7, e:Ljava/io/IOException;
    const-string v9, "HWNVFuncation"

    const-string/jumbo v10, "setBCSupport IOException"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    new-instance v9, Ljava/io/IOException;

    const-string v10, "get nv failed"

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 705
    .end local v7           #e:Ljava/io/IOException;
    .restart local v1       #BCNvitem:I
    :cond_1
    xor-int/lit8 v11, v0, -0x1

    and-int/2addr v6, v11

    .line 706
    const-wide/16 v11, -0x1

    xor-long/2addr v11, v4

    and-long/2addr v2, v11

    goto :goto_0

    .line 713
    :cond_2
    sparse-switch v1, :sswitch_data_0

    .line 730
    new-instance v9, Ljava/security/InvalidParameterException;

    const-string v10, "Invalid param"

    invoke-direct {v9, v10}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 715
    :sswitch_0
    int-to-short v11, v6

    invoke-static {v8, v11}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNVBandPref(BS)Z

    move-result v11

    if-eqz v11, :cond_0

    :cond_3
    move v9, v10

    .line 733
    goto :goto_1

    .line 720
    :sswitch_1
    int-to-short v11, v6

    invoke-static {v8, v11}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNVBandPref1631(BS)Z

    move-result v11

    if-nez v11, :cond_3

    goto :goto_1

    .line 725
    :sswitch_2
    invoke-static {v8, v6}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNVBandPref3263(BI)Z

    move-result v11

    if-nez v11, :cond_3

    goto :goto_1

    .line 713
    :sswitch_data_0
    .sparse-switch
        0x1b9 -> :sswitch_0
        0x3b2 -> :sswitch_1
        0xb8a -> :sswitch_2
    .end sparse-switch
.end method

.method public static setMipActiveProfile(B)Z
    .locals 5
    .parameter "value"

    .prologue
    const/4 v1, 0x0

    .line 166
    const-string/jumbo v2, "setMipActiveProfile"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 167
    if-ltz p0, :cond_0

    const/4 v2, 0x5

    if-le p0, v2, :cond_1

    .line 168
    :cond_0
    const-string v2, "HWNVFuncation"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMipActiveProfile Invalid value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_0
    return v1

    .line 171
    :cond_1
    new-instance v0, Lcom/huawei/android/hwnv/NvByte;

    int-to-short v1, p0

    invoke-direct {v0, v1}, Lcom/huawei/android/hwnv/NvByte;-><init>(S)V

    .line 172
    .local v0, out:Lcom/huawei/android/hwnv/NvByte;
    invoke-virtual {v0}, Lcom/huawei/android/hwnv/NvByte;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 173
    const/16 v1, 0x1d0

    invoke-virtual {v0}, Lcom/huawei/android/hwnv/NvByte;->getNvSize()B

    move-result v2

    invoke-virtual {v0}, Lcom/huawei/android/hwnv/NvByte;->toByteArray()[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNV(IB[B)Z

    move-result v1

    goto :goto_0
.end method

.method public static setMipTetheredNaiProf(Lcom/huawei/android/hwnv/MipTetheredNaiType;)Z
    .locals 3
    .parameter "tetheredNai"

    .prologue
    .line 580
    const-string/jumbo v0, "setMipTetheredNaiProf"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 581
    invoke-virtual {p0}, Lcom/huawei/android/hwnv/MipTetheredNaiType;->toDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 582
    const/16 v0, 0xb09

    invoke-virtual {p0}, Lcom/huawei/android/hwnv/MipTetheredNaiType;->getNvSize()B

    move-result v1

    invoke-virtual {p0}, Lcom/huawei/android/hwnv/MipTetheredNaiType;->toByteArray()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNV(IB[B)Z

    move-result v0

    return v0
.end method

.method private static native setNV(IB[B)Z
.end method

.method public static setNVAKey(Lcom/huawei/android/hwnv/AKeyTypeInfo;)Z
    .locals 3
    .parameter "aKeyInfo"

    .prologue
    .line 631
    const-string/jumbo v0, "setNVAKey"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 632
    invoke-virtual {p0}, Lcom/huawei/android/hwnv/AKeyTypeInfo;->toDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 633
    const/16 v0, 0x19

    invoke-virtual {p0}, Lcom/huawei/android/hwnv/AKeyTypeInfo;->getAKeySize()B

    move-result v1

    invoke-virtual {p0}, Lcom/huawei/android/hwnv/AKeyTypeInfo;->toByteArray()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNV(IB[B)Z

    move-result v0

    return v0
.end method

.method public static setNVActivationDate(J)Z
    .locals 4
    .parameter "date"

    .prologue
    .line 295
    const-string/jumbo v1, "setNVActivationDate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 296
    new-instance v0, Lcom/huawei/android/hwnv/NvInteger;

    invoke-direct {v0, p0, p1}, Lcom/huawei/android/hwnv/NvInteger;-><init>(J)V

    .line 297
    .local v0, out:Lcom/huawei/android/hwnv/NvInteger;
    invoke-virtual {v0}, Lcom/huawei/android/hwnv/NvInteger;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 298
    const v1, 0xea79

    invoke-virtual {v0}, Lcom/huawei/android/hwnv/NvInteger;->getNvSize()B

    move-result v2

    invoke-virtual {v0}, Lcom/huawei/android/hwnv/NvInteger;->toByteArray()[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNV(IB[B)Z

    move-result v1

    return v1
.end method

.method public static setNVActivationDateData(Ljava/util/Date;)Z
    .locals 7
    .parameter "date"

    .prologue
    .line 336
    const-string/jumbo v3, "setNVActivationDateData"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v1, v3, v5

    .line 340
    .local v1, time:J
    new-instance v0, Lcom/huawei/android/hwnv/NvInteger;

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/hwnv/NvInteger;-><init>(J)V

    .line 341
    .local v0, out:Lcom/huawei/android/hwnv/NvInteger;
    invoke-virtual {v0}, Lcom/huawei/android/hwnv/NvInteger;->toDebugString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 342
    const v3, 0xea79

    invoke-virtual {v0}, Lcom/huawei/android/hwnv/NvInteger;->getNvSize()B

    move-result v4

    invoke-virtual {v0}, Lcom/huawei/android/hwnv/NvInteger;->toByteArray()[B

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNV(IB[B)Z

    move-result v3

    return v3
.end method

.method private static setNVBandPref(BS)Z
    .locals 4
    .parameter "nam"
    .parameter "band"

    .prologue
    const/4 v3, 0x3

    .line 848
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 849
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 850
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 851
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 852
    const/16 v1, 0x1b9

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNV(IB[B)Z

    move-result v1

    return v1
.end method

.method private static setNVBandPref1631(BS)Z
    .locals 4
    .parameter "nam"
    .parameter "band"

    .prologue
    const/4 v3, 0x3

    .line 882
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 883
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 884
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 885
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 886
    const/16 v1, 0x3b2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNV(IB[B)Z

    move-result v1

    return v1
.end method

.method private static setNVBandPref3263(BI)Z
    .locals 4
    .parameter "nam"
    .parameter "band"

    .prologue
    const/4 v3, 0x5

    .line 916
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 917
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 918
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 919
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 920
    const/16 v1, 0xb8a

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNV(IB[B)Z

    move-result v1

    return v1
.end method

.method public static setNVCallLog(Lcom/huawei/android/hwnv/CallLogTypeInfo;)Z
    .locals 3
    .parameter "callLog"

    .prologue
    .line 485
    const-string/jumbo v0, "setNVCallLog"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p0}, Lcom/huawei/android/hwnv/CallLogTypeInfo;->toDebugString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 487
    const v0, 0xea76

    invoke-virtual {p0}, Lcom/huawei/android/hwnv/CallLogTypeInfo;->getNvSize()B

    move-result v1

    invoke-virtual {p0}, Lcom/huawei/android/hwnv/CallLogTypeInfo;->toByteArray()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNV(IB[B)Z

    move-result v0

    return v0
.end method

.method public static setNVHacMode(B)Z
    .locals 4
    .parameter "hac_mode"

    .prologue
    .line 127
    const-string/jumbo v1, "setNVHacMode"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/huawei/android/hwnv/NvByte;

    int-to-short v1, p0

    invoke-direct {v0, v1}, Lcom/huawei/android/hwnv/NvByte;-><init>(S)V

    .line 129
    .local v0, out:Lcom/huawei/android/hwnv/NvByte;
    invoke-virtual {v0}, Lcom/huawei/android/hwnv/NvByte;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 130
    const v1, 0xea74

    invoke-virtual {v0}, Lcom/huawei/android/hwnv/NvByte;->getNvSize()B

    move-result v2

    invoke-virtual {v0}, Lcom/huawei/android/hwnv/NvByte;->toByteArray()[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNV(IB[B)Z

    move-result v1

    return v1
.end method

.method public static setNVInterface(CB[B)Z
    .locals 1
    .parameter "nvItem"
    .parameter "nvSize"
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 89
    if-eqz p2, :cond_0

    if-lez p1, :cond_0

    const/16 v0, 0x7d

    if-ge v0, p1, :cond_1

    .line 90
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 92
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNV(IB[B)Z

    move-result v0

    return v0
.end method

.method private static setNVRFBCCONFIG(J)Z
    .locals 4
    .parameter "value"

    .prologue
    const/16 v3, 0x8

    .line 813
    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 814
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 815
    invoke-virtual {v0, p0, p1}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 816
    const/16 v1, 0x755

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v1, v3, v2}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNV(IB[B)Z

    move-result v1

    return v1
.end method

.method public static setNVUIMDeviceID()Z
    .locals 5

    .prologue
    const/16 v4, 0x8

    .line 449
    const-string/jumbo v2, "setNVUIMDeviceID Modem side will set data auto!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 450
    new-array v1, v4, [B

    .line 451
    .local v1, uimDeviceID:[B
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 452
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 453
    const v2, 0xea6b

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNV(IB[B)Z

    move-result v2

    return v2
.end method

.method public static setNVWarrantyDate(J)Z
    .locals 4
    .parameter "warrantyDate"

    .prologue
    .line 256
    const-string/jumbo v1, "setNVWarrantyDate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 257
    new-instance v0, Lcom/huawei/android/hwnv/NvInteger;

    invoke-direct {v0, p0, p1}, Lcom/huawei/android/hwnv/NvInteger;-><init>(J)V

    .line 258
    .local v0, out:Lcom/huawei/android/hwnv/NvInteger;
    invoke-virtual {v0}, Lcom/huawei/android/hwnv/NvInteger;->toDebugString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/huawei/android/hwnv/HWNVFuncation;->vLog(Ljava/lang/String;)V

    .line 259
    const v1, 0xea71

    invoke-virtual {v0}, Lcom/huawei/android/hwnv/NvInteger;->getNvSize()B

    move-result v2

    invoke-virtual {v0}, Lcom/huawei/android/hwnv/NvInteger;->toByteArray()[B

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/huawei/android/hwnv/HWNVFuncation;->setNV(IB[B)Z

    move-result v1

    return v1
.end method

.method private static vLog(Ljava/lang/String;)V
    .locals 1
    .parameter "logString"

    .prologue
    .line 50
    const-string v0, "HWNVFuncation"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method
