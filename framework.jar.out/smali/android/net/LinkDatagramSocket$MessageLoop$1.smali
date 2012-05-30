.class Landroid/net/LinkDatagramSocket$MessageLoop$1;
.super Landroid/os/Handler;
.source "LinkDatagramSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/LinkDatagramSocket$MessageLoop;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/LinkDatagramSocket$MessageLoop;


# direct methods
.method constructor <init>(Landroid/net/LinkDatagramSocket$MessageLoop;)V
    .locals 0
    .parameter

    .prologue
    .line 749
    iput-object p1, p0, Landroid/net/LinkDatagramSocket$MessageLoop$1;->this$1:Landroid/net/LinkDatagramSocket$MessageLoop;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 751
    const-string v0, "LinkDatagramSocket"

    const-string v1, "handleMessage(msg) EX"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 769
    const-string v0, "LinkDatagramSocket"

    const-string v1, "LinkDatagramSocket received an unknown message type"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :goto_0
    return-void

    .line 754
    :pswitch_0
    iget-object v0, p0, Landroid/net/LinkDatagramSocket$MessageLoop$1;->this$1:Landroid/net/LinkDatagramSocket$MessageLoop;

    iget-object v1, v0, Landroid/net/LinkDatagramSocket$MessageLoop;->this$0:Landroid/net/LinkDatagramSocket;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/LinkProperties;

    #calls: Landroid/net/LinkDatagramSocket;->callbackOnLinkAvail(Landroid/net/LinkProperties;)V
    invoke-static {v1, v0}, Landroid/net/LinkDatagramSocket;->access$300(Landroid/net/LinkDatagramSocket;Landroid/net/LinkProperties;)V

    goto :goto_0

    .line 757
    :pswitch_1
    iget-object v0, p0, Landroid/net/LinkDatagramSocket$MessageLoop$1;->this$1:Landroid/net/LinkDatagramSocket$MessageLoop;

    iget-object v1, v0, Landroid/net/LinkDatagramSocket$MessageLoop;->this$0:Landroid/net/LinkDatagramSocket;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    #calls: Landroid/net/LinkDatagramSocket;->callbackOnGetLinkFailure(I)V
    invoke-static {v1, v0}, Landroid/net/LinkDatagramSocket;->access$400(Landroid/net/LinkDatagramSocket;I)V

    goto :goto_0

    .line 760
    :pswitch_2
    iget-object v0, p0, Landroid/net/LinkDatagramSocket$MessageLoop$1;->this$1:Landroid/net/LinkDatagramSocket$MessageLoop;

    iget-object v0, v0, Landroid/net/LinkDatagramSocket$MessageLoop;->this$0:Landroid/net/LinkDatagramSocket;

    #calls: Landroid/net/LinkDatagramSocket;->callbackOnBetterLinkAvail()V
    invoke-static {v0}, Landroid/net/LinkDatagramSocket;->access$500(Landroid/net/LinkDatagramSocket;)V

    goto :goto_0

    .line 763
    :pswitch_3
    iget-object v0, p0, Landroid/net/LinkDatagramSocket$MessageLoop$1;->this$1:Landroid/net/LinkDatagramSocket$MessageLoop;

    iget-object v0, v0, Landroid/net/LinkDatagramSocket$MessageLoop;->this$0:Landroid/net/LinkDatagramSocket;

    #calls: Landroid/net/LinkDatagramSocket;->callbackOnLinkLost()V
    invoke-static {v0}, Landroid/net/LinkDatagramSocket;->access$600(Landroid/net/LinkDatagramSocket;)V

    goto :goto_0

    .line 766
    :pswitch_4
    iget-object v0, p0, Landroid/net/LinkDatagramSocket$MessageLoop$1;->this$1:Landroid/net/LinkDatagramSocket$MessageLoop;

    iget-object v1, v0, Landroid/net/LinkDatagramSocket$MessageLoop;->this$0:Landroid/net/LinkDatagramSocket;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/LinkCapabilities;

    #calls: Landroid/net/LinkDatagramSocket;->callbackOnCapabilitiesChanged(Landroid/net/LinkCapabilities;)V
    invoke-static {v1, v0}, Landroid/net/LinkDatagramSocket;->access$700(Landroid/net/LinkDatagramSocket;Landroid/net/LinkCapabilities;)V

    goto :goto_0

    .line 752
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
