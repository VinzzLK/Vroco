.class public Lcom/miui/home/launcher/compat/IconScaleProvider;
.super Ljava/lang/Object;
.source "IconScaleProvider.java"


# static fields
.field public static final OLD_ICON_SCALE_MAX_SCALE:F

.field public static final OLD_ICON_SCALE_MIN_SCALE:F


# instance fields
.field protected mCellCountX:I

.field protected final mContext:Landroid/content/Context;

.field protected mCurScale:F

.field protected mDefaultScale:F

.field protected mIconScaleScope:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3f70a3d7    # 0.94f

    goto :goto_0

    :cond_0
    const v0, 0x3f4ccccd    # 0.8f

    :goto_0
    sput v0, Lcom/miui/home/launcher/compat/IconScaleProvider;->OLD_ICON_SCALE_MIN_SCALE:F

    .line 21
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x3f87ae14    # 1.06f

    goto :goto_1

    :cond_1
    const v0, 0x3f99999a    # 1.2f

    :goto_1
    sput v0, Lcom/miui/home/launcher/compat/IconScaleProvider;->OLD_ICON_SCALE_MAX_SCALE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mContext:Landroid/content/Context;

    .line 25
    iput p2, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mCellCountX:I

    .line 26
    invoke-static {p2}, Lcom/miui/home/launcher/util/GridConfigUtil;->getScaleScopeByCellCount(I)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mIconScaleScope:Landroid/util/Pair;

    .line 27
    iget p1, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mCellCountX:I

    invoke-static {p1}, Lcom/miui/home/launcher/util/GridConfigUtil;->getDefaultScaleByCellCount(I)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mDefaultScale:F

    .line 28
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/IconScaleProvider;->initScale()V

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initScale mCellCountX = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mCellCountX:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",mDefaultScale="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mDefaultScale:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ",mCurScale="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mCurScale:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ",maxScale="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mIconScaleScope:Landroid/util/Pair;

    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",minScale="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mIconScaleScope:Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GridConfig - IconScaleProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getScaleByChangingCellCountX(IIFLandroid/util/Pair;Landroid/util/Pair;)F
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIF",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 65
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isAccessibilityDisplaySizeLarge()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 66
    iget-object p0, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    .line 68
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isAccessibilityDisplaySizeSmall()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 69
    iget-object p0, p5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0

    :cond_1
    if-ne p1, p2, :cond_2

    return p3

    :cond_2
    const/4 p0, 0x3

    if-ne p2, p0, :cond_3

    .line 75
    invoke-static {p2}, Lcom/miui/home/launcher/util/GridConfigUtil;->getDefaultScaleByCellCount(I)F

    move-result p0

    return p0

    :cond_3
    if-ne p1, p0, :cond_4

    .line 78
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object p0

    invoke-static {p2}, Lcom/miui/home/launcher/util/GridConfigUtil;->getDefaultScaleByCellCount(I)F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getIconSizeScaleFromSP(F)F

    move-result p0

    iget-object p1, p5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    .line 79
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object p2, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 78
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(FFF)F

    move-result p0

    return p0

    .line 81
    :cond_4
    invoke-static {p1}, Lcom/miui/home/launcher/util/GridConfigUtil;->getDefaultScaleByCellCount(I)F

    move-result p0

    cmpl-float p0, p0, p3

    if-nez p0, :cond_5

    .line 82
    invoke-static {p2}, Lcom/miui/home/launcher/util/GridConfigUtil;->getDefaultScaleByCellCount(I)F

    move-result p0

    return p0

    .line 84
    :cond_5
    iget-object p0, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sub-float/2addr p3, p0

    iget-object p0, p4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iget-object p1, p4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sub-float/2addr p0, p1

    div-float/2addr p3, p0

    .line 85
    iget-object p0, p5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    iget-object p1, p5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    sub-float/2addr p0, p1

    mul-float/2addr p3, p0

    iget-object p0, p5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    add-float/2addr p3, p0

    return p3
.end method

.method private initScale()V
    .locals 3

    .line 35
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isAccessibilityDisplaySizeLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mIconScaleScope:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mCurScale:F

    return-void

    .line 39
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isAccessibilityDisplaySizeSmall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mIconScaleScope:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mCurScale:F

    return-void

    .line 43
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mCellCountX:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 44
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    iget v1, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mDefaultScale:F

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getIconSizeScaleFromSP(F)F

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mIconScaleScope:Landroid/util/Pair;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    .line 45
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mIconScaleScope:Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 44
    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->boundToRange(FFF)F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mCurScale:F

    goto :goto_0

    .line 47
    :cond_2
    iget v0, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mDefaultScale:F

    iput v0, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mCurScale:F

    :goto_0
    return-void
.end method

.method private saveScale()V
    .locals 2

    .line 90
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isAccessibilityDisplaySizeLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 93
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isAccessibilityDisplaySizeSmall()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 96
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mCellCountX:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    return-void

    .line 99
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    iget p0, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mCurScale:F

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/PreferenceUtils;->setIconSizeScale(F)V

    return-void
.end method


# virtual methods
.method public getDefaultScale()F
    .locals 0

    .line 128
    iget p0, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mDefaultScale:F

    return p0
.end method

.method public getMaxIconScale()F
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mIconScaleScope:Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getMinIconScale()F
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mIconScaleScope:Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    return p0
.end method

.method public getScale()F
    .locals 0

    .line 124
    iget p0, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mCurScale:F

    return p0
.end method

.method public setScale(F)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mCurScale:F

    return-void
.end method

.method public updateCellSize(II)V
    .locals 6

    .line 52
    iget v1, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mCellCountX:I

    iget v3, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mCurScale:F

    iget-object v4, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mIconScaleScope:Landroid/util/Pair;

    .line 53
    invoke-static {p1}, Lcom/miui/home/launcher/util/GridConfigUtil;->getScaleScopeByCellCount(I)Landroid/util/Pair;

    move-result-object v5

    move-object v0, p0

    move v2, p1

    .line 52
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/compat/IconScaleProvider;->getScaleByChangingCellCountX(IIFLandroid/util/Pair;Landroid/util/Pair;)F

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mCurScale:F

    .line 54
    iput p1, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mCellCountX:I

    .line 55
    invoke-static {p1}, Lcom/miui/home/launcher/util/GridConfigUtil;->getScaleScopeByCellCount(I)Landroid/util/Pair;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mIconScaleScope:Landroid/util/Pair;

    .line 56
    iget p1, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mCellCountX:I

    invoke-static {p1}, Lcom/miui/home/launcher/util/GridConfigUtil;->getDefaultScaleByCellCount(I)F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mDefaultScale:F

    .line 57
    invoke-direct {p0}, Lcom/miui/home/launcher/compat/IconScaleProvider;->saveScale()V

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateCellSize mCellCountX = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mCellCountX:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",mDefaultScale="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mDefaultScale:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ",mCurScale="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mCurScale:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ",maxScale="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mIconScaleScope:Landroid/util/Pair;

    iget-object p2, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",minScale="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mIconScaleScope:Landroid/util/Pair;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GridConfig - IconScaleProvider"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateIconScaleForDBUpgrade()V
    .locals 5

    .line 106
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/common/PreferenceUtils;->getIconSizeScaleFromSP(F)F

    move-result v0

    const v1, 0x3f4ccccd    # 0.8f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    return-void

    .line 110
    :cond_0
    new-instance v1, Landroid/util/Pair;

    sget v2, Lcom/miui/home/launcher/compat/IconScaleProvider;->OLD_ICON_SCALE_MAX_SCALE:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    sget v3, Lcom/miui/home/launcher/compat/IconScaleProvider;->OLD_ICON_SCALE_MIN_SCALE:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 111
    iget-object v2, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mIconScaleScope:Landroid/util/Pair;

    .line 112
    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    sub-float v3, v0, v3

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr v4, v1

    div-float/2addr v3, v4

    .line 113
    iget-object v1, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v4, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v1, v4

    mul-float/2addr v1, v3

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    add-float/2addr v1, v2

    iput v1, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mCurScale:F

    .line 114
    invoke-static {}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInstance()Lcom/miui/home/launcher/common/PreferenceUtils;

    move-result-object v1

    iget v2, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mCurScale:F

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->setIconSizeScale(F)V

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update icon scale upgrade pre scale = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", proportion = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", mCurScale = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/miui/home/launcher/compat/IconScaleProvider;->mCurScale:F

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "GridConfig - IconScaleProvider"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
