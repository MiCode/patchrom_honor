.class public final Landroidhwext/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidhwext/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final AlertDialog:[I = null

.field public static final AlertDialog_popupAnimation:I = 0x0

.field public static final AlertDialog_popupAnimationnotitle:I = 0x1

.field public static final Theme:[I = null

.field public static final Theme_indeterminateDrawable:I = 0x1

.field public static final Theme_progressDrawable:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 1827
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroidhwext/R$styleable;->AlertDialog:[I

    .line 1870
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroidhwext/R$styleable;->Theme:[I

    return-void

    .line 1827
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x1t 0x2t
        0x1t 0x0t 0x1t 0x2t
    .end array-data

    .line 1870
    :array_1
    .array-data 0x4
        0x2t 0x0t 0x1t 0x2t
        0x3t 0x0t 0x1t 0x2t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1813
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
