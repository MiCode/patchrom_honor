.class Lcom/android/server/QosManager$1;
.super Landroid/content/BroadcastReceiver;
.source "QosManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QosManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/QosManager;


# direct methods
.method constructor <init>(Lcom/android/server/QosManager;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/server/QosManager$1;->this$0:Lcom/android/server/QosManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, -0x1

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 103
    .local v6, action:Ljava/lang/String;
    const-string v0, "android.intent.action.ACTION_QOS_STATE_IND"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const-string v0, "QosIndicationState"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 106
    .local v3, qosIndState:I
    const-string v0, "QosStatus"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 107
    .local v4, qosState:I
    const-string v0, "QosId"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 108
    .local v2, qosId:I
    const-string v0, "QosUserData"

    invoke-virtual {p2, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 109
    .local v1, txId:I
    new-instance v5, Lcom/android/internal/telephony/QosSpec;

    invoke-direct {v5}, Lcom/android/internal/telephony/QosSpec;-><init>()V

    .line 110
    .local v5, myQos:Lcom/android/internal/telephony/QosSpec;
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v7, "QosSpec"

    invoke-virtual {v0, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .end local v5           #myQos:Lcom/android/internal/telephony/QosSpec;
    check-cast v5, Lcom/android/internal/telephony/QosSpec;

    .line 111
    .restart local v5       #myQos:Lcom/android/internal/telephony/QosSpec;
    iget-object v0, p0, Lcom/android/server/QosManager$1;->this$0:Lcom/android/server/QosManager;

    #calls: Lcom/android/server/QosManager;->updateQosStatus(IIIILcom/android/internal/telephony/QosSpec;)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/QosManager;->access$000(Lcom/android/server/QosManager;IIIILcom/android/internal/telephony/QosSpec;)V

    .line 115
    .end local v1           #txId:I
    .end local v2           #qosId:I
    .end local v3           #qosIndState:I
    .end local v4           #qosState:I
    .end local v5           #myQos:Lcom/android/internal/telephony/QosSpec;
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/server/QosManager$1;->this$0:Lcom/android/server/QosManager;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Received unexpected action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    #calls: Lcom/android/server/QosManager;->logw(Ljava/lang/String;)V
    invoke-static {v0, v7}, Lcom/android/server/QosManager;->access$100(Lcom/android/server/QosManager;Ljava/lang/String;)V

    goto :goto_0
.end method
