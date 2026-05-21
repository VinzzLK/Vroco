.class public Lcom/miui/home/launcher/anim/FolderCreateBgAnim;
.super Ljava/lang/Object;
.source "FolderCreateBgAnim.java"


# instance fields
.field hideAnimConfig:Lmiuix/animation/base/AnimConfig;

.field hideState:Lmiuix/animation/controller/AnimState;

.field private mCellLayout:Lcom/miui/home/launcher/CellLayout;

.field private mFolderCreationBg:Landroid/widget/ImageView;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field showAnimConfig:Lmiuix/animation/base/AnimConfig;

.field showState:Lmiuix/animation/controller/AnimState;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/CellLayout;)V
    .locals 7

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const v1, 0x3f59999a    # 0.85f

    const v2, 0x3eb33333    # 0.35f

    .line 59
    invoke-static {v1, v2}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v3

    invoke-virtual {v0, v3}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    const/4 v3, 0x1

    new-array v4, v3, [Lmiuix/animation/listener/TransitionListener;

    new-instance v5, Lcom/miui/home/launcher/anim/FolderCreateBgAnim$1;

    invoke-direct {v5, p0}, Lcom/miui/home/launcher/anim/FolderCreateBgAnim$1;-><init>(Lcom/miui/home/launcher/anim/FolderCreateBgAnim;)V

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 60
    invoke-virtual {v0, v4}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;->showAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 75
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 76
    invoke-static {v1, v2}, Lmiuix/animation/FolmeEase;->spring(FF)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    new-array v1, v3, [Lmiuix/animation/listener/TransitionListener;

    new-instance v2, Lcom/miui/home/launcher/anim/FolderCreateBgAnim$2;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/anim/FolderCreateBgAnim$2;-><init>(Lcom/miui/home/launcher/anim/FolderCreateBgAnim;)V

    aput-object v2, v1, v6

    .line 77
    invoke-virtual {v0, v1}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;->hideAnimConfig:Lmiuix/animation/base/AnimConfig;

    .line 90
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v1, "showState"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    sget v2, Lcom/miui/home/launcher/FolderIcon;->DEFAULT_DRAG_OVER_ANIM_SCALE:F

    float-to-double v2, v2

    .line 91
    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    sget v3, Lcom/miui/home/launcher/FolderIcon;->DEFAULT_DRAG_OVER_ANIM_SCALE:F

    float-to-double v3, v3

    .line 92
    invoke-virtual {v0, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 93
    invoke-virtual {v0, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;->showState:Lmiuix/animation/controller/AnimState;

    .line 94
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v6, "hideState"

    invoke-direct {v0, v6}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v0, v1, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v2, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 97
    invoke-virtual {v0, v3, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;->hideState:Lmiuix/animation/controller/AnimState;

    .line 36
    iput-object p1, p0, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    .line 37
    invoke-virtual {p1}, Lcom/miui/home/launcher/CellLayout;->getFolderCreationBg()Landroid/widget/ImageView;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;->mFolderCreationBg:Landroid/widget/ImageView;

    .line 38
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/anim/FolderCreateBgAnim;)Landroid/widget/ImageView;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;->mFolderCreationBg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/anim/FolderCreateBgAnim;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/anim/FolderCreateBgAnim;)Lcom/miui/home/launcher/CellLayout;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    return-object p0
.end method


# virtual methods
.method public showFolderCreateBackground(ZZ[I)V
    .locals 15

    move-object v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 43
    invoke-static {v2}, Lcom/miui/home/launcher/common/BlurUtilities;->isFolderBlurSupported(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 44
    iget-object v4, v0, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;->mFolderCreationBg:Landroid/widget/ImageView;

    iget-object v3, v0, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v5, v4}, Lcom/miui/home/launcher/common/BlurUtilities;->getFolderIconBlurRoundRectRadius(Landroid/content/Context;Ljava/lang/Boolean;Landroid/widget/ImageView;)I

    move-result v5

    const v6, -0x4c89898a

    const/16 v7, 0x64

    const v8, 0x66b4b4b4

    const/16 v9, 0x64

    const v10, -0xeb6c00

    const/16 v11, 0x6a

    const v12, -0xd10e00

    const/16 v13, 0x6a

    const/4 v14, 0x1

    invoke-static/range {v4 .. v14}, Lcom/miui/home/launcher/common/BlurUtilities;->setFolderIconBlur(Landroid/view/View;IIIIIIIIII)V

    .line 48
    :cond_0
    iget-object v3, v0, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    move-object/from16 v4, p3

    invoke-virtual {v3, v4}, Lcom/miui/home/launcher/CellLayout;->updateFolderCreationBgPosition([I)V

    new-array v3, v2, [Landroid/view/View;

    .line 49
    iget-object v4, v0, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;->mFolderCreationBg:Landroid/widget/ImageView;

    aput-object v4, v3, v1

    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v3

    invoke-interface {v3}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v3

    iget-object v4, v0, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;->showState:Lmiuix/animation/controller/AnimState;

    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    iget-object v0, v0, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;->showAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object v0, v2, v1

    invoke-interface {v3, v4, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    .line 52
    iget-object v3, v0, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;->mFolderCreationBg:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    new-array v3, v2, [Landroid/view/View;

    .line 54
    iget-object v4, v0, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;->mFolderCreationBg:Landroid/widget/ImageView;

    aput-object v4, v3, v1

    invoke-static {v3}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object v3

    invoke-interface {v3}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object v3

    iget-object v4, v0, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;->hideState:Lmiuix/animation/controller/AnimState;

    new-array v2, v2, [Lmiuix/animation/base/AnimConfig;

    iget-object v0, v0, Lcom/miui/home/launcher/anim/FolderCreateBgAnim;->hideAnimConfig:Lmiuix/animation/base/AnimConfig;

    aput-object v0, v2, v1

    invoke-interface {v3, v4, v2}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    :goto_0
    return-void
.end method
