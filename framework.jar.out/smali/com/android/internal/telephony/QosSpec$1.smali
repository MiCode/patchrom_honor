.class final Lcom/android/internal/telephony/QosSpec$1;
.super Ljava/lang/Object;
.source "QosSpec.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/QosSpec;
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
        "Lcom/android/internal/telephony/QosSpec;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 779
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/QosSpec;
    .locals 9
    .parameter "in"

    .prologue
    .line 781
    new-instance v6, Lcom/android/internal/telephony/QosSpec;

    invoke-direct {v6}, Lcom/android/internal/telephony/QosSpec;-><init>()V

    .line 782
    .local v6, qosSpec:Lcom/android/internal/telephony/QosSpec;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    invoke-virtual {v6, v8}, Lcom/android/internal/telephony/QosSpec;->setUserData(I)V

    .line 783
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, nPipes:I
    move v4, v3

    .line 784
    .end local v3           #nPipes:I
    .local v4, nPipes:I
    :goto_0
    add-int/lit8 v3, v4, -0x1

    .end local v4           #nPipes:I
    .restart local v3       #nPipes:I
    if-eqz v4, :cond_1

    .line 785
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 786
    .local v1, mapSize:I
    invoke-virtual {v6}, Lcom/android/internal/telephony/QosSpec;->createPipe()Lcom/android/internal/telephony/QosSpec$QosPipe;

    move-result-object v5

    .local v5, pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    move v2, v1

    .line 787
    .end local v1           #mapSize:I
    .local v2, mapSize:I
    :goto_1
    add-int/lit8 v1, v2, -0x1

    .end local v2           #mapSize:I
    .restart local v1       #mapSize:I
    if-eqz v2, :cond_0

    .line 788
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 789
    .local v0, key:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 790
    .local v7, value:Ljava/lang/String;
    invoke-virtual {v5, v0, v7}, Lcom/android/internal/telephony/QosSpec$QosPipe;->put(ILjava/lang/String;)V

    move v2, v1

    .line 791
    .end local v1           #mapSize:I
    .restart local v2       #mapSize:I
    goto :goto_1

    .end local v0           #key:I
    .end local v2           #mapSize:I
    .end local v7           #value:Ljava/lang/String;
    .restart local v1       #mapSize:I
    :cond_0
    move v4, v3

    .line 792
    .end local v3           #nPipes:I
    .restart local v4       #nPipes:I
    goto :goto_0

    .line 793
    .end local v1           #mapSize:I
    .end local v4           #nPipes:I
    .end local v5           #pipe:Lcom/android/internal/telephony/QosSpec$QosPipe;
    .restart local v3       #nPipes:I
    :cond_1
    return-object v6
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 779
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QosSpec$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/QosSpec;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/android/internal/telephony/QosSpec;
    .locals 1
    .parameter "size"

    .prologue
    .line 800
    new-array v0, p1, [Lcom/android/internal/telephony/QosSpec;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 779
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/QosSpec$1;->newArray(I)[Lcom/android/internal/telephony/QosSpec;

    move-result-object v0

    return-object v0
.end method
