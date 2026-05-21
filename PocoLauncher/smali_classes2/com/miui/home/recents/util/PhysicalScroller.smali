.class public Lcom/miui/home/recents/util/PhysicalScroller;
.super Ljava/lang/Object;
.source "PhysicalScroller.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhysicalScroller"

.field private static final TENSION:D


# instance fields
.field private mCurrentPosition:D

.field private mCurrentVelocity:D

.field private mEndPosition:D

.field private mFriction:D

.field private mIsFinish:Z

.field private mLastTime:J

.field private mMaxEndPosition:D

.field private mMinEndPosition:D

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x402f6a7a217a99d6L    # 15.707963033882077

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 20
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    sput-wide v0, Lcom/miui/home/recents/util/PhysicalScroller;->TENSION:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDistance(DDD)D
    .locals 0

    add-double/2addr p1, p3

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    div-double/2addr p1, p3

    mul-double/2addr p1, p5

    const-wide p3, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, p3

    return-wide p1
.end method

.method public static getEndPosition(DD)D
    .locals 8

    .line 91
    invoke-static {}, Lcom/miui/home/recents/util/PhysicalScroller;->getMinVisibleVelocity()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-wide v0, p0

    move-wide v2, p2

    invoke-static/range {v0 .. v7}, Lcom/miui/home/recents/util/PhysicalScroller;->getEndPosition(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static getEndPosition(DDDD)D
    .locals 4

    .line 166
    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    return-wide p0

    :cond_0
    mul-double v0, p2, p4

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    neg-double p4, p4

    :cond_1
    sub-double/2addr p2, p4

    const-wide p4, 0x4010cccccccccccdL    # 4.2

    mul-double/2addr p6, p4

    div-double/2addr p2, p6

    add-double/2addr p0, p2

    return-wide p0
.end method

.method private static getEndVelocity(DDD)D
    .locals 2

    const-wide v0, -0x3fef333333333333L    # -4.2

    mul-double/2addr p2, v0

    const-wide v0, 0x4005bf0a8b145769L    # Math.E

    .line 108
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p4, v0

    invoke-static {p2, p3, p4, p5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method private static getFriction(DDD)D
    .locals 8

    .line 181
    invoke-static {}, Lcom/miui/home/recents/util/PhysicalScroller;->getMinVisibleVelocity()D

    move-result-wide v6

    move-wide v0, p2

    move-wide v2, p4

    move-wide v4, p0

    invoke-static/range {v0 .. v7}, Lcom/miui/home/recents/util/PhysicalScroller;->getFriction(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method private static getFriction(DDDD)D
    .locals 7

    .line 186
    invoke-static {p4, p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x408f400000000000L    # 1000.0

    cmpg-double v0, v0, v2

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    if-gez v0, :cond_0

    return-wide v1

    :cond_0
    mul-double v3, p6, p4

    const-wide/16 v5, 0x0

    cmpg-double v0, v3, v5

    if-gez v0, :cond_1

    neg-double p6, p6

    :cond_1
    sub-double/2addr p2, p0

    mul-double p0, p4, p2

    cmpg-double p0, p0, v5

    if-gtz p0, :cond_2

    return-wide v1

    :cond_2
    sub-double/2addr p4, p6

    const-wide p0, 0x4010cccccccccccdL    # 4.2

    mul-double/2addr p2, p0

    div-double/2addr p4, p2

    return-wide p4
.end method

.method private static getMinVisibleVelocity()D
    .locals 2

    const-wide v0, 0x4046800000000000L    # 45.0

    return-wide v0
.end method

.method private getStateName()Ljava/lang/String;
    .locals 1

    .line 82
    iget p0, p0, Lcom/miui/home/recents/util/PhysicalScroller;->mState:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const-string p0, "fling"

    return-object p0

    :cond_0
    const-string p0, "spring"

    return-object p0
.end method


# virtual methods
.method public computeScrollOffset()Z
    .locals 21

    move-object/from16 v7, p0

    .line 116
    invoke-virtual/range {p0 .. p0}, Lcom/miui/home/recents/util/PhysicalScroller;->isFinish()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 120
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    .line 121
    iget-wide v8, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mLastTime:J

    sub-long v8, v2, v8

    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 122
    iput-wide v2, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mLastTime:J

    .line 124
    iget v0, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mState:I

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const/4 v8, 0x1

    if-ne v0, v8, :cond_6

    .line 125
    iget-wide v13, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentVelocity:D

    .line 126
    iget-wide v11, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mFriction:D

    long-to-double v5, v4

    move-wide v9, v13

    move-wide v15, v13

    move-wide v13, v5

    invoke-static/range {v9 .. v14}, Lcom/miui/home/recents/util/PhysicalScroller;->getEndVelocity(DDD)D

    move-result-wide v9

    iput-wide v9, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentVelocity:D

    .line 127
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    invoke-static {}, Lcom/miui/home/recents/util/PhysicalScroller;->getMinVisibleVelocity()D

    move-result-wide v11

    cmpg-double v0, v9, v11

    if-ltz v0, :cond_5

    iget-wide v9, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentPosition:D

    iget-wide v11, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mEndPosition:D

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v9

    cmpg-double v0, v9, v2

    if-gez v0, :cond_1

    goto :goto_1

    .line 133
    :cond_1
    iget-wide v9, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentPosition:D

    iget-wide v3, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentVelocity:D

    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/util/PhysicalScroller;->getDistance(DDD)D

    move-result-wide v0

    add-double/2addr v9, v0

    iput-wide v9, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentPosition:D

    .line 134
    iget-wide v0, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mMaxEndPosition:D

    cmpl-double v2, v9, v0

    if-gtz v2, :cond_2

    iget-wide v2, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mMinEndPosition:D

    cmpg-double v2, v9, v2

    if-gez v2, :cond_4

    :cond_2
    const/4 v2, 0x2

    .line 135
    iput v2, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mState:I

    cmpl-double v2, v9, v0

    if-lez v2, :cond_3

    goto :goto_0

    .line 136
    :cond_3
    iget-wide v0, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mMinEndPosition:D

    :goto_0
    iput-wide v0, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mEndPosition:D

    :cond_4
    return v8

    .line 128
    :cond_5
    :goto_1
    iget-wide v2, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mEndPosition:D

    iput-wide v2, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentPosition:D

    .line 129
    iput-boolean v8, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mIsFinish:Z

    return v1

    .line 140
    :cond_6
    iget-wide v9, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentPosition:D

    iget-wide v11, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mEndPosition:D

    cmpl-double v0, v9, v11

    if-nez v0, :cond_7

    .line 141
    iput-boolean v8, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mIsFinish:Z

    return v1

    .line 145
    :cond_7
    iget-wide v13, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentVelocity:D

    neg-double v1, v13

    const-wide v17, 0x403f6a7a217a99d6L    # 31.415926067764154

    mul-double v1, v1, v17

    .line 146
    sget-wide v17, Lcom/miui/home/recents/util/PhysicalScroller;->TENSION:D

    sub-double v19, v11, v9

    mul-double v17, v17, v19

    add-double v1, v1, v17

    long-to-double v3, v4

    const-wide v5, 0x408f400000000000L    # 1000.0

    div-double v17, v3, v5

    mul-double v1, v1, v17

    add-double/2addr v13, v1

    .line 149
    iput-wide v13, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentVelocity:D

    mul-double/2addr v13, v3

    div-double/2addr v13, v5

    add-double/2addr v9, v13

    .line 150
    iput-wide v9, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentPosition:D

    sub-double/2addr v9, v11

    .line 151
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_8

    .line 152
    iget-wide v1, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mEndPosition:D

    iput-wide v1, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentPosition:D

    .line 153
    iput-boolean v8, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mIsFinish:Z

    const/4 v0, 0x0

    return v0

    :cond_8
    const/4 v0, 0x0

    .line 157
    iget-wide v1, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentPosition:D

    iget-wide v3, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mEndPosition:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_9

    move v1, v8

    goto :goto_2

    :cond_9
    move v1, v0

    :goto_2
    iput-boolean v1, v7, Lcom/miui/home/recents/util/PhysicalScroller;->mIsFinish:Z

    xor-int/lit8 v0, v1, 0x1

    return v0
.end method

.method public getPosition()D
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentPosition:D

    return-wide v0
.end method

.method public isFinish()Z
    .locals 0

    .line 95
    iget-boolean p0, p0, Lcom/miui/home/recents/util/PhysicalScroller;->mIsFinish:Z

    return p0
.end method

.method public startAnim(DDDDDD)V
    .locals 0

    .line 58
    iput-wide p11, p0, Lcom/miui/home/recents/util/PhysicalScroller;->mMaxEndPosition:D

    .line 59
    iput-wide p9, p0, Lcom/miui/home/recents/util/PhysicalScroller;->mMinEndPosition:D

    .line 60
    iput-wide p5, p0, Lcom/miui/home/recents/util/PhysicalScroller;->mFriction:D

    const/4 p5, 0x0

    .line 61
    iput-boolean p5, p0, Lcom/miui/home/recents/util/PhysicalScroller;->mIsFinish:Z

    .line 62
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide p5

    iput-wide p5, p0, Lcom/miui/home/recents/util/PhysicalScroller;->mLastTime:J

    .line 63
    iput-wide p1, p0, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentPosition:D

    .line 64
    iput-wide p3, p0, Lcom/miui/home/recents/util/PhysicalScroller;->mCurrentVelocity:D

    .line 65
    iput-wide p7, p0, Lcom/miui/home/recents/util/PhysicalScroller;->mEndPosition:D

    .line 67
    iget-wide p5, p0, Lcom/miui/home/recents/util/PhysicalScroller;->mFriction:D

    const-wide/high16 p9, -0x4010000000000000L    # -1.0

    cmpl-double p5, p5, p9

    if-nez p5, :cond_0

    const/4 p5, 0x2

    .line 68
    iput p5, p0, Lcom/miui/home/recents/util/PhysicalScroller;->mState:I

    goto :goto_0

    :cond_0
    const/4 p5, 0x1

    .line 70
    iput p5, p0, Lcom/miui/home/recents/util/PhysicalScroller;->mState:I

    .line 72
    :goto_0
    sget-object p5, Lcom/miui/home/recents/util/PhysicalScroller;->TAG:Ljava/lang/String;

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p9, "startAnim, startPos="

    invoke-virtual {p6, p9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", endPos="

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7, p8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", vel="

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", friction="

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/miui/home/recents/util/PhysicalScroller;->mFriction:D

    invoke-virtual {p6, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", minEndPos="

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/miui/home/recents/util/PhysicalScroller;->mMinEndPosition:D

    invoke-virtual {p6, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", maxEndPos="

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p1, p0, Lcom/miui/home/recents/util/PhysicalScroller;->mMaxEndPosition:D

    invoke-virtual {p6, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p1, ", state="

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    invoke-direct {p0}, Lcom/miui/home/recents/util/PhysicalScroller;->getStateName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 72
    invoke-static {p5, p0}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startAnimByEndPos(DDDDD)V
    .locals 15

    move-wide/from16 v0, p3

    move-wide/from16 v2, p1

    move-wide/from16 v4, p5

    .line 45
    invoke-static/range {v0 .. v5}, Lcom/miui/home/recents/util/PhysicalScroller;->getFriction(DDD)D

    move-result-wide v7

    move-object v2, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v9, p5

    move-wide/from16 v11, p7

    move-wide/from16 v13, p9

    invoke-virtual/range {v2 .. v14}, Lcom/miui/home/recents/util/PhysicalScroller;->startAnim(DDDDDD)V

    return-void
.end method

.method public startAnimByFriction(DDDDD)V
    .locals 19

    .line 52
    invoke-static {}, Lcom/miui/home/recents/util/PhysicalScroller;->getMinVisibleVelocity()D

    move-result-wide v4

    move-wide/from16 v0, p1

    move-wide/from16 v2, p3

    move-wide/from16 v6, p5

    invoke-static/range {v0 .. v7}, Lcom/miui/home/recents/util/PhysicalScroller;->getEndPosition(DDDD)D

    move-result-wide v13

    move-object/from16 v6, p0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    move-wide/from16 v15, p7

    move-wide/from16 v17, p9

    .line 51
    invoke-virtual/range {v6 .. v18}, Lcom/miui/home/recents/util/PhysicalScroller;->startAnim(DDDDDD)V

    return-void
.end method

.method public stopScroll()V
    .locals 1

    const/4 v0, 0x1

    .line 103
    iput-boolean v0, p0, Lcom/miui/home/recents/util/PhysicalScroller;->mIsFinish:Z

    return-void
.end method
