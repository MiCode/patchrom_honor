.class Lcom/android/internal/telephony/DataConnection$DcInactiveState;
.super Lcom/android/internal/util/State;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcInactiveState"
.end annotation


# instance fields
.field private mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

.field private mDisconnectParams:Lcom/android/internal/telephony/DataConnection$DisconnectParams;

.field private mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

.field final synthetic this$0:Lcom/android/internal/telephony/DataConnection;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/DataConnection;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 741
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 742
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 743
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 744
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->mDisconnectParams:Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 741
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection$DcInactiveState;-><init>(Lcom/android/internal/telephony/DataConnection;)V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v1, v0, Lcom/android/internal/telephony/DataConnection;->mTag:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/android/internal/telephony/DataConnection;->mTag:I

    .line 770
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eqz v0, :cond_0

    .line 772
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    #calls: Lcom/android/internal/telephony/DataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/DataConnection;->access$700(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V

    .line 774
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->mDisconnectParams:Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    if-eqz v0, :cond_1

    .line 776
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->mDisconnectParams:Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    #calls: Lcom/android/internal/telephony/DataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/DataConnection$DisconnectParams;)V
    invoke-static {v0, v1}, Lcom/android/internal/telephony/DataConnection;->access$1000(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$DisconnectParams;)V

    .line 778
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v0}, Lcom/android/internal/telephony/DataConnection;->clearSettings()V

    .line 779
    return-void
.end method

.method public exit()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 784
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 785
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 786
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->mDisconnectParams:Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    .line 787
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    .line 793
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 826
    const/4 v1, 0x0

    .line 829
    .local v1, retVal:Z
    :goto_0
    return v1

    .line 796
    .end local v1           #retVal:Z
    :sswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v3, "DcInactiveState: msg.what=RSP_RESET, ignore we\'re already reset"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 798
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v2, v2, Lcom/android/internal/telephony/DataConnection;->mAc:Lcom/android/internal/util/AsyncChannel;

    const v3, 0x4100f

    invoke-virtual {v2, p1, v3}, Lcom/android/internal/util/AsyncChannel;->replyToMessage(Landroid/os/Message;I)V

    .line 799
    const/4 v1, 0x1

    .line 800
    .restart local v1       #retVal:Z
    goto :goto_0

    .line 803
    .end local v1           #retVal:Z
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 804
    .local v0, cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget v2, v2, Lcom/android/internal/telephony/DataConnection;->mTag:I

    iput v2, v0, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->tag:I

    .line 806
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DcInactiveState msg.what=EVENT_CONNECT.RefCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mRefCount:I
    invoke-static {v4}, Lcom/android/internal/telephony/DataConnection;->access$500(Lcom/android/internal/telephony/DataConnection;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 809
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const/4 v3, 0x1

    #setter for: Lcom/android/internal/telephony/DataConnection;->mRefCount:I
    invoke-static {v2, v3}, Lcom/android/internal/telephony/DataConnection;->access$502(Lcom/android/internal/telephony/DataConnection;I)I

    .line 810
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/DataConnection;->onConnect(Lcom/android/internal/telephony/DataConnection$ConnectionParams;)V

    .line 811
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    #getter for: Lcom/android/internal/telephony/DataConnection;->mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;
    invoke-static {v3}, Lcom/android/internal/telephony/DataConnection;->access$1100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    move-result-object v3

    #calls: Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/internal/telephony/DataConnection;->access$1200(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/IState;)V

    .line 812
    const/4 v1, 0x1

    .line 813
    .restart local v1       #retVal:Z
    goto :goto_0

    .line 816
    .end local v0           #cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    .end local v1           #retVal:Z
    :sswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    const-string v3, "DcInactiveState: msg.what=EVENT_DISCONNECT"

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 817
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    #calls: Lcom/android/internal/telephony/DataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/DataConnection$DisconnectParams;)V
    invoke-static {v3, v2}, Lcom/android/internal/telephony/DataConnection;->access$1000(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$DisconnectParams;)V

    .line 818
    const/4 v1, 0x1

    .line 819
    .restart local v1       #retVal:Z
    goto :goto_0

    .line 793
    :sswitch_data_0
    .sparse-switch
        0x40000 -> :sswitch_1
        0x40004 -> :sswitch_2
        0x4100e -> :sswitch_0
    .end sparse-switch
.end method

.method public setEnterNotificationParams(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;I)V
    .locals 1
    .parameter "cp"
    .parameter "cause"
    .parameter "retryOverride"

    .prologue
    .line 749
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->mConnectionParams:Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 750
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 751
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->this$0:Lcom/android/internal/telephony/DataConnection;

    iput p3, v0, Lcom/android/internal/telephony/DataConnection;->mRetryOverride:I

    .line 752
    return-void
.end method

.method public setEnterNotificationParams(Lcom/android/internal/telephony/DataConnection$DisconnectParams;)V
    .locals 0
    .parameter "dp"

    .prologue
    .line 756
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;->mDisconnectParams:Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    .line 757
    return-void
.end method
