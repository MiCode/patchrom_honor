.class Lcom/android/providers/media/MediaProvider$7;
.super Landroid/os/Handler;
.source "MediaProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/media/MediaProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/media/MediaProvider;


# direct methods
.method constructor <init>(Lcom/android/providers/media/MediaProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 2596
    iput-object p1, p0, Lcom/android/providers/media/MediaProvider$7;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2599
    iget-object v0, p0, Lcom/android/providers/media/MediaProvider$7;->this$0:Lcom/android/providers/media/MediaProvider;

    invoke-virtual {v0}, Lcom/android/providers/media/MediaProvider;->sendAllStorageInfoChangedIfNeed()V

    .line 2600
    return-void
.end method
