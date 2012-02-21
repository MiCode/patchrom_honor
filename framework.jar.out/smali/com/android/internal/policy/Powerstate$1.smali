.class final Lcom/android/internal/policy/Powerstate$1;
.super Ljava/lang/Thread;
.source "Powerstate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/Powerstate;->toggleAirPlane(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$modeContext:Landroid/content/Context;

.field final synthetic val$stateIson:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/android/internal/policy/Powerstate$1;->val$modeContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/internal/policy/Powerstate$1;->val$stateIson:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    .line 296
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 297
    .local v1, modePhone:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    if-nez v1, :cond_1

    .line 298
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 299
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Powerstate"

    const-string/jumbo v3, "toggleAirPlane wait phone ready"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_0
    const-string/jumbo v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    goto :goto_0

    .line 302
    :cond_1
    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 303
    iget-object v2, p0, Lcom/android/internal/policy/Powerstate$1;->val$modeContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    iget v4, p0, Lcom/android/internal/policy/Powerstate$1;->val$stateIson:I

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 304
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 306
    .local v0, aIntent:Landroid/content/Intent;
    const-string/jumbo v2, "state"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 308
    invoke-static {}, Lcom/android/internal/policy/Powerstate;->access$000()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Powerstate"

    const-string/jumbo v3, "toggleAirPlane send ACTION_AIRPLANE_MODE_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/Powerstate$1;->val$modeContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 310
    const-wide/16 v2, 0x9c4

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 311
    iget-object v2, p0, Lcom/android/internal/policy/Powerstate$1;->val$modeContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 312
    return-void
.end method
