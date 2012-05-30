.class Lcom/android/server/MountService$4;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService;->notifyShareAvailabilityChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;

.field final synthetic val$avail:Z


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1232
    iput-object p1, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iput-boolean p2, p0, Lcom/android/server/MountService$4;->val$avail:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1235
    :try_start_0
    iget-object v1, p0, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    iget-boolean v2, p0, Lcom/android/server/MountService$4;->val$avail:Z

    #calls: Lcom/android/server/MountService;->sendUmsIntent(Z)V
    invoke-static {v1, v2}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1239
    :goto_0
    return-void

    .line 1236
    :catch_0
    move-exception v0

    .line 1237
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "MountService"

    const-string v2, "----USB  disconnected while enabled"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
