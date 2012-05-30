.class Lcom/android/internal/telephony/PhoneProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "PhoneProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/PhoneProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/PhoneProxy;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/PhoneProxy;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 75
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.ACTION_CHECK_PRE_POST_PAY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 77
    const-string v3, "currentMccmnc"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, mccmnc:Ljava/lang/String;
    const-string v3, "currentImsi"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, imsi:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    #getter for: Lcom/android/internal/telephony/PhoneProxy;->simUtils:Lcom/android/internal/telephony/SIMUtils;
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneProxy;->access$000(Lcom/android/internal/telephony/PhoneProxy;)Lcom/android/internal/telephony/SIMUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v2, v1, v4}, Lcom/android/internal/telephony/SIMUtils;->checkPrePostPay(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 87
    .end local v1           #imsi:Ljava/lang/String;
    .end local v2           #mccmnc:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.intent.action.ACTION_CHECK_GLOBAL_AUTO_MATCH_PARAM"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    const-string v3, "currentImsi"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, currentImsi:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    #getter for: Lcom/android/internal/telephony/PhoneProxy;->simUtils:Lcom/android/internal/telephony/SIMUtils;
    invoke-static {v3}, Lcom/android/internal/telephony/PhoneProxy;->access$000(Lcom/android/internal/telephony/PhoneProxy;)Lcom/android/internal/telephony/SIMUtils;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/PhoneProxy$1;->this$0:Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneProxy;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lcom/android/internal/telephony/SIMUtils;->checkGlobalAutoMatchParam(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method
