.class Lcom/android/internal/telephony/cat/LanguageResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private lang:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "lang"

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 205
    iput-object p1, p0, Lcom/android/internal/telephony/cat/LanguageResponseData;->lang:Ljava/lang/String;

    .line 206
    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 7
    .parameter "buf"

    .prologue
    .line 210
    if-nez p1, :cond_1

    .line 232
    :cond_0
    return-void

    .line 215
    :cond_1
    sget-object v6, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    .line 216
    .local v5, tag:I
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 220
    iget-object v6, p0, Lcom/android/internal/telephony/cat/LanguageResponseData;->lang:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/cat/LanguageResponseData;->lang:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 221
    iget-object v6, p0, Lcom/android/internal/telephony/cat/LanguageResponseData;->lang:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object v2

    .line 227
    .local v2, data:[B
    :goto_0
    array-length v6, v2

    invoke-virtual {p1, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 229
    move-object v0, v2

    .local v0, arr$:[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-byte v1, v0, v3

    .line 230
    .local v1, b:B
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 229
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 224
    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v2           #data:[B
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_2
    const/4 v6, 0x0

    new-array v2, v6, [B

    .restart local v2       #data:[B
    goto :goto_0
.end method
