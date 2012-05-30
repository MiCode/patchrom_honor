.class final Landroid/net/LinkCapabilities$1;
.super Ljava/lang/Object;
.source "LinkCapabilities.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkCapabilities;
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
        "Landroid/net/LinkCapabilities;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 562
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkCapabilities;
    .locals 7
    .parameter "in"

    .prologue
    .line 564
    new-instance v0, Landroid/net/LinkCapabilities;

    invoke-direct {v0}, Landroid/net/LinkCapabilities;-><init>()V

    .line 565
    .local v0, capabilities:Landroid/net/LinkCapabilities;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .local v2, size:I
    move v3, v2

    .line 566
    .end local v2           #size:I
    .local v3, size:I
    :goto_0
    add-int/lit8 v2, v3, -0x1

    .end local v3           #size:I
    .restart local v2       #size:I
    if-eqz v3, :cond_0

    .line 567
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 568
    .local v1, key:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 569
    .local v4, value:Ljava/lang/String;
    iget-object v5, v0, Landroid/net/LinkCapabilities;->mCapabilities:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v3, v2

    .line 570
    .end local v2           #size:I
    .restart local v3       #size:I
    goto :goto_0

    .line 571
    .end local v1           #key:I
    .end local v3           #size:I
    .end local v4           #value:Ljava/lang/String;
    .restart local v2       #size:I
    :cond_0
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 562
    invoke-virtual {p0, p1}, Landroid/net/LinkCapabilities$1;->createFromParcel(Landroid/os/Parcel;)Landroid/net/LinkCapabilities;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Landroid/net/LinkCapabilities;
    .locals 1
    .parameter "size"

    .prologue
    .line 575
    new-array v0, p1, [Landroid/net/LinkCapabilities;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 562
    invoke-virtual {p0, p1}, Landroid/net/LinkCapabilities$1;->newArray(I)[Landroid/net/LinkCapabilities;

    move-result-object v0

    return-object v0
.end method
