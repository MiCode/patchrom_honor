.class Landroid/view/GLES20Layer$Finalizer;
.super Ljava/lang/Object;
.source "GLES20Layer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/GLES20Layer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Finalizer"
.end annotation


# instance fields
.field private mLayerId:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .parameter "layerId"

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput p1, p0, Landroid/view/GLES20Layer$Finalizer;->mLayerId:I

    .line 69
    return-void
.end method


# virtual methods
.method destroy()V
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Landroid/view/GLES20Layer$Finalizer;->mLayerId:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nDestroyLayer(I)V

    .line 84
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/GLES20Layer$Finalizer;->mLayerId:I

    .line 85
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 74
    :try_start_0
    iget v0, p0, Landroid/view/GLES20Layer$Finalizer;->mLayerId:I

    if-eqz v0, :cond_0

    .line 75
    iget v0, p0, Landroid/view/GLES20Layer$Finalizer;->mLayerId:I

    invoke-static {v0}, Landroid/view/GLES20Canvas;->nDestroyLayerDeferred(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 80
    return-void

    .line 78
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method
