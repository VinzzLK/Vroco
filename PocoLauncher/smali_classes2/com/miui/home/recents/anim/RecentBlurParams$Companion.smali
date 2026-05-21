.class public final Lcom/miui/home/recents/anim/RecentBlurParams$Companion;
.super Ljava/lang/Object;
.source "RecentBlurViewElement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/anim/RecentBlurParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;-><init>()V

    return-void
.end method

.method private final getRecentBlurRadius()F
    .locals 0

    .line 56
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result p0

    if-eqz p0, :cond_0

    const/high16 p0, 0x42f00000    # 120.0f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final getAppMoveStateParams(F)Lcom/miui/home/recents/anim/RecentBlurParams;
    .locals 10

    const/high16 v0, 0x3f000000    # 0.5f

    div-float/2addr p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 42
    invoke-static {v1, p1}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p1

    const/4 v2, 0x0

    invoke-static {v2, p1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p1

    .line 43
    new-instance v9, Lcom/miui/home/recents/anim/RecentBlurParams;

    invoke-direct {p0}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getRecentBlurRadius()F

    move-result p0

    mul-float/2addr v0, p1

    sub-float v0, v1, v0

    mul-float v3, p0, v0

    const p0, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, p0

    sub-float v4, v1, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/miui/home/recents/anim/RecentBlurParams;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9
.end method

.method public final getAppStateParams()Lcom/miui/home/recents/anim/RecentBlurParams;
    .locals 4

    .line 26
    new-instance v0, Lcom/miui/home/recents/anim/RecentBlurParams;

    invoke-direct {p0}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getRecentBlurRadius()F

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3f733333    # 0.95f

    const v3, 0x3e99999a    # 0.3f

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/miui/home/recents/anim/RecentBlurParams;-><init>(FFFF)V

    return-object v0
.end method

.method public final getHomeExitHoldParams()Lcom/miui/home/recents/anim/RecentBlurParams;
    .locals 7

    .line 53
    new-instance p0, Lcom/miui/home/recents/anim/RecentBlurParams;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/anim/RecentBlurParams;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final getHomeHoldParams()Lcom/miui/home/recents/anim/RecentBlurParams;
    .locals 7

    .line 47
    new-instance p0, Lcom/miui/home/recents/anim/RecentBlurParams;

    const/high16 v1, 0x42f00000    # 120.0f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/anim/RecentBlurParams;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final getHomeStateParams()Lcom/miui/home/recents/anim/RecentBlurParams;
    .locals 3

    .line 23
    new-instance p0, Lcom/miui/home/recents/anim/RecentBlurParams;

    const/4 v0, 0x0

    const v1, 0x3f733333    # 0.95f

    const v2, 0x3ee66666    # 0.45f

    invoke-direct {p0, v0, v0, v1, v2}, Lcom/miui/home/recents/anim/RecentBlurParams;-><init>(FFFF)V

    return-object p0
.end method

.method public final getRecentDragParams(F)Lcom/miui/home/recents/anim/RecentBlurParams;
    .locals 9

    .line 33
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const v1, 0x3dcccccd    # 0.1f

    div-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    .line 34
    invoke-static {v1, p1}, Lkotlin/ranges/RangesKt;->coerceAtMost(FF)F

    move-result p1

    invoke-static {v0, p1}, Lkotlin/ranges/RangesKt;->coerceAtLeast(FF)F

    move-result p1

    .line 35
    new-instance v0, Lcom/miui/home/recents/anim/RecentBlurParams;

    invoke-direct {p0}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getRecentBlurRadius()F

    move-result p0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v2, p1

    sub-float v2, v1, v2

    mul-float v3, p0, v2

    const p0, 0x3f4ccccd    # 0.8f

    mul-float/2addr p1, p0

    sub-float v4, v1, p1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/miui/home/recents/anim/RecentBlurParams;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRecentHoldParams()Lcom/miui/home/recents/anim/RecentBlurParams;
    .locals 7

    .line 50
    new-instance p0, Lcom/miui/home/recents/anim/RecentBlurParams;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/anim/RecentBlurParams;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public final getRecentStateParams()Lcom/miui/home/recents/anim/RecentBlurParams;
    .locals 8

    .line 29
    new-instance v7, Lcom/miui/home/recents/anim/RecentBlurParams;

    invoke-direct {p0}, Lcom/miui/home/recents/anim/RecentBlurParams$Companion;->getRecentBlurRadius()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/miui/home/recents/anim/RecentBlurParams;-><init>(FFFFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v7
.end method
