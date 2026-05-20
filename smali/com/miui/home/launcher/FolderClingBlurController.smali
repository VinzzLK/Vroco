.class public Lcom/miui/home/launcher/FolderClingBlurController;
.super Ljava/lang/Object;
.source "FolderClingBlurController.java"


# instance fields
.field private mFolderClingBlurStyle:Lcom/miui/home/launcher/common/BlurStyle;

.field private mFolderClingBlurView:Landroid/view/View;

.field private mIsFolderClingScaled:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Landroid/view/View;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/miui/home/launcher/FolderClingBlurController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 29
    iput-object p2, p0, Lcom/miui/home/launcher/FolderClingBlurController;->mFolderClingBlurView:Landroid/view/View;

    .line 30
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderClingBlurController;->prepareFolderClingBlur()V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/FolderClingBlurController;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/miui/home/launcher/FolderClingBlurController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/FolderClingBlurController;ZF)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/FolderClingBlurController;->setFolderClingBlur(ZF)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/FolderClingBlurController;Z)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderClingBlurController;->setIsFolderClingScaled(Z)V

    return-void
.end method

.method private initFolderClingBlurParams()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "folderClingAnim"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 43
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "folder_cling_blur"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-interface {v1, v2}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 44
    new-instance v0, Lcom/miui/home/launcher/common/BlurStyle;

    const/high16 v1, 0x42700000    # 60.0f

    .line 45
    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->dp2px(F)I

    move-result v1

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    const v3, 0x3d8f5c29    # 0.07f

    invoke-direct {v0, v1, v3, v2}, Lcom/miui/home/launcher/common/BlurStyle;-><init>(IF[I)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderClingBlurController;->mFolderClingBlurStyle:Lcom/miui/home/launcher/common/BlurStyle;

    return-void

    :array_0
    .array-data 4
        -0x7d7d7e
        0x64
        -0xe53400
        0x6a
    .end array-data
.end method

.method private isOpenInEditAndCloseInInNormal()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lcom/miui/home/launcher/FolderClingBlurController;->mIsFolderClingScaled:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/FolderClingBlurController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isOpenInNormalAndCloseInEdit()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/miui/home/launcher/FolderClingBlurController;->mIsFolderClingScaled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/FolderClingBlurController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private prepareFolderClingBlur()V
    .locals 1

    .line 34
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderClingBlurController;->initFolderClingBlurParams()V

    .line 36
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderClingBlurController;->setFolderClingBlurContainer()V

    goto :goto_0

    .line 38
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/FolderClingBlurController;->mFolderClingBlurView:Landroid/view/View;

    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->clearAllBlur(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private setFolderClingBlur(ZF)V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/miui/home/launcher/FolderClingBlurController;->mFolderClingBlurStyle:Lcom/miui/home/launcher/common/BlurStyle;

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/common/BlurStyle;->getStyleWithProgress(F)Lcom/miui/home/launcher/common/BlurStyle;

    move-result-object p2

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/FolderClingBlurController;->mFolderClingBlurView:Landroid/view/View;

    invoke-static {v0}, Lcom/miui/home/launcher/common/BlurUtilities;->resetBlurColor(Landroid/view/View;)V

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/FolderClingBlurController;->mFolderClingBlurView:Landroid/view/View;

    invoke-virtual {p2}, Lcom/miui/home/launcher/common/BlurStyle;->getBlurRadius()I

    move-result v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurRadius(Landroid/view/View;I)V

    .line 98
    iget-object v0, p0, Lcom/miui/home/launcher/FolderClingBlurController;->mFolderClingBlurView:Landroid/view/View;

    invoke-virtual {p2}, Lcom/miui/home/launcher/common/BlurStyle;->getBlendColors()[I

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurColor(Landroid/view/View;[I)V

    .line 99
    invoke-virtual {p2}, Lcom/miui/home/launcher/common/BlurStyle;->getBlurScale()F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/FolderClingBlurController;->setFolderClingBlurScale(ZF)V

    return-void
.end method

.method private setFolderClingBlurContainer()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/miui/home/launcher/FolderClingBlurController;->mFolderClingBlurView:Landroid/view/View;

    iget-object v1, p0, Lcom/miui/home/launcher/FolderClingBlurController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 54
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07069e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x1

    .line 53
    invoke-static {v0, v2, v2, v1}, Lcom/miui/home/launcher/common/BlurUtilities;->setContainerBlur(Landroid/view/View;IZI)V

    .line 55
    iget-object v0, p0, Lcom/miui/home/launcher/FolderClingBlurController;->mFolderClingBlurView:Landroid/view/View;

    invoke-static {v0, v2}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBlur(Landroid/view/View;I)V

    .line 56
    iget-object p0, p0, Lcom/miui/home/launcher/FolderClingBlurController;->mFolderClingBlurView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setMiBackgroundBlurEnhanceFlag(Landroid/view/View;Z)V

    return-void
.end method

.method private setFolderClingBlurScale(ZF)V
    .locals 1

    if-nez p1, :cond_0

    .line 104
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderClingBlurController;->isOpenInNormalAndCloseInEdit()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object p1, p0, Lcom/miui/home/launcher/FolderClingBlurController;->mFolderClingBlurView:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurScaleRatio(Landroid/view/View;F)V

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 107
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderClingBlurController;->mIsFolderClingScaled:Z

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    .line 109
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderClingBlurController;->isOpenInEditAndCloseInInNormal()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 111
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/FolderClingBlurController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result p1

    if-nez p1, :cond_2

    .line 112
    iget-object p0, p0, Lcom/miui/home/launcher/FolderClingBlurController;->mFolderClingBlurView:Landroid/view/View;

    invoke-static {p0, p2}, Lcom/miui/home/launcher/common/BlurUtilities;->setBlurScaleRatio(Landroid/view/View;F)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setIsFolderClingScaled(Z)V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/miui/home/launcher/FolderClingBlurController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderClingBlurController;->mIsFolderClingScaled:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public startFolderClingBlurAnim(Z)V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "folderClingAnim"

    aput-object v3, v1, v2

    .line 61
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    invoke-interface {v1}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 62
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    const/4 v6, -0x2

    .line 63
    invoke-virtual {v1, v6, v5}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-array v5, v0, [Lmiuix/animation/listener/TransitionListener;

    new-instance v6, Lcom/miui/home/launcher/FolderClingBlurController$1;

    invoke-direct {v6, p0, p1}, Lcom/miui/home/launcher/FolderClingBlurController$1;-><init>(Lcom/miui/home/launcher/FolderClingBlurController;Z)V

    aput-object v6, v5, v2

    .line 64
    invoke-virtual {v1, v5}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    new-array v1, v0, [Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 91
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "folder_cling_blur"

    aput-object v5, v3, v2

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v3, v0

    aput-object p0, v3, v4

    invoke-interface {v1, v3}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f666666    # 0.9f
        0x3ecccccd    # 0.4f
    .end array-data
.end method
