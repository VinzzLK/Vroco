.class public Lcom/miui/home/launcher/common/TitleShadowUtils;
.super Ljava/lang/Object;
.source "TitleShadowUtils.java"


# static fields
.field private static sShadowDrawable:Landroid/graphics/drawable/NinePatchDrawable;

.field private static sShadowWidthPadding:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0806c5

    .line 20
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/NinePatchDrawable;

    sput-object v0, Lcom/miui/home/launcher/common/TitleShadowUtils;->sShadowDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    .line 22
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07075b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/miui/home/launcher/common/TitleShadowUtils;->sShadowWidthPadding:I

    return-void
.end method

.method public static closeDynamicShadow(Landroid/view/View;)V
    .locals 3

    const/16 v0, 0x56

    const/4 v1, 0x0

    .line 81
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 82
    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 83
    invoke-static {p0, v0, v2, v2, v1}, Lcom/miui/home/launcher/common/TitleShadowUtils;->invokeSetDynamicShadow(Landroid/view/View;IFFLandroid/graphics/RectF;)V

    return-void
.end method

.method public static drawNinePatchShadow(Landroid/graphics/Canvas;Landroid/widget/TextView;[FI)V
    .locals 6

    .line 35
    invoke-static {p2}, Lcom/miui/home/launcher/common/TitleShadowUtils;->isInvalidBound([F)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 38
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    .line 39
    invoke-static {v0}, Lcom/miui/home/launcher/common/TitleShadowUtils;->isPureWhite(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    .line 42
    invoke-virtual {p1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result p1

    sub-int/2addr p1, p3

    int-to-float p1, p1

    const/4 v1, 0x1

    aget v2, p2, v1

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v2, 0x0

    if-gez p1, :cond_1

    move p1, v2

    .line 47
    :cond_1
    sget-object v3, Lcom/miui/home/launcher/common/TitleShadowUtils;->sShadowDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    aget v4, p2, v2

    sget v5, Lcom/miui/home/launcher/common/TitleShadowUtils;->sShadowWidthPadding:I

    mul-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    aget v1, p2, v1

    mul-int/lit8 v5, p1, 0x2

    int-to-float v5, v5

    add-float/2addr v1, v5

    .line 48
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 47
    invoke-virtual {v3, v2, v2, v4, v1}, Landroid/graphics/drawable/NinePatchDrawable;->setBounds(IIII)V

    .line 49
    invoke-virtual {p0}, Landroid/graphics/Canvas;->save()I

    const/4 v1, 0x0

    int-to-float v0, v0

    .line 50
    aget p2, p2, v2

    sub-float/2addr v0, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr v0, p2

    sget p2, Lcom/miui/home/launcher/common/TitleShadowUtils;->sShadowWidthPadding:I

    int-to-float p2, p2

    sub-float/2addr v0, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p2

    sub-int/2addr p3, p1

    int-to-float p1, p3

    .line 52
    invoke-virtual {p0, p2, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 53
    sget-object p1, Lcom/miui/home/launcher/common/TitleShadowUtils;->sShadowDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    const/16 p2, 0x1f

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/NinePatchDrawable;->setAlpha(I)V

    .line 54
    sget-object p1, Lcom/miui/home/launcher/common/TitleShadowUtils;->sShadowDrawable:Landroid/graphics/drawable/NinePatchDrawable;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/NinePatchDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 55
    invoke-virtual {p0}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method public static getShadowBounds(Landroid/text/Layout;[F)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 113
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    if-lez v3, :cond_1

    move v3, v2

    .line 115
    :goto_0
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 116
    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v4

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p0, v3}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v3

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getLineTop(I)I

    move-result p0

    sub-int/2addr v3, p0

    .line 120
    aput v0, p1, v2

    int-to-float p0, v3

    .line 121
    aput p0, p1, v1

    goto :goto_1

    .line 123
    :cond_1
    aput v0, p1, v2

    .line 124
    aput v0, p1, v1

    :goto_1
    return-void
.end method

.method private static invokeSetDynamicShadow(Landroid/view/View;IFFLandroid/graphics/RectF;)V
    .locals 9

    const/4 v0, 0x6

    new-array v5, v0, [Ljava/lang/Class;

    .line 99
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v5, v2

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v1, v5, v3

    const/4 v4, 0x2

    aput-object v1, v5, v4

    const/4 v6, 0x3

    aput-object v1, v5, v6

    const/4 v7, 0x4

    aput-object v1, v5, v7

    const-class v1, Landroid/graphics/RectF;

    const/4 v8, 0x5

    aput-object v1, v5, v8

    new-array v0, v0, [Ljava/lang/Object;

    .line 102
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v4

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v6

    const/high16 p1, 0x40a00000    # 5.0f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v0, v7

    aput-object p4, v0, v8

    .line 103
    const-class v1, Landroid/view/View;

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string/jumbo v3, "setDynamicShadow"

    move-object v2, p0

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lcom/miui/launcher/utils/ReflectUtils;->invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)V

    return-void
.end method

.method public static isInWorkspace(Ljava/lang/Object;)Z
    .locals 1

    .line 129
    instance-of v0, p0, Lcom/miui/home/launcher/ItemInfo;

    if-eqz v0, :cond_0

    .line 130
    check-cast p0, Lcom/miui/home/launcher/ItemInfo;

    .line 131
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->isInWorkspace()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static isInvalidBound([F)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 60
    array-length v2, p0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    aget v2, p0, v0

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    aget p0, p0, v1

    cmpl-float p0, p0, v3

    if-nez p0, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private static isPureWhite(I)Z
    .locals 2

    .line 107
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    const/16 v1, 0xff

    if-ne v0, v1, :cond_0

    .line 108
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 109
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result p0

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setDynamicShadow(Landroid/view/View;I[FFF)V
    .locals 0

    .line 73
    invoke-static {p1}, Lcom/miui/home/launcher/common/TitleShadowUtils;->isPureWhite(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    invoke-static {p0, p2, p3, p4}, Lcom/miui/home/launcher/common/TitleShadowUtils;->setDynamicShadow(Landroid/view/View;[FFF)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-static {p0}, Lcom/miui/home/launcher/common/TitleShadowUtils;->closeDynamicShadow(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private static setDynamicShadow(Landroid/view/View;[FFF)V
    .locals 3

    .line 87
    invoke-static {p1}, Lcom/miui/home/launcher/common/TitleShadowUtils;->isInvalidBound([F)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x42ac0000    # 86.0f

    mul-float/2addr p3, v0

    float-to-int p3, p3

    const/4 v0, 0x0

    .line 91
    invoke-static {p3, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p3

    .line 93
    aget v0, p1, v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 94
    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x1

    aget p1, p1, v2

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 p1, 0x42480000    # 50.0f

    .line 95
    invoke-static {p0, p3, p2, p1, v1}, Lcom/miui/home/launcher/common/TitleShadowUtils;->invokeSetDynamicShadow(Landroid/view/View;IFFLandroid/graphics/RectF;)V

    return-void
.end method

.method public static setDynamicShadow(Landroid/widget/TextView;[FF)V
    .locals 2

    .line 69
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v0, p1, p2, v1}, Lcom/miui/home/launcher/common/TitleShadowUtils;->setDynamicShadow(Landroid/view/View;I[FFF)V

    return-void
.end method
