.class public final Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;
.super Ljava/lang/Object;
.source "ShortcutMenuLayerElement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;-><init>()V

    return-void
.end method

.method private final afterFrictionValue(FF)F
    .locals 3

    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    const/high16 v0, 0x3f800000    # 1.0f

    if-ltz p0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    const/high16 p0, -0x40800000    # -1.0f

    .line 125
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    div-float/2addr p1, p2

    invoke-static {v0, p1}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p1

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

.method static synthetic afterFrictionValue$default(Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;FFILjava/lang/Object;)F
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 123
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->afterFrictionValue(FF)F

    move-result p0

    return p0
.end method

.method private final getAppAlphaWithBlur()F
    .locals 0

    .line 42
    sget-boolean p0, Lcom/miui/home/launcher/Launcher;->IS_NEED_ALPHA:Z

    if-eqz p0, :cond_0

    const/high16 p0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method private final getRecentAlphaWithBlur()F
    .locals 0

    .line 41
    sget-boolean p0, Lcom/miui/home/launcher/Launcher;->IS_NEED_ALPHA:Z

    if-eqz p0, :cond_0

    const/high16 p0, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    :goto_0
    return p0
.end method

.method private final getScalePer(F)F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 130
    invoke-static {v0, p1}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v2, v3}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->afterFrictionValue$default(Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;FFILjava/lang/Object;)F

    move-result p0

    const p1, 0x3e99999a    # 0.3f

    mul-float/2addr p0, p1

    sub-float/2addr v0, p0

    return v0
.end method


# virtual methods
.method public final getAppStateParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;
    .locals 2

    .line 55
    sget-boolean v0, Lcom/miui/home/launcher/Launcher;->IS_RECENTS_WINDOW:Z

    const v1, 0x3f59999a    # 0.85f

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    new-instance p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;-><init>(FFF)V

    return-object p0

    .line 56
    :cond_1
    :goto_0
    new-instance v0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    invoke-direct {p0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getAppAlphaWithBlur()F

    move-result p0

    invoke-direct {v0, p0, v1, v1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;-><init>(FFF)V

    return-object v0
.end method

.method public final getDefaultDampingResponse()[Ljava/lang/Float;
    .locals 5

    .line 45
    invoke-static {}, Lcom/miui/home/recents/util/Utilities;->getGestureAnimMagicSpeed()F

    move-result p0

    .line 46
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v0

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 50
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v0, :cond_0

    new-array v0, v4, [Ljava/lang/Float;

    aput-object v2, v0, v3

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr p0, v2

    .line 47
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v0, v1

    return-object v0

    :cond_0
    new-array p0, v4, [Ljava/lang/Float;

    aput-object v2, p0, v3

    const/high16 v0, 0x3e800000    # 0.25f

    .line 50
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p0, v1

    return-object p0
.end method

.method public final getHomeDragStateParams(F)Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;
    .locals 6

    .line 79
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getScalePer(F)F

    move-result p0

    .line 80
    new-instance p1, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    const/high16 v0, 0x3f800000    # 1.0f

    mul-float v3, p0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    const v4, 0x3f5c28f6    # 0.86f

    const v5, 0x3e19999a    # 0.15f

    move-object v0, p1

    move v2, v3

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;-><init>(FFFFF)V

    return-object p1
.end method

.method public final getHomeEnterHoldStateParams(F)Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;
    .locals 7

    .line 84
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getScalePer(F)F

    move-result p1

    .line 86
    new-instance v6, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    invoke-direct {p0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getRecentAlphaWithBlur()F

    move-result v1

    const/high16 p0, 0x3f800000    # 1.0f

    mul-float v3, p1, p0

    const v4, 0x3f5c28f6    # 0.86f

    const v5, 0x3e19999a    # 0.15f

    move-object v0, v6

    move v2, v3

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;-><init>(FFFFF)V

    return-object v6

    .line 88
    :cond_0
    new-instance p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    const/4 p1, 0x0

    const v0, 0x3f733333    # 0.95f

    invoke-direct {p0, p1, v0, v0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;-><init>(FFF)V

    return-object p0
.end method

.method public final getHomeExitHoldStateParams(F)Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;
    .locals 0

    .line 92
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getHomeDragStateParams(F)Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object p0

    return-object p0
.end method

.method public final getHomeHoldStateParams(F)Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;
    .locals 7

    .line 95
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getScalePer(F)F

    move-result p1

    .line 97
    new-instance v6, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    invoke-direct {p0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getRecentAlphaWithBlur()F

    move-result v1

    const/high16 p0, 0x3f800000    # 1.0f

    mul-float v3, p1, p0

    const v4, 0x3f5c28f6    # 0.86f

    const v5, 0x3e19999a    # 0.15f

    move-object v0, v6

    move v2, v3

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;-><init>(FFFFF)V

    return-object v6

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getHomeStateParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;
    .locals 1

    .line 63
    sget-boolean p0, Lcom/miui/home/launcher/Launcher;->IS_RECENTS_WINDOW:Z

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    new-instance p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    invoke-direct {p0, v0, v0, v0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;-><init>(FFF)V

    return-object p0

    .line 64
    :cond_1
    :goto_0
    new-instance p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    invoke-direct {p0, v0, v0, v0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;-><init>(FFF)V

    return-object p0
.end method

.method public final getRecentDragStateParams(F)Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;
    .locals 8

    .line 104
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v0

    const v1, 0x3f733333    # 0.95f

    if-eqz v0, :cond_0

    .line 105
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getScalePer(F)F

    move-result p1

    .line 106
    new-instance v0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    invoke-direct {p0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getRecentAlphaWithBlur()F

    move-result v3

    mul-float v5, p1, v1

    const v6, 0x3f5c28f6    # 0.86f

    const v7, 0x3e19999a    # 0.15f

    move-object v2, v0

    move v4, v5

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;-><init>(FFFFF)V

    return-object v0

    .line 108
    :cond_0
    new-instance p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    const/4 p1, 0x0

    invoke-direct {p0, p1, v1, v1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;-><init>(FFF)V

    return-object p0
.end method

.method public final getRecentEnterHoldStateParams(F)Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;
    .locals 8

    .line 113
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v0

    const v1, 0x3f733333    # 0.95f

    if-eqz v0, :cond_0

    .line 114
    invoke-direct {p0, p1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getScalePer(F)F

    move-result p0

    .line 115
    new-instance p1, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float v5, p0, v1

    const v6, 0x3f5c28f6    # 0.86f

    const v7, 0x3e19999a    # 0.15f

    move-object v2, p1

    move v4, v5

    invoke-direct/range {v2 .. v7}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;-><init>(FFFFF)V

    return-object p1

    .line 117
    :cond_0
    new-instance p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v1, v1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;-><init>(FFF)V

    return-object p0
.end method

.method public final getRecentExitHoldStateParams(F)Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;
    .locals 0

    .line 121
    invoke-virtual {p0, p1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getRecentDragStateParams(F)Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    move-result-object p0

    return-object p0
.end method

.method public final getRecentStateParams()Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;
    .locals 2

    .line 71
    sget-boolean v0, Lcom/miui/home/launcher/Launcher;->IS_RECENTS_WINDOW:Z

    const v1, 0x3f733333    # 0.95f

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    new-instance p0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;-><init>(FFF)V

    return-object p0

    .line 72
    :cond_1
    :goto_0
    new-instance v0, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;

    invoke-direct {p0}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams$Companion;->getRecentAlphaWithBlur()F

    move-result p0

    invoke-direct {v0, p0, v1, v1}, Lcom/miui/home/recents/anim/ShortcutMenuLayerParams;-><init>(FFF)V

    return-object v0
.end method
