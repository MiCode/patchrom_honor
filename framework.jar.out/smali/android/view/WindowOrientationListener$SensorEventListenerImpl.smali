.class final Landroid/view/WindowOrientationListener$SensorEventListenerImpl;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SensorEventListenerImpl"
.end annotation


# static fields
.field private static final ACCELEROMETER_DATA_X:I = 0x0

.field private static final ACCELEROMETER_DATA_Y:I = 0x1

.field private static final ACCELEROMETER_DATA_Z:I = 0x2

.field private static final ADJACENT_ORIENTATION_ANGLE_GAP:I = 0x2d

.field private static final ADJACENT_ORIENTATION_ANGLE_H2V_GAP:I = 0x0

.field private static final ADJACENT_ORIENTATION_ANGLE_V2H_GAP:I = 0xf

.field private static final FILTER_TIME_CONSTANT_MS:F = 100.0f

.field private static final HISTORY_SIZE:I = 0x14

.field private static final MAX_ACCELERATION_MAGNITUDE:F = 14.709975f

.field private static final MAX_FILTER_DELTA_TIME_MS:F = 1000.0f

.field private static final MAX_TILT:I = 0x4b

.field private static final MIN_ACCELERATION_MAGNITUDE:F = 4.903325f

.field private static final RADIANS_TO_DEGREES:F = 57.29578f

.field private static final SETTLE_MAGNITUDE_MAX_DELTA:F = 1.96133f

.field private static final SETTLE_ORIENTATION_ANGLE_MAX_DELTA:I = 0x5

.field private static final SETTLE_TILT_ANGLE_MAX_DELTA:I = 0x5

.field private static final SETTLE_TIME_MS:I = 0x5

.field private static final TILT_TOLERANCE:[[I


# instance fields
.field private mHistoryIndex:I

.field private mHistoryLength:I

.field private final mHistoryMagnitudes:[F

.field private final mHistoryOrientationAngles:[I

.field private final mHistoryTiltAngles:[I

.field private final mHistoryTimestampMS:[J

.field private mLastFilteredX:F

.field private mLastFilteredY:F

.field private mLastFilteredZ:F

.field private mLastTimestamp:J

.field private final mOrientationListener:Landroid/view/WindowOrientationListener;

.field private mProposalAgeMS:J

.field private mProposalRotation:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    .line 312
    const/4 v0, 0x4

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    sput-object v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    return-void

    :array_0
    .array-data 0x4
        0xect 0xfft 0xfft 0xfft
        0x46t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0xect 0xfft 0xfft 0xfft
        0x3ct 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0xect 0xfft 0xfft 0xfft
        0x32t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0xect 0xfft 0xfft 0xfft
        0x3ct 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/view/WindowOrientationListener;)V
    .locals 3
    .parameter "orientationListener"

    .prologue
    const/16 v2, 0x14

    .line 363
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastTimestamp:J

    .line 244
    new-array v0, v2, [J

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryTimestampMS:[J

    .line 245
    new-array v0, v2, [F

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryMagnitudes:[F

    .line 246
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryTiltAngles:[I

    .line 247
    new-array v0, v2, [I

    iput-object v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryOrientationAngles:[I

    .line 364
    iput-object p1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    .line 365
    return-void
.end method

.method private static angleAbsoluteDelta(II)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 643
    sub-int v1, p0, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 644
    .local v0, delta:I
    const/16 v1, 0xb4

    if-le v0, v1, :cond_0

    .line 645
    rsub-int v0, v0, 0x168

    .line 647
    :cond_0
    return v0
.end method

.method private clearProposal()V
    .locals 2

    .prologue
    .line 597
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalRotation:I

    .line 598
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalAgeMS:J

    .line 599
    return-void
.end method

.method private isOrientationAngleAcceptable(II)Z
    .locals 7
    .parameter "proposedRotation"
    .parameter "orientationAngle"

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 538
    iget-object v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    iget v0, v5, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    .line 542
    .local v0, currentRotation:I
    if-ltz v0, :cond_8

    .line 547
    if-eq p1, v0, :cond_0

    add-int/lit8 v5, v0, 0x1

    rem-int/lit8 v5, v5, 0x4

    if-ne p1, v5, :cond_5

    .line 551
    :cond_0
    if-eq p1, v4, :cond_1

    if-ne p1, v6, :cond_3

    .line 552
    :cond_1
    mul-int/lit8 v5, p1, 0x5a

    add-int/lit8 v5, v5, -0x2d

    add-int/lit8 v1, v5, 0xf

    .line 557
    .local v1, lowerBound:I
    :goto_0
    if-nez p1, :cond_4

    .line 558
    const/16 v5, 0x13b

    if-lt p2, v5, :cond_5

    add-int/lit16 v5, v1, 0x168

    if-ge p2, v5, :cond_5

    .line 593
    .end local v1           #lowerBound:I
    :cond_2
    :goto_1
    return v3

    .line 554
    :cond_3
    mul-int/lit8 v5, p1, 0x5a

    add-int/lit8 v5, v5, -0x2d

    add-int/lit8 v1, v5, 0x0

    .restart local v1       #lowerBound:I
    goto :goto_0

    .line 562
    :cond_4
    if-lt p2, v1, :cond_2

    .line 572
    .end local v1           #lowerBound:I
    :cond_5
    if-eq p1, v0, :cond_6

    add-int/lit8 v5, v0, 0x3

    rem-int/lit8 v5, v5, 0x4

    if-ne p1, v5, :cond_8

    .line 576
    :cond_6
    if-eq p1, v4, :cond_7

    if-ne p1, v6, :cond_9

    .line 577
    :cond_7
    mul-int/lit8 v5, p1, 0x5a

    add-int/lit8 v5, v5, 0x2d

    add-int/lit8 v2, v5, -0xf

    .line 582
    .local v2, upperBound:I
    :goto_2
    if-nez p1, :cond_a

    .line 583
    const/16 v5, 0x2d

    if-gt p2, v5, :cond_8

    if-gt p2, v2, :cond_2

    .end local v2           #upperBound:I
    :cond_8
    move v3, v4

    .line 593
    goto :goto_1

    .line 579
    :cond_9
    mul-int/lit8 v5, p1, 0x5a

    add-int/lit8 v5, v5, 0x2d

    add-int/lit8 v2, v5, 0x0

    .restart local v2       #upperBound:I
    goto :goto_2

    .line 587
    :cond_a
    if-le p2, v2, :cond_8

    goto :goto_1
.end method

.method private isTiltAngleAcceptable(II)Z
    .locals 3
    .parameter "proposedRotation"
    .parameter "tiltAngle"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 523
    sget-object v2, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    aget-object v2, v2, p1

    aget v2, v2, v1

    if-lt p2, v2, :cond_0

    sget-object v2, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->TILT_TOLERANCE:[[I

    aget-object v2, v2, p1

    aget v2, v2, v0

    if-gt p2, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private updateProposal(IJFII)V
    .locals 8
    .parameter "rotation"
    .parameter "timestampMS"
    .parameter "magnitude"
    .parameter "tiltAngle"
    .parameter "orientationAngle"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x0

    .line 603
    iget v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalRotation:I

    if-eq v5, p1, :cond_0

    .line 604
    iput p1, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalRotation:I

    .line 605
    iput v6, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryIndex:I

    .line 606
    iput v6, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryLength:I

    .line 609
    :cond_0
    iget v3, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryIndex:I

    .line 610
    .local v3, index:I
    iget-object v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryTimestampMS:[J

    aput-wide p2, v5, v3

    .line 611
    iget-object v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryMagnitudes:[F

    aput p4, v5, v3

    .line 612
    iget-object v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryTiltAngles:[I

    aput p5, v5, v3

    .line 613
    iget-object v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryOrientationAngles:[I

    aput p6, v5, v3

    .line 614
    add-int/lit8 v5, v3, 0x1

    rem-int/lit8 v5, v5, 0x14

    iput v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryIndex:I

    .line 615
    iget v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryLength:I

    const/16 v6, 0x14

    if-ge v5, v6, :cond_1

    .line 616
    iget v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryLength:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryLength:I

    .line 619
    :cond_1
    const-wide/16 v0, 0x0

    .line 620
    .local v0, age:J
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    iget v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryLength:I

    if-ge v2, v5, :cond_2

    .line 621
    add-int/lit8 v5, v3, 0x14

    sub-int/2addr v5, v2

    rem-int/lit8 v4, v5, 0x14

    .line 622
    .local v4, olderIndex:I
    iget-object v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryMagnitudes:[F

    aget v5, v5, v4

    sub-float/2addr v5, p4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const v6, 0x3ffb0cdd

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3

    .line 639
    .end local v4           #olderIndex:I
    :cond_2
    iput-wide v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalAgeMS:J

    .line 640
    return-void

    .line 626
    .restart local v4       #olderIndex:I
    :cond_3
    iget-object v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryTiltAngles:[I

    aget v5, v5, v4

    invoke-static {v5, p5}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->angleAbsoluteDelta(II)I

    move-result v5

    if-gt v5, v7, :cond_2

    .line 630
    iget-object v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryOrientationAngles:[I

    aget v5, v5, v4

    invoke-static {v5, p6}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->angleAbsoluteDelta(II)I

    move-result v5

    if-gt v5, v7, :cond_2

    .line 634
    iget-object v5, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mHistoryTimestampMS:[J

    aget-wide v5, v5, v4

    sub-long v0, p2, v5

    .line 635
    const-wide/16 v5, 0x5

    cmp-long v5, v0, v5

    if-gez v5, :cond_2

    .line 620
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getProposedRotation()I
    .locals 4

    .prologue
    .line 368
    iget-wide v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalAgeMS:J

    const-wide/16 v2, 0x5

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalRotation:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 373
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 23
    .parameter "event"

    .prologue
    .line 377
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    iget-boolean v10, v2, Landroid/view/WindowOrientationListener;->mLogEnabled:Z

    .line 381
    .local v10, log:Z
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v18, v2, v4

    .line 382
    .local v18, x:F
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x1

    aget v19, v2, v4

    .line 383
    .local v19, y:F
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x2

    aget v20, v2, v4

    .line 385
    .local v20, z:F
    if-eqz v10, :cond_0

    .line 386
    const-string v2, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Raw acceleration vector: x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", z="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_0
    move-object/from16 v0, p1

    iget-wide v11, v0, Landroid/hardware/SensorEvent;->timestamp:J

    .line 395
    .local v11, now:J
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastTimestamp:J

    sub-long v4, v11, v4

    long-to-float v2, v4

    const v4, 0x358637bd

    mul-float v17, v2, v4

    .line 397
    .local v17, timeDeltaMS:F
    const/4 v2, 0x0

    cmpg-float v2, v17, v2

    if-lez v2, :cond_1

    const/high16 v2, 0x447a

    cmpl-float v2, v17, v2

    if-gtz v2, :cond_1

    const/4 v2, 0x0

    cmpl-float v2, v18, v2

    if-nez v2, :cond_9

    const/4 v2, 0x0

    cmpl-float v2, v19, v2

    if-nez v2, :cond_9

    const/4 v2, 0x0

    cmpl-float v2, v20, v2

    if-nez v2, :cond_9

    .line 399
    :cond_1
    if-eqz v10, :cond_2

    .line 400
    const-string v2, "WindowOrientationListener"

    const-string v4, "Resetting orientation listener."

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearProposal()V

    .line 403
    const/16 v16, 0x1

    .line 415
    .local v16, skipSample:Z
    :goto_0
    move-object/from16 v0, p0

    iput-wide v11, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastTimestamp:J

    .line 416
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    .line 417
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    .line 418
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    .line 420
    invoke-virtual/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->getProposedRotation()I

    move-result v13

    .line 421
    .local v13, oldProposedRotation:I
    if-nez v16, :cond_5

    .line 423
    mul-float v2, v18, v18

    mul-float v4, v19, v19

    add-float/2addr v2, v4

    mul-float v4, v20, v20

    add-float/2addr v2, v4

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v6, v4

    .line 424
    .local v6, magnitude:F
    const v2, 0x409ce80a

    cmpg-float v2, v6, v2

    if-ltz v2, :cond_3

    const v2, 0x416b5c0f

    cmpl-float v2, v6, v2

    if-lez v2, :cond_b

    .line 426
    :cond_3
    if-eqz v10, :cond_4

    .line 427
    const-string v2, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring sensor data, magnitude out of range: magnitude="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_4
    invoke-direct/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearProposal()V

    .line 495
    .end local v6           #magnitude:F
    :cond_5
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->getProposedRotation()I

    move-result v15

    .line 496
    .local v15, proposedRotation:I
    if-eqz v10, :cond_6

    .line 497
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalAgeMS:J

    long-to-float v2, v4

    const/high16 v4, 0x3f80

    mul-float/2addr v2, v4

    const/high16 v4, 0x40a0

    div-float/2addr v2, v4

    const/high16 v4, 0x3f80

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 499
    .local v14, proposalConfidence:F
    const-string v2, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Result: currentRotation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    iget v5, v5, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", proposedRotation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", timeDeltaMS="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", proposalRotation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalRotation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", proposalAgeMS="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalAgeMS:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", proposalConfidence="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    .end local v14           #proposalConfidence:F
    :cond_6
    if-eq v15, v13, :cond_8

    if-ltz v15, :cond_8

    .line 509
    if-eqz v10, :cond_7

    .line 510
    const-string v2, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proposed rotation changed!  proposedRotation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", oldProposedRotation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    invoke-virtual {v2, v15}, Landroid/view/WindowOrientationListener;->onProposedRotationChanged(I)V

    .line 515
    :cond_8
    return-void

    .line 405
    .end local v13           #oldProposedRotation:I
    .end local v15           #proposedRotation:I
    .end local v16           #skipSample:Z
    :cond_9
    const/high16 v2, 0x42c8

    add-float v2, v2, v17

    div-float v9, v17, v2

    .line 406
    .local v9, alpha:F
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    sub-float v2, v18, v2

    mul-float/2addr v2, v9

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredX:F

    add-float v18, v2, v4

    .line 407
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    sub-float v2, v19, v2

    mul-float/2addr v2, v9

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredY:F

    add-float v19, v2, v4

    .line 408
    move-object/from16 v0, p0

    iget v2, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    sub-float v2, v20, v2

    mul-float/2addr v2, v9

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mLastFilteredZ:F

    add-float v20, v2, v4

    .line 409
    if-eqz v10, :cond_a

    .line 410
    const-string v2, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Filtered acceleration vector: x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", y="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", z="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_a
    const/16 v16, 0x0

    .restart local v16       #skipSample:Z
    goto/16 :goto_0

    .line 438
    .end local v9           #alpha:F
    .restart local v6       #magnitude:F
    .restart local v13       #oldProposedRotation:I
    :cond_b
    div-float v2, v20, v6

    float-to-double v4, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v4

    const-wide v21, 0x404ca5dc20000000L

    mul-double v4, v4, v21

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v7, v4

    .line 443
    .local v7, tiltAngle:I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v4, 0x4b

    if-le v2, v4, :cond_d

    .line 444
    if-eqz v10, :cond_c

    .line 445
    const-string v2, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring sensor data, tilt angle too high: magnitude="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tiltAngle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_c
    invoke-direct/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearProposal()V

    goto/16 :goto_1

    .line 453
    :cond_d
    move/from16 v0, v18

    neg-float v2, v0

    float-to-double v4, v2

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v4

    neg-double v4, v4

    const-wide v21, 0x404ca5dc20000000L

    mul-double v4, v4, v21

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v8, v4

    .line 455
    .local v8, orientationAngle:I
    if-gez v8, :cond_e

    .line 457
    add-int/lit16 v8, v8, 0x168

    .line 461
    :cond_e
    add-int/lit8 v2, v8, 0x2d

    div-int/lit8 v3, v2, 0x5a

    .line 462
    .local v3, nearestRotation:I
    const/4 v2, 0x4

    if-ne v3, v2, :cond_f

    .line 463
    const/4 v3, 0x0

    .line 470
    :cond_f
    move-object/from16 v0, p0

    invoke-direct {v0, v3, v7}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->isTiltAngleAcceptable(II)Z

    move-result v2

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v8}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->isOrientationAngleAcceptable(II)Z

    move-result v2

    if-nez v2, :cond_12

    .line 473
    :cond_10
    if-eqz v10, :cond_11

    .line 474
    const-string v2, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring sensor data, no proposal: magnitude="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tiltAngle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", orientationAngle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    :cond_11
    invoke-direct/range {p0 .. p0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearProposal()V

    goto/16 :goto_1

    .line 480
    :cond_12
    if-eqz v10, :cond_13

    .line 481
    const-string v2, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proposal: magnitude="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", tiltAngle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", orientationAngle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", proposalRotation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->mProposalRotation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    :cond_13
    const-wide/32 v4, 0xf4240

    div-long v4, v11, v4

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->updateProposal(IJFII)V

    goto/16 :goto_1
.end method
