.class public abstract Lcom/huawei/android/hwnv/BaseHWNvItemType;
.super Ljava/lang/Object;
.source "BaseHWNvItemType.java"


# static fields
.field public static final MAX_BYTE:S = 0xffs

.field public static final MAX_INT:J = 0xffffffffL

.field public static final MAX_SHORT:I = 0xffff

.field public static final SIZE_OF_BYTE:I = 0x1

.field public static final SIZE_OF_INT:I = 0x4

.field public static final SIZE_OF_LONG:I = 0x8

.field public static final SIZE_OF_SHORT:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected addPaddingBytes(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .parameter "buf"
    .parameter "num"

    .prologue
    .line 62
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 63
    .local v0, dest:[B
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 64
    return-void
.end method

.method protected createByteBuffer(I)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "size"

    .prologue
    .line 45
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 46
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 47
    return-object v0
.end method

.method protected createByteBuffer([B)Ljava/nio/ByteBuffer;
    .locals 2
    .parameter "bytes"

    .prologue
    .line 51
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 52
    .local v0, buf:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 53
    return-object v0
.end method

.method protected parseUnsignedByteToShort(B)S
    .locals 1
    .parameter "in"

    .prologue
    .line 33
    and-int/lit16 v0, p1, 0xff

    int-to-short v0, v0

    return v0
.end method

.method protected parseUnsignedIntToLong(I)J
    .locals 4
    .parameter "in"

    .prologue
    .line 41
    int-to-long v0, p1

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method protected parseUnsignedShortToInt(S)I
    .locals 1
    .parameter "in"

    .prologue
    .line 37
    const v0, 0xffff

    and-int/2addr v0, p1

    return v0
.end method

.method protected skipPaddingBytes(Ljava/nio/ByteBuffer;I)V
    .locals 2
    .parameter "buf"
    .parameter "num"

    .prologue
    .line 57
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 58
    .local v0, dest:[B
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 59
    return-void
.end method

.method public abstract toDebugString()Ljava/lang/String;
.end method
