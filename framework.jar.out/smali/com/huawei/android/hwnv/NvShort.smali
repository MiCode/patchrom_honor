.class public Lcom/huawei/android/hwnv/NvShort;
.super Lcom/huawei/android/hwnv/BaseHWNvItemType;
.source "NvShort.java"


# instance fields
.field mVal:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/huawei/android/hwnv/BaseHWNvItemType;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/huawei/android/hwnv/NvShort;->mVal:I

    .line 19
    return-void
.end method

.method constructor <init>(I)V
    .locals 1
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/huawei/android/hwnv/BaseHWNvItemType;-><init>()V

    .line 21
    const v0, 0xffff

    if-ge v0, p1, :cond_0

    .line 22
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 24
    :cond_0
    iput p1, p0, Lcom/huawei/android/hwnv/NvShort;->mVal:I

    .line 25
    return-void
.end method

.method constructor <init>([B)V
    .locals 2
    .parameter "bArray"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/huawei/android/hwnv/BaseHWNvItemType;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lcom/huawei/android/hwnv/NvShort;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 29
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-virtual {p0, v1}, Lcom/huawei/android/hwnv/NvShort;->parseUnsignedShortToInt(S)I

    move-result v1

    iput v1, p0, Lcom/huawei/android/hwnv/NvShort;->mVal:I

    .line 30
    return-void
.end method


# virtual methods
.method public getNvShort()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/huawei/android/hwnv/NvShort;->mVal:I

    return v0
.end method

.method public getNvSize()B
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x2

    return v0
.end method

.method public setNvShort(I)V
    .locals 1
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidParameterException;
        }
    .end annotation

    .prologue
    .line 38
    const v0, 0xffff

    if-ge v0, p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    .line 41
    :cond_0
    iput p1, p0, Lcom/huawei/android/hwnv/NvShort;->mVal:I

    .line 42
    return-void
.end method

.method public setNvShort([B)V
    .locals 2
    .parameter "bArray"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/huawei/android/hwnv/NvShort;->createByteBuffer([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 34
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v1

    invoke-virtual {p0, v1}, Lcom/huawei/android/hwnv/NvShort;->parseUnsignedShortToInt(S)I

    move-result v1

    iput v1, p0, Lcom/huawei/android/hwnv/NvShort;->mVal:I

    .line 35
    return-void
.end method

.method public toByteArray()[B
    .locals 2

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/huawei/android/hwnv/NvShort;->getNvSize()B

    move-result v1

    invoke-virtual {p0, v1}, Lcom/huawei/android/hwnv/NvShort;->createByteBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 50
    .local v0, buf:Ljava/nio/ByteBuffer;
    iget v1, p0, Lcom/huawei/android/hwnv/NvShort;->mVal:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 51
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method

.method public toDebugString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 58
    const-string/jumbo v0, "val=%d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/huawei/android/hwnv/NvShort;->mVal:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
