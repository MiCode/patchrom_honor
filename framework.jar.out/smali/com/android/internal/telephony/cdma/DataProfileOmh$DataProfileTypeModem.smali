.class final enum Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;
.super Ljava/lang/Enum;
.source "DataProfileOmh.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/DataProfileOmh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DataProfileTypeModem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

.field public static final enum PROFILE_TYPE_LBS:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

.field public static final enum PROFILE_TYPE_MMS:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

.field public static final enum PROFILE_TYPE_TETHERED:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

.field public static final enum PROFILE_TYPE_UNSPECIFIED:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;


# instance fields
.field id:I

.field serviceType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 61
    new-instance v0, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    const-string v1, "PROFILE_TYPE_UNSPECIFIED"

    const-string v2, "default"

    invoke-direct {v0, v1, v6, v4, v2}, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_UNSPECIFIED:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    .line 62
    new-instance v0, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    const-string v1, "PROFILE_TYPE_MMS"

    const-string/jumbo v2, "mms"

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_MMS:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    .line 63
    new-instance v0, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    const-string v1, "PROFILE_TYPE_LBS"

    const/16 v2, 0x20

    const-string/jumbo v3, "supl"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_LBS:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    .line 64
    new-instance v0, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    const-string v1, "PROFILE_TYPE_TETHERED"

    const/16 v2, 0x40

    const-string v3, "dun"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_TETHERED:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    sget-object v1, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_UNSPECIFIED:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_MMS:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_LBS:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_TETHERED:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->$VALUES:[Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "i"
    .parameter "serviceType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput p3, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->id:I

    .line 71
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->serviceType:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public static getDataProfileTypeModem(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;
    .locals 1
    .parameter "serviceType"

    .prologue
    .line 84
    const-string v0, "default"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_UNSPECIFIED:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    .line 94
    :goto_0
    return-object v0

    .line 86
    :cond_0
    const-string/jumbo v0, "mms"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 87
    sget-object v0, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_MMS:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    goto :goto_0

    .line 88
    :cond_1
    const-string/jumbo v0, "supl"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    sget-object v0, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_LBS:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    goto :goto_0

    .line 90
    :cond_2
    const-string v0, "dun"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    sget-object v0, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_TETHERED:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    goto :goto_0

    .line 94
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->PROFILE_TYPE_UNSPECIFIED:Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;
    .locals 1
    .parameter "name"

    .prologue
    .line 59
    const-class v0, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->$VALUES:[Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;

    return-object v0
.end method


# virtual methods
.method public getDataServiceType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->serviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getid()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/android/internal/telephony/cdma/DataProfileOmh$DataProfileTypeModem;->id:I

    return v0
.end method
