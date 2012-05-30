.class Landroid/net/LinkSocket$MessageLoop$1;
.super Landroid/os/Handler;
.source "LinkSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/LinkSocket$MessageLoop;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/LinkSocket$MessageLoop;


# direct methods
.method constructor <init>(Landroid/net/LinkSocket$MessageLoop;)V
    .locals 0
    .parameter

    .prologue
    .line 608
    iput-object p1, p0, Landroid/net/LinkSocket$MessageLoop$1;->this$1:Landroid/net/LinkSocket$MessageLoop;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 610
    const-string v0, "LinkSocket"

    const-string v1, "handleMessage(msg) EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 628
    const-string v0, "LinkSocket"

    const-string v1, "LinkSocket received an unknown message type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    :goto_0
    return-void

    .line 613
    :pswitch_0
    iget-object v0, p0, Landroid/net/LinkSocket$MessageLoop$1;->this$1:Landroid/net/LinkSocket$MessageLoop;

    iget-object v1, v0, Landroid/net/LinkSocket$MessageLoop;->this$0:Landroid/net/LinkSocket;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/LinkProperties;

    #calls: Landroid/net/LinkSocket;->callbackOnLinkAvail(Landroid/net/LinkProperties;)V
    invoke-static {v1, v0}, Landroid/net/LinkSocket;->access$300(Landroid/net/LinkSocket;Landroid/net/LinkProperties;)V

    goto :goto_0

    .line 616
    :pswitch_1
    iget-object v0, p0, Landroid/net/LinkSocket$MessageLoop$1;->this$1:Landroid/net/LinkSocket$MessageLoop;

    iget-object v1, v0, Landroid/net/LinkSocket$MessageLoop;->this$0:Landroid/net/LinkSocket;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #calls: Landroid/net/LinkSocket;->callbackOnGetLinkFailure(I)V
    invoke-static {v1, v0}, Landroid/net/LinkSocket;->access$400(Landroid/net/LinkSocket;I)V

    goto :goto_0

    .line 619
    :pswitch_2
    iget-object v0, p0, Landroid/net/LinkSocket$MessageLoop$1;->this$1:Landroid/net/LinkSocket$MessageLoop;

    iget-object v0, v0, Landroid/net/LinkSocket$MessageLoop;->this$0:Landroid/net/LinkSocket;

    #calls: Landroid/net/LinkSocket;->callbackOnBetterLinkAvail()V
    invoke-static {v0}, Landroid/net/LinkSocket;->access$500(Landroid/net/LinkSocket;)V

    goto :goto_0

    .line 622
    :pswitch_3
    iget-object v0, p0, Landroid/net/LinkSocket$MessageLoop$1;->this$1:Landroid/net/LinkSocket$MessageLoop;

    iget-object v0, v0, Landroid/net/LinkSocket$MessageLoop;->this$0:Landroid/net/LinkSocket;

    #calls: Landroid/net/LinkSocket;->callbackOnLinkLost()V
    invoke-static {v0}, Landroid/net/LinkSocket;->access$600(Landroid/net/LinkSocket;)V

    goto :goto_0

    .line 625
    :pswitch_4
    iget-object v0, p0, Landroid/net/LinkSocket$MessageLoop$1;->this$1:Landroid/net/LinkSocket$MessageLoop;

    iget-object v1, v0, Landroid/net/LinkSocket$MessageLoop;->this$0:Landroid/net/LinkSocket;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/LinkCapabilities;

    #calls: Landroid/net/LinkSocket;->callbackOnCapabilitiesChanged(Landroid/net/LinkCapabilities;)V
    invoke-static {v1, v0}, Landroid/net/LinkSocket;->access$700(Landroid/net/LinkSocket;Landroid/net/LinkCapabilities;)V

    goto :goto_0

    .line 611
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
