.class Landroid/widget/MediaController$4;
.super Ljava/lang/Object;
.source "MediaController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/MediaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/MediaController;


# direct methods
.method constructor <init>(Landroid/widget/MediaController;)V
    .locals 0
    .parameter

    .prologue
    .line 492
    iput-object p1, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 494
    iget-object v0, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    #calls: Landroid/widget/MediaController;->doPauseResume()V
    invoke-static {v0}, Landroid/widget/MediaController;->access$800(Landroid/widget/MediaController;)V

    .line 495
    iget-object v0, p0, Landroid/widget/MediaController$4;->this$0:Landroid/widget/MediaController;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->show(I)V

    .line 496
    return-void
.end method
