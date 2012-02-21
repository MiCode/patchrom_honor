.class Lcom/android/server/ConnectivityService$2;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .parameter

    .prologue
    .line 3056
    iput-object p1, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    .line 3059
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3060
    .local v0, action:Ljava/lang/String;
    const-string v7, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3061
    const-string v7, "ConnectivityService"

    const-string v8, "receive screen on intent!"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    iget-object v7, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    iget-boolean v7, v7, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    if-ne v7, v9, :cond_0

    .line 3064
    const-string v7, "ConnectivityService"

    const-string v8, "stop powersaving action!"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    iget-object v7, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->cancelPowerSaving()V
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;)V

    .line 3066
    iget-object v7, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    .line 3099
    :cond_0
    :goto_0
    return-void

    .line 3068
    :cond_1
    const-string v7, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 3069
    const-string v7, "ConnectivityService"

    const-string v8, "receive screen off intent!"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3070
    const/4 v4, 0x0

    .line 3072
    .local v4, mDataConnected:Z
    iget-object v7, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #getter for: Lcom/android/server/ConnectivityService;->mNetTrackers:[Landroid/net/NetworkStateTracker;
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;)[Landroid/net/NetworkStateTracker;

    move-result-object v1

    .local v1, arr$:[Landroid/net/NetworkStateTracker;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_4

    aget-object v6, v1, v2

    .line 3073
    .local v6, nt:Landroid/net/NetworkStateTracker;
    if-nez v6, :cond_3

    .line 3072
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3076
    :cond_3
    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v5

    .line 3077
    .local v5, netType:I
    iget-object v7, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v7, v7, Lcom/android/server/ConnectivityService;->mNetConfigs:[Landroid/net/NetworkConfig;

    aget-object v7, v7, v5

    iget v7, v7, Landroid/net/NetworkConfig;->radio:I

    if-nez v7, :cond_2

    .line 3078
    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->isAvailable()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Landroid/net/NetworkStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3079
    const/4 v4, 0x1

    .line 3080
    const-string v7, "ConnectivityService"

    const-string v8, "mobile data connected!"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3086
    .end local v5           #netType:I
    .end local v6           #nt:Landroid/net/NetworkStateTracker;
    :cond_4
    iget-object v7, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v7}, Lcom/android/server/ConnectivityService;->getMobileDataEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->getPowerSavingState()Z
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$3500(Lcom/android/server/ConnectivityService;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3087
    if-ne v4, v9, :cond_0

    iget-object v7, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    iget-boolean v7, v7, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    if-nez v7, :cond_0

    .line 3089
    const-string v7, "ConnectivityService"

    const-string v8, "start powersaving action!"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3090
    iget-object v7, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->tryPowerSaving()V
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;)V

    .line 3091
    iget-object v7, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    iput-boolean v9, v7, Lcom/android/server/ConnectivityService;->mStartPowerSaving:Z

    goto :goto_0

    .line 3094
    .end local v1           #arr$:[Landroid/net/NetworkStateTracker;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #mDataConnected:Z
    :cond_5
    const-string v7, "android.telephony.turnoff_DC"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 3096
    const-string v7, "ConnectivityService"

    const-string v8, "turn off Data Connection!"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3097
    iget-object v7, p0, Lcom/android/server/ConnectivityService$2;->this$0:Lcom/android/server/ConnectivityService;

    #calls: Lcom/android/server/ConnectivityService;->turnoffDC()V
    invoke-static {v7}, Lcom/android/server/ConnectivityService;->access$3700(Lcom/android/server/ConnectivityService;)V

    goto/16 :goto_0
.end method
