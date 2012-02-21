.class public final Landroid/nfc/Tag;
.super Ljava/lang/Object;
.source "Tag.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/nfc/Tag;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mConnectedTechnology:I

.field final mId:[B

.field final mServiceHandle:I

.field final mTagService:Landroid/nfc/INfcTag;

.field final mTechExtras:[Landroid/os/Bundle;

.field final mTechList:[I

.field final mTechStringList:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 369
    new-instance v0, Landroid/nfc/Tag$1;

    invoke-direct {v0}, Landroid/nfc/Tag$1;-><init>()V

    sput-object v0, Landroid/nfc/Tag;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>([B[I[Landroid/os/Bundle;ILandroid/nfc/INfcTag;)V
    .locals 2
    .parameter "id"
    .parameter "techList"
    .parameter "techListExtras"
    .parameter "serviceHandle"
    .parameter "tagService"

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    if-nez p2, :cond_0

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rawTargets cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_0
    iput-object p1, p0, Landroid/nfc/Tag;->mId:[B

    .line 130
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/Tag;->mTechList:[I

    .line 131
    invoke-direct {p0, p2}, Landroid/nfc/Tag;->generateTechStringList([I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/nfc/Tag;->mTechStringList:[Ljava/lang/String;

    .line 133
    array-length v0, p2

    invoke-static {p3, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/os/Bundle;

    iput-object v0, p0, Landroid/nfc/Tag;->mTechExtras:[Landroid/os/Bundle;

    .line 134
    iput p4, p0, Landroid/nfc/Tag;->mServiceHandle:I

    .line 135
    iput-object p5, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Landroid/nfc/Tag;->mConnectedTechnology:I

    .line 138
    return-void
.end method

.method public static createMockTag([B[I[Landroid/os/Bundle;)Landroid/nfc/Tag;
    .locals 6
    .parameter "id"
    .parameter "techList"
    .parameter "techListExtras"

    .prologue
    .line 152
    new-instance v0, Landroid/nfc/Tag;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Landroid/nfc/Tag;-><init>([B[I[Landroid/os/Bundle;ILandroid/nfc/INfcTag;)V

    return-object v0
.end method

.method private generateTechStringList([I)[Ljava/lang/String;
    .locals 6
    .parameter "techList"

    .prologue
    .line 156
    array-length v1, p1

    .line 157
    .local v1, size:I
    new-array v2, v1, [Ljava/lang/String;

    .line 158
    .local v2, strings:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 159
    aget v3, p1, v0

    packed-switch v3, :pswitch_data_0

    .line 188
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown tech type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 161
    :pswitch_0
    const-class v3, Landroid/nfc/tech/IsoDep;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 158
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 164
    :pswitch_1
    const-class v3, Landroid/nfc/tech/MifareClassic;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 167
    :pswitch_2
    const-class v3, Landroid/nfc/tech/MifareUltralight;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 170
    :pswitch_3
    const-class v3, Landroid/nfc/tech/Ndef;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 173
    :pswitch_4
    const-class v3, Landroid/nfc/tech/NdefFormatable;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 176
    :pswitch_5
    const-class v3, Landroid/nfc/tech/NfcA;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 179
    :pswitch_6
    const-class v3, Landroid/nfc/tech/NfcB;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 182
    :pswitch_7
    const-class v3, Landroid/nfc/tech/NfcF;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 185
    :pswitch_8
    const-class v3, Landroid/nfc/tech/NfcV;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 191
    :cond_0
    return-object v2

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method static readBytesWithNull(Landroid/os/Parcel;)[B
    .locals 2
    .parameter "in"

    .prologue
    .line 330
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 331
    .local v0, len:I
    const/4 v1, 0x0

    .line 332
    .local v1, result:[B
    if-ltz v0, :cond_0

    .line 333
    new-array v1, v0, [B

    .line 334
    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 336
    :cond_0
    return-object v1
.end method

.method static writeBytesWithNull(Landroid/os/Parcel;[B)V
    .locals 1
    .parameter "out"
    .parameter "b"

    .prologue
    .line 340
    if-nez p1, :cond_0

    .line 341
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 346
    :goto_0
    return-void

    .line 344
    :cond_0
    array-length v0, p1

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    invoke-virtual {p0, p1}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 350
    const/4 v0, 0x0

    return v0
.end method

.method public getConnectedTechnology()I
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Landroid/nfc/Tag;->mConnectedTechnology:I

    return v0
.end method

.method public getId()[B
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Landroid/nfc/Tag;->mId:[B

    return-object v0
.end method

.method public getServiceHandle()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Landroid/nfc/Tag;->mServiceHandle:I

    return v0
.end method

.method public getTagService()Landroid/nfc/INfcTag;
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    return-object v0
.end method

.method public getTechExtras(I)Landroid/os/Bundle;
    .locals 3
    .parameter "tech"

    .prologue
    .line 292
    const/4 v1, -0x1

    .line 293
    .local v1, pos:I
    const/4 v0, 0x0

    .local v0, idx:I
    :goto_0
    iget-object v2, p0, Landroid/nfc/Tag;->mTechList:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 294
    iget-object v2, p0, Landroid/nfc/Tag;->mTechList:[I

    aget v2, v2, v0

    if-ne v2, p1, :cond_1

    .line 295
    move v1, v0

    .line 299
    :cond_0
    if-gez v1, :cond_2

    .line 300
    const/4 v2, 0x0

    .line 303
    :goto_1
    return-object v2

    .line 293
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 303
    :cond_2
    iget-object v2, p0, Landroid/nfc/Tag;->mTechExtras:[Landroid/os/Bundle;

    aget-object v2, v2, v1

    goto :goto_1
.end method

.method public getTechList()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Landroid/nfc/Tag;->mTechStringList:[Ljava/lang/String;

    return-object v0
.end method

.method public hasTech(I)Z
    .locals 5
    .parameter "techType"

    .prologue
    .line 284
    iget-object v0, p0, Landroid/nfc/Tag;->mTechList:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, v0, v1

    .line 285
    .local v3, tech:I
    if-ne v3, p1, :cond_0

    const/4 v4, 0x1

    .line 287
    .end local v3           #tech:I
    :goto_1
    return v4

    .line 284
    .restart local v3       #tech:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 287
    .end local v3           #tech:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public rediscover()Landroid/nfc/Tag;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 265
    invoke-virtual {p0}, Landroid/nfc/Tag;->getConnectedTechnology()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 266
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Close connection to the technology first!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 270
    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    invoke-virtual {p0}, Landroid/nfc/Tag;->getServiceHandle()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/nfc/INfcTag;->rediscover(I)Landroid/nfc/Tag;

    move-result-object v1

    .line 271
    .local v1, newTag:Landroid/nfc/Tag;
    if-eqz v1, :cond_1

    .line 272
    return-object v1

    .line 274
    :cond_1
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed to rediscover tag"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v1           #newTag:Landroid/nfc/Tag;
    :catch_0
    move-exception v0

    .line 277
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/io/IOException;

    const-string v3, "NFC service dead"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public declared-synchronized setConnectedTechnology(I)V
    .locals 2
    .parameter "technology"

    .prologue
    .line 404
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/nfc/Tag;->mConnectedTechnology:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 405
    iput p1, p0, Landroid/nfc/Tag;->mConnectedTechnology:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 409
    monitor-exit p0

    return-void

    .line 407
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Close other technology first!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 404
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setTechnologyDisconnected()V
    .locals 1

    .prologue
    .line 426
    const/4 v0, -0x1

    iput v0, p0, Landroid/nfc/Tag;->mConnectedTechnology:I

    .line 427
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "TAG: Tech ["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    .local v2, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/nfc/Tag;->getTechList()[Ljava/lang/String;

    move-result-object v3

    .line 318
    .local v3, techList:[Ljava/lang/String;
    array-length v1, v3

    .line 319
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 320
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    add-int/lit8 v4, v1, -0x1

    if-ge v0, v4, :cond_0

    .line 322
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_1
    const-string v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v1, 0x0

    .line 356
    iget-object v2, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 358
    .local v0, isMock:I
    :goto_0
    iget-object v2, p0, Landroid/nfc/Tag;->mId:[B

    invoke-static {p1, v2}, Landroid/nfc/Tag;->writeBytesWithNull(Landroid/os/Parcel;[B)V

    .line 359
    iget-object v2, p0, Landroid/nfc/Tag;->mTechList:[I

    array-length v2, v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    iget-object v2, p0, Landroid/nfc/Tag;->mTechList:[I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 361
    iget-object v2, p0, Landroid/nfc/Tag;->mTechExtras:[Landroid/os/Bundle;

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 362
    iget v1, p0, Landroid/nfc/Tag;->mServiceHandle:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 363
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 364
    if-nez v0, :cond_0

    .line 365
    iget-object v1, p0, Landroid/nfc/Tag;->mTagService:Landroid/nfc/INfcTag;

    invoke-interface {v1}, Landroid/nfc/INfcTag;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 367
    :cond_0
    return-void

    .end local v0           #isMock:I
    :cond_1
    move v0, v1

    .line 356
    goto :goto_0
.end method
