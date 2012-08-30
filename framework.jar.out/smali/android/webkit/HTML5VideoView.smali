.class public Landroid/webkit/HTML5VideoView;
.super Ljava/lang/Object;
.source "HTML5VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/HTML5VideoView$TimeupdateTask;
    }
.end annotation


# static fields
.field protected static final COOKIE:Ljava/lang/String; = "Cookie"

.field protected static final HIDE_URL_LOGS:Ljava/lang/String; = "x-hide-urls-from-log"

.field protected static final LOGTAG:Ljava/lang/String; = "HTML5VideoView"

.field static final STATE_INITIALIZED:I = 0x0

.field static final STATE_NOTPREPARED:I = 0x1

.field static final STATE_PLAYING:I = 0x3

.field static final STATE_PREPARED:I = 0x2

.field static final STATE_RELEASED:I = 0x4

.field private static final TIMEUPDATE_PERIOD:I = 0xfa


# instance fields
.field protected mAutostart:Z

.field protected mCurrentState:I

.field protected mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected mPauseDuringPreparing:Z

.field protected mPlayer:Landroid/media/MediaPlayer;

.field public mPlayerBuffering:Z

.field protected mProxy:Landroid/webkit/HTML5VideoViewProxy;

.field protected mSaveSeekTime:I

.field protected mTimer:Ljava/util/Timer;

.field protected mUri:Landroid/net/Uri;

.field protected mVideoLayerId:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 347
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mPlayerBuffering:Z

    .line 205
    return-void
.end method

.method protected static generateHeaders(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)Ljava/util/Map;
    .locals 5
    .parameter "url"
    .parameter "proxy"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/HTML5VideoViewProxy;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    invoke-virtual {p1}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->isPrivateBrowsingEnabled()Z

    move-result v2

    .line 210
    .local v2, isPrivate:Z
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v3, p0, v2}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, cookieValue:Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 212
    .local v1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 213
    const-string v3, "Cookie"

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_0
    if-eqz v2, :cond_1

    .line 216
    const-string/jumbo v3, "x-hide-urls-from-log"

    const-string/jumbo v4, "true"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_1
    return-object v1
.end method


# virtual methods
.method public decideDisplayMode()V
    .locals 0

    .prologue
    .line 332
    return-void
.end method

.method public enterFullScreenVideoState(ILandroid/webkit/HTML5VideoViewProxy;Landroid/webkit/WebView;)V
    .locals 0
    .parameter "layerId"
    .parameter "proxy"
    .parameter "webView"

    .prologue
    .line 325
    return-void
.end method

.method public fullScreenExited()Z
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x1

    return v0
.end method

.method public getAutostart()Z
    .locals 1

    .prologue
    .line 174
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mAutostart:Z

    return v0
.end method

.method public getCurrentPosition()I
    .locals 2

    .prologue
    .line 138
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    .line 141
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentState()I
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    const/4 v0, 0x3

    .line 282
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 130
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getPauseDuringPreparing()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mPauseDuringPreparing:Z

    return v0
.end method

.method public getPlayerBuffering()Z
    .locals 1

    .prologue
    .line 350
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mPlayerBuffering:Z

    return v0
.end method

.method public getReadyToUseSurfTex()Z
    .locals 1

    .prologue
    .line 335
    const/4 v0, 0x0

    return v0
.end method

.method public getSurfaceTexture(I)Landroid/graphics/SurfaceTexture;
    .locals 1
    .parameter "videoLayerId"

    .prologue
    .line 339
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTextureName()I
    .locals 1

    .prologue
    .line 343
    const/4 v0, 0x0

    return v0
.end method

.method public getVideoLayerId()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mVideoLayerId:I

    return v0
.end method

.method public init(IIZ)V
    .locals 3
    .parameter "videoLayerId"
    .parameter "position"
    .parameter "autoStart"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 194
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    .line 195
    iput v1, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    .line 196
    iput-object v2, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 197
    iput p1, p0, Landroid/webkit/HTML5VideoView;->mVideoLayerId:I

    .line 198
    iput p2, p0, Landroid/webkit/HTML5VideoView;->mSaveSeekTime:I

    .line 199
    iput-boolean p3, p0, Landroid/webkit/HTML5VideoView;->mAutostart:Z

    .line 200
    iput-object v2, p0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    .line 201
    iput-boolean v1, p0, Landroid/webkit/HTML5VideoView;->mPauseDuringPreparing:Z

    .line 202
    return-void
.end method

.method public isFullScreenMode()Z
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .prologue
    .line 152
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 155
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .parameter "mp"

    .prologue
    .line 301
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    .line 302
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mSaveSeekTime:I

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoView;->seekTo(I)V

    .line 303
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/HTML5VideoViewProxy;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 306
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mPauseDuringPreparing:Z

    if-eqz v0, :cond_1

    .line 307
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoView;->pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mPauseDuringPreparing:Z

    .line 310
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 116
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 122
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 124
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    .line 127
    :cond_1
    return-void

    .line 118
    :cond_2
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    if-ne v0, v1, :cond_0

    .line 119
    iput-boolean v1, p0, Landroid/webkit/HTML5VideoView;->mPauseDuringPreparing:Z

    goto :goto_0
.end method

.method public pauseAndDispatch(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter "proxy"

    .prologue
    .line 314
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->pause()V

    .line 315
    if-eqz p1, :cond_0

    .line 316
    invoke-virtual {p1}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnPaused()V

    .line 318
    :cond_0
    return-void
.end method

.method public prepareDataAndDisplayMode(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 5
    .parameter "proxy"

    .prologue
    .line 250
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->decideDisplayMode()V

    .line 252
    invoke-virtual {p0, p1}, Landroid/webkit/HTML5VideoView;->setOnCompletionListener(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 253
    invoke-virtual {p0, p1}, Landroid/webkit/HTML5VideoView;->setOnPreparedListener(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 254
    invoke-virtual {p0, p1}, Landroid/webkit/HTML5VideoView;->setOnErrorListener(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 255
    invoke-virtual {p0, p1}, Landroid/webkit/HTML5VideoView;->setOnInfoListener(Landroid/webkit/HTML5VideoViewProxy;)V

    .line 259
    :try_start_0
    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v2, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v2}, Landroid/webkit/HTML5VideoViewProxy;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Landroid/webkit/HTML5VideoView;->mUri:Landroid/net/Uri;

    iget-object v4, p0, Landroid/webkit/HTML5VideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 260
    iget-object v1, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 268
    :goto_0
    const/4 v1, 0x1

    iput v1, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    .line 269
    return-void

    .line 261
    :catch_0
    move-exception v0

    .line 262
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 263
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 264
    .local v0, e:Ljava/lang/IllegalStateException;
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 265
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v0

    .line 266
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 160
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    if-eq v0, v1, :cond_0

    .line 161
    invoke-virtual {p0}, Landroid/webkit/HTML5VideoView;->stopPlayback()V

    .line 162
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 164
    :cond_0
    iput v1, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    .line 165
    return-void
.end method

.method public seekTo(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 145
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 149
    :goto_0
    return-void

    .line 148
    :cond_0
    iput p1, p0, Landroid/webkit/HTML5VideoView;->mSaveSeekTime:I

    goto :goto_0
.end method

.method public setOnCompletionListener(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 230
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 231
    return-void
.end method

.method public setOnErrorListener(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 234
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 235
    return-void
.end method

.method public setOnInfoListener(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 243
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 244
    return-void
.end method

.method public setOnPreparedListener(Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 1
    .parameter "proxy"

    .prologue
    .line 238
    iput-object p1, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 239
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 240
    return-void
.end method

.method public setPlayerBuffering(Z)V
    .locals 0
    .parameter "playerBuffering"

    .prologue
    .line 354
    iput-boolean p1, p0, Landroid/webkit/HTML5VideoView;->mPlayerBuffering:Z

    .line 355
    invoke-virtual {p0, p1}, Landroid/webkit/HTML5VideoView;->switchProgressView(Z)V

    .line 356
    return-void
.end method

.method public setVideoURI(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 1
    .parameter "uri"
    .parameter "proxy"

    .prologue
    .line 224
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mUri:Landroid/net/Uri;

    .line 225
    invoke-static {p1, p2}, Landroid/webkit/HTML5VideoView;->generateHeaders(Ljava/lang/String;Landroid/webkit/HTML5VideoViewProxy;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mHeaders:Ljava/util/Map;

    .line 226
    return-void
.end method

.method public setVolume(F)V
    .locals 2
    .parameter "volume"

    .prologue
    .line 185
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 187
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 189
    :cond_0
    return-void
.end method

.method public start()V
    .locals 6

    .prologue
    const-wide/16 v2, 0xfa

    .line 100
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 103
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    .line 106
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mTimer:Ljava/util/Timer;

    new-instance v1, Landroid/webkit/HTML5VideoView$TimeupdateTask;

    iget-object v4, p0, Landroid/webkit/HTML5VideoView;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-direct {v1, p0, v4}, Landroid/webkit/HTML5VideoView$TimeupdateTask;-><init>(Landroid/webkit/HTML5VideoView;Landroid/webkit/HTML5VideoViewProxy;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 109
    :cond_0
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 110
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/HTML5VideoView;->setPlayerBuffering(Z)V

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/HTML5VideoView;->mAutostart:Z

    goto :goto_0
.end method

.method public stopPlayback()V
    .locals 2

    .prologue
    .line 168
    iget v0, p0, Landroid/webkit/HTML5VideoView;->mCurrentState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Landroid/webkit/HTML5VideoView;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 171
    :cond_0
    return-void
.end method

.method protected switchProgressView(Z)V
    .locals 0
    .parameter "playerBuffering"

    .prologue
    .line 360
    return-void
.end method
