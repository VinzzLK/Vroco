.class public Lmiuix/animation/motion/CubicBezierMotion;
.super Lmiuix/animation/motion/BaseMotion;
.source "CubicBezierMotion.java"


# instance fields
.field private final x1:D

.field private final x2:D

.field private final y1:D

.field private final y2:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lmiuix/animation/motion/BaseMotion;-><init>()V

    .line 13
    iput-wide p1, p0, Lmiuix/animation/motion/CubicBezierMotion;->x1:D

    .line 14
    iput-wide p3, p0, Lmiuix/animation/motion/CubicBezierMotion;->y1:D

    .line 15
    iput-wide p5, p0, Lmiuix/animation/motion/CubicBezierMotion;->x2:D

    .line 16
    iput-wide p7, p0, Lmiuix/animation/motion/CubicBezierMotion;->y2:D

    return-void
.end method


# virtual methods
.method public finishTime()D
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method public solve()Lmiuix/animation/function/Differentiable;
    .locals 5

    .line 21
    new-instance v0, Lmiuix/animation/function/Bezier;

    const/16 v1, 0x8

    new-array v1, v1, [D

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    aput-wide v3, v1, v2

    const/4 v2, 0x1

    aput-wide v3, v1, v2

    iget-wide v2, p0, Lmiuix/animation/motion/CubicBezierMotion;->x1:D

    const/4 v4, 0x2

    aput-wide v2, v1, v4

    iget-wide v2, p0, Lmiuix/animation/motion/CubicBezierMotion;->y1:D

    const/4 v4, 0x3

    aput-wide v2, v1, v4

    iget-wide v2, p0, Lmiuix/animation/motion/CubicBezierMotion;->x2:D

    const/4 v4, 0x4

    aput-wide v2, v1, v4

    iget-wide v2, p0, Lmiuix/animation/motion/CubicBezierMotion;->y2:D

    const/4 p0, 0x5

    aput-wide v2, v1, p0

    const/4 p0, 0x6

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v1, p0

    const/4 p0, 0x7

    aput-wide v2, v1, p0

    invoke-direct {v0, v1}, Lmiuix/animation/function/Bezier;-><init>([D)V

    return-object v0
.end method

.method public stopPosition()D
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method public stopSpeed()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method
