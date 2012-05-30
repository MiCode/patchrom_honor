.class public Lcom/android/internal/telephony/QosSpec$QosClass;
.super Ljava/lang/Object;
.source "QosSpec.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/QosSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QosClass"
.end annotation


# static fields
.field public static final BACKGROUND:I = 0x3

.field public static final CONVERSATIONAL:I = 0x0

.field public static final INTERACTIVE:I = 0x2

.field public static final STREAMING:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
