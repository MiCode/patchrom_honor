.class public Lcom/huawei/android/hwnv/AKeyTypeInfo;
.super Lcom/huawei/android/hwnv/BaseHWNvItemType;
.source "AKeyTypeInfo.java"


# static fields
.field private static final MAX_NV_A_KEY_NAM:I = 0x2

.field private static final NV_A_KEY_DIGITS_SIZE:I = 0x1a


# instance fields
.field private aKeyDigits:[B

.field private mNam:B


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/huawei/android/hwnv/BaseHWNvItemType;-><init>()V

    .line 20
    const/16 v0, 0x1a

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/huawei/android/hwnv/AKeyTypeInfo;->aKeyDigits:[B

    return-void
.end method


# virtual methods
.method public getAKeyDigits()[B
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/huawei/android/hwnv/AKeyTypeInfo;->aKeyDigits:[B

    const/16 v1, 0x1a

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public getAKeySize()B
    .locals 1

    .prologue
    .line 67
    const/16 v0, 0x1b

    return v0
.end method

.method public getNam()B
    .locals 1

    .prologue
    .line 23
    iget-byte v0, p0, Lcom/huawei/android/hwnv/AKeyTypeInfo;->mNam:B

    return v0
.end method

.method public setAKeyDigits(Ljava/lang/String;)V
    .locals 6
    .parameter "aKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x1a

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v5, v3, :cond_0

    .line 40
    new-instance v3, Ljava/security/InvalidParameterException;

    invoke-direct {v3}, Ljava/security/InvalidParameterException;-><init>()V

    throw v3

    .line 42
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_2

    .line 43
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    .line 44
    .local v1, c:Ljava/lang/Character;
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 45
    new-instance v3, Ljava/security/InvalidParameterException;

    invoke-direct {v3}, Ljava/security/InvalidParameterException;-><init>()V

    throw v3

    .line 42
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 49
    .end local v1           #c:Ljava/lang/Character;
    :cond_2
    const-string v3, "18446744073709551615"

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_3

    .line 50
    new-instance v3, Ljava/security/InvalidParameterException;

    invoke-direct {v3}, Ljava/security/InvalidParameterException;-><init>()V

    throw v3

    .line 53
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 54
    .local v0, aKeyBytes:[B
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v5, :cond_4

    .line 55
    iget-object v3, p0, Lcom/huawei/android/hwnv/AKeyTypeInfo;->aKeyDigits:[B

    aget-byte v4, v0, v2

    aput-byte v4, v3, v2

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 57
    :cond_4
    return-void
.end method

.method public setNam(B)V
    .locals 1
    .parameter "nam"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 31
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-gt v0, p1, :cond_1

    .line 32
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 34
    :cond_1
    iput-byte p1, p0, Lcom/huawei/android/hwnv/AKeyTypeInfo;->mNam:B

    .line 35
    return-void
.end method

.method public toByteArray()[B
    .locals 2

    .prologue
    .line 60
    invoke-virtual {p0}, Lcom/huawei/android/hwnv/AKeyTypeInfo;->getAKeySize()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/huawei/android/hwnv/AKeyTypeInfo;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 61
    .local v0, buf:Ljava/nio/ByteBuffer;
    iget-byte v1, p0, Lcom/huawei/android/hwnv/AKeyTypeInfo;->mNam:B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 62
    iget-object v1, p0, Lcom/huawei/android/hwnv/AKeyTypeInfo;->aKeyDigits:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 63
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 71
    const-string/jumbo v0, "mNam:%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-byte v3, p0, Lcom/huawei/android/hwnv/AKeyTypeInfo;->mNam:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
