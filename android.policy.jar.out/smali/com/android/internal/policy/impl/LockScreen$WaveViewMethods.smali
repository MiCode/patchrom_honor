.class Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;
.super Ljava/lang/Object;
.source "LockScreen.java"

# interfaces
.implements Lcom/android/internal/widget/WaveView$OnTriggerListener;
.implements Lcom/android/internal/policy/impl/LockScreen$UnlockWidgetCommonMethods;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WaveViewMethods"
.end annotation


# instance fields
.field private final mWaveView:Lcom/android/internal/widget/WaveView;

.field final synthetic this$0:Lcom/android/internal/policy/impl/LockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockScreen;Lcom/android/internal/widget/WaveView;)V
    .locals 0
    .parameter
    .parameter "waveView"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p2, p0, Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;->mWaveView:Lcom/android/internal/widget/WaveView;

    .line 157
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;->mWaveView:Lcom/android/internal/widget/WaveView;

    return-object v0
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 2
    .parameter "v"
    .parameter "grabbedState"

    .prologue
    .line 170
    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #getter for: Lcom/android/internal/policy/impl/LockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$200(Lcom/android/internal/policy/impl/LockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    const/16 v1, 0x7530

    invoke-interface {v0, v1}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock(I)V

    .line 173
    :cond_0
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 1
    .parameter "v"
    .parameter "whichHandle"

    .prologue
    .line 160
    const/16 v0, 0xa

    if-ne p2, v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;->this$0:Lcom/android/internal/policy/impl/LockScreen;

    #calls: Lcom/android/internal/policy/impl/LockScreen;->requestUnlockScreen()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/LockScreen;->access$500(Lcom/android/internal/policy/impl/LockScreen;)V

    .line 163
    :cond_0
    return-void
.end method

.method public ping()V
    .locals 0

    .prologue
    .line 185
    return-void
.end method

.method public reset(Z)V
    .locals 1
    .parameter "animate"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockScreen$WaveViewMethods;->mWaveView:Lcom/android/internal/widget/WaveView;

    invoke-virtual {v0}, Lcom/android/internal/widget/WaveView;->reset()V

    .line 183
    return-void
.end method

.method public updateResources()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method
