.class Landroid/webkit/ZoomManager$ScaleDetectorListener;
.super Ljava/lang/Object;
.source "ZoomManager.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/ZoomManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleDetectorListener"
.end annotation


# instance fields
.field private mAccumulatedSpan:F

.field final synthetic this$0:Landroid/webkit/ZoomManager;


# direct methods
.method private constructor <init>(Landroid/webkit/ZoomManager;)V
    .locals 0
    .parameter

    .prologue
    .line 824
    iput-object p1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/webkit/ZoomManager;Landroid/webkit/ZoomManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 824
    invoke-direct {p0, p1}, Landroid/webkit/ZoomManager$ScaleDetectorListener;-><init>(Landroid/webkit/ZoomManager;)V

    return-void
.end method


# virtual methods
.method public handleScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 6
    .parameter "detector"

    .prologue
    const/4 v2, 0x1

    .line 862
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$900(Landroid/webkit/ZoomManager;)F

    move-result v4

    mul-float v1, v3, v4

    .line 866
    .local v1, scale:F
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v3, v1}, Landroid/webkit/ZoomManager;->isScaleOverLimits(F)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v3

    cmpg-float v3, v1, v3

    if-gez v3, :cond_3

    :cond_0
    move v0, v2

    .line 870
    .local v0, isScaleLimited:Z
    :goto_0
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v3, v1}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result v3

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v4}, Landroid/webkit/ZoomManager;->getZoomOverviewScale()F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 872
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$1000(Landroid/webkit/ZoomManager;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v3, v1}, Landroid/webkit/ZoomManager;->willScaleTriggerZoom(F)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 873
    :cond_1
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #setter for: Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z
    invoke-static {v3, v2}, Landroid/webkit/ZoomManager;->access$1002(Landroid/webkit/ZoomManager;Z)Z

    .line 875
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$900(Landroid/webkit/ZoomManager;)F

    move-result v3

    cmpl-float v3, v1, v3

    if-lez v3, :cond_4

    .line 876
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$900(Landroid/webkit/ZoomManager;)F

    move-result v3

    const/high16 v4, 0x3fa0

    mul-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 880
    :goto_1
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v3, v1}, Landroid/webkit/ZoomManager;->computeScaleWithLimits(F)F

    move-result v1

    .line 882
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$900(Landroid/webkit/ZoomManager;)F

    move-result v3

    sub-float v3, v1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-static {}, Landroid/webkit/ZoomManager;->access$1100()F

    move-result v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_5

    .line 892
    .end local v0           #isScaleLimited:Z
    :cond_2
    :goto_2
    return v0

    .line 866
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 878
    .restart local v0       #isScaleLimited:Z
    :cond_4
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$900(Landroid/webkit/ZoomManager;)F

    move-result v3

    const v4, 0x3f4ccccd

    mul-float/2addr v3, v4

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_1

    .line 885
    :cond_5
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/webkit/ZoomManager;->setZoomCenter(FF)V

    .line 887
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v3, v1, v2}, Landroid/webkit/ZoomManager;->setZoomScale(FZ)V

    .line 889
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebView;->invalidate()V

    move v0, v2

    .line 890
    goto :goto_2
.end method

.method public isPanningOnly(Landroid/view/ScaleGestureDetector;)Z
    .locals 9
    .parameter "detector"

    .prologue
    const/4 v5, 0x0

    .line 842
    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusX:F
    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$400(Landroid/webkit/ZoomManager;)F

    move-result v2

    .line 843
    .local v2, prevFocusX:F
    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusY:F
    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$500(Landroid/webkit/ZoomManager;)F

    move-result v3

    .line 844
    .local v3, prevFocusY:F
    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v7

    #setter for: Landroid/webkit/ZoomManager;->mFocusX:F
    invoke-static {v6, v7}, Landroid/webkit/ZoomManager;->access$402(Landroid/webkit/ZoomManager;F)F

    .line 845
    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v7

    #setter for: Landroid/webkit/ZoomManager;->mFocusY:F
    invoke-static {v6, v7}, Landroid/webkit/ZoomManager;->access$502(Landroid/webkit/ZoomManager;F)F

    .line 846
    cmpl-float v6, v2, v5

    if-nez v6, :cond_0

    cmpl-float v6, v3, v5

    if-nez v6, :cond_0

    move v1, v5

    .line 849
    .local v1, focusDelta:F
    :goto_0
    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;
    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$200(Landroid/webkit/ZoomManager;)Landroid/webkit/ZoomManager$FocusMovementQueue;

    move-result-object v6

    #calls: Landroid/webkit/ZoomManager$FocusMovementQueue;->add(F)V
    invoke-static {v6, v1}, Landroid/webkit/ZoomManager$FocusMovementQueue;->access$700(Landroid/webkit/ZoomManager$FocusMovementQueue;F)V

    .line 850
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v7

    sub-float/2addr v6, v7

    iget v7, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    add-float v0, v6, v7

    .line 852
    .local v0, deltaSpan:F
    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;
    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$200(Landroid/webkit/ZoomManager;)Landroid/webkit/ZoomManager$FocusMovementQueue;

    move-result-object v6

    #calls: Landroid/webkit/ZoomManager$FocusMovementQueue;->getSum()F
    invoke-static {v6}, Landroid/webkit/ZoomManager$FocusMovementQueue;->access$800(Landroid/webkit/ZoomManager$FocusMovementQueue;)F

    move-result v6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_1

    const/4 v4, 0x1

    .line 853
    .local v4, result:Z
    :goto_1
    if-eqz v4, :cond_2

    .line 854
    iget v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    add-float/2addr v5, v0

    iput v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    .line 858
    :goto_2
    return v4

    .line 846
    .end local v0           #deltaSpan:F
    .end local v1           #focusDelta:F
    .end local v4           #result:Z
    :cond_0
    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusX:F
    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$400(Landroid/webkit/ZoomManager;)F

    move-result v6

    sub-float/2addr v6, v2

    iget-object v7, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusX:F
    invoke-static {v7}, Landroid/webkit/ZoomManager;->access$400(Landroid/webkit/ZoomManager;)F

    move-result v7

    sub-float/2addr v7, v2

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusY:F
    invoke-static {v7}, Landroid/webkit/ZoomManager;->access$500(Landroid/webkit/ZoomManager;)F

    move-result v7

    sub-float/2addr v7, v3

    iget-object v8, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusY:F
    invoke-static {v8}, Landroid/webkit/ZoomManager;->access$500(Landroid/webkit/ZoomManager;)F

    move-result v8

    sub-float/2addr v8, v3

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-static {v6}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v1

    goto :goto_0

    .line 852
    .restart local v0       #deltaSpan:F
    .restart local v1       #focusDelta:F
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 856
    .restart local v4       #result:Z
    :cond_2
    iput v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    goto :goto_2
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 896
    invoke-virtual {p0, p1}, Landroid/webkit/ZoomManager$ScaleDetectorListener;->isPanningOnly(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/webkit/ZoomManager$ScaleDetectorListener;->handleScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 897
    :cond_0
    iget-object v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;
    invoke-static {v0}, Landroid/webkit/ZoomManager;->access$200(Landroid/webkit/ZoomManager;)Landroid/webkit/ZoomManager$FocusMovementQueue;

    move-result-object v0

    #calls: Landroid/webkit/ZoomManager$FocusMovementQueue;->clear()V
    invoke-static {v0}, Landroid/webkit/ZoomManager$FocusMovementQueue;->access$300(Landroid/webkit/ZoomManager$FocusMovementQueue;)V

    .line 898
    const/4 v0, 0x1

    .line 900
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 2
    .parameter "detector"

    .prologue
    .line 828
    iget-object v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    const/4 v1, 0x0

    #setter for: Landroid/webkit/ZoomManager;->mInitialZoomOverview:Z
    invoke-static {v0, v1}, Landroid/webkit/ZoomManager;->access$102(Landroid/webkit/ZoomManager;Z)Z

    .line 829
    iget-object v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v0}, Landroid/webkit/ZoomManager;->dismissZoomPicker()V

    .line 830
    iget-object v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mFocusMovementQueue:Landroid/webkit/ZoomManager$FocusMovementQueue;
    invoke-static {v0}, Landroid/webkit/ZoomManager;->access$200(Landroid/webkit/ZoomManager;)Landroid/webkit/ZoomManager$FocusMovementQueue;

    move-result-object v0

    #calls: Landroid/webkit/ZoomManager$FocusMovementQueue;->clear()V
    invoke-static {v0}, Landroid/webkit/ZoomManager$FocusMovementQueue;->access$300(Landroid/webkit/ZoomManager$FocusMovementQueue;)V

    .line 831
    iget-object v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    #setter for: Landroid/webkit/ZoomManager;->mFocusX:F
    invoke-static {v0, v1}, Landroid/webkit/ZoomManager;->access$402(Landroid/webkit/ZoomManager;F)F

    .line 832
    iget-object v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    #setter for: Landroid/webkit/ZoomManager;->mFocusY:F
    invoke-static {v0, v1}, Landroid/webkit/ZoomManager;->access$502(Landroid/webkit/ZoomManager;F)F

    .line 833
    iget-object v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v0

    iget-object v0, v0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v0}, Landroid/webkit/ViewManager;->startZoom()V

    .line 834
    iget-object v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->onPinchToZoomAnimationStart()V

    .line 835
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->mAccumulatedSpan:F

    .line 836
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 9
    .parameter "detector"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 904
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$1000(Landroid/webkit/ZoomManager;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 905
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #setter for: Landroid/webkit/ZoomManager;->mPinchToZoomAnimating:Z
    invoke-static {v3, v1}, Landroid/webkit/ZoomManager;->access$1002(Landroid/webkit/ZoomManager;Z)Z

    .line 906
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mZoomCenterX:F
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$1300(Landroid/webkit/ZoomManager;)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollX()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v4

    #setter for: Landroid/webkit/ZoomManager;->mAnchorX:I
    invoke-static {v3, v4}, Landroid/webkit/ZoomManager;->access$1202(Landroid/webkit/ZoomManager;I)I

    .line 907
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v4

    iget-object v5, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mZoomCenterY:F
    invoke-static {v5}, Landroid/webkit/ZoomManager;->access$1500(Landroid/webkit/ZoomManager;)F

    move-result v5

    float-to-int v5, v5

    iget-object v6, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v6}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/webkit/WebView;->getScrollY()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v4, v5}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v4

    #setter for: Landroid/webkit/ZoomManager;->mAnchorY:I
    invoke-static {v3, v4}, Landroid/webkit/ZoomManager;->access$1402(Landroid/webkit/ZoomManager;I)I

    .line 910
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    invoke-virtual {v3}, Landroid/webkit/ZoomManager;->canZoomOut()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mActualScale:F
    invoke-static {v3}, Landroid/webkit/ZoomManager;->access$900(Landroid/webkit/ZoomManager;)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3fe999999999999aL

    iget-object v7, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mTextWrapScale:F
    invoke-static {v7}, Landroid/webkit/ZoomManager;->access$1600(Landroid/webkit/ZoomManager;)F

    move-result v7

    float-to-double v7, v7

    mul-double/2addr v5, v7

    cmpg-double v3, v3, v5

    if-gtz v3, :cond_2

    :cond_0
    move v0, v2

    .line 913
    .local v0, reflowNow:Z
    :goto_0
    iget-object v3, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    if-eqz v0, :cond_3

    iget-object v4, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v4}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUseFixedViewport()Z

    move-result v4

    if-nez v4, :cond_3

    :goto_1
    invoke-virtual {v3, v2}, Landroid/webkit/ZoomManager;->refreshZoomScale(Z)V

    .line 916
    iget-object v1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebView;->invalidate()V

    .line 919
    .end local v0           #reflowNow:Z
    :cond_1
    iget-object v1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v1

    iget-object v1, v1, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v1}, Landroid/webkit/ViewManager;->endZoom()V

    .line 920
    iget-object v1, p0, Landroid/webkit/ZoomManager$ScaleDetectorListener;->this$0:Landroid/webkit/ZoomManager;

    #getter for: Landroid/webkit/ZoomManager;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Landroid/webkit/ZoomManager;->access$600(Landroid/webkit/ZoomManager;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/webkit/WebView;->onPinchToZoomAnimationEnd(Landroid/view/ScaleGestureDetector;)V

    .line 921
    return-void

    :cond_2
    move v0, v1

    .line 910
    goto :goto_0

    .restart local v0       #reflowNow:Z
    :cond_3
    move v2, v1

    .line 913
    goto :goto_1
.end method
