.class abstract Landroid/widget/TextView$PinnedPopupWindow;
.super Ljava/lang/Object;
.source "TextView.java"

# interfaces
.implements Landroid/widget/TextView$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PinnedPopupWindow"
.end annotation


# instance fields
.field protected mContentView:Landroid/view/ViewGroup;

.field protected mPopupWindow:Landroid/widget/PopupWindow;

.field mPositionX:I

.field mPositionY:I

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x2

    .line 9580
    iput-object p1, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9581
    invoke-virtual {p0}, Landroid/widget/TextView$PinnedPopupWindow;->createPopupWindow()V

    .line 9583
    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v2, 0x3ea

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 9584
    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 9585
    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 9587
    invoke-virtual {p0}, Landroid/widget/TextView$PinnedPopupWindow;->initContentView()V

    .line 9589
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 9591
    .local v0, wrapContent:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9593
    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 9594
    return-void
.end method

.method private computeLocalPosition()V
    .locals 6

    .prologue
    .line 9619
    invoke-virtual {p0}, Landroid/widget/TextView$PinnedPopupWindow;->measureContent()V

    .line 9620
    iget-object v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v2

    .line 9621
    .local v2, width:I
    invoke-virtual {p0}, Landroid/widget/TextView$PinnedPopupWindow;->getTextOffset()I

    move-result v1

    .line 9622
    .local v1, offset:I
    iget-object v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v3, v3, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v3

    int-to-float v4, v2

    const/high16 v5, 0x4000

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPositionX:I

    .line 9623
    iget v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPositionX:I

    iget-object v4, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->viewportToContentHorizontalOffset()I
    invoke-static {v4}, Landroid/widget/TextView;->access$2900(Landroid/widget/TextView;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPositionX:I

    .line 9625
    iget-object v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    iget-object v3, v3, Landroid/widget/TextView;->mLayout:Landroid/text/Layout;

    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 9626
    .local v0, line:I
    invoke-virtual {p0, v0}, Landroid/widget/TextView$PinnedPopupWindow;->getVerticalLocalPosition(I)I

    move-result v3

    iput v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPositionY:I

    .line 9627
    iget v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPositionY:I

    iget-object v4, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->viewportToContentVerticalOffset()I
    invoke-static {v4}, Landroid/widget/TextView;->access$3000(Landroid/widget/TextView;)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPositionY:I

    .line 9628
    return-void
.end method

.method private updatePosition(II)V
    .locals 7
    .parameter "parentPositionX"
    .parameter "parentPositionY"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 9631
    iget v4, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPositionX:I

    add-int v1, p1, v4

    .line 9632
    .local v1, positionX:I
    iget v4, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPositionY:I

    add-int v2, p2, v4

    .line 9634
    .local v2, positionY:I
    invoke-virtual {p0, v2}, Landroid/widget/TextView$PinnedPopupWindow;->clipVertically(I)I

    move-result v2

    .line 9637
    iget-object v4, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/widget/TextView;->access$3100(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 9638
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v4, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v3

    .line 9639
    .local v3, width:I
    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int/2addr v4, v3

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 9640
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 9642
    invoke-virtual {p0}, Landroid/widget/TextView$PinnedPopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 9643
    iget-object v4, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v4, v1, v2, v5, v5}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 9648
    :goto_0
    return-void

    .line 9645
    :cond_0
    iget-object v4, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v5, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {v4, v5, v6, v1, v2}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method


# virtual methods
.method protected abstract clipVertically(I)I
.end method

.method protected abstract createPopupWindow()V
.end method

.method protected abstract getTextOffset()I
.end method

.method protected abstract getVerticalLocalPosition(I)I
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 9651
    iget-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 9652
    iget-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v0}, Landroid/widget/TextView;->access$2700(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TextView$PositionListener;->removeSubscriber(Landroid/widget/TextView$TextViewPositionListener;)V

    .line 9653
    return-void
.end method

.method protected abstract initContentView()V
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 9668
    iget-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected measureContent()V
    .locals 5

    .prologue
    const/high16 v4, -0x8000

    .line 9606
    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    #getter for: Landroid/widget/TextView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/widget/TextView;->access$2800(Landroid/widget/TextView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 9607
    .local v0, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->measure(II)V

    .line 9612
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 9597
    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v1}, Landroid/widget/TextView;->access$2700(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Landroid/widget/TextView$PositionListener;->addSubscriber(Landroid/widget/TextView$TextViewPositionListener;Z)V

    .line 9599
    invoke-direct {p0}, Landroid/widget/TextView$PinnedPopupWindow;->computeLocalPosition()V

    .line 9601
    iget-object v1, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    #calls: Landroid/widget/TextView;->getPositionListener()Landroid/widget/TextView$PositionListener;
    invoke-static {v1}, Landroid/widget/TextView;->access$2700(Landroid/widget/TextView;)Landroid/widget/TextView$PositionListener;

    move-result-object v0

    .line 9602
    .local v0, positionListener:Landroid/widget/TextView$PositionListener;
    invoke-virtual {v0}, Landroid/widget/TextView$PositionListener;->getPositionX()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView$PositionListener;->getPositionY()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroid/widget/TextView$PinnedPopupWindow;->updatePosition(II)V

    .line 9603
    return-void
.end method

.method public updatePosition(IIZZ)V
    .locals 2
    .parameter "parentPositionX"
    .parameter "parentPositionY"
    .parameter "parentPositionChanged"
    .parameter "parentScrolled"

    .prologue
    .line 9659
    invoke-virtual {p0}, Landroid/widget/TextView$PinnedPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TextView$PinnedPopupWindow;->this$0:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView$PinnedPopupWindow;->getTextOffset()I

    move-result v1

    #calls: Landroid/widget/TextView;->isOffsetVisible(I)Z
    invoke-static {v0, v1}, Landroid/widget/TextView;->access$3200(Landroid/widget/TextView;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9660
    if-eqz p4, :cond_0

    invoke-direct {p0}, Landroid/widget/TextView$PinnedPopupWindow;->computeLocalPosition()V

    .line 9661
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView$PinnedPopupWindow;->updatePosition(II)V

    .line 9665
    :goto_0
    return-void

    .line 9663
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView$PinnedPopupWindow;->hide()V

    goto :goto_0
.end method
