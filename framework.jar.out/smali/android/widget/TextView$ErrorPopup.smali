.class Landroid/widget/TextView$ErrorPopup;
.super Landroid/widget/PopupWindow;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ErrorPopup"
.end annotation


# instance fields
.field private mAbove:Z

.field private mPopupInlineErrorAboveBackgroundId:I

.field private mPopupInlineErrorBackgroundId:I

.field private final mView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;II)V
    .locals 2
    .parameter "v"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x0

    .line 4090
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    .line 4084
    iput-boolean v0, p0, Landroid/widget/TextView$ErrorPopup;->mAbove:Z

    .line 4086
    iput v0, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    .line 4087
    iput v0, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    .line 4091
    iput-object p1, p0, Landroid/widget/TextView$ErrorPopup;->mView:Landroid/widget/TextView;

    .line 4095
    iget v0, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    const/16 v1, 0xd9

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView$ErrorPopup;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    .line 4097
    iget-object v0, p0, Landroid/widget/TextView$ErrorPopup;->mView:Landroid/widget/TextView;

    iget v1, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4098
    return-void
.end method

.method private getResourceId(II)I
    .locals 3
    .parameter "currentId"
    .parameter "index"

    .prologue
    .line 4117
    if-nez p1, :cond_0

    .line 4118
    iget-object v1, p0, Landroid/widget/TextView$ErrorPopup;->mView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Landroid/R$styleable;->Theme:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 4120
    .local v0, styledAttributes:Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    .line 4121
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 4123
    .end local v0           #styledAttributes:Landroid/content/res/TypedArray;
    :cond_0
    return p1
.end method


# virtual methods
.method fixDirection(Z)V
    .locals 2
    .parameter "above"

    .prologue
    .line 4101
    iput-boolean p1, p0, Landroid/widget/TextView$ErrorPopup;->mAbove:Z

    .line 4103
    if-eqz p1, :cond_0

    .line 4104
    iget v0, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    const/16 v1, 0xda

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView$ErrorPopup;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    .line 4112
    :goto_0
    iget-object v1, p0, Landroid/widget/TextView$ErrorPopup;->mView:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorAboveBackgroundId:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 4114
    return-void

    .line 4108
    :cond_0
    iget v0, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    const/16 v1, 0xd9

    invoke-direct {p0, v0, v1}, Landroid/widget/TextView$ErrorPopup;->getResourceId(II)I

    move-result v0

    iput v0, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    goto :goto_0

    .line 4112
    :cond_1
    iget v0, p0, Landroid/widget/TextView$ErrorPopup;->mPopupInlineErrorBackgroundId:I

    goto :goto_1
.end method

.method public update(IIIIZ)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "force"

    .prologue
    .line 4128
    invoke-super/range {p0 .. p5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    .line 4130
    invoke-virtual {p0}, Landroid/widget/TextView$ErrorPopup;->isAboveAnchor()Z

    move-result v0

    .line 4131
    .local v0, above:Z
    iget-boolean v1, p0, Landroid/widget/TextView$ErrorPopup;->mAbove:Z

    if-eq v0, v1, :cond_0

    .line 4132
    invoke-virtual {p0, v0}, Landroid/widget/TextView$ErrorPopup;->fixDirection(Z)V

    .line 4134
    :cond_0
    return-void
.end method
