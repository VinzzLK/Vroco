.class public Lcom/miui/miuiwidget/servicedelivery/utils/IconScaleUtils;
.super Ljava/lang/Object;
.source "IconScaleUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static scaleAdaptiveIcon(Landroid/graphics/drawable/AdaptiveIconDrawable;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 30
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 31
    invoke-virtual {p0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getIntrinsicHeight()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-lez v0, :cond_2

    if-gtz p1, :cond_1

    goto :goto_0

    .line 35
    :cond_1
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, p1, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 36
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 37
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, v1, v2}, Landroid/graphics/drawable/AdaptiveIconDrawable;->setBounds(IIII)V

    .line 38
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/AdaptiveIconDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 39
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method private static scaleDrawable(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 46
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p1, p2, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 47
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method public static scaleIconDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 16
    :cond_0
    instance-of v0, p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v0, :cond_1

    .line 17
    check-cast p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-static {p1, p2}, Lcom/miui/miuiwidget/servicedelivery/utils/IconScaleUtils;->scaleAdaptiveIcon(Landroid/graphics/drawable/AdaptiveIconDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 18
    :cond_1
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_2

    .line 19
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {p0, p1, p2}, Lcom/miui/miuiwidget/servicedelivery/utils/IconScaleUtils;->scaleDrawable(Landroid/content/Context;Landroid/graphics/drawable/BitmapDrawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p1
.end method
