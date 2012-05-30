.class public Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;
.super Ljava/lang/Object;
.source "CdmaInformationRecords.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaInformationRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CdmaDisplayInfoRec"
.end annotation


# instance fields
.field public alpha:Ljava/lang/String;

.field public id:I

.field public itemrecs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "alpha"

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 261
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->id:I

    .line 262
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->alpha:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public constructor <init>(I[B)V
    .locals 3
    .parameter "id"
    .parameter "data"

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    const-string v0, "CdmaInformationRecords"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CdmaDisplayInfoRec("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iput p1, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->id:I

    .line 267
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->alpha:Ljava/lang/String;

    .line 268
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->readItems([B)V

    .line 269
    return-void
.end method

.method private readItems([B)V
    .locals 13
    .parameter "data"

    .prologue
    .line 272
    const-string v10, "CdmaInformationRecords"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "CdmaDisplayInfoRec.readItems(len: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, p1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    const-string v10, "CdmaInformationRecords"

    invoke-static {p1}, Lcom/android/internal/util/HexDump;->dumpHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/4 v7, 0x0

    .line 276
    .local v7, read:I
    const/4 v6, 0x0

    .line 277
    .local v6, linelen:I
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 278
    .local v0, buffer:Ljava/lang/StringBuffer;
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->itemrecs:Ljava/util/Vector;

    if-nez v10, :cond_0

    .line 279
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    iput-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->itemrecs:Ljava/util/Vector;

    .line 280
    :cond_0
    const/4 v7, 0x0

    :goto_0
    array-length v10, p1

    if-ge v7, v10, :cond_5

    .line 281
    add-int/lit8 v8, v7, 0x1

    .end local v7           #read:I
    .local v8, read:I
    aget-byte v10, p1, v7

    invoke-static {v10}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->fromByte(B)Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;

    move-result-object v4

    .line 282
    .local v4, itag:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;
    if-nez v4, :cond_1

    .line 283
    const-string v10, "CdmaInformationRecords"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "itag for ["

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int/lit8 v12, v8, -0x1

    aget-byte v12, p1, v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "] is null!!!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    :cond_1
    add-int/lit8 v7, v8, 0x1

    .end local v8           #read:I
    .restart local v7       #read:I
    aget-byte v3, p1, v8

    .line 286
    .local v3, ilen:B
    const/4 v2, 0x0

    .line 287
    .local v2, idata:[B
    sget-object v10, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$1;->$SwitchMap$com$android$internal$telephony$cdma$CdmaInformationRecords$ExtendedDisplayTag:[I

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_0

    .line 309
    new-array v2, v3, [B

    .line 310
    const/4 v1, 0x0

    .local v1, i:I
    move v8, v7

    .end local v7           #read:I
    .restart local v8       #read:I
    :goto_1
    if-ge v1, v3, :cond_6

    .line 311
    add-int/lit8 v7, v8, 0x1

    .end local v8           #read:I
    .restart local v7       #read:I
    aget-byte v10, p1, v8

    aput-byte v10, v2, v1

    .line 310
    add-int/lit8 v1, v1, 0x1

    move v8, v7

    .end local v7           #read:I
    .restart local v8       #read:I
    goto :goto_1

    .line 292
    .end local v1           #i:I
    .end local v8           #read:I
    .restart local v7       #read:I
    :pswitch_0
    const-string v10, "CdmaInformationRecords"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "readItems: got a DISPLAY_TAG_BLANK(ilen:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, v3, :cond_3

    .line 294
    const-string v10, " "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 297
    const/16 v10, 0x28

    if-lt v6, v10, :cond_2

    .line 298
    const-string v10, "\r\n"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 299
    const/4 v6, 0x0

    .line 293
    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 304
    .end local v1           #i:I
    :pswitch_1
    const-string v10, "CdmaInformationRecords"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "readItems: got a DISPLAY_TAG_SKIP(ilen: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    :cond_3
    :goto_3
    const-string v10, "CdmaInformationRecords"

    const-string/jumbo v11, "readItems: Creating a new DisplayItemRec"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    new-instance v5, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;

    invoke-direct {v5, v4, v3, v2}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;-><init>(Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;B[B)V

    .line 316
    .local v5, item:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;
    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;->getDataAsString()Ljava/lang/String;

    move-result-object v9

    .line 317
    .local v9, s:Ljava/lang/String;
    if-eqz v9, :cond_4

    .line 318
    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 319
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v6, v10

    .line 321
    :cond_4
    iget-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->itemrecs:Ljava/util/Vector;

    invoke-virtual {v10, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 322
    const-string v10, "CdmaInformationRecords"

    const-string/jumbo v11, "readItems: Added a new DisplayItemRec"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 324
    .end local v2           #idata:[B
    .end local v3           #ilen:B
    .end local v4           #itag:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;
    .end local v5           #item:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;
    .end local v9           #s:Ljava/lang/String;
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->alpha:Ljava/lang/String;

    .line 325
    return-void

    .end local v7           #read:I
    .restart local v1       #i:I
    .restart local v2       #idata:[B
    .restart local v3       #ilen:B
    .restart local v4       #itag:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayTag;
    .restart local v8       #read:I
    :cond_6
    move v7, v8

    .end local v8           #read:I
    .restart local v7       #read:I
    goto :goto_3

    .line 287
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public isExtended()Z
    .locals 2

    .prologue
    .line 328
    iget v0, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->id:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 333
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v3, 0xc8

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 334
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->isExtended()Z

    move-result v3

    if-nez v3, :cond_0

    .line 335
    const-string v3, "CdmaDisplayInfoRec: { id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 336
    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->id:I

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->idToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 337
    const-string v3, ", alpha: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->alpha:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    const-string v3, " }"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 340
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 350
    :goto_0
    return-object v3

    .line 342
    :cond_0
    const-string v3, "CdmaDisplayInfoRec(extended): { id: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    iget v3, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->id:I

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords;->idToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$CdmaDisplayInfoRec;->itemrecs:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;

    .line 345
    .local v2, rec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;
    const-string v3, " ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 346
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 347
    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 349
    .end local v2           #rec:Lcom/android/internal/telephony/cdma/CdmaInformationRecords$ExtendedDisplayItemRec;
    :cond_1
    const-string v3, " }"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method
