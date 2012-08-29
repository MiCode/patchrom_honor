.class public Lcom/android/internal/telephony/AdnRecord;
.super Ljava/lang/Object;
.source "AdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final ADN_CAPABILITY_ID:I = 0xc

.field static final ADN_DIALING_NUMBER_END:I = 0xb

.field static final ADN_DIALING_NUMBER_START:I = 0x2

.field static final ADN_EXTENSION_ID:I = 0xd

.field static final ADN_TON_AND_NPI:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final EXT_RECORD_TYPE_MASK:I = 0x3

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field static final MAX_NUMBER_SIZE_BYTES:I = 0xb


# instance fields
.field alphaTag:Ljava/lang/String;

.field efid:I

.field emails:[Ljava/lang/String;

.field extRecord:I

.field number:Ljava/lang/String;

.field recordNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    new-instance v0, Lcom/android/internal/telephony/AdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/AdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/AdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 44
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 46
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 127
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 128
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 129
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 130
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 131
    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 132
    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 46
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 119
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 120
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 121
    iput-object p3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 122
    iput-object p4, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 123
    iput-object p5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 124
    return-void
.end method

.method public constructor <init>(II[B)V
    .locals 1
    .parameter "efid"
    .parameter "recordNumber"
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 46
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 105
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 106
    iput p2, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 107
    invoke-direct {p0, p3}, Lcom/android/internal/telephony/AdnRecord;->parseRecord([B)V

    .line 108
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "alphaTag"
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6
    .parameter "alphaTag"
    .parameter "number"
    .parameter "emails"

    .prologue
    const/4 v1, 0x0

    .line 115
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/AdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "record"

    .prologue
    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/AdnRecord;-><init>(II[B)V

    .line 102
    return-void
.end method

.method private parseRecord([B)V
    .locals 6
    .parameter "record"

    .prologue
    const/4 v5, 0x0

    .line 511
    const/4 v3, 0x0

    :try_start_0
    array-length v4, p1

    add-int/lit8 v4, v4, -0xe

    invoke-static {p1, v3, v4}, Lcom/android/internal/telephony/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    array-length v3, p1

    add-int/lit8 v1, v3, -0xe

    .local v1, footerOffset:I
    aget-byte v3, p1, v1

    and-int/lit16 v2, v3, 0xff

    .local v2, numberLength:I
    goto :cond_0

    const/16 v3, 0xb

    if-le v2, v3, :cond_0

    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :goto_0
    return-void

    .restart local v1       #footerOffset:I
    .restart local v2       #numberLength:I
    :cond_0
    add-int/lit8 v3, v1, 0x1

    invoke-static {p1, v3, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 535
    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    .line 537
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 539
    .end local v1           #footerOffset:I
    .end local v2           #numberLength:I
    :catch_0
    move-exception v0

    .line 540
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v3, "GSM"

    const-string v4, "Error parsing AdnRecord"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 541
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 542
    const-string v3, ""

    iput-object v3, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 543
    iput-object v5, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    goto :goto_0
.end method

.method private static stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "s1"
    .parameter "s2"

    .prologue
    .line 199
    if-ne p0, p1, :cond_0

    .line 200
    const/4 v0, 0x1

    .line 208
    :goto_0
    return v0

    .line 202
    :cond_0
    if-nez p0, :cond_1

    .line 203
    const-string p0, ""

    .line 205
    :cond_1
    if-nez p1, :cond_2

    .line 206
    const-string p1, ""

    .line 208
    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public appendExtRecord([B)V
    .locals 4
    .parameter "extRecord"

    .prologue
    const/4 v3, 0x2

    .line 479
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 501
    :cond_0
    :goto_0
    return-void

    .line 483
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 488
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 498
    :catch_0
    move-exception v0

    .line 499
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "GSM"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public buildAdnString(I)[B
    .locals 41
    .parameter "recordSize"

    .prologue
    .line 254
    add-int/lit8 v21, p1, -0xe

    .line 256
    .local v21, footerOffset:I
    const/16 v23, 0x0

    .line 257
    .local v23, gsm7Len:I
    const/16 v22, 0x0

    .line 258
    .local v22, gsm7Converts:I
    const/16 v30, 0x1

    .line 259
    .local v30, ucs80Len:I
    const/16 v29, 0x0

    .line 260
    .local v29, ucs80Converts:I
    const/16 v32, 0x3

    .line 261
    .local v32, ucs81Len:I
    const/16 v31, 0x0

    .line 262
    .local v31, ucs81Converts:I
    const/16 v34, 0x4

    .line 263
    .local v34, ucs82Len:I
    const/16 v33, 0x0

    .line 272
    .local v33, ucs82Converts:I
    const/16 v10, 0x20

    .line 273
    .local v10, baser81:C
    const/16 v12, 0x20

    .line 274
    .local v12, baser82Low:C
    const/16 v11, 0x20

    .line 275
    .local v11, baser82High:C
    const/16 v35, 0x1

    .line 276
    .local v35, useGsm7:Z
    const/16 v36, 0x1

    .line 277
    .local v36, usePattern81:Z
    const/16 v27, 0x0

    .line 278
    .local v27, setPattern81:Z
    const/16 v37, 0x1

    .line 279
    .local v37, usePattern82:Z
    const/16 v28, 0x0

    .line 281
    .local v28, setPattern82:Z
    const/4 v4, 0x0

    .line 282
    .local v4, SIM_CODING_GSM7:I
    const/16 v5, 0x80

    .line 283
    .local v5, SIM_CODING_PURE_UCS2:I
    const/16 v6, 0x81

    .line 284
    .local v6, SIM_CODING_UCS2_HALF_PAGE_1:I
    const/16 v7, 0x82

    .line 286
    .local v7, SIM_CODING_UCS2_HALF_PAGE_2:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    move-object/from16 v38, v0

    if-eqz v38, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v38, v0

    if-nez v38, :cond_2

    .line 287
    :cond_0
    const-string v38, "GSM"

    const-string v39, "[buildAdnString] Empty alpha tag or number"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    move/from16 v0, p1

    new-array v8, v0, [B

    .line 289
    .local v8, adnString:[B
    const/16 v24, 0x0

    .local v24, i:I
    :goto_0
    move/from16 v0, v24

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 290
    const/16 v38, -0x1

    aput-byte v38, v8, v24

    .line 289
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    :cond_1
    move-object v9, v8

    .line 469
    .end local v8           #adnString:[B
    .local v9, adnString:[B
    :goto_1
    return-object v9

    .line 294
    .end local v9           #adnString:[B
    .end local v24           #i:I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v38

    const/16 v39, 0x14

    move/from16 v0, v38

    move/from16 v1, v39

    if-le v0, v1, :cond_3

    .line 296
    const-string v38, "GSM"

    const-string v39, "[buildAdnString] Max length of dialing number is 20"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/16 v40, 0x14

    invoke-virtual/range {v38 .. v40}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    .line 302
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v26

    .line 303
    .local v26, lenTag:I
    const/16 v25, 0x0

    .line 304
    .local v25, index:I
    :goto_2
    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_b

    if-nez v35, :cond_4

    if-nez v36, :cond_4

    if-nez v37, :cond_4

    move/from16 v0, v30

    move/from16 v1, v21

    if-gt v0, v1, :cond_b

    .line 306
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v18

    .line 307
    .local v18, c:C
    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/GsmAlphabet;->UCStoGsm7(C)I

    move-result v19

    .line 308
    .local v19, currGsm7Length:I
    const/16 v38, -0x1

    move/from16 v0, v19

    move/from16 v1, v38

    if-eq v0, v1, :cond_10

    .line 309
    if-eqz v35, :cond_5

    .line 310
    add-int v23, v23, v19

    .line 311
    add-int/lit8 v22, v22, 0x1

    .line 317
    :cond_5
    :goto_3
    if-eqz v36, :cond_7

    move/from16 v0, v32

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 318
    const/16 v38, -0x1

    move/from16 v0, v38

    move/from16 v1, v19

    if-ne v0, v1, :cond_6

    .line 319
    const v38, 0x8000

    and-int v38, v38, v18

    const v39, 0x8000

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_11

    .line 320
    const/16 v36, 0x0

    .line 332
    :cond_6
    :goto_4
    if-eqz v36, :cond_7

    .line 333
    add-int/lit8 v31, v31, 0x1

    .line 334
    const/16 v38, -0x1

    move/from16 v0, v38

    move/from16 v1, v19

    if-ne v0, v1, :cond_13

    .line 335
    add-int/lit8 v32, v32, 0x1

    .line 342
    :cond_7
    :goto_5
    if-eqz v37, :cond_9

    move/from16 v0, v34

    move/from16 v1, v21

    if-ge v0, v1, :cond_9

    .line 343
    const/16 v38, -0x1

    move/from16 v0, v38

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    .line 344
    if-nez v28, :cond_14

    .line 345
    const/16 v28, 0x1

    .line 346
    move/from16 v12, v18

    .line 347
    move/from16 v11, v18

    .line 360
    :cond_8
    :goto_6
    if-eqz v37, :cond_9

    .line 361
    add-int/lit8 v33, v33, 0x1

    .line 362
    const/16 v38, -0x1

    move/from16 v0, v38

    move/from16 v1, v19

    if-ne v0, v1, :cond_17

    .line 363
    add-int/lit8 v34, v34, 0x1

    .line 370
    :cond_9
    :goto_7
    move/from16 v0, v30

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    .line 371
    add-int/lit8 v30, v30, 0x2

    .line 372
    add-int/lit8 v29, v29, 0x1

    .line 375
    :cond_a
    if-eqz v35, :cond_18

    .line 376
    move/from16 v0, v23

    move/from16 v1, v21

    if-lt v0, v1, :cond_19

    .line 393
    .end local v18           #c:C
    .end local v19           #currGsm7Length:I
    :cond_b
    :goto_8
    move/from16 v14, v22

    .line 394
    .local v14, bestConverts:I
    const/16 v16, 0x0

    .line 395
    .local v16, bestMode:I
    move/from16 v15, v23

    .line 396
    .local v15, bestLen:I
    move/from16 v0, v31

    if-ge v14, v0, :cond_c

    .line 397
    move/from16 v14, v31

    .line 398
    const/16 v16, 0x81

    .line 399
    move/from16 v15, v32

    .line 401
    :cond_c
    move/from16 v0, v33

    if-ge v14, v0, :cond_d

    .line 402
    move/from16 v14, v33

    .line 403
    const/16 v16, 0x82

    .line 404
    move/from16 v15, v34

    .line 406
    :cond_d
    move/from16 v0, v29

    if-ge v14, v0, :cond_e

    .line 407
    move/from16 v14, v29

    .line 408
    const/16 v16, 0x80

    .line 409
    move/from16 v15, v30

    .line 413
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v39

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 414
    move/from16 v0, v21

    if-le v15, v0, :cond_f

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    add-int/lit8 v40, v14, -0x1

    invoke-virtual/range {v38 .. v40}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    .line 416
    add-int/lit8 v15, v15, -0x2

    .line 418
    :cond_f
    move/from16 v0, p1

    new-array v8, v0, [B

    .line 419
    .restart local v8       #adnString:[B
    const/16 v24, 0x0

    .restart local v24       #i:I
    :goto_9
    move/from16 v0, v24

    move/from16 v1, p1

    if-ge v0, v1, :cond_1c

    .line 420
    const/16 v38, -0x1

    aput-byte v38, v8, v24

    .line 419
    add-int/lit8 v24, v24, 0x1

    goto :goto_9

    .line 314
    .end local v8           #adnString:[B
    .end local v14           #bestConverts:I
    .end local v15           #bestLen:I
    .end local v16           #bestMode:I
    .end local v24           #i:I
    .restart local v18       #c:C
    .restart local v19       #currGsm7Length:I
    :cond_10
    const/16 v35, 0x0

    goto/16 :goto_3

    .line 322
    :cond_11
    if-nez v27, :cond_12

    .line 323
    const/16 v27, 0x1

    .line 324
    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x7f80

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-char v10, v0

    goto/16 :goto_4

    .line 326
    :cond_12
    move/from16 v0, v18

    and-int/lit16 v0, v0, 0x7f80

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-char v0, v0

    move/from16 v38, v0

    move/from16 v0, v38

    if-eq v10, v0, :cond_6

    .line 327
    const/16 v36, 0x0

    goto/16 :goto_4

    .line 337
    :cond_13
    add-int v32, v32, v19

    goto/16 :goto_5

    .line 349
    :cond_14
    move/from16 v0, v18

    if-le v12, v0, :cond_16

    .line 350
    move/from16 v12, v18

    .line 354
    :cond_15
    :goto_a
    sub-int v38, v11, v12

    const/16 v39, 0x7f

    move/from16 v0, v38

    move/from16 v1, v39

    if-le v0, v1, :cond_8

    .line 355
    const/16 v37, 0x0

    goto/16 :goto_6

    .line 351
    :cond_16
    move/from16 v0, v18

    if-ge v11, v0, :cond_15

    .line 352
    move/from16 v11, v18

    goto :goto_a

    .line 365
    :cond_17
    add-int v34, v34, v19

    goto/16 :goto_7

    .line 379
    :cond_18
    if-eqz v36, :cond_1a

    .line 380
    move/from16 v0, v32

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    .line 305
    :cond_19
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_2

    .line 383
    :cond_1a
    if-eqz v37, :cond_1b

    .line 384
    move/from16 v0, v34

    move/from16 v1, v21

    if-lt v0, v1, :cond_19

    goto/16 :goto_8

    .line 387
    :cond_1b
    move/from16 v0, v30

    move/from16 v1, v21

    if-lt v0, v1, :cond_19

    goto/16 :goto_8

    .line 422
    .end local v18           #c:C
    .end local v19           #currGsm7Length:I
    .restart local v8       #adnString:[B
    .restart local v14       #bestConverts:I
    .restart local v15       #bestLen:I
    .restart local v16       #bestMode:I
    .restart local v24       #i:I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljava/lang/String;->length()I

    move-result v38

    if-lez v38, :cond_1d

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v13

    .line 424
    .local v13, bcdNumber:[B
    const-string v38, "AdnRecord"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "buildAdnString bcdNumber.length = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    array-length v0, v13

    move/from16 v40, v0

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    const/16 v38, 0x0

    add-int/lit8 v39, v21, 0x1

    array-length v0, v13

    move/from16 v40, v0

    move/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-static {v13, v0, v8, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 428
    add-int/lit8 v38, v21, 0x0

    array-length v0, v13

    move/from16 v39, v0

    move/from16 v0, v39

    int-to-byte v0, v0

    move/from16 v39, v0

    aput-byte v39, v8, v38

    .line 431
    .end local v13           #bcdNumber:[B
    :cond_1d
    add-int/lit8 v38, v21, 0xc

    const/16 v39, -0x1

    aput-byte v39, v8, v38

    .line 433
    add-int/lit8 v38, v21, 0xd

    const/16 v39, -0x1

    aput-byte v39, v8, v38

    .line 436
    sparse-switch v16, :sswitch_data_0

    :goto_b
    move-object v9, v8

    .line 469
    .end local v8           #adnString:[B
    .restart local v9       #adnString:[B
    goto/16 :goto_1

    .line 438
    .end local v9           #adnString:[B
    .restart local v8       #adnString:[B
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v38, v0

    invoke-static/range {v38 .. v38}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v17

    .line 439
    .local v17, byteTag:[B
    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v17

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v40

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b

    .line 444
    .end local v17           #byteTag:[B
    :sswitch_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v38, v0

    const-string v39, "UTF-16BE"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v17

    .line 448
    .restart local v17       #byteTag:[B
    :goto_c
    const/16 v38, 0x0

    const/16 v39, -0x80

    aput-byte v39, v8, v38

    .line 449
    const/16 v38, 0x0

    const/16 v39, 0x1

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v17

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v40

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_b

    .line 445
    .end local v17           #byteTag:[B
    :catch_0
    move-exception v20

    .line 446
    .local v20, e:Ljava/io/UnsupportedEncodingException;
    const/16 v38, 0x0

    move/from16 v0, v38

    new-array v0, v0, [B

    move-object/from16 v17, v0

    .restart local v17       #byteTag:[B
    goto :goto_c

    .line 453
    .end local v17           #byteTag:[B
    .end local v20           #e:Ljava/io/UnsupportedEncodingException;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v38, v0

    add-int/lit8 v39, v15, -0x2

    move-object/from16 v0, v38

    move/from16 v1, v39

    invoke-static {v0, v10, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToUCS81Packed(Ljava/lang/String;CI)[B

    move-result-object v17

    .line 454
    .restart local v17       #byteTag:[B
    const/16 v38, 0x0

    const/16 v39, -0x7f

    aput-byte v39, v8, v38

    .line 455
    const/16 v38, 0x1

    add-int/lit8 v39, v15, -0x3

    move/from16 v0, v39

    int-to-byte v0, v0

    move/from16 v39, v0

    aput-byte v39, v8, v38

    .line 456
    const/16 v38, 0x0

    const/16 v39, 0x2

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v17

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v40

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_b

    .line 460
    .end local v17           #byteTag:[B
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    move-object/from16 v38, v0

    add-int/lit8 v39, v15, -0x2

    move-object/from16 v0, v38

    move/from16 v1, v39

    invoke-static {v0, v12, v1}, Lcom/android/internal/telephony/GsmAlphabet;->stringToUCS82Packed(Ljava/lang/String;CI)[B

    move-result-object v17

    .line 461
    .restart local v17       #byteTag:[B
    const/16 v38, 0x0

    const/16 v39, -0x7e

    aput-byte v39, v8, v38

    .line 462
    const/16 v38, 0x1

    add-int/lit8 v39, v15, -0x4

    move/from16 v0, v39

    int-to-byte v0, v0

    move/from16 v39, v0

    aput-byte v39, v8, v38

    .line 463
    const/16 v38, 0x0

    const/16 v39, 0x2

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v40, v0

    move-object/from16 v0, v17

    move/from16 v1, v38

    move/from16 v2, v39

    move/from16 v3, v40

    invoke-static {v0, v1, v8, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/16 :goto_b

    .line 436
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x80 -> :sswitch_1
        0x81 -> :sswitch_2
        0x82 -> :sswitch_3
    .end sparse-switch
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    return v0
.end method

.method public equalAdn(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    .line 226
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getEfid()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/AdnRecord;->getRecordNumber()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public getEfid()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    return v0
.end method

.method public getEmails()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    return-object v0
.end method

.method public getNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    return-object v0
.end method

.method public getRecordNumber()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    return v0
.end method

.method public hasExtendedRecord()Z
    .locals 2

    .prologue
    .line 194
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->extRecord:I

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEqual(Lcom/android/internal/telephony/AdnRecord;)Z
    .locals 2
    .parameter "adn"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/AdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEfid(I)V
    .locals 0
    .parameter "efid"

    .prologue
    .line 156
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    .line 157
    return-void
.end method

.method public setEmails([Ljava/lang/String;)V
    .locals 0
    .parameter "emails"

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    .line 183
    return-void
.end method

.method public setRecordNumber(I)V
    .locals 0
    .parameter "RecordNumber"

    .prologue
    .line 165
    iput p1, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    .line 166
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 235
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->efid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget v0, p0, Lcom/android/internal/telephony/AdnRecord;->recordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->alphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/android/internal/telephony/AdnRecord;->emails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 240
    return-void
.end method
