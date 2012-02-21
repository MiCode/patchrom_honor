.class Landroid/webkit/ContentLoader;
.super Landroid/webkit/StreamLoader;
.source "ContentLoader.java"


# instance fields
.field private mContentType:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/webkit/LoadListener;)V
    .locals 2
    .parameter "rawUrl"
    .parameter "loadListener"

    .prologue
    .line 40
    invoke-direct {p0, p2}, Landroid/webkit/StreamLoader;-><init>(Landroid/webkit/LoadListener;)V

    .line 43
    const/16 v1, 0x3f

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 44
    .local v0, mimeIndex:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 45
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/ContentLoader;->mUrl:Ljava/lang/String;

    .line 46
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/webkit/ContentLoader;->mContentType:Ljava/lang/String;

    .line 51
    :goto_0
    return-void

    .line 48
    :cond_0
    iput-object p1, p0, Landroid/webkit/ContentLoader;->mUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method private errString(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 4
    .parameter "ex"

    .prologue
    .line 54
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 55
    .local v1, exMessage:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/ContentLoader;->mContext:Landroid/content/Context;

    const v3, 0x1040117

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, errString:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected buildHeaders(Landroid/net/http/Headers;)V
    .locals 1
    .parameter "headers"

    .prologue
    .line 92
    iget-object v0, p0, Landroid/webkit/ContentLoader;->mContentType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 93
    const-string/jumbo v0, "text/html"

    invoke-virtual {p1, v0}, Landroid/net/http/Headers;->setContentType(Ljava/lang/String;)V

    .line 96
    :cond_0
    const-string/jumbo v0, "no-store, no-cache"

    invoke-virtual {p1, v0}, Landroid/net/http/Headers;->setCacheControl(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method protected setupStreamAndSendStatus()Z
    .locals 10

    .prologue
    const/16 v9, -0xe

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    iget-object v4, p0, Landroid/webkit/ContentLoader;->mUrl:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 66
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 67
    iget-object v3, p0, Landroid/webkit/ContentLoader;->mLoadListener:Landroid/webkit/LoadListener;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Landroid/webkit/ContentLoader;->mContext:Landroid/content/Context;

    const v6, 0x1040007

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/ContentLoader;->mUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    .line 87
    :goto_0
    return v2

    .line 76
    :cond_0
    :try_start_0
    iget-object v4, p0, Landroid/webkit/ContentLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    iput-object v4, p0, Landroid/webkit/ContentLoader;->mDataStream:Ljava/io/InputStream;

    .line 77
    iget-object v4, p0, Landroid/webkit/ContentLoader;->mLoadListener:Landroid/webkit/LoadListener;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/16 v7, 0xc8

    const-string v8, "OK"

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/webkit/LoadListener;->status(IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    move v2, v3

    .line 87
    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, ex:Ljava/io/FileNotFoundException;
    iget-object v3, p0, Landroid/webkit/ContentLoader;->mLoadListener:Landroid/webkit/LoadListener;

    invoke-direct {p0, v0}, Landroid/webkit/ContentLoader;->errString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v9, v4}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 81
    .end local v0           #ex:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 84
    .local v0, ex:Ljava/lang/RuntimeException;
    iget-object v3, p0, Landroid/webkit/ContentLoader;->mLoadListener:Landroid/webkit/LoadListener;

    const/16 v4, -0xd

    invoke-direct {p0, v0}, Landroid/webkit/ContentLoader;->errString(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    goto :goto_0
.end method
