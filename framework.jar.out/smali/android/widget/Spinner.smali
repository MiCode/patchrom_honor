.class public Landroid/widget/Spinner;
.super Landroid/widget/AbsSpinner;
.source "Spinner.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Spinner$1;,
        Landroid/widget/Spinner$DropdownPopup;,
        Landroid/widget/Spinner$DialogPopup;,
        Landroid/widget/Spinner$SpinnerPopup;,
        Landroid/widget/Spinner$DropDownAdapter;
    }
.end annotation


# static fields
.field private static final MAX_ITEMS_MEASURED:I = 0xf

.field public static final MODE_DIALOG:I = 0x0

.field public static final MODE_DROPDOWN:I = 0x1

.field private static final MODE_THEME:I = -0x1

.field private static final TAG:Ljava/lang/String; = "Spinner"


# instance fields
.field private mDisableChildrenWhenDisabled:Z

.field mDropDownWidth:I

.field private mGravity:I

.field private mPopup:Landroid/widget/Spinner$SpinnerPopup;

.field private mTempAdapter:Landroid/widget/Spinner$DropDownAdapter;

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 98
    const/4 v0, 0x0

    const v1, 0x1010081

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 99
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 109
    const v0, 0x1010081

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 110
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 125
    const/4 v0, -0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 126
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "mode"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 146
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 73
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    .line 148
    sget-object v4, Lcom/android/internal/R$styleable;->Spinner:[I

    invoke-virtual {p1, p2, v4, p3, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 151
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v4, -0x1

    if-ne p4, v4, :cond_0

    .line 152
    const/4 v4, 0x7

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    .line 155
    :cond_0
    packed-switch p4, :pswitch_data_0

    .line 186
    :goto_0
    const/16 v4, 0x11

    invoke-virtual {v0, v6, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/widget/Spinner;->mGravity:I

    .line 188
    iget-object v4, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    const/4 v5, 0x3

    invoke-virtual {v0, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/widget/Spinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 190
    const/16 v4, 0x9

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Landroid/widget/Spinner;->mDisableChildrenWhenDisabled:Z

    .line 193
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 197
    iget-object v4, p0, Landroid/widget/Spinner;->mTempAdapter:Landroid/widget/Spinner$DropDownAdapter;

    if-eqz v4, :cond_1

    .line 198
    iget-object v4, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    iget-object v5, p0, Landroid/widget/Spinner;->mTempAdapter:Landroid/widget/Spinner$DropDownAdapter;

    invoke-interface {v4, v5}, Landroid/widget/Spinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 199
    iput-object v7, p0, Landroid/widget/Spinner;->mTempAdapter:Landroid/widget/Spinner$DropDownAdapter;

    .line 201
    :cond_1
    return-void

    .line 157
    :pswitch_0
    new-instance v4, Landroid/widget/Spinner$DialogPopup;

    invoke-direct {v4, p0, v7}, Landroid/widget/Spinner$DialogPopup;-><init>(Landroid/widget/Spinner;Landroid/widget/Spinner$1;)V

    iput-object v4, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    goto :goto_0

    .line 162
    :pswitch_1
    new-instance v2, Landroid/widget/Spinner$DropdownPopup;

    invoke-direct {v2, p0, p1, p2, p3}, Landroid/widget/Spinner$DropdownPopup;-><init>(Landroid/widget/Spinner;Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 164
    .local v2, popup:Landroid/widget/Spinner$DropdownPopup;
    const/4 v4, 0x4

    const/4 v5, -0x2

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v4

    iput v4, p0, Landroid/widget/Spinner;->mDropDownWidth:I

    .line 167
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Spinner$DropdownPopup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    const/4 v4, 0x6

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    .line 171
    .local v3, verticalOffset:I
    if-eqz v3, :cond_2

    .line 172
    invoke-virtual {v2, v3}, Landroid/widget/Spinner$DropdownPopup;->setVerticalOffset(I)V

    .line 175
    :cond_2
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v6}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    .line 177
    .local v1, horizontalOffset:I
    if-eqz v1, :cond_3

    .line 178
    invoke-virtual {v2, v1}, Landroid/widget/Spinner$DropdownPopup;->setHorizontalOffset(I)V

    .line 181
    :cond_3
    iput-object v2, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic access$100(Landroid/widget/Spinner;)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private makeAndAddView(I)Landroid/view/View;
    .locals 4
    .parameter "position"

    .prologue
    .line 379
    iget-boolean v2, p0, Landroid/widget/Spinner;->mDataChanged:Z

    if-nez v2, :cond_0

    .line 380
    iget-object v2, p0, Landroid/widget/Spinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v2, p1}, Landroid/widget/AbsSpinner$RecycleBin;->get(I)Landroid/view/View;

    move-result-object v0

    .line 381
    .local v0, child:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 383
    invoke-direct {p0, v0}, Landroid/widget/Spinner;->setUpChild(Landroid/view/View;)V

    move-object v1, v0

    .line 395
    .end local v0           #child:Landroid/view/View;
    .local v1, child:Landroid/view/View;
    :goto_0
    return-object v1

    .line 390
    .end local v1           #child:Landroid/view/View;
    :cond_0
    iget-object v2, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 393
    .restart local v0       #child:Landroid/view/View;
    invoke-direct {p0, v0}, Landroid/widget/Spinner;->setUpChild(Landroid/view/View;)V

    move-object v1, v0

    .line 395
    .end local v0           #child:Landroid/view/View;
    .restart local v1       #child:Landroid/view/View;
    goto :goto_0
.end method

.method private setUpChild(Landroid/view/View;)V
    .locals 11
    .parameter "child"

    .prologue
    .line 408
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 409
    .local v6, lp:Landroid/view/ViewGroup$LayoutParams;
    if-nez v6, :cond_0

    .line 410
    invoke-virtual {p0}, Landroid/widget/Spinner;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    .line 413
    :cond_0
    const/4 v8, 0x0

    invoke-virtual {p0, p1, v8, v6}, Landroid/widget/Spinner;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    .line 415
    invoke-virtual {p0}, Landroid/widget/Spinner;->hasFocus()Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setSelected(Z)V

    .line 416
    iget-boolean v8, p0, Landroid/widget/Spinner;->mDisableChildrenWhenDisabled:Z

    if-eqz v8, :cond_1

    .line 417
    invoke-virtual {p0}, Landroid/widget/Spinner;->isEnabled()Z

    move-result v8

    invoke-virtual {p1, v8}, Landroid/view/View;->setEnabled(Z)V

    .line 421
    :cond_1
    iget v8, p0, Landroid/widget/Spinner;->mHeightMeasureSpec:I

    iget-object v9, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iget-object v10, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 423
    .local v1, childHeightSpec:I
    iget v8, p0, Landroid/widget/Spinner;->mWidthMeasureSpec:I

    iget-object v9, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    iget-object v10, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v8, v9, v10}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v5

    .line 427
    .local v5, childWidthSpec:I
    invoke-virtual {p1, v5, v1}, Landroid/view/View;->measure(II)V

    .line 433
    iget-object v8, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v9

    iget-object v10, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v10

    iget-object v10, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    sub-int/2addr v9, v10

    div-int/lit8 v9, v9, 0x2

    add-int v4, v8, v9

    .line 436
    .local v4, childTop:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int v0, v4, v8

    .line 438
    .local v0, childBottom:I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 439
    .local v7, width:I
    const/4 v2, 0x0

    .line 440
    .local v2, childLeft:I
    add-int v3, v2, v7

    .line 442
    .local v3, childRight:I
    invoke-virtual {p1, v2, v4, v3, v0}, Landroid/view/View;->layout(IIII)V

    .line 443
    return-void
.end method


# virtual methods
.method public getBaseline()I
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/4 v4, 0x0

    .line 245
    const/4 v0, 0x0

    .line 247
    .local v0, child:Landroid/view/View;
    invoke-virtual {p0}, Landroid/widget/Spinner;->getChildCount()I

    move-result v3

    if-lez v3, :cond_2

    .line 248
    invoke-virtual {p0, v4}, Landroid/widget/Spinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 255
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {v0}, Landroid/view/View;->getBaseline()I

    move-result v1

    .line 257
    .local v1, childBaseline:I
    if-ltz v1, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    add-int/2addr v2, v1

    .line 259
    .end local v1           #childBaseline:I
    :cond_1
    return v2

    .line 249
    :cond_2
    iget-object v3, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/widget/Spinner;->mAdapter:Landroid/widget/SpinnerAdapter;

    invoke-interface {v3}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 250
    invoke-direct {p0, v4}, Landroid/widget/Spinner;->makeAndAddView(I)Landroid/view/View;

    move-result-object v0

    .line 251
    iget-object v3, p0, Landroid/widget/Spinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v3, v4, v0}, Landroid/widget/AbsSpinner$RecycleBin;->put(ILandroid/view/View;)V

    .line 252
    invoke-virtual {p0}, Landroid/widget/Spinner;->removeAllViewsInLayout()V

    goto :goto_0
.end method

.method public getPrompt()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 485
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->getHintText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method layout(IZ)V
    .locals 8
    .parameter "delta"
    .parameter "animate"

    .prologue
    const/4 v7, 0x0

    .line 317
    iget-object v5, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v0, v5, Landroid/graphics/Rect;->left:I

    .line 318
    .local v0, childrenLeft:I
    iget v5, p0, Landroid/widget/Spinner;->mRight:I

    iget v6, p0, Landroid/widget/Spinner;->mLeft:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v6

    iget-object v6, p0, Landroid/widget/Spinner;->mSpinnerPadding:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int v1, v5, v6

    .line 320
    .local v1, childrenWidth:I
    iget-boolean v5, p0, Landroid/widget/Spinner;->mDataChanged:Z

    if-eqz v5, :cond_0

    .line 321
    invoke-virtual {p0}, Landroid/widget/Spinner;->handleDataChanged()V

    .line 325
    :cond_0
    iget v5, p0, Landroid/widget/Spinner;->mItemCount:I

    if-nez v5, :cond_1

    .line 326
    invoke-virtual {p0}, Landroid/widget/Spinner;->resetList()V

    .line 364
    :goto_0
    return-void

    .line 330
    :cond_1
    iget v5, p0, Landroid/widget/Spinner;->mNextSelectedPosition:I

    if-ltz v5, :cond_2

    .line 331
    iget v5, p0, Landroid/widget/Spinner;->mNextSelectedPosition:I

    invoke-virtual {p0, v5}, Landroid/widget/Spinner;->setSelectedPositionInt(I)V

    .line 334
    :cond_2
    invoke-virtual {p0}, Landroid/widget/Spinner;->recycleAllViews()V

    .line 337
    invoke-virtual {p0}, Landroid/widget/Spinner;->removeAllViewsInLayout()V

    .line 340
    iget v5, p0, Landroid/widget/Spinner;->mSelectedPosition:I

    iput v5, p0, Landroid/widget/Spinner;->mFirstPosition:I

    .line 341
    iget v5, p0, Landroid/widget/Spinner;->mSelectedPosition:I

    invoke-direct {p0, v5}, Landroid/widget/Spinner;->makeAndAddView(I)Landroid/view/View;

    move-result-object v2

    .line 342
    .local v2, sel:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 343
    .local v4, width:I
    move v3, v0

    .line 344
    .local v3, selectedOffset:I
    iget v5, p0, Landroid/widget/Spinner;->mGravity:I

    and-int/lit8 v5, v5, 0x7

    sparse-switch v5, :sswitch_data_0

    .line 352
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 355
    iget-object v5, p0, Landroid/widget/Spinner;->mRecycler:Landroid/widget/AbsSpinner$RecycleBin;

    invoke-virtual {v5}, Landroid/widget/AbsSpinner$RecycleBin;->clear()V

    .line 357
    invoke-virtual {p0}, Landroid/widget/Spinner;->invalidate()V

    .line 359
    invoke-virtual {p0}, Landroid/widget/Spinner;->checkSelectionChanged()V

    .line 361
    iput-boolean v7, p0, Landroid/widget/Spinner;->mDataChanged:Z

    .line 362
    iput-boolean v7, p0, Landroid/widget/Spinner;->mNeedSync:Z

    .line 363
    iget v5, p0, Landroid/widget/Spinner;->mSelectedPosition:I

    invoke-virtual {p0, v5}, Landroid/widget/Spinner;->setNextSelectedPositionInt(I)V

    goto :goto_0

    .line 346
    :sswitch_0
    div-int/lit8 v5, v1, 0x2

    add-int/2addr v5, v0

    div-int/lit8 v6, v4, 0x2

    sub-int v3, v5, v6

    .line 347
    goto :goto_1

    .line 349
    :sswitch_1
    add-int v5, v0, v1

    sub-int v3, v5, v4

    goto :goto_1

    .line 344
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I
    .locals 13
    .parameter "adapter"
    .parameter "background"

    .prologue
    .line 489
    if-nez p1, :cond_1

    .line 490
    const/4 v8, 0x0

    .line 529
    :cond_0
    :goto_0
    return v8

    .line 493
    :cond_1
    const/4 v8, 0x0

    .line 494
    .local v8, width:I
    const/4 v5, 0x0

    .line 495
    .local v5, itemView:Landroid/view/View;
    const/4 v4, 0x0

    .line 496
    .local v4, itemType:I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 498
    .local v9, widthMeasureSpec:I
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 503
    .local v2, heightMeasureSpec:I
    const/4 v10, 0x0

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 504
    .local v7, start:I
    invoke-interface {p1}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v10

    add-int/lit8 v11, v7, 0xf

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 505
    .local v1, end:I
    sub-int v0, v1, v7

    .line 506
    .local v0, count:I
    const/4 v10, 0x0

    rsub-int/lit8 v11, v0, 0xf

    sub-int v11, v7, v11

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 507
    move v3, v7

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 508
    invoke-interface {p1, v3}, Landroid/widget/SpinnerAdapter;->getItemViewType(I)I

    move-result v6

    .line 509
    .local v6, positionType:I
    if-eq v6, v4, :cond_2

    .line 510
    move v4, v6

    .line 511
    const/4 v5, 0x0

    .line 513
    :cond_2
    invoke-interface {p1, v3, v5, p0}, Landroid/widget/SpinnerAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 514
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    if-nez v10, :cond_3

    .line 515
    new-instance v10, Landroid/view/ViewGroup$LayoutParams;

    const/4 v11, -0x2

    const/4 v12, -0x2

    invoke-direct {v10, v11, v12}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 519
    :cond_3
    invoke-virtual {v5, v9, v2}, Landroid/view/View;->measure(II)V

    .line 520
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 507
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 524
    .end local v6           #positionType:I
    :cond_4
    if-eqz p2, :cond_0

    .line 525
    iget-object v10, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p2, v10}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 526
    iget-object v10, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->left:I

    iget-object v11, p0, Landroid/widget/Spinner;->mTempRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 461
    invoke-virtual {p0, p2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 462
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 463
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 265
    invoke-super {p0}, Landroid/widget/AbsSpinner;->onDetachedFromWindow()V

    .line 267
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0}, Landroid/widget/Spinner$SpinnerPopup;->dismiss()V

    .line 270
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v1, 0x0

    .line 303
    invoke-super/range {p0 .. p5}, Landroid/widget/AbsSpinner;->onLayout(ZIIII)V

    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Spinner;->mInLayout:Z

    .line 305
    invoke-virtual {p0, v1, v1}, Landroid/widget/Spinner;->layout(IZ)V

    .line 306
    iput-boolean v1, p0, Landroid/widget/Spinner;->mInLayout:Z

    .line 307
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 285
    invoke-super {p0, p1, p2}, Landroid/widget/AbsSpinner;->onMeasure(II)V

    .line 286
    iget-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x8000

    if-ne v1, v2, :cond_0

    .line 287
    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result v0

    .line 288
    .local v0, measuredWidth:I
    invoke-virtual {p0}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/Spinner;->measureContentWidth(Landroid/widget/SpinnerAdapter;Landroid/graphics/drawable/Drawable;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/Spinner;->setMeasuredDimension(II)V

    .line 293
    .end local v0           #measuredWidth:I
    :cond_0
    return-void
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 447
    invoke-super {p0}, Landroid/widget/AbsSpinner;->performClick()Z

    move-result v0

    .line 449
    .local v0, handled:Z
    if-nez v0, :cond_0

    .line 450
    const/4 v0, 0x1

    .line 452
    iget-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v1}, Landroid/widget/Spinner$SpinnerPopup;->isShowing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 453
    iget-object v1, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v1}, Landroid/widget/Spinner$SpinnerPopup;->show()V

    .line 457
    :cond_0
    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    check-cast p1, Landroid/widget/SpinnerAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/SpinnerAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 234
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 236
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    new-instance v1, Landroid/widget/Spinner$DropDownAdapter;

    invoke-direct {v1, p1}, Landroid/widget/Spinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;)V

    invoke-interface {v0, v1}, Landroid/widget/Spinner$SpinnerPopup;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    new-instance v0, Landroid/widget/Spinner$DropDownAdapter;

    invoke-direct {v0, p1}, Landroid/widget/Spinner$DropDownAdapter;-><init>(Landroid/widget/SpinnerAdapter;)V

    iput-object v0, p0, Landroid/widget/Spinner;->mTempAdapter:Landroid/widget/Spinner$DropDownAdapter;

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 205
    invoke-super {p0, p1}, Landroid/widget/AbsSpinner;->setEnabled(Z)V

    .line 206
    iget-boolean v2, p0, Landroid/widget/Spinner;->mDisableChildrenWhenDisabled:Z

    if-eqz v2, :cond_0

    .line 207
    invoke-virtual {p0}, Landroid/widget/Spinner;->getChildCount()I

    move-result v0

    .line 208
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 209
    invoke-virtual {p0, v1}, Landroid/widget/Spinner;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 1
    .parameter "gravity"

    .prologue
    .line 223
    iget v0, p0, Landroid/widget/Spinner;->mGravity:I

    if-eq v0, p1, :cond_1

    .line 224
    and-int/lit8 v0, p1, 0x7

    if-nez v0, :cond_0

    .line 225
    or-int/lit8 p1, p1, 0x3

    .line 227
    :cond_0
    iput p1, p0, Landroid/widget/Spinner;->mGravity:I

    .line 228
    invoke-virtual {p0}, Landroid/widget/Spinner;->requestLayout()V

    .line 230
    :cond_1
    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2
    .parameter "l"

    .prologue
    .line 280
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "setOnItemClickListener cannot be used with a spinner."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPrompt(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "prompt"

    .prologue
    .line 470
    iget-object v0, p0, Landroid/widget/Spinner;->mPopup:Landroid/widget/Spinner$SpinnerPopup;

    invoke-interface {v0, p1}, Landroid/widget/Spinner$SpinnerPopup;->setPromptText(Ljava/lang/CharSequence;)V

    .line 471
    return-void
.end method

.method public setPromptId(I)V
    .locals 1
    .parameter "promptId"

    .prologue
    .line 478
    invoke-virtual {p0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setPrompt(Ljava/lang/CharSequence;)V

    .line 479
    return-void
.end method
