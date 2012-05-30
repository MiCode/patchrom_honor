.class Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$2;
.super Ljava/lang/Object;
.source "MSimKeyguardStatusViewManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;)V
    .locals 0
    .parameter

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 0
    .parameter "simState"

    .prologue
    .line 229
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;I)V
    .locals 1
    .parameter "simState"
    .parameter "subscription"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$2;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    #calls: Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V
    invoke-static {v0, p1, p2}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->access$300(Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;I)V

    .line 233
    return-void
.end method
