.class Landroid/net/LinkSocket$MessageLoop;
.super Ljava/lang/Thread;
.source "LinkSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageLoop"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/LinkSocket;


# direct methods
.method private constructor <init>(Landroid/net/LinkSocket;)V
    .locals 0
    .parameter

    .prologue
    .line 605
    iput-object p1, p0, Landroid/net/LinkSocket$MessageLoop;->this$0:Landroid/net/LinkSocket;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/LinkSocket;Landroid/net/LinkSocket$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 605
    invoke-direct {p0, p1}, Landroid/net/LinkSocket$MessageLoop;-><init>(Landroid/net/LinkSocket;)V

    return-void
.end method


# virtual methods
.method public quit()V
    .locals 1

    .prologue
    .line 636
    iget-object v0, p0, Landroid/net/LinkSocket$MessageLoop;->this$0:Landroid/net/LinkSocket;

    #getter for: Landroid/net/LinkSocket;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/net/LinkSocket;->access$200(Landroid/net/LinkSocket;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/LinkSocket$MessageLoop;->this$0:Landroid/net/LinkSocket;

    #getter for: Landroid/net/LinkSocket;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/net/LinkSocket;->access$200(Landroid/net/LinkSocket;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 637
    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 607
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 608
    iget-object v0, p0, Landroid/net/LinkSocket$MessageLoop;->this$0:Landroid/net/LinkSocket;

    new-instance v1, Landroid/net/LinkSocket$MessageLoop$1;

    invoke-direct {v1, p0}, Landroid/net/LinkSocket$MessageLoop$1;-><init>(Landroid/net/LinkSocket$MessageLoop;)V

    #setter for: Landroid/net/LinkSocket;->mHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Landroid/net/LinkSocket;->access$202(Landroid/net/LinkSocket;Landroid/os/Handler;)Landroid/os/Handler;

    .line 632
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 633
    return-void
.end method
