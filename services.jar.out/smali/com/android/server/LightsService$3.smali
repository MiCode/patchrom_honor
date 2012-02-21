.class Lcom/android/server/LightsService$3;
.super Landroid/content/BroadcastReceiver;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/LightsService;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 223
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 224
    .local v0, action:Ljava/lang/String;
    const-string v2, "true"

    const-string v3, "ro.config.hw_quickpoweron"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 227
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 228
    iget-object v2, p0, Lcom/android/server/LightsService$3;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mLights:[Lcom/android/server/LightsService$Light;
    invoke-static {v2}, Lcom/android/server/LightsService;->access$600(Lcom/android/server/LightsService;)[Lcom/android/server/LightsService$Light;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/android/server/LightsService$Light;->turnOff()V

    .line 227
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    .end local v1           #i:I
    :cond_0
    return-void
.end method
