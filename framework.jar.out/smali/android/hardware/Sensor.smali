.class public Landroid/hardware/Sensor;
.super Ljava/lang/Object;
.source "Sensor.java"


# static fields
.field public static final TYPE_ACCELEROMETER:I = 0x1

.field public static final TYPE_ALL:I = -0x1

.field public static final TYPE_AMBIENT_TEMPERATURE:I = 0xd

.field public static final TYPE_GRAVITY:I = 0x9

.field public static final TYPE_GYROSCOPE:I = 0x4

.field public static final TYPE_LIGHT:I = 0x5

.field public static final TYPE_LINEAR_ACCELERATION:I = 0xa

.field public static final TYPE_MAGNETIC_FIELD:I = 0x2

.field public static final TYPE_ORIENTATION:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TYPE_PRESSURE:I = 0x6

.field public static final TYPE_PROXIMITY:I = 0x8

.field public static final TYPE_RELATIVE_HUMIDITY:I = 0xc

.field public static final TYPE_ROTATION_VECTOR:I = 0xb

.field public static final TYPE_TEMPERATURE:I = 0x7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private mHandle:I

.field private mLegacyType:I

.field private mMaxRange:F

.field private mMinDelay:I

.field private mName:Ljava/lang/String;

.field private mPower:F

.field private mResolution:F

.field private mType:I

.field private mVendor:Ljava/lang/String;

.field private mVersion:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    return-void
.end method


# virtual methods
.method getHandle()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Landroid/hardware/Sensor;->mHandle:I

    return v0
.end method

.method getLegacyType()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Landroid/hardware/Sensor;->mLegacyType:I

    return v0
.end method

.method public getMaximumRange()F
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Landroid/hardware/Sensor;->mMaxRange:F

    return v0
.end method

.method public getMinDelay()I
    .locals 1

    .prologue
    .line 195
    iget v0, p0, Landroid/hardware/Sensor;->mMinDelay:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Sensor;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPower()F
    .locals 1

    .prologue
    .line 186
    iget v0, p0, Landroid/hardware/Sensor;->mPower:F

    return v0
.end method

.method public getResolution()F
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Landroid/hardware/Sensor;->mResolution:F

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Landroid/hardware/Sensor;->mType:I

    return v0
.end method

.method public getVendor()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Landroid/hardware/Sensor;->mVendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 165
    iget v0, p0, Landroid/hardware/Sensor;->mVersion:I

    return v0
.end method

.method setLegacyType(I)V
    .locals 0
    .parameter "legacyType"

    .prologue
    .line 208
    iput p1, p0, Landroid/hardware/Sensor;->mLegacyType:I

    .line 209
    return-void
.end method

.method setRange(FF)V
    .locals 0
    .parameter "max"
    .parameter "res"

    .prologue
    .line 203
    iput p1, p0, Landroid/hardware/Sensor;->mMaxRange:F

    .line 204
    iput p2, p0, Landroid/hardware/Sensor;->mResolution:F

    .line 205
    return-void
.end method
