.class abstract Landroid/widget/TextView$HandleView;
.super Landroid/view/View;
.source "TextView.java"

# interfaces
.implements Landroid/widget/TextView$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "HandleView"
.end annotation


# static fields
.field private static final HISTORY_SIZE:I = 0x5

.field private static final TOUCH_UP_FILTER_DELAY_AFTER:I = 0x96

.field private static final TOUCH_UP_FILTER_DELAY_BEFORE:I = 0x15e


# instance fields
.field private mActionPopupShower:Ljava/lang/Runnable;

.field protected mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

.field private final mContainer:Landroid/widget/PopupWindow;

.field protected mDrawable:Landroid/graphics/drawable/Drawable;

.field protected mDrawableLtr:Landroid/graphics/drawable/Drawable;

.field protected mDrawableRtl:Landroid/graphics/drawable/Drawable;

.field protected mHotspotX:I

.field private mIdealVerticalOffset:F

.field private mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mNumberPreviousOffsets:I

.field private mPositionHasChanged:Z

.field private mPositionX:I

.field private mPositionY:I

.field private mPreviousOffset:I

.field private mPreviousOffsetIndex:I

.field private final mPreviousOffsets:[I

.field private final mPreviousOffsetsTimes:[J

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter
    .parameter "drawableLtr"
    .parameter "drawableRtl"

    .prologue
    const/4 v2, 0x5

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 10547
    iput-object p1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    .line 10548
    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/TextView;->access$6400(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 10541
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/TextView$HandleView;->mPreviousOffset:I

    .line 10543
    iput-boolean v6, p0, Landroid/widget/TextView$HandleView;->mPositionHasChanged:Z

    .line 10579
    new-array v1, v2, [J

    iput-object v1, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetsTimes:[J

    .line 10580
    new-array v1, v2, [I

    iput-object v1, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsets:[I

    .line 10581
    iput v5, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    .line 10582
    iput v5, p0, Landroid/widget/TextView$HandleView;->mNumberPreviousOffsets:I

    .line 10549
    new-instance v1, Landroid/widget/PopupWindow;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {p1}, Landroid/widget/TextView;->access$6500(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x10102c8

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    .line 10551
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v6}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 10552
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 10553
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 10554
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v1, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 10556
    iput-object p2, p0, Landroid/widget/TextView$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    .line 10557
    iput-object p3, p0, Landroid/widget/TextView$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    .line 10559
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->updateDrawable()V

    .line 10561
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 10562
    .local v0, handleHeight:I
    const v1, -0x41666666

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/TextView$HandleView;->mTouchOffsetY:F

    .line 10563
    const v1, 0x3f333333

    int-to-float v2, v0

    mul-float/2addr v1, v2

    iput v1, p0, Landroid/widget/TextView$HandleView;->mIdealVerticalOffset:F

    .line 10564
    return-void
.end method

.method private addPositionToTouchUpFilter(I)V
    .locals 4
    .parameter "offset"

    .prologue
    .line 10590
    iget v0, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    .line 10591
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsets:[I

    iget v1, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    aput p1, v0, v1

    .line 10592
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetsTimes:[J

    iget v1, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 10593
    iget v0, p0, Landroid/widget/TextView$HandleView;->mNumberPreviousOffsets:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/TextView$HandleView;->mNumberPreviousOffsets:I

    .line 10594
    return-void
.end method

.method private filterOnTouchUp()V
    .locals 9

    .prologue
    .line 10597
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 10598
    .local v3, now:J
    const/4 v0, 0x0

    .line 10599
    .local v0, i:I
    iget v2, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    .line 10600
    .local v2, index:I
    iget v5, p0, Landroid/widget/TextView$HandleView;->mNumberPreviousOffsets:I

    const/4 v6, 0x5

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 10601
    .local v1, iMax:I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v5, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v2

    sub-long v5, v3, v5

    const-wide/16 v7, 0x96

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 10602
    add-int/lit8 v0, v0, 0x1

    .line 10603
    iget v5, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetIndex:I

    sub-int/2addr v5, v0

    add-int/lit8 v5, v5, 0x5

    rem-int/lit8 v2, v5, 0x5

    goto :goto_0

    .line 10606
    :cond_0
    if-lez v0, :cond_1

    if-ge v0, v1, :cond_1

    iget-object v5, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsetsTimes:[J

    aget-wide v5, v5, v2

    sub-long v5, v3, v5

    const-wide/16 v7, 0x15e

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 10608
    iget-object v5, p0, Landroid/widget/TextView$HandleView;->mPreviousOffsets:[I

    aget v5, v5, v2

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Landroid/widget/TextView$HandleView;->positionAtCursorOffset(IZ)V

    .line 10610
    :cond_1
    return-void
.end method

.method private isVisible()Z
    .locals 3

    .prologue
    .line 10676
    iget-boolean v0, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    if-eqz v0, :cond_0

    .line 10677
    const/4 v0, 0x1

    .line 10684
    :goto_0
    return v0

    .line 10680
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->isInBatchEditMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10681
    const/4 v0, 0x0

    goto :goto_0

    .line 10684
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget v1, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    iget v2, p0, Landroid/widget/TextView$HandleView;->mHotspotX:I

    add-int/2addr v1, v2

    iget v2, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    #calls: Landroid/widget/TextView;->isPositionVisible(II)Z
    invoke-static {v0, v1, v2}, Landroid/widget/TextView;->access$6700(Landroid/widget/TextView;II)Z

    move-result v0

    goto :goto_0
.end method

.method private startTouchUpFilter(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 10585
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/TextView$HandleView;->mNumberPreviousOffsets:I

    .line 10586
    invoke-direct {p0, p1}, Landroid/widget/TextView$HandleView;->addPositionToTouchUpFilter(I)V

    .line 10587
    return-void
.end method


# virtual methods
.method protected dismiss()V
    .locals 1

    .prologue
    .line 10634
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    .line 10635
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 10636
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->onDetached()V

    .line 10637
    return-void
.end method

.method public abstract getCurrentCursorOffset()I
.end method

.method protected abstract getHotspotX(Landroid/graphics/drawable/Drawable;Z)I
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 10640
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->dismiss()V

    .line 10642
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v0}, Landroid/widget/TextView;->access$2700(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView$PositionListener;->removeSubscriber(Landroid/widget/TextView$TextViewPositionListener;)V

    .line 10643
    return-void
.end method

.method protected hideActionPopupWindow()V
    .locals 2

    .prologue
    .line 10662
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 10663
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 10665
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    if-eqz v0, :cond_1

    .line 10666
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    invoke-virtual {v0}, Landroid/widget/TextView$ActionPopupWindow;->hide()V

    .line 10668
    :cond_1
    return-void
.end method

.method public isDragging()Z
    .locals 1

    .prologue
    .line 10811
    iget-boolean v0, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 10671
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public offsetHasBeenChanged()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 10613
    iget v1, p0, Landroid/widget/TextView$HandleView;->mNumberPreviousOffsets:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDetached()V
    .locals 0

    .prologue
    .line 10819
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->hideActionPopupWindow()V

    .line 10820
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "c"

    .prologue
    const/4 v4, 0x0

    .line 10755
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/widget/TextView$HandleView;->mRight:I

    iget v2, p0, Landroid/widget/TextView$HandleView;->mLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/TextView$HandleView;->mBottom:I

    iget v3, p0, Landroid/widget/TextView$HandleView;->mTop:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 10756
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10757
    return-void
.end method

.method onHandleMoved()V
    .locals 0

    .prologue
    .line 10815
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->hideActionPopupWindow()V

    .line 10816
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 10618
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView$HandleView;->setMeasuredDimension(II)V

    .line 10619
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 10761
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 10807
    :goto_0
    return v10

    .line 10763
    :pswitch_0
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->getCurrentCursorOffset()I

    move-result v8

    invoke-direct {p0, v8}, Landroid/widget/TextView$HandleView;->startTouchUpFilter(I)V

    .line 10764
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    iget v9, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetX:F

    .line 10765
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    iget v9, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    iput v8, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    .line 10767
    iget-object v8, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v8}, Landroid/widget/TextView;->access$2700(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v4

    .line 10768
    .local v4, positionListener:Landroid/widget/TextView$PositionListener;
    invoke-virtual {v4}, Landroid/widget/TextView$PositionListener;->getPositionX()I

    move-result v8

    iput v8, p0, Landroid/widget/TextView$HandleView;->mLastParentX:I

    .line 10769
    invoke-virtual {v4}, Landroid/widget/TextView$PositionListener;->getPositionY()I

    move-result v8

    iput v8, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    .line 10770
    iput-boolean v10, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    goto :goto_0

    .line 10775
    .end local v4           #positionListener:Landroid/widget/TextView$PositionListener;
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    .line 10776
    .local v6, rawX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    .line 10779
    .local v7, rawY:F
    iget v8, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    iget v9, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    int-to-float v9, v9

    sub-float v5, v8, v9

    .line 10780
    .local v5, previousVerticalOffset:F
    iget v8, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    int-to-float v8, v8

    sub-float v8, v7, v8

    iget v9, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    int-to-float v9, v9

    sub-float v0, v8, v9

    .line 10782
    .local v0, currentVerticalOffset:F
    iget v8, p0, Landroid/widget/TextView$HandleView;->mIdealVerticalOffset:F

    cmpg-float v8, v5, v8

    if-gez v8, :cond_0

    .line 10783
    iget v8, p0, Landroid/widget/TextView$HandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 10784
    .local v3, newVerticalOffset:F
    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 10789
    :goto_1
    iget v8, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    int-to-float v8, v8

    add-float/2addr v8, v3

    iput v8, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    .line 10791
    iget v8, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetX:F

    sub-float v8, v6, v8

    iget v9, p0, Landroid/widget/TextView$HandleView;->mHotspotX:I

    int-to-float v9, v9

    add-float v1, v8, v9

    .line 10792
    .local v1, newPosX:F
    iget v8, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    sub-float v8, v7, v8

    iget v9, p0, Landroid/widget/TextView$HandleView;->mTouchOffsetY:F

    add-float v2, v8, v9

    .line 10794
    .local v2, newPosY:F
    invoke-virtual {p0, v1, v2}, Landroid/widget/TextView$HandleView;->updatePosition(FF)V

    goto :goto_0

    .line 10786
    .end local v1           #newPosX:F
    .end local v2           #newPosY:F
    .end local v3           #newVerticalOffset:F
    :cond_0
    iget v8, p0, Landroid/widget/TextView$HandleView;->mIdealVerticalOffset:F

    invoke-static {v0, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 10787
    .restart local v3       #newVerticalOffset:F
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    goto :goto_1

    .line 10799
    .end local v0           #currentVerticalOffset:F
    .end local v3           #newVerticalOffset:F
    .end local v5           #previousVerticalOffset:F
    .end local v6           #rawX:F
    .end local v7           #rawY:F
    :pswitch_2
    invoke-direct {p0}, Landroid/widget/TextView$HandleView;->filterOnTouchUp()V

    .line 10800
    iput-boolean v9, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    goto/16 :goto_0

    .line 10804
    :pswitch_3
    iput-boolean v9, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    goto/16 :goto_0

    .line 10761
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected positionAtCursorOffset(IZ)V
    .locals 3
    .parameter "offset"
    .parameter "parentScrolled"

    .prologue
    .line 10695
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    if-nez v1, :cond_1

    .line 10697
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->prepareCursorControllers()V
    invoke-static {v1}, Landroid/widget/TextView;->access$6800(Landroid/widget/TextView;)V

    .line 10716
    :cond_0
    :goto_0
    return-void

    .line 10701
    :cond_1
    iget v1, p0, Landroid/widget/TextView$HandleView;->mPreviousOffset:I

    if-ne p1, v1, :cond_2

    if-eqz p2, :cond_0

    .line 10702
    :cond_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView$HandleView;->updateSelection(I)V

    .line 10703
    invoke-direct {p0, p1}, Landroid/widget/TextView$HandleView;->addPositionToTouchUpFilter(I)V

    .line 10704
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 10706
    .local v0, line:I
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    const/high16 v2, 0x3f00

    sub-float/2addr v1, v2

    iget v2, p0, Landroid/widget/TextView$HandleView;->mHotspotX:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    .line 10707
    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, v1, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v1

    iput v1, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    .line 10710
    iget v1, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->viewportToContentHorizontalOffset()I
    invoke-static {v2}, Landroid/widget/TextView;->access$2900(Landroid/widget/TextView;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    .line 10711
    iget v1, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->viewportToContentVerticalOffset()I
    invoke-static {v2}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    .line 10713
    iput p1, p0, Landroid/widget/TextView$HandleView;->mPreviousOffset:I

    .line 10714
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/TextView$HandleView;->mPositionHasChanged:Z

    goto :goto_0
.end method

.method public show()V
    .locals 2

    .prologue
    .line 10622
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10631
    :goto_0
    return-void

    .line 10624
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v0}, Landroid/widget/TextView;->access$2700(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroid/widget/TextView$PositionListener;->addSubscriber(Landroid/widget/TextView$TextViewPositionListener;Z)V

    .line 10627
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TextView$HandleView;->mPreviousOffset:I

    .line 10628
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->getCurrentCursorOffset()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView$HandleView;->positionAtCursorOffset(IZ)V

    .line 10630
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->hideActionPopupWindow()V

    goto :goto_0
.end method

.method showActionPopupWindow(I)V
    .locals 4
    .parameter "delay"

    .prologue
    .line 10646
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    if-nez v0, :cond_0

    .line 10647
    new-instance v0, Landroid/widget/TextView$ActionPopupWindow;

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/TextView$ActionPopupWindow;-><init>(Landroid/widget/TextView;Landroid/widget/TextView$1;)V

    iput-object v0, p0, Landroid/widget/TextView$HandleView;->mActionPopupWindow:Landroid/widget/TextView$ActionPopupWindow;

    .line 10649
    :cond_0
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    .line 10650
    new-instance v0, Landroid/widget/TextView$HandleView$1;

    invoke-direct {v0, p0}, Landroid/widget/TextView$HandleView$1;-><init>(Landroid/widget/TextView$HandleView;)V

    iput-object v0, p0, Landroid/widget/TextView$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    .line 10658
    :goto_0
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 10659
    return-void

    .line 10656
    :cond_1
    iget-object v0, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/TextView$HandleView;->mActionPopupShower:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected updateDrawable()V
    .locals 3

    .prologue
    .line 10567
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->getCurrentCursorOffset()I

    move-result v1

    .line 10568
    .local v1, offset:I
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    iget-object v2, v2, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v2, v1}, Landroid/text/Layout;->isRtlCharAt(I)Z

    move-result v0

    .line 10569
    .local v0, isRtlCharAtOffset:Z
    if-eqz v0, :cond_0

    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawableRtl:Landroid/graphics/drawable/Drawable;

    :goto_0
    iput-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 10570
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2, v0}, Landroid/widget/TextView$HandleView;->getHotspotX(Landroid/graphics/drawable/Drawable;Z)I

    move-result v2

    iput v2, p0, Landroid/widget/TextView$HandleView;->mHotspotX:I

    .line 10571
    return-void

    .line 10569
    :cond_0
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mDrawableLtr:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public abstract updatePosition(FF)V
.end method

.method public updatePosition(IIZZ)V
    .locals 6
    .parameter "parentPositionX"
    .parameter "parentPositionY"
    .parameter "parentPositionChanged"
    .parameter "parentScrolled"

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 10720
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->getCurrentCursorOffset()I

    move-result v2

    invoke-virtual {p0, v2, p4}, Landroid/widget/TextView$HandleView;->positionAtCursorOffset(IZ)V

    .line 10721
    if-nez p3, :cond_0

    iget-boolean v2, p0, Landroid/widget/TextView$HandleView;->mPositionHasChanged:Z

    if-eqz v2, :cond_5

    .line 10722
    :cond_0
    iget-boolean v2, p0, Landroid/widget/TextView$HandleView;->mIsDragging:Z

    if-eqz v2, :cond_3

    .line 10724
    iget v2, p0, Landroid/widget/TextView$HandleView;->mLastParentX:I

    if-ne p1, v2, :cond_1

    iget v2, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    if-eq p2, v2, :cond_2

    .line 10725
    :cond_1
    iget v2, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetX:F

    iget v3, p0, Landroid/widget/TextView$HandleView;->mLastParentX:I

    sub-int v3, p1, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetX:F

    .line 10726
    iget v2, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    iget v3, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/widget/TextView$HandleView;->mTouchToWindowOffsetY:F

    .line 10727
    iput p1, p0, Landroid/widget/TextView$HandleView;->mLastParentX:I

    .line 10728
    iput p2, p0, Landroid/widget/TextView$HandleView;->mLastParentY:I

    .line 10731
    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->onHandleMoved()V

    .line 10734
    :cond_3
    invoke-direct {p0}, Landroid/widget/TextView$HandleView;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 10735
    iget v2, p0, Landroid/widget/TextView$HandleView;->mPositionX:I

    add-int v0, p1, v2

    .line 10736
    .local v0, positionX:I
    iget v2, p0, Landroid/widget/TextView$HandleView;->mPositionY:I

    add-int v1, p2, v2

    .line 10737
    .local v1, positionY:I
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 10738
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0, v1, v4, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 10749
    .end local v0           #positionX:I
    .end local v1           #positionY:I
    :cond_4
    :goto_0
    iput-boolean v5, p0, Landroid/widget/TextView$HandleView;->mPositionHasChanged:Z

    .line 10751
    :cond_5
    return-void

    .line 10740
    .restart local v0       #positionX:I
    .restart local v1       #positionY:I
    :cond_6
    iget-object v2, p0, Landroid/widget/TextView$HandleView;->mContainer:Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/TextView$HandleView;->this$0:Landroid/widget/TextView;

    invoke-virtual {v2, v3, v5, v0, v1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0

    .line 10744
    .end local v0           #positionX:I
    .end local v1           #positionY:I
    :cond_7
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 10745
    invoke-virtual {p0}, Landroid/widget/TextView$HandleView;->dismiss()V

    goto :goto_0
.end method

.method protected abstract updateSelection(I)V
.end method
