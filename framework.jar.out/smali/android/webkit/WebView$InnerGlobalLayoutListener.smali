.class Landroid/webkit/WebView$InnerGlobalLayoutListener;
.super Ljava/lang/Object;
.source "WebView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InnerGlobalLayoutListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method private constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Landroid/webkit/WebView$InnerGlobalLayoutListener;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 334
    invoke-direct {p0, p1}, Landroid/webkit/WebView$InnerGlobalLayoutListener;-><init>(Landroid/webkit/WebView;)V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Landroid/webkit/WebView$InnerGlobalLayoutListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Landroid/webkit/WebView$InnerGlobalLayoutListener;->this$0:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->setGLRectViewport()V

    .line 339
    :cond_0
    return-void
.end method
