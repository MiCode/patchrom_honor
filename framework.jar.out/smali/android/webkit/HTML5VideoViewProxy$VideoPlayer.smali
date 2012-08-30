.class final Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;
.super Ljava/lang/Object;
.source "HTML5VideoViewProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoViewProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VideoPlayer"
.end annotation


# instance fields
.field private isVideoSelfEnded:Z

.field private mBaseLayer:I

.field private mHTML5VideoView:Landroid/webkit/HTML5VideoView;

.field private mProxy:Landroid/webkit/HTML5VideoViewProxy;

.field final synthetic this$0:Landroid/webkit/HTML5VideoViewProxy;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5VideoViewProxy;Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 1
    .parameter
    .parameter "proxy"

    .prologue
    const/4 v0, 0x0

    .line 114
    iput-object p1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    .line 108
    iput v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mBaseLayer:I

    .line 115
    iput-object p2, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 116
    return-void
.end method

.method static synthetic access$202(Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-boolean p1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    return p1
.end method

.method static synthetic access$300(Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setPlayerBuffering(Z)V

    return-void
.end method

.method private setPlayerBuffering(Z)V
    .locals 1
    .parameter "playerBuffering"

    .prologue
    .line 111
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0, p1}, Landroid/webkit/HTML5VideoView;->setPlayerBuffering(Z)V

    .line 112
    return-void
.end method


# virtual methods
.method public end()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    .line 247
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    if-eqz v0, :cond_1

    .line 248
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnEnded()V

    .line 252
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    .line 253
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnPaused()V

    goto :goto_0
.end method

.method public enterFullScreenVideo(ILjava/lang/String;Landroid/webkit/WebView;)V
    .locals 4
    .parameter "layerId"
    .parameter "url"
    .parameter "webView"

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, savePosition:I
    const/4 v1, 0x0

    .line 161
    .local v1, savedIsPlaying:Z
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v2, :cond_0

    .line 164
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoView;->getCurrentState()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_1

    .line 165
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoView;->getCurrentPosition()I

    move-result v0

    .line 166
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v1

    .line 172
    :goto_0
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoView;->release()V

    .line 174
    :cond_0
    new-instance v2, Landroid/webkit/MiuiHTML5VideoFullScreen;

    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v3}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0, v0, v1}, Landroid/webkit/MiuiHTML5VideoFullScreen;-><init>(Landroid/content/Context;IIZ)V

    iput-object v2, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    .line 177
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v2, p2, v3}, Landroid/webkit/HTML5VideoView;->setVideoURI(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V

    .line 179
    iget-object v2, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    iget-object v3, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v2, p1, v3, p3}, Landroid/webkit/HTML5VideoView;->enterFullScreenVideoState(ILandroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebView;)V

    .line 180
    return-void

    .line 170
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 211
    const/4 v0, 0x0

    .line 212
    .local v0, currentPosMs:I
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v1, :cond_0

    .line 213
    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v1}, Landroid/webkit/HTML5VideoView;->getCurrentPosition()I

    move-result v0

    .line 215
    :cond_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepared()V
    .locals 2

    .prologue
    .line 232
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    #getter for: Landroid/webkit/HTML5VideoViewProxy;->mCachedVolume:F
    invoke-static {v0}, Landroid/webkit/HTML5VideoViewProxy;->access$100(Landroid/webkit/HTML5VideoViewProxy;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 233
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    #getter for: Landroid/webkit/HTML5VideoViewProxy;->mCachedVolume:F
    invoke-static {v1}, Landroid/webkit/HTML5VideoViewProxy;->access$100(Landroid/webkit/HTML5VideoViewProxy;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoView;->setVolume(F)V

    .line 234
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    const/high16 v1, -0x4080

    #setter for: Landroid/webkit/HTML5VideoViewProxy;->mCachedVolume:F
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoViewProxy;->access$102(Landroid/webkit/HTML5VideoViewProxy;F)F

    .line 237
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->getAutostart()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    :cond_1
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->start()V

    .line 240
    :cond_2
    iget v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mBaseLayer:I

    if-eqz v0, :cond_3

    .line 241
    iget v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mBaseLayer:I

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->setBaseLayer(I)V

    .line 243
    :cond_3
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->pause()V

    .line 228
    :cond_0
    return-void
.end method

.method public pauseAndDispatch()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoView;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 145
    :cond_0
    return-void
.end method

.method public play(Ljava/lang/String;ILandroid/webkit/WebChromeClient;I)V
    .locals 2
    .parameter "url"
    .parameter "time"
    .parameter "client"
    .parameter "videoLayerId"

    .prologue
    .line 184
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    instance-of v0, v0, Landroid/webkit/HTML5VideoFullScreen;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->fullScreenExited()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 190
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->release()V

    .line 194
    :cond_1
    new-instance v0, Landroid/webkit/HTML5VideoInline;

    const/4 v1, 0x0

    invoke-direct {v0, p4, p2, v1}, Landroid/webkit/HTML5VideoInline;-><init>(IIZ)V

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    .line 195
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, p1, v1}, Landroid/webkit/HTML5VideoView;->setVideoURI(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V

    .line 196
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    iget-object v1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, v1}, Landroid/webkit/HTML5VideoView;->prepareDataAndDisplayMode(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 197
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0, p2}, Landroid/webkit/HTML5VideoView;->seekTo(I)V

    .line 204
    :cond_2
    :goto_0
    return-void

    .line 200
    :cond_3
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 201
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->start()V

    goto :goto_0
.end method

.method public seek(I)V
    .locals 1
    .parameter "time"

    .prologue
    .line 219
    if-ltz p1, :cond_0

    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0, p1}, Landroid/webkit/HTML5VideoView;->seekTo(I)V

    .line 222
    :cond_0
    return-void
.end method

.method public setBaseLayer(I)V
    .locals 5
    .parameter "layer"

    .prologue
    .line 122
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4}, Landroid/webkit/HTML5VideoView;->isFullScreenMode()Z

    move-result v4

    if-nez v4, :cond_1

    .line 124
    iput p1, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mBaseLayer:I

    .line 126
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4}, Landroid/webkit/HTML5VideoView;->getVideoLayerId()I

    move-result v0

    .line 127
    .local v0, currentVideoLayerId:I
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4, v0}, Landroid/webkit/HTML5VideoView;->getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;

    move-result-object v2

    .line 128
    .local v2, surfTexture:Landroid/graphics/SurfaceTexture;
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4}, Landroid/webkit/HTML5VideoView;->getTextureName()I

    move-result v3

    .line 130
    .local v3, textureName:I
    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 131
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4}, Landroid/webkit/HTML5VideoView;->getCurrentState()I

    move-result v1

    .line 132
    .local v1, playerState:I
    iget-object v4, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v4}, Landroid/webkit/HTML5VideoView;->getPlayerBuffering()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    const/4 v1, 0x1

    .line 134
    :cond_0
    #calls: Landroid/webkit/HTML5VideoViewProxy;->nativeSendSurfaceTexture(Landroid/graphics/SurfaceTexture;IIII)Z
    invoke-static {v2, p1, v0, v3, v1}, Landroid/webkit/HTML5VideoViewProxy;->access$000(Landroid/graphics/SurfaceTexture;IIII)Z

    .line 139
    .end local v0           #currentVideoLayerId:I
    .end local v1           #playerState:I
    .end local v2           #surfTexture:Landroid/graphics/SurfaceTexture;
    .end local v3           #textureName:I
    :cond_1
    return-void
.end method

.method public setVolume(F)V
    .locals 2
    .parameter "volume"

    .prologue
    .line 257
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0, p1}, Landroid/webkit/HTML5VideoView;->setVolume(F)V

    .line 259
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    const/high16 v1, -0x4080

    #setter for: Landroid/webkit/HTML5VideoViewProxy;->mCachedVolume:F
    invoke-static {v0, v1}, Landroid/webkit/HTML5VideoViewProxy;->access$102(Landroid/webkit/HTML5VideoViewProxy;F)F

    .line 264
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->this$0:Landroid/webkit/HTML5VideoViewProxy;

    #setter for: Landroid/webkit/HTML5VideoViewProxy;->mCachedVolume:F
    invoke-static {v0, p1}, Landroid/webkit/HTML5VideoViewProxy;->access$102(Landroid/webkit/HTML5VideoViewProxy;F)F

    goto :goto_0
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->pause()V

    .line 150
    iget-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoView;->release()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->mHTML5VideoView:Landroid/webkit/HTML5VideoView;

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->isVideoSelfEnded:Z

    .line 153
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoViewProxy$VideoPlayer;->end()V

    .line 155
    :cond_0
    return-void
.end method
