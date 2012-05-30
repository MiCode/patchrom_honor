.class public final Landroid/net/LinkCapabilities$QosStatus;
.super Ljava/lang/Object;
.source "LinkCapabilities.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/LinkCapabilities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "QosStatus"
.end annotation


# static fields
.field public static final QOS_STATE_ACTIVE:Ljava/lang/String; = "active"

.field public static final QOS_STATE_FAILED:Ljava/lang/String; = "failed"

.field public static final QOS_STATE_INACTIVE:Ljava/lang/String; = "inactive"

.field public static final QOS_STATE_SUSPENDED:Ljava/lang/String; = "suspended"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
