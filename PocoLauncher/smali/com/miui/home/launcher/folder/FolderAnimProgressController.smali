.class public Lcom/miui/home/launcher/folder/FolderAnimProgressController;
.super Ljava/lang/Object;
.source "FolderAnimProgressController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/folder/FolderAnimProgressController$FolderAnimProgressCallBack;
    }
.end annotation


# static fields
.field private static CENTRAL_REGION:F = 0.93f

.field private static DEFAULT_REGION:F = 0.0f

.field private static LOWER_REGION:F = 0.65f

.field private static UPPER_REGION:F = 0.97f


# instance fields
.field private final ANIM_PROGRESS:Ljava/lang/String;

.field private animConfig:Lmiuix/animation/base/AnimConfig;

.field private mCurrentRegion:F

.field private mFolderAnimProgressCallBack:Lcom/miui/home/launcher/folder/FolderAnimProgressController$FolderAnimProgressCallBack;

.field private final mFolderCling:Lcom/miui/home/launcher/FolderCling;

.field private mFolderGridView:Lcom/miui/home/launcher/FolderGridView;

.field private final mFolderGridViewLoc:[I

.field private mFolderGridViewRect:Landroid/graphics/Rect;

.field private mFolderIcon:Lcom/miui/home/launcher/FolderIcon;

.field private final mFolderIconLoc:[I

.field private mFolderIconRect:Landroid/graphics/Rect;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/folder/FolderAnimListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/FolderCling;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 24
    iput-object v1, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mFolderIconLoc:[I

    new-array v0, v0, [I

    .line 25
    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mFolderGridViewLoc:[I

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mCurrentRegion:F

    const-string v0, "folderAnimProgress"

    .line 33
    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->ANIM_PROGRESS:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/folder/FolderAnimProgressController;)Lcom/miui/home/launcher/folder/FolderAnimProgressController$FolderAnimProgressCallBack;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mFolderAnimProgressCallBack:Lcom/miui/home/launcher/folder/FolderAnimProgressController$FolderAnimProgressCallBack;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/folder/FolderAnimProgressController;)F
    .locals 0

    .line 19
    iget p0, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mCurrentRegion:F

    return p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/folder/FolderAnimProgressController;Z)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->setClipGridViewChild(Z)V

    return-void
.end method

.method private calcFolderIconRegion(FZ)V
    .locals 0

    .line 67
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->setViewLocation()V

    .line 68
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->setGridViewAndFolderIconRect(F)V

    if-eqz p2, :cond_0

    .line 70
    sget p1, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->CENTRAL_REGION:F

    iput p1, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mCurrentRegion:F

    return-void

    .line 73
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->isIconInGridView()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 74
    sget p1, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->DEFAULT_REGION:F

    iput p1, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mCurrentRegion:F

    return-void

    .line 77
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->isIconAboveGridView()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 78
    sget p1, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->UPPER_REGION:F

    iput p1, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mCurrentRegion:F

    return-void

    .line 81
    :cond_2
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->isBelowGridView()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 82
    sget p1, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->LOWER_REGION:F

    iput p1, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mCurrentRegion:F

    return-void

    .line 85
    :cond_3
    sget p1, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->CENTRAL_REGION:F

    iput p1, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mCurrentRegion:F

    return-void
.end method

.method private isBelowGridView()Z
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mFolderGridViewLoc:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getHeight()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mFolderIcon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mFolderIconLoc:[I

    aget p0, p0, v1

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isIconAboveGridView()Z
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mFolderIconLoc:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mFolderGridViewLoc:[I

    aget p0, p0, v1

    if-ge v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isIconInGridView()Z
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mFolderGridViewRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mFolderIconRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p0

    return p0
.end method

.method private setClipGridViewChild(Z)V
    .locals 1

    .line 143
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/folder/FolderAnimListener;

    .line 144
    invoke-interface {v0, p1}, Lcom/miui/home/launcher/folder/FolderAnimListener;->setClipGridViewChild(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setGridViewAndFolderIconRect(F)V
    .locals 7

    .line 90
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mFolderIconLoc:[I

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v6, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mFolderIcon:Lcom/miui/home/launcher/FolderIcon;

    .line 91
    invoke-virtual {v6}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    add-float/2addr v1, v6

    float-to-int v1, v1

    iget-object v6, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mFolderIconLoc:[I

    aget v6, v6, v4

    add-int/2addr v6, v4

    invoke-direct {v0, v3, v5, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mFolderIconRect:Landroid/graphics/Rect;

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mFolderGridViewLoc:[I

    aget v3, v1, v2

    aget v5, v1, v4

    aget v1, v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    .line 93
    invoke-virtual {v2}, Landroid/widget/GridView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p1

    add-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mFolderGridViewLoc:[I

    aget v2, v2, v4

    int-to-float v2, v2

    iget-object v4, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, p1

    add-float/2addr v2, v4

    float-to-int p1, v2

    invoke-direct {v0, v3, v5, v1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mFolderGridViewRect:Landroid/graphics/Rect;

    return-void
.end method

.method private setListenerAnimParams(Z)V
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 116
    invoke-static {v1}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v1

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "folderAnimProgress"

    aput-object v5, v4, v2

    if-eqz p1, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_0
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-interface {v1, v4}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 117
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v4, -0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    .line 118
    invoke-static {v4, v3}, Lmiuix/animation/utils/EaseManager;->getStyle(I[F)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v3

    invoke-virtual {v1, v3}, Lmiuix/animation/base/AnimConfig;->setEase(Lmiuix/animation/utils/EaseManager$EaseStyle;)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    new-array v0, v0, [Lmiuix/animation/listener/TransitionListener;

    new-instance v3, Lcom/miui/home/launcher/folder/FolderAnimProgressController$1;

    invoke-direct {v3, p0, p1}, Lcom/miui/home/launcher/folder/FolderAnimProgressController$1;-><init>(Lcom/miui/home/launcher/folder/FolderAnimProgressController;Z)V

    aput-object v3, v0, v2

    .line 119
    invoke-virtual {v1, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->animConfig:Lmiuix/animation/base/AnimConfig;

    return-void

    nop

    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3ea3d70a    # 0.32f
    .end array-data
.end method

.method private setViewLocation()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mFolderIcon:Lcom/miui/home/launcher/FolderIcon;

    .line 110
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    .line 111
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mFolderIcon:Lcom/miui/home/launcher/FolderIcon;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mFolderIconLoc:[I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->getLocationOnScreen([I)V

    .line 112
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mFolderGridViewLoc:[I

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->getLocationOnScreen([I)V

    return-void
.end method


# virtual methods
.method protected initAnimRate()V
    .locals 1

    .line 41
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHighAnimationRate()Z

    move-result p0

    const v0, 0x3f733333    # 0.95f

    if-eqz p0, :cond_0

    const p0, 0x3f7851ec    # 0.97f

    .line 42
    sput p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->UPPER_REGION:F

    .line 43
    sput v0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->CENTRAL_REGION:F

    const p0, 0x3f266666    # 0.65f

    .line 44
    sput p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->LOWER_REGION:F

    .line 47
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isMiddleAnimationRate()Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x3f75c28f    # 0.96f

    .line 48
    sput p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->UPPER_REGION:F

    const p0, 0x3f70a3d7    # 0.94f

    .line 49
    sput p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->CENTRAL_REGION:F

    const/high16 p0, 0x3f000000    # 0.5f

    .line 50
    sput p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->LOWER_REGION:F

    .line 53
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowAnimationRate()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 54
    sput v0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->UPPER_REGION:F

    const p0, 0x3f4ccccd    # 0.8f

    .line 55
    sput p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->CENTRAL_REGION:F

    const p0, 0x3ecccccd    # 0.4f

    .line 56
    sput p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->LOWER_REGION:F

    :cond_2
    return-void
.end method

.method public initProgressListener(FLjava/util/ArrayList;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/folder/FolderAnimListener;",
            ">;ZZ)V"
        }
    .end annotation

    .line 61
    iput-object p2, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mListeners:Ljava/util/ArrayList;

    .line 62
    invoke-direct {p0, p1, p4}, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->calcFolderIconRegion(FZ)V

    .line 63
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->setListenerAnimParams(Z)V

    return-void
.end method

.method public startListenerProgress(ZLcom/miui/home/launcher/folder/FolderAnimProgressController$FolderAnimProgressCallBack;)V
    .locals 4

    .line 149
    iput-object p2, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->mFolderAnimProgressCallBack:Lcom/miui/home/launcher/folder/FolderAnimProgressController$FolderAnimProgressCallBack;

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 150
    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "folderAnimProgress"

    aput-object v3, v2, v1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->animConfig:Lmiuix/animation/base/AnimConfig;

    aput-object p0, v2, p1

    invoke-interface {v0, v2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method
