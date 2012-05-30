.class Lcom/android/server/FmcStateMachine$FmcStateInactive;
.super Lcom/android/server/FmcStateMachine$FmcState;
.source "FmcStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FmcStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FmcStateInactive"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FmcStateMachine;


# direct methods
.method protected constructor <init>(Lcom/android/server/FmcStateMachine;)V
    .locals 2
    .parameter

    .prologue
    .line 589
    iput-object p1, p0, Lcom/android/server/FmcStateMachine$FmcStateInactive;->this$0:Lcom/android/server/FmcStateMachine;

    .line 590
    invoke-direct {p0, p1}, Lcom/android/server/FmcStateMachine$FmcState;-><init>(Lcom/android/server/FmcStateMachine;)V

    .line 591
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateInactive;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 596
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateInactive;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "enter"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    invoke-static {}, Lcom/android/server/FmcStateMachine;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 599
    invoke-virtual {p0, v2}, Lcom/android/server/FmcStateMachine$FmcStateInactive;->setStatus(I)V

    .line 603
    :goto_0
    invoke-static {}, Lcom/android/server/FmcStateMachine;->access$500()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/FmcStateMachine$FmcStateInactive;->handleCleanUpRouting([B)V

    .line 604
    return-void

    .line 601
    :cond_0
    invoke-static {v2}, Lcom/android/server/FmcStateMachine;->access$402(Z)Z

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "msg"

    .prologue
    .line 608
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateInactive;->getName()Ljava/lang/String;

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

    .line 610
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 618
    invoke-virtual {p0}, Lcom/android/server/FmcStateMachine$FmcStateInactive;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "processMessage not handled"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 612
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/FmcStateMachine$FmcStateInactive;->this$0:Lcom/android/server/FmcStateMachine;

    #getter for: Lcom/android/server/FmcStateMachine;->mFmcStateStart:Lcom/android/server/FmcStateMachine$FmcState;
    invoke-static {v0}, Lcom/android/server/FmcStateMachine;->access$600(Lcom/android/server/FmcStateMachine;)Lcom/android/server/FmcStateMachine$FmcState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/FmcStateMachine$FmcStateInactive;->transitionToState(Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 615
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/FmcStateMachine$FmcStateInactive;->this$0:Lcom/android/server/FmcStateMachine;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/FmcStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 610
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
