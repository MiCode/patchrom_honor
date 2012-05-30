.class Lcom/android/server/FmcStateMachine$FmcStateStart;
.super Lcom/android/server/FmcStateMachine$FmcState;
.source "FmcStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FmcStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FmcStateStart"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FmcStateMachine;


# direct methods
.method protected constructor <init>(Lcom/android/server/FmcStateMachine;)V
    .locals 2
    .parameter

    .prologue
    .line 627
    iput-object p1, p0, Lcom/android/server/FmcStateMachine$FmcStateStart;->this$0:Lcom/android/server/FmcStateMachine;

    .line 628
    invoke-direct {p0, p1}, Lcom/android/server/FmcStateMachine$FmcState;-><init>(Lcom/android/server/FmcStateMachine;)V

    .line 629
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateStart;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 634
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateStart;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/FmcStateMachine$FmcStateStart;->setStatus(I)V

    .line 637
    const-string v0, "fmc.bearer.enable.timeout"

    invoke-virtual {p0, v0}, Lcom/android/server/FmcStateMachine$FmcStateStart;->startStateTimer(Ljava/lang/String;)V

    .line 638
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateStart;->sendDisableData()V

    .line 639
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateStart;->sendEnableFmc()V

    .line 640
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    .line 644
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateStart;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMessage message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 663
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateStart;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "processMessage not handled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 648
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/FmcStateMachine$FmcStateStart;->this$0:Lcom/android/server/FmcStateMachine;

    #getter for: Lcom/android/server/FmcStateMachine;->mFmcStateShutDown:Lcom/android/server/FmcStateMachine$FmcState;
    invoke-static {v0}, Lcom/android/server/FmcStateMachine;->access$700(Lcom/android/server/FmcStateMachine;)Lcom/android/server/FmcStateMachine$FmcState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/FmcStateMachine$FmcStateStart;->transitionToState(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 651
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/FmcStateMachine$FmcStateStart;->this$0:Lcom/android/server/FmcStateMachine;

    #getter for: Lcom/android/server/FmcStateMachine;->mFmcStateBearerUp:Lcom/android/server/FmcStateMachine$FmcState;
    invoke-static {v0}, Lcom/android/server/FmcStateMachine;->access$800(Lcom/android/server/FmcStateMachine;)Lcom/android/server/FmcStateMachine$FmcState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/FmcStateMachine$FmcStateStart;->transitionToState(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 654
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/FmcStateMachine$FmcStateStart;->this$0:Lcom/android/server/FmcStateMachine;

    #getter for: Lcom/android/server/FmcStateMachine;->mFmcStateDSNotAvail:Lcom/android/server/FmcStateMachine$FmcState;
    invoke-static {v0}, Lcom/android/server/FmcStateMachine;->access$900(Lcom/android/server/FmcStateMachine;)Lcom/android/server/FmcStateMachine$FmcState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/FmcStateMachine$FmcStateStart;->transitionToState(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 657
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/FmcStateMachine$FmcStateStart;->this$0:Lcom/android/server/FmcStateMachine;

    #getter for: Lcom/android/server/FmcStateMachine;->mFmcStateShutDown:Lcom/android/server/FmcStateMachine$FmcState;
    invoke-static {v0}, Lcom/android/server/FmcStateMachine;->access$700(Lcom/android/server/FmcStateMachine;)Lcom/android/server/FmcStateMachine$FmcState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/FmcStateMachine$FmcStateStart;->transitionToState(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 660
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/FmcStateMachine$FmcStateStart;->this$0:Lcom/android/server/FmcStateMachine;

    #getter for: Lcom/android/server/FmcStateMachine;->mFmcStateFailure:Lcom/android/server/FmcStateMachine$FmcState;
    invoke-static {v0}, Lcom/android/server/FmcStateMachine;->access$1000(Lcom/android/server/FmcStateMachine;)Lcom/android/server/FmcStateMachine$FmcState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/FmcStateMachine$FmcStateStart;->transitionToState(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 646
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
