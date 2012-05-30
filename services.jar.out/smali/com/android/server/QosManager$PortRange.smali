.class Lcom/android/server/QosManager$PortRange;
.super Ljava/lang/Object;
.source "QosManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/QosManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PortRange"
.end annotation


# instance fields
.field portRangeVal:I

.field portStartVal:I

.field final synthetic this$0:Lcom/android/server/QosManager;


# direct methods
.method private constructor <init>(Lcom/android/server/QosManager;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/android/server/QosManager$PortRange;->this$0:Lcom/android/server/QosManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/QosManager;Lcom/android/server/QosManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/server/QosManager$PortRange;-><init>(Lcom/android/server/QosManager;)V

    return-void
.end method
