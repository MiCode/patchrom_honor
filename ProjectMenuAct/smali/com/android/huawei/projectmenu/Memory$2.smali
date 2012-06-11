.class Lcom/android/huawei/projectmenu/Memory$2;
.super Landroid/os/storage/StorageEventListener;
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
    .line 111
    iput-object p1, p0, Lcom/android/huawei/projectmenu/Memory$2;->this$0:Lcom/android/huawei/projectmenu/Memory;

    invoke-direct {p0}, Landroid/os/storage/StorageEventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onStorageStateChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .parameter "oldState"
    .parameter "newState"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/huawei/projectmenu/Memory$2;->this$0:Lcom/android/huawei/projectmenu/Memory;

    #calls: Lcom/android/huawei/projectmenu/Memory;->updateMemoryStatus()V
    invoke-static {v0}, Lcom/android/huawei/projectmenu/Memory;->access$000(Lcom/android/huawei/projectmenu/Memory;)V

    .line 116
    return-void
.end method
