.class Lcom/android/internal/policy/impl/KeyguardStatusViewManager$IccText;
.super Ljava/lang/Object;
.source "KeyguardStatusViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/KeyguardStatusViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IccText"
.end annotation


# instance fields
.field iccMissingInstructions:I

.field iccMissingMessageShort:I

.field iccPinLockedMessage:I

.field iccPukLockedMessage:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 730
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$IccText;->this$0:Lcom/android/internal/policy/impl/KeyguardStatusViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 731
    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$IccText;->iccMissingMessageShort:I

    .line 732
    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$IccText;->iccMissingInstructions:I

    .line 733
    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$IccText;->iccPinLockedMessage:I

    .line 734
    iput v0, p0, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$IccText;->iccPukLockedMessage:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;Lcom/android/internal/policy/impl/KeyguardStatusViewManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 730
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardStatusViewManager$IccText;-><init>(Lcom/android/internal/policy/impl/KeyguardStatusViewManager;)V

    return-void
.end method
