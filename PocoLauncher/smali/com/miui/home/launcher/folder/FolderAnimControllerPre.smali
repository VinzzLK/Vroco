.class public Lcom/miui/home/launcher/folder/FolderAnimControllerPre;
.super Lcom/miui/home/launcher/folder/FolderAnimController;
.source "FolderAnimControllerPre.java"


# instance fields
.field private BASE_RESPONSE:F

.field private DAMPING_NORMAL:F


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/FolderCling;Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/folder/FolderAnimController;-><init>(Lcom/miui/home/launcher/FolderCling;Lcom/miui/home/launcher/Launcher;)V

    const p1, 0x3e99999a    # 0.3f

    .line 8
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderAnimControllerPre;->BASE_RESPONSE:F

    const p1, 0x3f666666    # 0.9f

    .line 9
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderAnimControllerPre;->DAMPING_NORMAL:F

    return-void
.end method


# virtual methods
.method protected getClosePreviewResponse()F
    .locals 0

    .line 46
    iget p0, p0, Lcom/miui/home/launcher/folder/FolderAnimControllerPre;->BASE_RESPONSE:F

    return p0
.end method

.method protected getGridItemDelay(J)J
    .locals 0

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method protected getGridViewResponse(I)F
    .locals 0

    .line 42
    iget p0, p0, Lcom/miui/home/launcher/folder/FolderAnimControllerPre;->BASE_RESPONSE:F

    return p0
.end method

.method protected getPreViewOpenResponse(I)F
    .locals 0

    .line 32
    iget p0, p0, Lcom/miui/home/launcher/folder/FolderAnimControllerPre;->BASE_RESPONSE:F

    return p0
.end method

.method protected getTitleDamping()F
    .locals 0

    .line 37
    iget p0, p0, Lcom/miui/home/launcher/folder/FolderAnimControllerPre;->DAMPING_NORMAL:F

    return p0
.end method

.method protected initAnimRate()V
    .locals 1

    .line 17
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHighAnimationRate()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x3ea3d70a    # 0.32f

    .line 18
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimControllerPre;->BASE_RESPONSE:F

    .line 21
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isMiddleAnimationRate()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x3e8f5c29    # 0.28f

    .line 22
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimControllerPre;->BASE_RESPONSE:F

    .line 25
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowAnimationRate()Z

    move-result v0

    if-eqz v0, :cond_2

    const/high16 v0, 0x3e800000    # 0.25f

    .line 26
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimControllerPre;->BASE_RESPONSE:F

    :cond_2
    return-void
.end method
