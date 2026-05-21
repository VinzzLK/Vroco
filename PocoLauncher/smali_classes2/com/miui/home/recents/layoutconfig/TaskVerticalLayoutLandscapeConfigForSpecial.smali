.class public Lcom/miui/home/recents/layoutconfig/TaskVerticalLayoutLandscapeConfigForSpecial;
.super Ljava/lang/Object;
.source "TaskVerticalLayoutLandscapeConfigForSpecial.java"

# interfaces
.implements Lcom/miui/home/recents/views/TaskStackViewsAlgorithmVertical$IVerticalLayoutConfig;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBottomRatio()F
    .locals 0

    const/high16 p0, 0x3f000000    # 0.5f

    return p0
.end method

.method public getTopRatio(ZI)F
    .locals 0

    const/high16 p0, 0x3e800000    # 0.25f

    return p0
.end method

.method public getVerticalGapFraction()F
    .locals 0

    const p0, 0x3f19999a    # 0.6f

    return p0
.end method
