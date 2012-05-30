.class synthetic Lcom/huawei/android/hwnv/HWNVFuncation$1;
.super Ljava/lang/Object;
.source "HWNVFuncation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hwnv/HWNVFuncation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$huawei$android$hwnv$HWNVFuncation$BandClassType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 929
    invoke-static {}, Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;->values()[Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/huawei/android/hwnv/HWNVFuncation$1;->$SwitchMap$com$huawei$android$hwnv$HWNVFuncation$BandClassType:[I

    :try_start_0
    sget-object v0, Lcom/huawei/android/hwnv/HWNVFuncation$1;->$SwitchMap$com$huawei$android$hwnv$HWNVFuncation$BandClassType:[I

    sget-object v1, Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;->BAND_CLASS_10:Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;

    invoke-virtual {v1}, Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
