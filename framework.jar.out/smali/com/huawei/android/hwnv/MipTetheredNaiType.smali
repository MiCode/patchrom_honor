.class public Lcom/huawei/android/hwnv/MipTetheredNaiType;
.super Lcom/huawei/android/hwnv/BaseHWNvItemType;
.source "MipTetheredNaiType.java"


# static fields
.field public static final NV_MAX_MIP_INDEX:I = 0x6

.field public static final NV_MAX_NAI_LENGTH:I = 0x48


# instance fields
.field mIndex:B

.field mTetheredNai:[B

.field mTetheredNaiLength:B


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/16 v2, 0x48

    const/4 v1, 0x0

    .line 27
    invoke-direct {p0}, Lcom/huawei/android/hwnv/BaseHWNvItemType;-><init>()V

    .line 25
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/huawei/android/hwnv/MipTetheredNaiType;->mTetheredNai:[B

    .line 28
    iput-byte v1, p0, Lcom/huawei/android/hwnv/MipTetheredNaiType;->mIndex:B

    .line 29
    iput-byte v1, p0, Lcom/huawei/android/hwnv/MipTetheredNaiType;->mTetheredNaiLength:B

    .line 30
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/huawei/android/hwnv/MipTetheredNaiType;->mTetheredNai:[B

    .line 31
    return-void
.end method


# virtual methods
.method public getIndex()B
    .locals 1

    .prologue
    .line 45
    iget-byte v0, p0, Lcom/huawei/android/hwnv/MipTetheredNaiType;->mIndex:B

    return v0
.end method

.method public getNvSize()B
    .locals 1

    .prologue
    .line 99
    const/16 v0, 0x4a

    return v0
.end method

.method public getTetheredNai()Ljava/lang/String;
    .locals 4

    .prologue
    .line 68
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/huawei/android/hwnv/MipTetheredNaiType;->mTetheredNai:[B

    const/4 v2, 0x0

    iget-byte v3, p0, Lcom/huawei/android/hwnv/MipTetheredNaiType;->mTetheredNaiLength:B

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([BII)V

    return-object v0
.end method

.method public getTetheredNaiLength()B
    .locals 1

    .prologue
    .line 57
    iget-byte v0, p0, Lcom/huawei/android/hwnv/MipTetheredNaiType;->mTetheredNaiLength:B

    return v0
.end method

.method public setIndex(B)V
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 49
    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-gt v0, p1, :cond_1

    .line 50
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 52
    :cond_1
    iput-byte p1, p0, Lcom/huawei/android/hwnv/MipTetheredNaiType;->mIndex:B

    .line 53
    return-void
.end method

.method public setMipTetheredNaiType([B)V
    .locals 4
    .parameter "bArray"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    invoke-virtual {p0, p1}, Lcom/huawei/android/hwnv/MipTetheredNaiType;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 36
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, Lcom/huawei/android/hwnv/MipTetheredNaiType;->mIndex:B

    .line 37
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    iput-byte v2, p0, Lcom/huawei/android/hwnv/MipTetheredNaiType;->mTetheredNaiLength:B

    .line 38
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-byte v2, p0, Lcom/huawei/android/hwnv/MipTetheredNaiType;->mTetheredNaiLength:B

    if-ge v1, v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/huawei/android/hwnv/MipTetheredNaiType;->mTetheredNai:[B

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v3

    aput-byte v3, v2, v1

    .line 38
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method

.method public setTetheredNai(Ljava/lang/String;)V
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    int-to-byte v2, v3

    .line 73
    .local v2, len:B
    if-ltz v2, :cond_0

    const/16 v3, 0x48

    if-ge v3, v2, :cond_1

    .line 74
    :cond_0
    new-instance v3, Ljava/security/InvalidParameterException;

    invoke-direct {v3}, Ljava/security/InvalidParameterException;-><init>()V

    throw v3

    .line 76
    :cond_1
    iput-byte v2, p0, Lcom/huawei/android/hwnv/MipTetheredNaiType;->mTetheredNaiLength:B

    .line 78
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 79
    .local v1, inBytes:[B
    const/4 v0, 0x0

    .local v0, i:B
    :goto_0
    if-ge v0, v2, :cond_2

    .line 80
    iget-object v3, p0, Lcom/huawei/android/hwnv/MipTetheredNaiType;->mTetheredNai:[B

    aget-byte v4, v1, v0

    aput-byte v4, v3, v0

    .line 79
    add-int/lit8 v3, v0, 0x1

    int-to-byte v0, v3

    goto :goto_0

    .line 82
    :cond_2
    return-void
.end method

.method public setTetheredNaiLength(B)V
    .locals 1
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 61
    if-ltz p1, :cond_0

    const/16 v0, 0x48

    if-ge v0, p1, :cond_1

    .line 62
    :cond_0
    new-instance v0, Ljava/security/InvalidParameterException;

    invoke-direct {v0}, Ljava/security/InvalidParameterException;-><init>()V

    throw v0

    .line 64
    :cond_1
    iput-byte p1, p0, Lcom/huawei/android/hwnv/MipTetheredNaiType;->mTetheredNaiLength:B

    .line 65
    return-void
.end method

.method public toByteArray()[B
    .locals 3

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/huawei/android/hwnv/MipTetheredNaiType;->getNvSize()B

    move-result v2

    invoke-virtual {p0, v2}, Lcom/huawei/android/hwnv/MipTetheredNaiType;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 88
    .local v0, buf:Ljava/nio/ByteBuffer;
    iget-byte v2, p0, Lcom/huawei/android/hwnv/MipTetheredNaiType;->mIndex:B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 89
    iget-byte v2, p0, Lcom/huawei/android/hwnv/MipTetheredNaiType;->mTetheredNaiLength:B

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 91
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/16 v2, 0x48

    if-ge v1, v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/huawei/android/hwnv/MipTetheredNaiType;->mTetheredNai:[B

    aget-byte v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 91
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 95
    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    return-object v2
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 103
    const-string v0, "Index:%d, mTetheredNaiLength:%d, mTetheredNai:%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-byte v3, p0, Lcom/huawei/android/hwnv/MipTetheredNaiType;->mIndex:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-byte v3, p0, Lcom/huawei/android/hwnv/MipTetheredNaiType;->mTetheredNaiLength:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/huawei/android/hwnv/MipTetheredNaiType;->getTetheredNai()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
