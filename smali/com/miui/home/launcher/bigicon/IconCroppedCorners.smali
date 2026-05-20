.class public final Lcom/miui/home/launcher/bigicon/IconCroppedCorners;
.super Ljava/lang/Object;
.source "IconCroppedCorners.kt"


# static fields
.field public static final INSTANCE:Lcom/miui/home/launcher/bigicon/IconCroppedCorners;

.field private static mCornerPaint:Landroid/graphics/Paint;

.field private static mViewSizePaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/miui/home/launcher/bigicon/IconCroppedCorners;

    invoke-direct {v0}, Lcom/miui/home/launcher/bigicon/IconCroppedCorners;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/bigicon/IconCroppedCorners;->INSTANCE:Lcom/miui/home/launcher/bigicon/IconCroppedCorners;

    .line 75
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/bigicon/IconCroppedCorners;->mViewSizePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 76
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    sget-object v0, Lcom/miui/home/launcher/bigicon/IconCroppedCorners;->mViewSizePaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "mViewSizePaint"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/bigicon/IconCroppedCorners;->mCornerPaint:Landroid/graphics/Paint;

    .line 79
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 80
    sget-object v0, Lcom/miui/home/launcher/bigicon/IconCroppedCorners;->mCornerPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    const-string v0, "mCornerPaint"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    const/high16 v0, -0x1000000

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final croppedToSizeOfView(IILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    const-string p0, "base"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    .line 18
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v1, p1

    int-to-float v2, p0

    div-float v3, v1, v2

    int-to-float v4, p2

    int-to-float v5, v0

    div-float v6, v4, v5

    .line 21
    invoke-static {v3, v6}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result v3

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v6, v3, v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_1

    return-object p3

    .line 25
    :cond_1
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 26
    invoke-virtual {v6, v3, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    mul-float/2addr v2, v3

    mul-float/2addr v5, v3

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v4, v5

    div-float/2addr v4, v2

    .line 31
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v5, "createBitmap(viewWidth, \u2026 Bitmap.Config.ARGB_8888)"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 33
    invoke-virtual {v5, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 34
    sget-object v1, Lcom/miui/home/launcher/bigicon/IconCroppedCorners;->mViewSizePaint:Landroid/graphics/Paint;

    if-nez v1, :cond_2

    const-string v1, "mViewSizePaint"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v5, p3, v6, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    const/4 v1, 0x0

    .line 35
    invoke-virtual {v5, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "viewWidth = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " viewHeight = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resIconWidth = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " resIconHeight = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " allScale = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BigIconUtil"

    .line 36
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p3}, Landroid/graphics/Bitmap;->recycle()V

    return-object v2
.end method
