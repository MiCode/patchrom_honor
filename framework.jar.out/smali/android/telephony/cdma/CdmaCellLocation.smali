.class public Landroid/telephony/cdma/CdmaCellLocation;
.super Landroid/telephony/CellLocation;
.source "CdmaCellLocation.java"


# static fields
.field public static final INVALID_LAT_LONG:I = 0x7fffffff


# instance fields
.field private mBaseStationId:I

.field private mBaseStationLatitude:I

.field private mBaseStationLongitude:I

.field private mNetworkId:I

.field private mSystemId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 57
    invoke-direct {p0}, Landroid/telephony/CellLocation;-><init>()V

    .line 26
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    .line 39
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    .line 47
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    .line 49
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    .line 50
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    .line 58
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    .line 59
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    .line 60
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    .line 61
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    .line 62
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundle"

    .prologue
    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 68
    invoke-direct {p0}, Landroid/telephony/CellLocation;-><init>()V

    .line 26
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    .line 39
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    .line 47
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    .line 49
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    .line 50
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    .line 69
    const-string v0, "baseStationId"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    .line 70
    const-string v0, "baseStationLatitude"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    .line 71
    const-string v0, "baseStationLongitude"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    .line 72
    const-string/jumbo v0, "systemId"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    .line 73
    const-string/jumbo v0, "networkId"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    .line 74
    return-void
.end method

.method private static equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 191
    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter "o"

    .prologue
    const/4 v3, 0x0

    .line 157
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    .local v2, s:Landroid/telephony/cdma/CdmaCellLocation;
    if-nez p1, :cond_1

    .line 166
    .end local v2           #s:Landroid/telephony/cdma/CdmaCellLocation;
    :cond_0
    :goto_0
    return v3

    .line 158
    :catch_0
    move-exception v1

    .line 159
    .local v1, ex:Ljava/lang/ClassCastException;
    goto :goto_0

    .line 166
    .end local v1           #ex:Ljava/lang/ClassCastException;
    .restart local v2       #s:Landroid/telephony/cdma/CdmaCellLocation;
    :cond_1
    iget v4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/cdma/CdmaCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/cdma/CdmaCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/cdma/CdmaCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/cdma/CdmaCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v2, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/cdma/CdmaCellLocation;->equalsHandlesNulls(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0
.end method

.method public fillInNotifierBundle(Landroid/os/Bundle;)V
    .locals 2
    .parameter "bundleToFill"

    .prologue
    .line 200
    const-string v0, "baseStationId"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 201
    const-string v0, "baseStationLatitude"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    const-string v0, "baseStationLongitude"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    const-string/jumbo v0, "systemId"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 204
    const-string/jumbo v0, "networkId"

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 205
    return-void
.end method

.method public getBaseStationId()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    return v0
.end method

.method public getBaseStationLatitude()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    return v0
.end method

.method public getBaseStationLongitude()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    return v0
.end method

.method public getNetworkId()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    return v0
.end method

.method public getSystemId()I
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 148
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    xor-int/2addr v0, v1

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 3

    .prologue
    const v2, 0x7fffffff

    const/4 v1, -0x1

    .line 211
    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCellLocationData(III)V
    .locals 0
    .parameter "baseStationId"
    .parameter "baseStationLatitude"
    .parameter "baseStationLongitude"

    .prologue
    .line 128
    iput p1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    .line 129
    iput p2, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    .line 130
    iput p3, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    .line 131
    return-void
.end method

.method public setCellLocationData(IIIII)V
    .locals 0
    .parameter "baseStationId"
    .parameter "baseStationLatitude"
    .parameter "baseStationLongitude"
    .parameter "systemId"
    .parameter "networkId"

    .prologue
    .line 139
    iput p1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    .line 140
    iput p2, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    .line 141
    iput p3, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    .line 142
    iput p4, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    .line 143
    iput p5, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    .line 144
    return-void
.end method

.method public setStateInvalid()V
    .locals 2

    .prologue
    const v1, 0x7fffffff

    const/4 v0, -0x1

    .line 115
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    .line 116
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    .line 117
    iput v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    .line 118
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    .line 119
    iput v0, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    .line 120
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLatitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mBaseStationLongitude:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mSystemId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/telephony/cdma/CdmaCellLocation;->mNetworkId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
