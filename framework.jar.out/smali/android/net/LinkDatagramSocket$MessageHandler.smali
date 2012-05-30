.class Landroid/net/LinkDatagramSocket$MessageHandler;
.super Landroid/net/ILinkSocketMessageHandler$Stub;
.source "LinkDatagramSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkDatagramSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MessageHandler"
.end annotation


# static fields
.field private static final ON_BETTER_LINK_AVAIL:I = 0x2

.field private static final ON_CAPABILITIES_CHANGED:I = 0x4

.field private static final ON_GET_LINK_FAILURE:I = 0x1

.field private static final ON_LINK_AVAIL:I = 0x0

.field private static final ON_LINK_LOST:I = 0x3


# instance fields
.field final synthetic this$0:Landroid/net/LinkDatagramSocket;


# direct methods
.method private constructor <init>(Landroid/net/LinkDatagramSocket;)V
    .locals 0
    .parameter

    .prologue
    .line 682
    iput-object p1, p0, Landroid/net/LinkDatagramSocket$MessageHandler;->this$0:Landroid/net/LinkDatagramSocket;

    invoke-direct {p0}, Landroid/net/ILinkSocketMessageHandler$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/LinkDatagramSocket;Landroid/net/LinkDatagramSocket$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 682
    invoke-direct {p0, p1}, Landroid/net/LinkDatagramSocket$MessageHandler;-><init>(Landroid/net/LinkDatagramSocket;)V

    return-void
.end method


# virtual methods
.method public onBetterLinkAvail()V
    .locals 3

    .prologue
    .line 702
    const-string v0, "LinkDatagramSocket"

    const-string v1, "CallbackHandler.onBetterLinkAvail(properties) EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v0, p0, Landroid/net/LinkDatagramSocket$MessageHandler;->this$0:Landroid/net/LinkDatagramSocket;

    #getter for: Landroid/net/LinkDatagramSocket;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/net/LinkDatagramSocket;->access$200(Landroid/net/LinkDatagramSocket;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/net/LinkDatagramSocket$MessageHandler;->this$0:Landroid/net/LinkDatagramSocket;

    #getter for: Landroid/net/LinkDatagramSocket;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/net/LinkDatagramSocket;->access$200(Landroid/net/LinkDatagramSocket;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 704
    return-void
.end method

.method public onCapabilitiesChanged(Landroid/net/LinkCapabilities;)V
    .locals 3
    .parameter "changedCapabilities"

    .prologue
    .line 712
    const-string v0, "LinkDatagramSocket"

    const-string v1, "CallbackHandler.onCapabilitiesChanged(changedCapabilities) EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    iget-object v0, p0, Landroid/net/LinkDatagramSocket$MessageHandler;->this$0:Landroid/net/LinkDatagramSocket;

    #getter for: Landroid/net/LinkDatagramSocket;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/net/LinkDatagramSocket;->access$200(Landroid/net/LinkDatagramSocket;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/net/LinkDatagramSocket$MessageHandler;->this$0:Landroid/net/LinkDatagramSocket;

    #getter for: Landroid/net/LinkDatagramSocket;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/net/LinkDatagramSocket;->access$200(Landroid/net/LinkDatagramSocket;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 715
    return-void
.end method

.method public onGetLinkFailure(I)V
    .locals 4
    .parameter "reason"

    .prologue
    .line 697
    const-string v0, "LinkDatagramSocket"

    const-string v1, "CallbackHandler.onGetLinkFailure(reason) EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    iget-object v0, p0, Landroid/net/LinkDatagramSocket$MessageHandler;->this$0:Landroid/net/LinkDatagramSocket;

    #getter for: Landroid/net/LinkDatagramSocket;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/net/LinkDatagramSocket;->access$200(Landroid/net/LinkDatagramSocket;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/net/LinkDatagramSocket$MessageHandler;->this$0:Landroid/net/LinkDatagramSocket;

    #getter for: Landroid/net/LinkDatagramSocket;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/net/LinkDatagramSocket;->access$200(Landroid/net/LinkDatagramSocket;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 699
    return-void
.end method

.method public onLinkAvail(Landroid/net/LinkProperties;)V
    .locals 3
    .parameter "properties"

    .prologue
    .line 692
    const-string v0, "LinkDatagramSocket"

    const-string v1, "CallbackHandler.onLinkAvail(properties) EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    iget-object v0, p0, Landroid/net/LinkDatagramSocket$MessageHandler;->this$0:Landroid/net/LinkDatagramSocket;

    #getter for: Landroid/net/LinkDatagramSocket;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/net/LinkDatagramSocket;->access$200(Landroid/net/LinkDatagramSocket;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/net/LinkDatagramSocket$MessageHandler;->this$0:Landroid/net/LinkDatagramSocket;

    #getter for: Landroid/net/LinkDatagramSocket;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/net/LinkDatagramSocket;->access$200(Landroid/net/LinkDatagramSocket;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 694
    return-void
.end method

.method public onLinkLost()V
    .locals 3

    .prologue
    .line 707
    const-string v0, "LinkDatagramSocket"

    const-string v1, "CallbackHandler.onLinkLost() EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object v0, p0, Landroid/net/LinkDatagramSocket$MessageHandler;->this$0:Landroid/net/LinkDatagramSocket;

    #getter for: Landroid/net/LinkDatagramSocket;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Landroid/net/LinkDatagramSocket;->access$200(Landroid/net/LinkDatagramSocket;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/net/LinkDatagramSocket$MessageHandler;->this$0:Landroid/net/LinkDatagramSocket;

    #getter for: Landroid/net/LinkDatagramSocket;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/net/LinkDatagramSocket;->access$200(Landroid/net/LinkDatagramSocket;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 709
    return-void
.end method
