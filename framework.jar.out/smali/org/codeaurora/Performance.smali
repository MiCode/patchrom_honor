.class public Lorg/codeaurora/Performance;
.super Ljava/lang/Object;
.source "Performance.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Perf"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method private native native_cpu_boost(I)V
.end method

.method private native native_deinit()V
.end method


# virtual methods
.method public cpuBoost(I)V
    .locals 0
    .parameter "ntasks"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lorg/codeaurora/Performance;->native_cpu_boost(I)V

    .line 50
    return-void
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lorg/codeaurora/Performance;->native_deinit()V

    .line 45
    return-void
.end method
