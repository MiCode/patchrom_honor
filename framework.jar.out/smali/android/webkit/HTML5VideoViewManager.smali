.class Landroid/webkit/HTML5VideoViewManager;
.super Ljava/lang/Object;
.source "HTML5VideoViewManager.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mProxyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/webkit/HTML5VideoViewProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final mUiThread:Ljava/lang/Thread;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Landroid/webkit/HTML5VideoViewManager;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/webkit/HTML5VideoViewManager;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/webkit/WebView;)V
    .locals 1
    .parameter "webView"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewManager;->mWebView:Landroid/webkit/WebView;

    .line 45
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewManager;->mUiThread:Ljava/lang/Thread;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewManager;->mProxyList:Ljava/util/ArrayList;

    .line 47
    return-void
.end method


# virtual methods
.method public enterFullScreenVideo(ILjava/lang/String;)V
    .locals 4
    .parameter "layerId"
    .parameter "url"

    .prologue
    .line 89
    sget-boolean v2, Landroid/webkit/HTML5VideoViewManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/webkit/HTML5VideoViewManager;->mUiThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 90
    :cond_0
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewManager;->mProxyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 91
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/HTML5VideoViewProxy;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 92
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/HTML5VideoViewProxy;

    .line 93
    .local v1, proxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->getVideoLayerId()I

    move-result v2

    if-ne v2, p1, :cond_1

    .line 94
    invoke-virtual {v1, p1, p2}, Landroid/webkit/HTML5VideoViewProxy;->enterFullScreenVideo(ILjava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->pauseAndDispatch()V

    goto :goto_0

    .line 98
    .end local v1           #proxy:Landroid/webkit/HTML5VideoViewProxy;
    :cond_2
    return-void
.end method

.method public pauseAndDispatch()V
    .locals 4

    .prologue
    .line 80
    sget-boolean v2, Landroid/webkit/HTML5VideoViewManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/webkit/HTML5VideoViewManager;->mUiThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 81
    :cond_0
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewManager;->mProxyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 82
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/HTML5VideoViewProxy;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/HTML5VideoViewProxy;

    .line 84
    .local v1, proxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->pauseAndDispatch()V

    goto :goto_0

    .line 86
    .end local v1           #proxy:Landroid/webkit/HTML5VideoViewProxy;
    :cond_1
    return-void
.end method

.method public registerProxy(Landroid/webkit/HTML5VideoViewProxy;)Z
    .locals 3
    .parameter "proxy"

    .prologue
    .line 50
    sget-boolean v1, Landroid/webkit/HTML5VideoViewManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewManager;->mUiThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 51
    :cond_0
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewManager;->mProxyList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 52
    .local v0, result:Z
    return v0
.end method

.method public setBaseLayer(I)V
    .locals 4
    .parameter "layer"

    .prologue
    .line 62
    sget-boolean v2, Landroid/webkit/HTML5VideoViewManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/webkit/HTML5VideoViewManager;->mUiThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 63
    :cond_0
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewManager;->mProxyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 64
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/HTML5VideoViewProxy;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 65
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/HTML5VideoViewProxy;

    .line 66
    .local v1, proxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-virtual {v1, p1}, Landroid/webkit/HTML5VideoViewProxy;->setBaseLayer(I)V

    goto :goto_0

    .line 68
    .end local v1           #proxy:Landroid/webkit/HTML5VideoViewProxy;
    :cond_1
    return-void
.end method

.method public suspend()V
    .locals 4

    .prologue
    .line 71
    sget-boolean v2, Landroid/webkit/HTML5VideoViewManager;->$assertionsDisabled:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/webkit/HTML5VideoViewManager;->mUiThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_0

    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 72
    :cond_0
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewManager;->mProxyList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 73
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/webkit/HTML5VideoViewProxy;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/webkit/HTML5VideoViewProxy;

    .line 75
    .local v1, proxy:Landroid/webkit/HTML5VideoViewProxy;
    invoke-virtual {v1}, Landroid/webkit/HTML5VideoViewProxy;->suspend()V

    goto :goto_0

    .line 77
    .end local v1           #proxy:Landroid/webkit/HTML5VideoViewProxy;
    :cond_1
    return-void
.end method

.method public unregisterProxy(Landroid/webkit/HTML5VideoViewProxy;)Z
    .locals 3
    .parameter "proxy"

    .prologue
    .line 56
    sget-boolean v1, Landroid/webkit/HTML5VideoViewManager;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewManager;->mUiThread:Ljava/lang/Thread;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 57
    :cond_0
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewManager;->mProxyList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 58
    .local v0, result:Z
    return v0
.end method
