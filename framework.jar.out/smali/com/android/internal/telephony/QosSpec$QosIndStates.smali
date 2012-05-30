.class public Lcom/android/internal/telephony/QosSpec$QosIndStates;
.super Ljava/lang/Object;
.source "QosSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/QosSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QosIndStates"
.end annotation


# static fields
.field public static final ACTIVATED:I = 0x1

.field public static final INITIATED:I = 0x0

.field public static final MODIFIED:I = 0x5

.field public static final MODIFIED_NETWORK:I = 0x7

.field public static final MODIFYING:I = 0x6

.field public static final NONE:I = 0xd

.field public static final RELEASED:I = 0x3

.field public static final RELEASED_NETWORK:I = 0x4

.field public static final RELEASING:I = 0x2

.field public static final REQUEST_FAILED:I = 0xc

.field public static final RESUMED_NETWORK:I = 0xb

.field public static final RESUMING:I = 0xa

.field public static final SUSPENDED:I = 0x8

.field public static final SUSPENDING:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 400
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
