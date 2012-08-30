.class final Landroid/webkit/HTML5VideoView$TimeupdateTask;
.super Ljava/util/TimerTask;
.source "HTML5VideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/HTML5VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TimeupdateTask"
.end annotation


# instance fields
.field private mProxy:Landroid/webkit/HTML5VideoViewProxy;

.field final synthetic this$0:Landroid/webkit/HTML5VideoView;


# direct methods
.method public constructor <init>(Landroid/webkit/HTML5VideoView;Landroid/webkit/HTML5VideoViewProxy;)V
    .locals 0
    .parameter
    .parameter "proxy"

    .prologue
    .line 289
    iput-object p1, p0, Landroid/webkit/HTML5VideoView$TimeupdateTask;->this$0:Landroid/webkit/HTML5VideoView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 290
    iput-object p2, p0, Landroid/webkit/HTML5VideoView$TimeupdateTask;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    .line 291
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Landroid/webkit/HTML5VideoView$TimeupdateTask;->mProxy:Landroid/webkit/HTML5VideoViewProxy;

    invoke-virtual {v0}, Landroid/webkit/HTML5VideoViewProxy;->onTimeupdate()V

    .line 296
    return-void
.end method
