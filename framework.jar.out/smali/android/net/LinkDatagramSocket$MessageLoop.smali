.class Landroid/net/LinkDatagramSocket$MessageLoop;
.super Ljava/lang/Thread;
.source "LinkDatagramSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkDatagramSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageLoop"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/LinkDatagramSocket;


# direct methods
.method private constructor <init>(Landroid/net/LinkDatagramSocket;)V
    .locals 0
    .parameter

    .prologue
    .line 746
    iput-object p1, p0, Landroid/net/LinkDatagramSocket$MessageLoop;->this$0:Landroid/net/LinkDatagramSocket;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/LinkDatagramSocket;Landroid/net/LinkDatagramSocket$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 746
    invoke-direct {p0, p1}, Landroid/net/LinkDatagramSocket$MessageLoop;-><init>(Landroid/net/LinkDatagramSocket;)V

    return-void
.end method


# virtual methods
.method public quit()V
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Landroid/net/LinkDatagramSocket$MessageLoop;->this$0:Landroid/net/LinkDatagramSocket;

    #getter for: Landroid/net/LinkDatagramSocket;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/net/LinkDatagramSocket;->access$200(Landroid/net/LinkDatagramSocket;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/LinkDatagramSocket$MessageLoop;->this$0:Landroid/net/LinkDatagramSocket;

    #getter for: Landroid/net/LinkDatagramSocket;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/net/LinkDatagramSocket;->access$200(Landroid/net/LinkDatagramSocket;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 778
    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 748
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 749
    iget-object v0, p0, Landroid/net/LinkDatagramSocket$MessageLoop;->this$0:Landroid/net/LinkDatagramSocket;

    new-instance v1, Landroid/net/LinkDatagramSocket$MessageLoop$1;

    invoke-direct {v1, p0}, Landroid/net/LinkDatagramSocket$MessageLoop$1;-><init>(Landroid/net/LinkDatagramSocket$MessageLoop;)V

    #setter for: Landroid/net/LinkDatagramSocket;->mHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Landroid/net/LinkDatagramSocket;->access$202(Landroid/net/LinkDatagramSocket;Landroid/os/Handler;)Landroid/os/Handler;

    .line 773
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 774
    return-void
.end method
