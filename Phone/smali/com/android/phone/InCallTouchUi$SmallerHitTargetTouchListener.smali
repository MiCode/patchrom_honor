.class Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;
.super Ljava/lang/Object;
.source "InCallTouchUi.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallTouchUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmallerHitTargetTouchListener"
.end annotation


# instance fields
.field mDownEventHit:Z

.field final synthetic this$0:Lcom/android/phone/InCallTouchUi;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallTouchUi;)V
    .locals 0
    .parameter

    .prologue
    .line 1129
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;->this$0:Lcom/android/phone/InCallTouchUi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1170
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    if-nez v8, :cond_3

    .line 1174
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v0, v8

    .line 1175
    .local v0, touchX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v2, v8

    .line 1177
    .local v2, touchY:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1178
    .local v5, viewWidth:I
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    .line 1181
    .local v4, viewHeight:I
    mul-int/lit8 v8, v0, 0x64

    int-to-float v8, v8

    int-to-float v9, v5

    div-float/2addr v8, v9

    float-to-int v1, v8

    .line 1182
    .local v1, touchXPercent:I
    mul-int/lit8 v8, v2, 0x64

    int-to-float v8, v8

    int-to-float v9, v4

    div-float/2addr v8, v9

    float-to-int v3, v8

    .line 1191
    .local v3, touchYPercent:I
    const/16 v8, 0x19

    if-lt v1, v8, :cond_0

    const/16 v8, 0x4b

    if-gt v1, v8, :cond_0

    const/16 v8, 0xa

    if-lt v3, v8, :cond_0

    const/16 v8, 0x5a

    if-le v3, v8, :cond_2

    .line 1195
    :cond_0
    iput-boolean v7, p0, Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;->mDownEventHit:Z

    .line 1210
    .end local v0           #touchX:I
    .end local v1           #touchXPercent:I
    .end local v2           #touchY:I
    .end local v3           #touchYPercent:I
    .end local v4           #viewHeight:I
    .end local v5           #viewWidth:I
    :cond_1
    :goto_0
    return v6

    .line 1200
    .restart local v0       #touchX:I
    .restart local v1       #touchXPercent:I
    .restart local v2       #touchY:I
    .restart local v3       #touchYPercent:I
    .restart local v4       #viewHeight:I
    .restart local v5       #viewWidth:I
    :cond_2
    iput-boolean v6, p0, Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;->mDownEventHit:Z

    move v6, v7

    .line 1201
    goto :goto_0

    .line 1210
    .end local v0           #touchX:I
    .end local v1           #touchXPercent:I
    .end local v2           #touchY:I
    .end local v3           #touchYPercent:I
    .end local v4           #viewHeight:I
    .end local v5           #viewWidth:I
    :cond_3
    iget-boolean v8, p0, Lcom/android/phone/InCallTouchUi$SmallerHitTargetTouchListener;->mDownEventHit:Z

    if-eqz v8, :cond_1

    move v6, v7

    goto :goto_0
.end method
