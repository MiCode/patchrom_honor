.class Landroid/widget/TextView$InsertionHandleView$1;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TextView$InsertionHandleView;->hideAfterDelay()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/TextView$InsertionHandleView;


# direct methods
.method constructor <init>(Landroid/widget/TextView$InsertionHandleView;)V
    .locals 0
    .parameter

    .prologue
    .line 10737
    iput-object p1, p0, Landroid/widget/TextView$InsertionHandleView$1;->this$1:Landroid/widget/TextView$InsertionHandleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 10739
    iget-object v0, p0, Landroid/widget/TextView$InsertionHandleView$1;->this$1:Landroid/widget/TextView$InsertionHandleView;

    invoke-virtual {v0}, Landroid/widget/TextView$InsertionHandleView;->hide()V

    .line 10740
    return-void
.end method
