.class Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;
.super Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;
.source "MSimSimUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MSimSimUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MSimTouchInput"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/MSimSimUnlockScreen;)V
    .locals 2
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/SimUnlockScreen$TouchInput;-><init>(Lcom/android/internal/policy/impl/SimUnlockScreen;)V

    .line 209
    const v0, 0x1020329

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mZero:Landroid/widget/TextView;

    .line 210
    const v0, 0x1020320

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mOne:Landroid/widget/TextView;

    .line 211
    const v0, 0x1020321

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mTwo:Landroid/widget/TextView;

    .line 212
    const v0, 0x1020322

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mThree:Landroid/widget/TextView;

    .line 213
    const v0, 0x1020323

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mFour:Landroid/widget/TextView;

    .line 214
    const v0, 0x1020324

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mFive:Landroid/widget/TextView;

    .line 215
    const v0, 0x1020325

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mSix:Landroid/widget/TextView;

    .line 216
    const v0, 0x1020326

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mSeven:Landroid/widget/TextView;

    .line 217
    const v0, 0x1020327

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mEight:Landroid/widget/TextView;

    .line 218
    const v0, 0x1020328

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mNine:Landroid/widget/TextView;

    .line 219
    const v0, 0x1020256

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mCancelButton:Landroid/widget/TextView;

    .line 221
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mZero:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mOne:Landroid/widget/TextView;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mTwo:Landroid/widget/TextView;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mThree:Landroid/widget/TextView;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mFour:Landroid/widget/TextView;

    const-string v1, "4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 226
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mFive:Landroid/widget/TextView;

    const-string v1, "5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 227
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mSix:Landroid/widget/TextView;

    const-string v1, "6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mSeven:Landroid/widget/TextView;

    const-string v1, "7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mEight:Landroid/widget/TextView;

    const-string v1, "8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mNine:Landroid/widget/TextView;

    const-string v1, "9"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mZero:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mOne:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 234
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mTwo:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mThree:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 236
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mFour:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mFive:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mSix:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mSeven:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mEight:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mNine:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mCancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/MSimSimUnlockScreen;Lcom/android/internal/policy/impl/MSimSimUnlockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;-><init>(Lcom/android/internal/policy/impl/MSimSimUnlockScreen;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->mCancelButton:Landroid/widget/TextView;

    if-ne p1, v1, :cond_1

    .line 249
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    #getter for: Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mSubscription:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->access$100(Lcom/android/internal/policy/impl/MSimSimUnlockScreen;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->updatePinUnlockCancel(I)V

    .line 250
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToLockScreen()V

    .line 259
    :cond_0
    :goto_0
    return-void

    .line 254
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->checkDigit(Landroid/view/View;)I

    move-result v0

    .line 255
    .local v0, digit:I
    if-ltz v0, :cond_0

    .line 256
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    iget-object v1, v1, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/16 v2, 0x1388

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 257
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimSimUnlockScreen$MSimTouchInput;->this$0:Lcom/android/internal/policy/impl/MSimSimUnlockScreen;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/MSimSimUnlockScreen;->reportDigit(I)V

    goto :goto_0
.end method
