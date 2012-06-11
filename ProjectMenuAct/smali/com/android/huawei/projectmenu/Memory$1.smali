.class Lcom/android/huawei/projectmenu/Memory$1;
.super Landroid/content/BroadcastReceiver;
.source "Memory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/huawei/projectmenu/Memory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/huawei/projectmenu/Memory;


# direct methods
.method constructor <init>(Lcom/android/huawei/projectmenu/Memory;)V
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/huawei/projectmenu/Memory$1;->this$0:Lcom/android/huawei/projectmenu/Memory;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/huawei/projectmenu/Memory$1;->this$0:Lcom/android/huawei/projectmenu/Memory;

    #calls: Lcom/android/huawei/projectmenu/Memory;->updateMemoryStatus()V
    invoke-static {v0}, Lcom/android/huawei/projectmenu/Memory;->access$000(Lcom/android/huawei/projectmenu/Memory;)V

    .line 108
    return-void
.end method
