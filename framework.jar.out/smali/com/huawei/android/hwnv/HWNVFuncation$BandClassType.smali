.class public final enum Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;
.super Ljava/lang/Enum;
.source "HWNVFuncation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/android/hwnv/HWNVFuncation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BandClassType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;

.field public static final enum BAND_CLASS_10:Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;

.field public static final enum BAND_CLASS_MAX:Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;

    const-string v1, "BAND_CLASS_10"

    invoke-direct {v0, v1, v2}, Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;->BAND_CLASS_10:Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;

    .line 44
    new-instance v0, Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;

    const-string v1, "BAND_CLASS_MAX"

    invoke-direct {v0, v1, v3}, Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;->BAND_CLASS_MAX:Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;

    .line 42
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;

    sget-object v1, Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;->BAND_CLASS_10:Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;->BAND_CLASS_MAX:Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;->$VALUES:[Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;
    .locals 1
    .parameter "name"

    .prologue
    .line 42
    const-class v0, Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;

    return-object v0
.end method

.method public static values()[Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;->$VALUES:[Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;

    invoke-virtual {v0}, [Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huawei/android/hwnv/HWNVFuncation$BandClassType;

    return-object v0
.end method
