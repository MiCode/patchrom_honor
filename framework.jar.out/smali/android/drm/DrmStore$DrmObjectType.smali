.class public Landroid/drm/DrmStore$DrmObjectType;
.super Ljava/lang/Object;
.source "DrmStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/drm/DrmStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DrmObjectType"
.end annotation


# static fields
.field public static final CONTENT:I = 0x1

.field public static final DRM_COMBINED_DELIVERY:I = 0x6

.field public static final DRM_FORWARD_LOCK:I = 0x5

.field public static final DRM_SEPARATE_DELIVERY:I = 0x7

.field public static final DRM_SEPARATE_DELIVERY_SF:I = 0x8

.field public static final DRM_UNKNOWN:I = 0x4

.field public static final RIGHTS_OBJECT:I = 0x2

.field public static final TRIGGER_OBJECT:I = 0x3

.field public static final UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
