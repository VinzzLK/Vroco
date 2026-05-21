.class public final Lcom/miui/home/recents/anim/WallpaperParam$Companion;
.super Ljava/lang/Object;
.source "WallpaperElement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/recents/anim/WallpaperParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAppStateParams()Lcom/miui/home/recents/anim/WallpaperParam;
    .locals 4

    .line 44
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v0

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3f866666    # 1.05f

    const v3, 0x3f91eb85    # 1.14f

    if-eqz v0, :cond_0

    .line 45
    new-instance v0, Lcom/miui/home/recents/anim/WallpaperParam;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getDefaultScale()F

    move-result p0

    mul-float/2addr p0, v3

    invoke-direct {v0, p0, v2, v1}, Lcom/miui/home/recents/anim/WallpaperParam;-><init>(FFF)V

    return-object v0

    .line 47
    :cond_0
    new-instance v0, Lcom/miui/home/recents/anim/WallpaperParam;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getDefaultScale()F

    move-result p0

    mul-float/2addr p0, v3

    invoke-direct {v0, p0, v2, v1}, Lcom/miui/home/recents/anim/WallpaperParam;-><init>(FFF)V

    return-object v0
.end method

.method public final getDefaultScale()F
    .locals 0

    .line 33
    invoke-static {}, Lcom/miui/home/recents/anim/WallpaperParam;->access$getDefaultScale$cp()F

    move-result p0

    return p0
.end method

.method public final getHomeStateParams()Lcom/miui/home/recents/anim/WallpaperParam;
    .locals 4

    .line 36
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v0

    const v1, 0x3f333333    # 0.7f

    const v2, 0x3f866666    # 1.05f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 37
    new-instance v0, Lcom/miui/home/recents/anim/WallpaperParam;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getDefaultScale()F

    move-result p0

    mul-float/2addr p0, v3

    invoke-direct {v0, p0, v2, v1}, Lcom/miui/home/recents/anim/WallpaperParam;-><init>(FFF)V

    return-object v0

    .line 39
    :cond_0
    new-instance v0, Lcom/miui/home/recents/anim/WallpaperParam;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getDefaultScale()F

    move-result p0

    mul-float/2addr p0, v3

    invoke-direct {v0, p0, v2, v1}, Lcom/miui/home/recents/anim/WallpaperParam;-><init>(FFF)V

    return-object v0
.end method

.method public final getRecentStateParams()Lcom/miui/home/recents/anim/WallpaperParam;
    .locals 4

    .line 52
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v0

    const v1, 0x3f19999a    # 0.6f

    const v2, 0x3f866666    # 1.05f

    const v3, 0x3f87ae14    # 1.06f

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lcom/miui/home/recents/anim/WallpaperParam;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getDefaultScale()F

    move-result p0

    mul-float/2addr p0, v3

    invoke-direct {v0, p0, v2, v1}, Lcom/miui/home/recents/anim/WallpaperParam;-><init>(FFF)V

    return-object v0

    .line 55
    :cond_0
    new-instance v0, Lcom/miui/home/recents/anim/WallpaperParam;

    invoke-virtual {p0}, Lcom/miui/home/recents/anim/WallpaperParam$Companion;->getDefaultScale()F

    move-result p0

    mul-float/2addr p0, v3

    invoke-direct {v0, p0, v2, v1}, Lcom/miui/home/recents/anim/WallpaperParam;-><init>(FFF)V

    return-object v0
.end method

.method public final setDefaultScale(F)V
    .locals 0

    .line 33
    invoke-static {p1}, Lcom/miui/home/recents/anim/WallpaperParam;->access$setDefaultScale$cp(F)V

    return-void
.end method
