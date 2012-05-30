.class final Landroid/telephony/CdmaEmergencyMessage$1;
.super Ljava/lang/Object;
.source "CdmaEmergencyMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/CdmaEmergencyMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/telephony/CdmaEmergencyMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CdmaEmergencyMessage;
    .locals 2
    .parameter "in"

    .prologue
    .line 146
    new-instance v0, Landroid/telephony/CdmaEmergencyMessage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/telephony/CdmaEmergencyMessage;-><init>(Landroid/os/Parcel;Landroid/telephony/CdmaEmergencyMessage$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Landroid/telephony/CdmaEmergencyMessage$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/CdmaEmergencyMessage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/CdmaEmergencyMessage;
    .locals 1
    .parameter "size"

    .prologue
    .line 150
    new-array v0, p1, [Landroid/telephony/CdmaEmergencyMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 144
    invoke-virtual {p0, p1}, Landroid/telephony/CdmaEmergencyMessage$1;->newArray(I)[Landroid/telephony/CdmaEmergencyMessage;

    move-result-object v0

    return-object v0
.end method
