.class public final Lcom/android/systemui/fsgesture/BackGestureUtils;
.super Ljava/lang/Object;
.source "BackGestureUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/android/systemui/fsgesture/BackGestureUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/fsgesture/BackGestureUtils;

    invoke-direct {v0}, Lcom/android/systemui/fsgesture/BackGestureUtils;-><init>()V

    sput-object v0, Lcom/android/systemui/fsgesture/BackGestureUtils;->INSTANCE:Lcom/android/systemui/fsgesture/BackGestureUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterFrictionValue(FF)F
    .locals 4

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x1

    :goto_0
    int-to-float p0, p0

    float-to-double v0, p1

    .line 20
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    double-to-float p1, v0

    div-float/2addr p1, p2

    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 21
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float p1, v0

    mul-float v0, p1, p1

    mul-float v1, v0, p1

    const/4 v2, 0x3

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float/2addr v1, v0

    add-float/2addr v1, p1

    mul-float/2addr p0, v1

    mul-float/2addr p0, p2

    return p0
.end method

.method public final convertOffset(F)F
    .locals 3

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    return v0

    :cond_0
    const/high16 v0, 0x43b40000    # 360.0f

    div-float/2addr p1, v0

    const v0, 0x3f4ccccd    # 0.8f

    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 13
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/systemui/fsgesture/BackGestureUtils;->laterFriction(FFFF)F

    move-result p0

    const/high16 p1, 0x41a00000    # 20.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method public final laterFriction(FFFF)F
    .locals 1

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    sub-float/2addr p1, p2

    .line 26
    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/fsgesture/BackGestureUtils;->afterFrictionValue(FF)F

    move-result p0

    mul-float/2addr p0, p4

    add-float p1, p2, p0

    :goto_0
    return p1
.end method
