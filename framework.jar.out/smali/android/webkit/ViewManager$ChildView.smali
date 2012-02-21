.class Landroid/webkit/ViewManager$ChildView;
.super Ljava/lang/Object;
.source "ViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/ViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChildView"
.end annotation


# instance fields
.field height:I

.field mView:Landroid/view/View;

.field final synthetic this$0:Landroid/webkit/ViewManager;

.field width:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(Landroid/webkit/ViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Landroid/webkit/ViewManager$ChildView;->this$0:Landroid/webkit/ViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method static synthetic access$100(Landroid/webkit/ViewManager$ChildView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/webkit/ViewManager$ChildView;->attachViewOnUIThread()V

    return-void
.end method

.method static synthetic access$500(Landroid/webkit/ViewManager$ChildView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/webkit/ViewManager$ChildView;->removeViewOnUIThread()V

    return-void
.end method

.method private attachViewOnUIThread()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Landroid/webkit/ViewManager$ChildView;->this$0:Landroid/webkit/ViewManager;

    #getter for: Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/ViewManager;->access$200(Landroid/webkit/ViewManager;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->addView(Landroid/view/View;)V

    .line 78
    iget-object v0, p0, Landroid/webkit/ViewManager$ChildView;->this$0:Landroid/webkit/ViewManager;

    #getter for: Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/webkit/ViewManager;->access$300(Landroid/webkit/ViewManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Landroid/webkit/ViewManager$ChildView;->this$0:Landroid/webkit/ViewManager;

    #getter for: Landroid/webkit/ViewManager;->mReadyToDraw:Z
    invoke-static {v0}, Landroid/webkit/ViewManager;->access$400(Landroid/webkit/ViewManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    :cond_0
    return-void
.end method

.method private removeViewOnUIThread()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Landroid/webkit/ViewManager$ChildView;->this$0:Landroid/webkit/ViewManager;

    #getter for: Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/ViewManager;->access$200(Landroid/webkit/ViewManager;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    .line 97
    iget-object v0, p0, Landroid/webkit/ViewManager$ChildView;->this$0:Landroid/webkit/ViewManager;

    #getter for: Landroid/webkit/ViewManager;->mChildren:Ljava/util/ArrayList;
    invoke-static {v0}, Landroid/webkit/ViewManager;->access$300(Landroid/webkit/ViewManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method


# virtual methods
.method attachView(IIII)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 56
    iget-object v0, p0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/webkit/ViewManager$ChildView;->setBounds(IIII)V

    .line 61
    iget-object v0, p0, Landroid/webkit/ViewManager$ChildView;->this$0:Landroid/webkit/ViewManager;

    #getter for: Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/ViewManager;->access$200(Landroid/webkit/ViewManager;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v1, Landroid/webkit/ViewManager$ChildView$1;

    invoke-direct {v1, p0}, Landroid/webkit/ViewManager$ChildView$1;-><init>(Landroid/webkit/ViewManager$ChildView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method removeView()V
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Landroid/webkit/ViewManager$ChildView;->this$0:Landroid/webkit/ViewManager;

    #getter for: Landroid/webkit/ViewManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/ViewManager;->access$200(Landroid/webkit/ViewManager;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v1, Landroid/webkit/ViewManager$ChildView$2;

    invoke-direct {v1, p0}, Landroid/webkit/ViewManager$ChildView$2;-><init>(Landroid/webkit/ViewManager$ChildView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method setBounds(IIII)V
    .locals 0
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 49
    iput p1, p0, Landroid/webkit/ViewManager$ChildView;->x:I

    .line 50
    iput p2, p0, Landroid/webkit/ViewManager$ChildView;->y:I

    .line 51
    iput p3, p0, Landroid/webkit/ViewManager$ChildView;->width:I

    .line 52
    iput p4, p0, Landroid/webkit/ViewManager$ChildView;->height:I

    .line 53
    return-void
.end method
