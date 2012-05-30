.class Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;
.super Ljava/lang/Object;
.source "SubscriptionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneSubscriptionInfo"
.end annotation


# instance fields
.field public cause:Ljava/lang/String;

.field public sub:Lcom/android/internal/telephony/Subscription;

.field public subReady:Z

.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionManager;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->this$0:Lcom/android/internal/telephony/SubscriptionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Lcom/android/internal/telephony/Subscription;

    invoke-direct {v0}, Lcom/android/internal/telephony/Subscription;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->sub:Lcom/android/internal/telephony/Subscription;

    .line 73
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->subReady:Z

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/SubscriptionManager$PhoneSubscriptionInfo;->cause:Ljava/lang/String;

    .line 75
    return-void
.end method
