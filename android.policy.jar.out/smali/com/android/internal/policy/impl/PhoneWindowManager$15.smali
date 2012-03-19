.class Lcom/android/internal/policy/impl/PhoneWindowManager$15;
.super Ljava/lang/Thread;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->shouldStopKeyWhenQuickPoweron(ZI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 2896
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2898
    const-string v1, "WindowManager"

    const-string v2, " phonewindowManager sleep begin"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2899
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$200()I

    move-result v0

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_2

    .line 2900
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2901
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$400()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 2899
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2903
    :cond_0
    const-string v1, "WindowManager"

    const-string v2, " phonewindowManager preabort exit thread"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2912
    :cond_1
    :goto_1
    return-void

    .line 2907
    :cond_2
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " phonewindowManager sleep end and mRunQuickPowerOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$300()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2908
    invoke-static {}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$300()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2909
    const-string v1, "WindowManager"

    const-string v2, " phonewindowManager really execQuickPoweron begin"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2910
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$15;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #calls: Lcom/android/internal/policy/impl/PhoneWindowManager;->execQuickPoweron()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$100(Lcom/android/internal/policy/impl/PhoneWindowManager;)V

    goto :goto_1
.end method
