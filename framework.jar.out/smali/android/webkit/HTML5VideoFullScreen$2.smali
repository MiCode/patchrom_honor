.class Landroid/webkit/HTML5VideoFullScreen$2;
.super Ljava/lang/Object;
.source "HTML5VideoFullScreen.java"

# interfaces
.implements Landroid/webkit/WebChromeClient$CustomViewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoFullScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/HTML5VideoFullScreen;


# direct methods
.method constructor <init>(Landroid/webkit/HTML5VideoFullScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 211
    iput-object p1, p0, Landroid/webkit/HTML5VideoFullScreen$2;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCustomViewHidden()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 217
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$2;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget-object v0, v0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->dispatchOnStopFullScreen()V

    .line 218
    invoke-static {}, Landroid/webkit/HTML5VideoFullScreen;->access$700()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/HTML5VideoFullScreen$2;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #calls: Landroid/webkit/HTML5VideoFullScreen;->getSurfaceView()Landroid/view/SurfaceView;
    invoke-static {v1}, Landroid/webkit/HTML5VideoFullScreen;->access$600(Landroid/webkit/HTML5VideoFullScreen;)Landroid/view/SurfaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 220
    invoke-static {}, Landroid/webkit/HTML5VideoFullScreen;->access$800()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 221
    invoke-static {}, Landroid/webkit/HTML5VideoFullScreen;->access$700()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {}, Landroid/webkit/HTML5VideoFullScreen;->access$800()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 222
    invoke-static {v2}, Landroid/webkit/HTML5VideoFullScreen;->access$802(Landroid/view/View;)Landroid/view/View;

    .line 224
    :cond_0
    invoke-static {v2}, Landroid/webkit/HTML5VideoFullScreen;->access$702(Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 226
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$2;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iget-object v0, v0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getViewManager()Landroid/webkit/ViewManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/ViewManager;->showAll()V

    .line 228
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$2;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    iput-object v2, v0, Landroid/webkit/HTML5VideoFullScreen;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 231
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$2;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    #setter for: Landroid/webkit/HTML5VideoFullScreen;->mMediaController:Landroid/widget/MediaController;
    invoke-static {v0, v2}, Landroid/webkit/HTML5VideoFullScreen;->access$202(Landroid/webkit/HTML5VideoFullScreen;Landroid/widget/MediaController;)Landroid/widget/MediaController;

    .line 232
    iget-object v0, p0, Landroid/webkit/HTML5VideoFullScreen$2;->this$0:Landroid/webkit/HTML5VideoFullScreen;

    const/4 v1, 0x4

    iput v1, v0, Landroid/webkit/HTML5VideoFullScreen;->mCurrentState:I

    .line 233
    return-void
.end method
