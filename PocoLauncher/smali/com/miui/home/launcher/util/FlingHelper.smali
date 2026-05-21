.class public Lcom/miui/home/launcher/util/FlingHelper;
.super Ljava/lang/Object;
.source "FlingHelper.java"


# static fields
.field private static final DECELERATION_RATE:F


# instance fields
.field private final mFlingFriction:F

.field private mPhysicalCoeff:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x3fe8f5c28f5c28f6L    # 0.78

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    const-wide v2, 0x3feccccccccccccdL    # 0.9

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/miui/home/launcher/util/FlingHelper;->DECELERATION_RATE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/util/FlingHelper;->mFlingFriction:F

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v0, 0x43200000    # 160.0f

    mul-float/2addr p1, v0

    const v0, 0x43c10b3d

    mul-float/2addr p1, v0

    const v0, 0x3f570a3d    # 0.84f

    mul-float/2addr p1, v0

    .line 23
    iput p1, p0, Lcom/miui/home/launcher/util/FlingHelper;->mPhysicalCoeff:F

    return-void
.end method

.method private getSplineDeceleration(I)D
    .locals 1

    .line 36
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    const v0, 0x3eb33333    # 0.35f

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/util/FlingHelper;->mFlingFriction:F

    iget p0, p0, Lcom/miui/home/launcher/util/FlingHelper;->mPhysicalCoeff:F

    mul-float/2addr v0, p0

    div-float/2addr p1, v0

    float-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->log(D)D

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public getSplineFlingDistance(I)D
    .locals 6

    .line 46
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/util/FlingHelper;->getSplineDeceleration(I)D

    move-result-wide v0

    .line 47
    sget p1, Lcom/miui/home/launcher/util/FlingHelper;->DECELERATION_RATE:F

    float-to-double v2, p1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    .line 48
    iget v4, p0, Lcom/miui/home/launcher/util/FlingHelper;->mFlingFriction:F

    iget p0, p0, Lcom/miui/home/launcher/util/FlingHelper;->mPhysicalCoeff:F

    mul-float/2addr v4, p0

    float-to-double v4, v4

    float-to-double p0, p1

    div-double/2addr p0, v2

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    mul-double/2addr v4, p0

    return-wide v4
.end method
