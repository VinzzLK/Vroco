.class public Lcom/miui/home/launcher/folder/FolderAnimController;
.super Ljava/lang/Object;
.source "FolderAnimController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/folder/FolderAnimController$GridItemTransitionListener;
    }
.end annotation


# static fields
.field private static volatile gridAnimCount:I

.field private static final mProgressShortcutIconList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/ProgressShortcutIcon;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private ALPHA_DIFF:F

.field private BASE_RESPONSE:F

.field private BG_CLOSE_DELAY:J

.field private CLOSE_FOLDER_GRID_FACTORS:F

.field private CLOSE_TITLE_ALPHA_FACTORS:F

.field private COL_RES_DIFF:F

.field private DAMPING:F

.field private DAMPING_NORMAL:F

.field private DISPLAY_COUNT_MAX:I

.field private FOLDER_GRID_FACTORS:F

.field private FOLDER_PREVIEW_FACTORS:F

.field private OPEN_TITLE_ALPHA_FACTORS:F

.field private RESPONSE_NORMAL:F

.field private ROW_RES_DIFF:F

.field private final TAG:Ljava/lang/String;

.field private bgLoc:[I

.field private folderGridLoc:[I

.field private folderIsOpen:Z

.field private mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

.field private mAnimaFolderGridView:Lcom/miui/home/launcher/FolderGridView;

.field private mAnimaFolderInfo:Lcom/miui/home/launcher/FolderInfo;

.field private mBgSpringAnimList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/anim/FolmeAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mDesktopBgStartLoc:[I

.field private mDesktopImageViews:[Landroid/widget/ImageView;

.field private mDisplayChildCount:I

.field private mExposedPivot:[F

.field private mExposedStartLoc:[I

.field private mFolderAnimListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/home/launcher/folder/FolderAnimListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mFolderAnimProgressController:Lcom/miui/home/launcher/folder/FolderAnimProgressController;

.field private mFolderBgLoc:[I

.field private mFolderCling:Lcom/miui/home/launcher/FolderCling;

.field private mFolderColumnCount:I

.field private mFolderDesktopIcon:Lcom/miui/home/launcher/FolderIcon;

.field private mFolderIconAnimView:Lcom/miui/home/launcher/FolderIcon;

.field private final mFolderIconChildRect:Landroid/graphics/Rect;

.field private mFolderIconLocMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderIconSpringAnimList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/anim/FolmeAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mFolderTitleLoc:[I

.field mFolmeGridItemParams:[F

.field private mFolmeScale:F

.field private mGridEndLoc:[I

.field private mGridIconSpringAnimList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/anim/FolmeAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mGridStartLoc:[I

.field private mGridViewItemHeight:I

.field private mIsUseSimpleAnim:Z

.field private mLastIconParams:[I

.field private mLastItemIndex:I

.field private mLastPreViewX:I

.field private mLastPreViewY:I

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mNormalEditScale:F

.field private mNormalScaleX:F

.field private mNormalScaleY:F

.field private mPreViewHeight:I

.field private mQuickEditScale:F

.field private final mResetState:Lmiuix/animation/controller/AnimState;

.field private mSmallIconScale:F

.field private mStartLoc:[I

.field private mTargetLoc:[I

.field private mTitleSpringAnimList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/anim/FolmeAnimation;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$BZWPakgnRbz-Cc9XryMZokb1_vI(Ljava/util/Map$Entry;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/folder/FolderAnimController;->lambda$getIconIndex$1(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lTVsLTYVkjpoBIp4f16ZtuFCnYQ(ZF)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/folder/FolderAnimController;->lambda$startFolderAnim$0(ZF)V

    return-void
.end method

.method public static synthetic $r8$lambda$liJeEhW8pnKbJ0MumeWXFxM8lQ0(Ljava/util/Map$Entry;)Ljava/lang/Integer;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/folder/FolderAnimController;->lambda$getIconIndex$2(Ljava/util/Map$Entry;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/folder/FolderAnimController;->mProgressShortcutIconList:Ljava/util/List;

    const/4 v0, 0x0

    .line 615
    sput v0, Lcom/miui/home/launcher/folder/FolderAnimController;->gridAnimCount:I

    return-void
.end method

.method public constructor <init>(Lcom/miui/home/launcher/FolderCling;Lcom/miui/home/launcher/Launcher;)V
    .locals 6

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3e99999a    # 0.3f

    .line 45
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->BASE_RESPONSE:F

    const v0, 0x3c75c28f    # 0.015f

    .line 46
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->ROW_RES_DIFF:F

    const/high16 v0, 0x41700000    # 15.0f

    .line 47
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->ALPHA_DIFF:F

    const v0, 0x3c23d70a    # 0.01f

    .line 48
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->COL_RES_DIFF:F

    const/16 v0, 0xf

    .line 49
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->DISPLAY_COUNT_MAX:I

    const v0, 0x3f733333    # 0.95f

    .line 50
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->DAMPING:F

    .line 51
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->DAMPING_NORMAL:F

    const v0, 0x3ea3d70a    # 0.32f

    .line 52
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->RESPONSE_NORMAL:F

    const/high16 v0, 0x43480000    # 200.0f

    .line 53
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->OPEN_TITLE_ALPHA_FACTORS:F

    const/high16 v0, 0x42c80000    # 100.0f

    .line 54
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->FOLDER_PREVIEW_FACTORS:F

    const/high16 v1, 0x43160000    # 150.0f

    .line 55
    iput v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->FOLDER_GRID_FACTORS:F

    .line 56
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->CLOSE_FOLDER_GRID_FACTORS:F

    const/high16 v0, 0x42480000    # 50.0f

    .line 57
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->CLOSE_TITLE_ALPHA_FACTORS:F

    const-wide/16 v0, 0x64

    .line 58
    iput-wide v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->BG_CLOSE_DELAY:J

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderAnimListenerList:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mTitleSpringAnimList:Ljava/util/List;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mBgSpringAnimList:Ljava/util/List;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconSpringAnimList:Ljava/util/List;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridIconSpringAnimList:Ljava/util/List;

    .line 76
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconLocMap:Ljava/util/Map;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 78
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalScaleX:F

    .line 79
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalScaleY:F

    .line 80
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mSmallIconScale:F

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mPreViewHeight:I

    .line 82
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridViewItemHeight:I

    .line 83
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mLastItemIndex:I

    const-string v1, "FolderAnimController"

    .line 87
    iput-object v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->TAG:Ljava/lang/String;

    .line 88
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mDisplayChildCount:I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 95
    iput-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mTargetLoc:[I

    new-array v2, v1, [I

    .line 96
    iput-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mStartLoc:[I

    .line 97
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconChildRect:Landroid/graphics/Rect;

    .line 103
    new-instance v2, Lmiuix/animation/controller/AnimState;

    invoke-direct {v2}, Lmiuix/animation/controller/AnimState;-><init>()V

    sget-object v3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v4, 0x0

    .line 104
    invoke-virtual {v2, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    sget-object v3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    .line 105
    invoke-virtual {v2, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 106
    invoke-virtual {v2, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 107
    invoke-virtual {v2, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 108
    invoke-virtual {v2, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mResetState:Lmiuix/animation/controller/AnimState;

    new-array v2, v1, [I

    .line 254
    iput-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mLastIconParams:[I

    new-array v2, v1, [I

    .line 341
    iput-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderBgLoc:[I

    new-array v2, v1, [I

    .line 342
    iput-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderTitleLoc:[I

    new-array v2, v1, [I

    .line 344
    iput-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mDesktopBgStartLoc:[I

    new-array v2, v1, [I

    .line 390
    iput-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->bgLoc:[I

    new-array v2, v1, [I

    .line 391
    iput-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->folderGridLoc:[I

    .line 427
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mLastPreViewX:I

    .line 428
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mLastPreViewY:I

    new-array v2, v1, [I

    .line 430
    iput-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridStartLoc:[I

    new-array v2, v1, [I

    .line 431
    iput-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridEndLoc:[I

    new-array v2, v1, [I

    .line 433
    iput-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mExposedStartLoc:[I

    new-array v2, v1, [F

    .line 434
    iput-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mExposedPivot:[F

    new-array v1, v1, [F

    .line 482
    iput-object v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolmeGridItemParams:[F

    .line 616
    iput-boolean v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->folderIsOpen:Z

    .line 111
    new-instance v0, Lcom/miui/home/launcher/folder/FolderAnimProgressController;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/folder/FolderAnimProgressController;-><init>(Lcom/miui/home/launcher/FolderCling;)V

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderAnimProgressController:Lcom/miui/home/launcher/folder/FolderAnimProgressController;

    .line 112
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    .line 113
    iput-object p2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/folder/FolderAnimController;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mIsUseSimpleAnim:Z

    return p0
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .line 44
    sget-object v0, Lcom/miui/home/launcher/folder/FolderAnimController;->mProgressShortcutIconList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/folder/FolderAnimController;)Lcom/miui/home/launcher/FolderIcon;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderDesktopIcon:Lcom/miui/home/launcher/FolderIcon;

    return-object p0
.end method

.method static synthetic access$300()I
    .locals 1

    .line 44
    sget v0, Lcom/miui/home/launcher/folder/FolderAnimController;->gridAnimCount:I

    return v0
.end method

.method static synthetic access$310()I
    .locals 2

    .line 44
    sget v0, Lcom/miui/home/launcher/folder/FolderAnimController;->gridAnimCount:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/miui/home/launcher/folder/FolderAnimController;->gridAnimCount:I

    return v0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/folder/FolderAnimController;)Z
    .locals 0

    .line 44
    iget-boolean p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->folderIsOpen:Z

    return p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/folder/FolderAnimController;Z)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/FolderAnimController;->folderAnimEnd(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/folder/FolderAnimController;)Ljava/util/List;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridIconSpringAnimList:Ljava/util/List;

    return-object p0
.end method

.method private addCloseFolderPreViewAnim(Landroid/view/View;)V
    .locals 6

    .line 783
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [F

    iget v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->CLOSE_TITLE_ALPHA_FACTORS:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/16 v3, 0x9

    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    check-cast v0, Lmiuix/animation/base/AnimSpecialConfig;

    .line 784
    new-instance v2, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v5, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->DAMPING_NORMAL:F

    aput v5, v3, v4

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderAnimController;->getClosePreviewResponse()F

    move-result v4

    aput v4, v3, v1

    const/4 v1, -0x2

    invoke-virtual {v2, v1, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    .line 785
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mResetState:Lmiuix/animation/controller/AnimState;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/miui/home/launcher/folder/FolderAnimController;->prepareFolderIconSpringAnimation(Landroid/view/View;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)V

    return-void
.end method

.method private addFolderPreviewFolme(ZIFLandroid/widget/ImageView;I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 298
    invoke-direct {p0, p3, p4, p2}, Lcom/miui/home/launcher/folder/FolderAnimController;->addOpenFolderPreViewAnim(FLandroid/widget/ImageView;I)V

    goto :goto_0

    .line 300
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAnimaFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p1, p5}, Lcom/miui/home/launcher/FolderGridView;->getChildView(I)Lcom/miui/home/launcher/DesktopIcon;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lcom/miui/home/launcher/folder/FolderAnimController;->updateFolderIconImgViewPosition(Landroid/widget/ImageView;Lcom/miui/home/launcher/DesktopIcon;)V

    .line 301
    invoke-direct {p0, p4}, Lcom/miui/home/launcher/folder/FolderAnimController;->addCloseFolderPreViewAnim(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private addOpenFolderPreViewAnim(FLandroid/widget/ImageView;I)V
    .locals 7

    .line 767
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "folderPreViewAnim"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 768
    iget v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mLastItemIndex:I

    if-ne p3, v1, :cond_0

    .line 769
    iget p3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridViewItemHeight:I

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p3, v1

    iput p3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mSmallIconScale:F

    .line 770
    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    float-to-double v2, p3

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p3

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mSmallIconScale:F

    float-to-double v2, v2

    invoke-virtual {p3, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    goto :goto_0

    .line 772
    :cond_0
    sget-object p3, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalScaleX:F

    float-to-double v1, v1

    invoke-virtual {v0, p3, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p3

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalScaleY:F

    float-to-double v2, v2

    invoke-virtual {p3, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 774
    :goto_0
    sget-object p3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mTargetLoc:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mStartLoc:[I

    aget v3, v3, v2

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalEditScale:F

    iget v4, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolmeScale:F

    mul-float/2addr v3, v4

    div-float/2addr v1, v3

    float-to-double v3, v1

    invoke-virtual {v0, p3, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p3

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mTargetLoc:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    iget-object v5, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mStartLoc:[I

    aget v5, v5, v4

    sub-int/2addr v3, v5

    int-to-float v3, v3

    iget v5, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalEditScale:F

    iget v6, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolmeScale:F

    mul-float/2addr v5, v6

    div-float/2addr v3, v5

    float-to-double v5, v3

    .line 775
    invoke-virtual {p3, v1, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p3

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v5, 0x0

    .line 776
    invoke-virtual {p3, v1, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 777
    new-instance p3, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p3}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, -0x2

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v5, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->DAMPING_NORMAL:F

    aput v5, v3, v2

    aput p1, v3, v4

    invoke-virtual {p3, v1, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    .line 778
    new-instance p3, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {p3}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    const/16 v1, 0x8

    new-array v3, v4, [F

    iget v4, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->FOLDER_PREVIEW_FACTORS:F

    aput v4, v3, v2

    invoke-virtual {p3, v1, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p3

    check-cast p3, Lmiuix/animation/base/AnimSpecialConfig;

    .line 779
    invoke-direct {p0, p2, v0, p1, p3}, Lcom/miui/home/launcher/folder/FolderAnimController;->prepareFolderIconSpringAnimation(Landroid/view/View;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)V

    return-void
.end method

.method private addOpenGridItemAnim(Landroid/view/View;FZJ)V
    .locals 4

    .line 870
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->DAMPING_NORMAL:F

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p2, v1, v2

    const/4 p2, -0x2

    invoke-virtual {v0, p2, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    if-eqz p3, :cond_0

    .line 871
    new-instance p3, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {p3}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    const/16 v0, 0xf

    new-array v1, v2, [F

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->FOLDER_GRID_FACTORS:F

    aput v2, v1, v3

    invoke-virtual {p3, v0, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p3

    invoke-virtual {p0, p4, p5}, Lcom/miui/home/launcher/folder/FolderAnimController;->getGridItemDelay(J)J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    move-result-object p3

    check-cast p3, Lmiuix/animation/base/AnimSpecialConfig;

    goto :goto_0

    .line 872
    :cond_0
    new-instance p3, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {p3}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    const/16 v0, 0xe

    new-array v1, v2, [F

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->FOLDER_GRID_FACTORS:F

    aput v2, v1, v3

    invoke-virtual {p3, v0, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p3

    invoke-virtual {p0, p4, p5}, Lcom/miui/home/launcher/folder/FolderAnimController;->getGridItemDelay(J)J

    move-result-wide p4

    invoke-virtual {p3, p4, p5}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    move-result-object p3

    check-cast p3, Lmiuix/animation/base/AnimSpecialConfig;

    .line 873
    :goto_0
    iget-object p4, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mResetState:Lmiuix/animation/controller/AnimState;

    invoke-direct {p0, p1, p4, p2, p3}, Lcom/miui/home/launcher/folder/FolderAnimController;->prepareGridIconSpringAnimation(Landroid/view/View;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)V

    return-void
.end method

.method private addSmallFolderPreViewAnim(ZLandroid/view/View;FF)V
    .locals 7

    const/16 v0, 0xf

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 792
    new-instance p1, Lmiuix/animation/controller/AnimState;

    const-string v3, "folderPreViewAnim"

    invoke-direct {p1, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 793
    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v4, 0x0

    invoke-virtual {p1, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    sget-object v6, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 794
    invoke-virtual {v3, v6, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    sget-object v6, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 795
    invoke-virtual {v3, v6, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v3

    sget-object v4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    iget v5, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalEditScale:F

    iget v6, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolmeScale:F

    mul-float/2addr v5, v6

    div-float/2addr p3, v5

    float-to-double v5, p3

    .line 796
    invoke-virtual {v3, v4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p3

    sget-object v3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    iget v4, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalEditScale:F

    iget v5, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolmeScale:F

    mul-float/2addr v4, v5

    div-float/2addr p4, v4

    float-to-double v4, p4

    .line 797
    invoke-virtual {p3, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 798
    new-instance p3, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {p3}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    new-array p4, v2, [F

    iget v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->CLOSE_TITLE_ALPHA_FACTORS:F

    aput v3, p4, v1

    invoke-virtual {p3, v0, p4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p3

    check-cast p3, Lmiuix/animation/base/AnimSpecialConfig;

    goto :goto_0

    .line 800
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/home/launcher/folder/FolderAnimController;->updateSmallFolderPreViewPosition(Landroid/view/View;FF)V

    .line 801
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mResetState:Lmiuix/animation/controller/AnimState;

    .line 802
    new-instance p3, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {p3}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    new-array p4, v2, [F

    iget v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->FOLDER_PREVIEW_FACTORS:F

    aput v3, p4, v1

    invoke-virtual {p3, v0, p4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p3

    check-cast p3, Lmiuix/animation/base/AnimSpecialConfig;

    .line 804
    :goto_0
    new-instance p4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v0, -0x2

    const/4 v3, 0x2

    new-array v3, v3, [F

    iget v4, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->DAMPING_NORMAL:F

    aput v4, v3, v1

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderAnimController;->getClosePreviewResponse()F

    move-result v1

    aput v1, v3, v2

    invoke-virtual {p4, v0, v3}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p4

    .line 805
    invoke-direct {p0, p2, p1, p4, p3}, Lcom/miui/home/launcher/folder/FolderAnimController;->prepareFolderIconSpringAnimation(Landroid/view/View;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)V

    return-void
.end method

.method private calcFolderPreviewLoc(ILandroid/widget/ImageView;)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAnimaFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderGridView;->getChildView(I)Lcom/miui/home/launcher/DesktopIcon;

    move-result-object p1

    .line 291
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/folder/FolderAnimController;->calcFolderPreviewTargetPos(Lcom/miui/home/launcher/DesktopIcon;Landroid/widget/ImageView;)V

    const/4 p0, 0x0

    .line 292
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 293
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setPivotY(F)V

    return-void
.end method

.method private calcFolderPreviewTargetPos(Lcom/miui/home/launcher/DesktopIcon;Landroid/widget/ImageView;)V
    .locals 5

    .line 315
    invoke-interface {p1}, Lcom/miui/home/launcher/DesktopIcon;->getIconLocation()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mTargetLoc:[I

    invoke-interface {p1}, Lcom/miui/home/launcher/DesktopIcon;->getIconLocation()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    aput v3, v0, v2

    .line 317
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mTargetLoc:[I

    invoke-interface {p1}, Lcom/miui/home/launcher/DesktopIcon;->getIconLocation()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->top:I

    aput p1, v0, v1

    goto :goto_0

    .line 319
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 320
    invoke-interface {p1, v0}, Lcom/miui/home/launcher/DesktopIcon;->getIconBounds(Landroid/graphics/Rect;)V

    .line 321
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mTargetLoc:[I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    aput v4, v3, v2

    .line 322
    iget v4, v0, Landroid/graphics/Rect;->top:I

    aput v4, v3, v1

    .line 323
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 324
    invoke-interface {p1}, Lcom/miui/home/launcher/DesktopIcon;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 325
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mTargetLoc:[I

    aget v3, p1, v2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    aput v3, p1, v2

    .line 326
    aget v2, p1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    aput v2, p1, v1

    .line 328
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mStartLoc:[I

    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    return-void
.end method

.method private clearAnimList()V
    .locals 1

    .line 1015
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mTitleSpringAnimList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1016
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mBgSpringAnimList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1017
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconSpringAnimList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1018
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridIconSpringAnimList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1019
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconLocMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private closeFolderIconBgFolmeAnimation(Lcom/miui/home/launcher/LauncherIconImageView;Landroid/view/View;)V
    .locals 7

    .line 907
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 908
    new-instance v1, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 910
    iget v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->DAMPING_NORMAL:F

    const/4 v4, 0x0

    aput v3, v2, v4

    iget v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->BASE_RESPONSE:F

    const/4 v5, 0x1

    aput v3, v2, v5

    const/4 v3, -0x2

    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 911
    sget-object v2, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderAnimController;->isPocoLauncherOrThemeIcon()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-wide v5, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->BG_CLOSE_DELAY:J

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    :goto_0
    new-array v3, v4, [F

    invoke-virtual {v1, v2, v5, v6, v3}, Lmiuix/animation/base/AnimSpecialConfig;->setSpecial(Lmiuix/animation/property/FloatProperty;J[F)Lmiuix/animation/base/AnimConfig;

    .line 912
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mBgSpringAnimList:Ljava/util/List;

    new-instance v3, Lcom/miui/home/launcher/anim/FolmeAnimation;

    iget-object v4, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mResetState:Lmiuix/animation/controller/AnimState;

    invoke-direct {v3, p1, v4, v0, v1}, Lcom/miui/home/launcher/anim/FolmeAnimation;-><init>(Landroid/view/View;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 913
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mBgSpringAnimList:Ljava/util/List;

    new-instance v2, Lcom/miui/home/launcher/anim/FolmeAnimation;

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mResetState:Lmiuix/animation/controller/AnimState;

    invoke-direct {v2, p2, p0, v0, v1}, Lcom/miui/home/launcher/anim/FolmeAnimation;-><init>(Landroid/view/View;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private closeFolderTitleFolmeAnimation(Landroid/view/View;F)V
    .locals 11

    .line 927
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string/jumbo v1, "titleAnim"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 928
    new-instance v1, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 929
    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    sget-object v5, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 930
    invoke-virtual {v2, v5, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    sget-object v5, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    iget-object v6, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mDesktopBgStartLoc:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    iget-object v8, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderTitleLoc:[I

    aget v8, v8, v7

    sub-int/2addr v6, v8

    int-to-double v8, v6

    .line 931
    invoke-virtual {v2, v5, v8, v9}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    sget-object v5, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    iget-object v6, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mDesktopBgStartLoc:[I

    const/4 v8, 0x1

    aget v6, v6, v8

    iget-object v9, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderTitleLoc:[I

    aget v9, v9, v8

    sub-int/2addr v6, v9

    int-to-double v9, v6

    .line 932
    invoke-virtual {v2, v5, v9, v10}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v2

    sget-object v5, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 933
    invoke-virtual {v2, v5, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    new-array v2, v8, [F

    .line 934
    iget v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->CLOSE_TITLE_ALPHA_FACTORS:F

    aput v3, v2, v7

    const/16 v3, 0xf

    invoke-virtual {v1, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 935
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mTitleSpringAnimList:Ljava/util/List;

    new-instance v3, Lcom/miui/home/launcher/anim/FolmeAnimation;

    new-instance v4, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v4}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v5, 0x2

    new-array v5, v5, [F

    aput p2, v5, v7

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderAnimController;->getClosePreviewResponse()F

    move-result p0

    aput p0, v5, v8

    const/4 p0, -0x2

    invoke-virtual {v4, p0, v5}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    invoke-direct {v3, p1, v0, p0, v1}, Lcom/miui/home/launcher/anim/FolmeAnimation;-><init>(Landroid/view/View;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private folderAnimEnd(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 708
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Folder;->getHeader()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderAnimController;->resetTitleView(Landroid/view/View;)V

    .line 710
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderAnimController;->resetFolderIconAnimViewBg()V

    .line 711
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderAnimController;->folderAnimationEnd()V

    return-void
.end method

.method private getFolderIconImgView()Landroid/widget/ImageView;
    .locals 1

    .line 1023
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAnimaFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mDesktopImageViews:[Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 1024
    aget-object p0, p0, v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getIconIndex(Ljava/lang/Integer;)Ljava/lang/Integer;
    .locals 2

    .line 881
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconLocMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/folder/FolderAnimController$$ExternalSyntheticLambda1;->INSTANCE:Lcom/miui/home/launcher/folder/FolderAnimController$$ExternalSyntheticLambda1;

    sget-object v1, Lcom/miui/home/launcher/folder/FolderAnimController$$ExternalSyntheticLambda2;->INSTANCE:Lcom/miui/home/launcher/folder/FolderAnimController$$ExternalSyntheticLambda2;

    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method private hideNotDoAnimIcons()V
    .locals 4

    .line 468
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAnimaFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderColumnCount:I

    sub-int/2addr v0, v1

    .line 469
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAnimaFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_1

    if-ltz v0, :cond_0

    .line 470
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItemView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItemView(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAnimaFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->DISPLAY_COUNT_MAX:I

    add-int/2addr v0, v1

    move v1, v0

    .line 475
    :goto_1
    iget v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderColumnCount:I

    add-int/2addr v3, v0

    if-ge v1, v3, :cond_3

    .line 476
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v3}, Lcom/miui/home/launcher/ShortcutsAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItemView(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 477
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItemView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private initAnimState(ZLandroid/widget/ImageView;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1031
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mDisplayChildCount:I

    .line 1032
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconAnimView:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/FolderAnimController;->resetView(Landroid/view/View;)V

    .line 1033
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderAnimController;->initGridViewItem()V

    .line 1034
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderAnimController;->initFolderPreView()V

    :cond_0
    if-eqz p2, :cond_1

    .line 1038
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAnimaFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/FolderGridView;->getChildView(I)Lcom/miui/home/launcher/DesktopIcon;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/folder/FolderAnimController;->initConversionRatioOfSizeIcons(ZLandroid/widget/ImageView;Lcom/miui/home/launcher/DesktopIcon;)V

    :cond_1
    return-void
.end method

.method private initConversionRatioOfSizeIcons(ZLandroid/widget/ImageView;Lcom/miui/home/launcher/DesktopIcon;)V
    .locals 3

    .line 1091
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolmeScale()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolmeScale:F

    .line 1092
    invoke-interface {p3}, Lcom/miui/home/launcher/DesktopIcon;->getIconWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolmeScale:F

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    div-float/2addr v0, v2

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalScaleX:F

    .line 1093
    invoke-interface {p3}, Lcom/miui/home/launcher/DesktopIcon;->getIconHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolmeScale:F

    :cond_1
    div-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalScaleY:F

    if-eqz p1, :cond_2

    .line 1095
    iget p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalScaleX:F

    iput p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mSmallIconScale:F

    .line 1097
    :cond_2
    invoke-virtual {p2}, Landroid/widget/ImageView;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mPreViewHeight:I

    .line 1098
    invoke-interface {p3}, Lcom/miui/home/launcher/DesktopIcon;->getIconHeight()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridViewItemHeight:I

    return-void
.end method

.method private initExposedGridViewItemAnimParams(Landroid/view/View;Lcom/miui/home/launcher/DesktopIcon;[IIZ)V
    .locals 5

    .line 528
    iget-object p4, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconAnimView:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {p4}, Lcom/miui/home/launcher/FolderIcon;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p4

    invoke-virtual {p4}, Lcom/miui/home/launcher/FolderInfo;->isBigFolder()Z

    move-result p4

    const/high16 v0, 0x40000000    # 2.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p4, :cond_2

    if-nez p5, :cond_1

    .line 529
    iget p4, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mLastPreViewX:I

    if-nez p4, :cond_0

    goto :goto_0

    .line 534
    :cond_0
    iget-object p3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mExposedStartLoc:[I

    iget p5, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mPreViewHeight:I

    div-int/lit8 v3, p5, 0x4

    add-int/2addr p4, v3

    aput p4, p3, v2

    .line 535
    iget p4, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mLastPreViewY:I

    div-int/lit8 p5, p5, 0x4

    add-int/2addr p4, p5

    aput p4, p3, v1

    goto :goto_1

    .line 530
    :cond_1
    :goto_0
    iget-object p4, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconAnimView:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {p4}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p4

    invoke-virtual {p4}, Landroid/widget/ImageView;->getWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x3

    .line 531
    iget-object p5, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mExposedStartLoc:[I

    aget v3, p3, v2

    add-int/2addr v3, p4

    aput v3, p5, v2

    .line 532
    aget p3, p3, v1

    add-int/2addr p3, p4

    aput p3, p5, v1

    .line 537
    :goto_1
    iget-object p3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mExposedPivot:[F

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p4

    invoke-interface {p2}, Lcom/miui/home/launcher/DesktopIcon;->getIconWidth()I

    move-result p5

    sub-int/2addr p4, p5

    int-to-float p4, p4

    div-float/2addr p4, v0

    aput p4, p3, v2

    .line 538
    iget-object p3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mExposedPivot:[F

    invoke-interface {p2}, Lcom/miui/home/launcher/DesktopIcon;->getPaddingTop()I

    move-result p4

    int-to-float p4, p4

    aput p4, p3, v1

    goto :goto_2

    .line 540
    :cond_2
    iget-object p4, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mExposedStartLoc:[I

    aget p5, p3, v2

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v3

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr p5, v3

    aput p5, p4, v2

    .line 541
    iget-object p4, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mExposedStartLoc:[I

    aget p3, p3, v1

    iget-object p5, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const v3, 0x7f07027f

    invoke-virtual {p5, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p5

    add-int/2addr p3, p5

    aput p3, p4, v1

    .line 542
    iget-object p3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mExposedPivot:[F

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p4

    int-to-float p4, p4

    const/high16 p5, 0x3f800000    # 1.0f

    mul-float/2addr p4, p5

    div-float/2addr p4, v0

    aput p4, p3, v2

    .line 543
    iget-object p3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mExposedPivot:[F

    invoke-interface {p2}, Lcom/miui/home/launcher/DesktopIcon;->getPaddingTop()I

    move-result p4

    int-to-float p4, p4

    invoke-interface {p2}, Lcom/miui/home/launcher/DesktopIcon;->getIconHeight()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p5, v0

    add-float/2addr p4, p5

    aput p4, p3, v1

    .line 545
    :goto_2
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/folder/FolderAnimController;->setGridEndLoc(Lcom/miui/home/launcher/DesktopIcon;)V

    .line 546
    iget-object p2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mExposedPivot:[F

    aget p2, p2, v2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 547
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mExposedPivot:[F

    aget p0, p0, v1

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method private initFolderPreView()V
    .locals 4

    .line 820
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconAnimView:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderIcon;->getPreviewArray()[Landroid/widget/ImageView;

    move-result-object v0

    .line 821
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 822
    invoke-direct {p0, v3}, Lcom/miui/home/launcher/folder/FolderAnimController;->resetView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initFolmeAnimParams(I)V
    .locals 4

    .line 484
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolmeGridItemParams:[F

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderAnimController;->getGridViewResponse(I)F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 485
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolmeGridItemParams:[F

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mDisplayChildCount:I

    iget v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderColumnCount:I

    div-int/2addr v2, v3

    sub-int v2, p1, v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->ALPHA_DIFF:F

    mul-float/2addr v1, v2

    iget p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderColumnCount:I

    rem-int/2addr p1, p0

    int-to-float p0, p1

    mul-float/2addr p0, v2

    add-float/2addr v1, p0

    aput v1, v0, v3

    return-void
.end method

.method private initGridViewItemAnimParams(Landroid/view/View;Lcom/miui/home/launcher/DesktopIcon;I)V
    .locals 0

    .line 507
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/folder/FolderAnimController;->setGridEndLoc(Lcom/miui/home/launcher/DesktopIcon;)V

    .line 508
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    .line 509
    invoke-interface {p2, p0}, Lcom/miui/home/launcher/DesktopIcon;->getIconBounds(Landroid/graphics/Rect;)V

    .line 510
    iget p2, p0, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 511
    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setPivotY(F)V

    return-void
.end method

.method private initIconLoc(IIILcom/miui/home/launcher/FolderIcon;)I
    .locals 7

    const/4 v0, 0x0

    if-ne p2, p1, :cond_2

    .line 1045
    iget-boolean p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mIsUseSimpleAnim:Z

    if-eqz p1, :cond_0

    add-int/lit8 p1, p2, 0x1

    goto :goto_0

    :cond_0
    move p1, p2

    :goto_0
    move p3, v0

    :goto_1
    mul-int p4, p2, p1

    if-ge v0, p4, :cond_1

    mul-int p3, p2, p2

    add-int/lit8 p3, p3, -0x1

    .line 1048
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 1049
    iget-object p4, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconLocMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move v0, p3

    goto :goto_6

    :cond_2
    const/16 v1, 0x15

    if-ne p3, v1, :cond_8

    .line 1053
    check-cast p4, Lcom/miui/home/launcher/folder/FolderIcon2x2;

    invoke-virtual {p4}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getLargeIconNum()I

    move-result p3

    .line 1054
    iget-object p4, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAnimaFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p4}, Lcom/miui/home/launcher/FolderGridView;->getChildCountWithoutCloudIcon()I

    move-result p4

    move v1, v0

    move v2, v1

    :goto_2
    const/4 v3, 0x3

    if-ge v1, p3, :cond_5

    .line 1057
    rem-int v2, v1, p2

    .line 1058
    div-int v4, v1, p2

    const/4 v5, 0x2

    if-lt v1, v5, :cond_4

    if-ne p4, v3, :cond_3

    goto :goto_3

    .line 1062
    :cond_3
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconLocMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    mul-int/2addr v4, p1

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1060
    :cond_4
    :goto_3
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconLocMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    add-int/lit8 v2, v1, 0x1

    move v6, v2

    move v2, v1

    move v1, v6

    goto :goto_2

    :cond_5
    if-ne p4, v3, :cond_6

    return v2

    :cond_6
    :goto_5
    sub-int p4, p1, p2

    if-ge v0, p4, :cond_7

    add-int v2, p3, v0

    .line 1070
    iget-object p4, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconLocMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    add-int v3, p2, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_7
    move v0, v2

    :cond_8
    :goto_6
    return v0
.end method

.method private initTitleState(ZLandroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 369
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/folder/FolderAnimController;->resetTitleView(Landroid/view/View;)V

    const/4 p0, 0x0

    .line 370
    invoke-virtual {p2, p0}, Landroid/view/View;->setAlpha(F)V

    .line 371
    invoke-virtual {p2, p0}, Landroid/view/View;->setPivotX(F)V

    .line 372
    invoke-virtual {p2, p0}, Landroid/view/View;->setPivotY(F)V

    :cond_0
    return-void
.end method

.method private isFolder2x2_4Mapping()Z
    .locals 2

    .line 612
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAnimaFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mSmallIconScale:F

    iget p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalScaleY:F

    cmpl-float p0, v0, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPocoLauncherOrThemeIcon()Z
    .locals 0

    .line 917
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isPocoLauncher()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDefaultIcon()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isUseAlphaAnim(Landroid/view/View;Z)Z
    .locals 1

    .line 845
    instance-of p1, p1, Lcom/miui/home/launcher/CloudShortcutIcon;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    if-nez p2, :cond_1

    .line 848
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconSpringAnimList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/16 p1, 0x8

    if-gt p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isUseSimpleAnim(Lcom/miui/home/launcher/FolderIcon;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1104
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isBlurSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1107
    :cond_0
    instance-of v1, p0, Lcom/miui/home/launcher/folder/FolderIcon2x2_9;

    if-nez v1, :cond_1

    return v0

    .line 1110
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1111
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isAppPredictOpen()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private isUseSmallScale(I)Z
    .locals 1

    .line 565
    iget v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mLastItemIndex:I

    if-eq p1, v0, :cond_0

    iget-boolean p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mIsUseSimpleAnim:Z

    if-eqz p0, :cond_1

    :cond_0
    const/16 p0, 0x8

    if-lt p1, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getIconIndex$1(Ljava/util/Map$Entry;)Ljava/lang/Integer;
    .locals 0

    .line 881
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method private static synthetic lambda$getIconIndex$2(Ljava/util/Map$Entry;)Ljava/lang/Integer;
    .locals 0

    .line 881
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method

.method private static synthetic lambda$startFolderAnim$0(ZF)V
    .locals 3

    const/4 v0, 0x0

    .line 203
    :goto_0
    sget-object v1, Lcom/miui/home/launcher/folder/FolderAnimController;->mProgressShortcutIconList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    const/high16 v2, 0x3f000000    # 0.5f

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 205
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ProgressShortcutIcon;

    invoke-virtual {v1, p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->setMamlDownloadVisibility(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private openFolderIconBgFolmeAnimation(Lcom/miui/home/launcher/LauncherIconImageView;Landroid/view/View;FF)V
    .locals 8

    .line 885
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "bgAnim"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 886
    new-instance v1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 887
    new-instance v2, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {v2}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    .line 889
    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    iget v4, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolmeScale:F

    div-float v4, p3, v4

    float-to-double v4, v4

    invoke-virtual {v0, v3, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 890
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderAnimController;->isPocoLauncherOrThemeIcon()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 891
    sget-object p4, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    iget v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolmeScale:F

    div-float/2addr p3, v3

    float-to-double v3, p3

    invoke-virtual {v0, p4, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    goto :goto_0

    .line 893
    :cond_0
    sget-object p3, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    iget v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolmeScale:F

    div-float/2addr p4, v3

    float-to-double v3, p4

    invoke-virtual {v0, p3, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    const-wide/16 p3, 0x0

    .line 894
    iput-wide p3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->BG_CLOSE_DELAY:J

    :goto_0
    const/4 p3, 0x0

    .line 896
    invoke-virtual {p2, p3}, Landroid/view/View;->setAlpha(F)V

    .line 897
    sget-object p3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, p3, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p3

    sget-object p4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->folderGridLoc:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v5, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->bgLoc:[I

    aget v5, v5, v4

    sub-int/2addr v3, v5

    int-to-float v3, v3

    iget v5, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalEditScale:F

    iget v6, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolmeScale:F

    mul-float/2addr v5, v6

    div-float/2addr v3, v5

    float-to-double v5, v3

    .line 898
    invoke-virtual {p3, p4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p3

    sget-object p4, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->folderGridLoc:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    iget-object v6, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->bgLoc:[I

    aget v6, v6, v5

    sub-int/2addr v3, v6

    int-to-float v3, v3

    iget v6, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalEditScale:F

    iget v7, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolmeScale:F

    mul-float/2addr v6, v7

    div-float/2addr v3, v6

    float-to-double v6, v3

    .line 899
    invoke-virtual {p3, p4, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    const/4 p3, -0x2

    const/4 p4, 0x2

    new-array p4, p4, [F

    .line 900
    iget v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->DAMPING_NORMAL:F

    aput v3, p4, v4

    iget v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->RESPONSE_NORMAL:F

    aput v3, p4, v5

    invoke-virtual {v1, p3, p4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    const/16 p3, 0xf

    new-array p4, v5, [F

    const/high16 v3, 0x42a00000    # 80.0f

    aput v3, p4, v4

    .line 901
    invoke-virtual {v2, p3, p4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 902
    iget-object p3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mBgSpringAnimList:Ljava/util/List;

    new-instance p4, Lcom/miui/home/launcher/anim/FolmeAnimation;

    invoke-direct {p4, p1, v0, v1, v2}, Lcom/miui/home/launcher/anim/FolmeAnimation;-><init>(Landroid/view/View;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)V

    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 903
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mBgSpringAnimList:Ljava/util/List;

    new-instance p1, Lcom/miui/home/launcher/anim/FolmeAnimation;

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/miui/home/launcher/anim/FolmeAnimation;-><init>(Landroid/view/View;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private openFolderTitleFolmeAnimation(Landroid/view/View;F)V
    .locals 8

    .line 921
    new-instance v0, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {v0}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [F

    .line 922
    iget v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->OPEN_TITLE_ALPHA_FACTORS:F

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object v2

    const-wide/16 v5, 0x32

    invoke-virtual {p0, v5, v6}, Lcom/miui/home/launcher/folder/FolderAnimController;->getGridItemDelay(J)J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lmiuix/animation/base/AnimConfig;->setDelay(J)Lmiuix/animation/base/AnimConfig;

    .line 923
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mTitleSpringAnimList:Ljava/util/List;

    new-instance v3, Lcom/miui/home/launcher/anim/FolmeAnimation;

    iget-object v5, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mResetState:Lmiuix/animation/controller/AnimState;

    new-instance v6, Lmiuix/animation/base/AnimConfig;

    invoke-direct {v6}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 v7, 0x2

    new-array v7, v7, [F

    aput p2, v7, v4

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderAnimController;->getClosePreviewResponse()F

    move-result p0

    aput p0, v7, v1

    const/4 p0, -0x2

    invoke-virtual {v6, p0, v7}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    invoke-direct {v3, p1, v5, p0, v0}, Lcom/miui/home/launcher/anim/FolmeAnimation;-><init>(Landroid/view/View;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private preIconBgAnim(ZLcom/miui/home/launcher/FolderGridView;)V
    .locals 5

    .line 394
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconAnimView:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    .line 395
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconAnimView:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderIcon;->getCover()Landroid/widget/ImageView;

    move-result-object v1

    .line 396
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->folderGridLoc:[I

    invoke-virtual {p2, v2}, Landroid/widget/GridView;->getLocationOnScreen([I)V

    .line 397
    iget-object p2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAnimaFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p2}, Landroid/widget/GridView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    div-float/2addr p2, v2

    .line 398
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAnimaFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    div-float/2addr v2, v4

    if-eqz p1, :cond_0

    .line 400
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->bgLoc:[I

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 401
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/folder/FolderAnimController;->setBgPivot(Lcom/miui/home/launcher/LauncherIconImageView;Landroid/widget/ImageView;)V

    .line 402
    invoke-direct {p0, v0, v1, p2, v2}, Lcom/miui/home/launcher/folder/FolderAnimController;->openFolderIconBgFolmeAnimation(Lcom/miui/home/launcher/LauncherIconImageView;Landroid/view/View;FF)V

    goto :goto_0

    .line 404
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderDesktopIcon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p1

    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->bgLoc:[I

    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 405
    invoke-direct {p0, v0, v1, p2, v2}, Lcom/miui/home/launcher/folder/FolderAnimController;->updateBgPosition(Lcom/miui/home/launcher/LauncherIconImageView;Landroid/widget/ImageView;FF)V

    .line 406
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/folder/FolderAnimController;->closeFolderIconBgFolmeAnimation(Lcom/miui/home/launcher/LauncherIconImageView;Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method private preIconTitleAnim(ZLandroid/view/View;)V
    .locals 7

    .line 347
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconAnimView:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    .line 348
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/folder/FolderAnimController;->initTitleState(ZLandroid/view/View;)V

    .line 350
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderBgLoc:[I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 351
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderTitleLoc:[I

    invoke-virtual {p2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    if-eqz p1, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 354
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderBgLoc:[I

    const/4 v0, 0x0

    aget v1, p1, v0

    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderTitleLoc:[I

    aget v0, v2, v0

    sub-int/2addr v1, v0

    int-to-float v5, v1

    const/4 v0, 0x1

    aget p1, p1, v0

    aget v0, v2, v0

    sub-int/2addr p1, v0

    int-to-float v6, p1

    move-object v1, p0

    move-object v2, p2

    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/folder/FolderAnimController;->preAnimState(Landroid/view/View;FFFF)V

    .line 355
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderAnimController;->getTitleDamping()F

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/folder/FolderAnimController;->openFolderTitleFolmeAnimation(Landroid/view/View;F)V

    goto :goto_0

    .line 357
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderDesktopIcon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p1

    .line 358
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mDesktopBgStartLoc:[I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 359
    iget p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->DAMPING_NORMAL:F

    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/folder/FolderAnimController;->closeFolderTitleFolmeAnimation(Landroid/view/View;F)V

    :goto_0
    return-void
.end method

.method private prepareFolderAnim(Z[I)V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getHeader()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/folder/FolderAnimController;->preIconTitleAnim(ZLandroid/view/View;)V

    .line 222
    iget-boolean v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mIsUseSimpleAnim:Z

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/folder/FolderAnimController;->preIconBgAnim(ZLcom/miui/home/launcher/FolderGridView;)V

    .line 225
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderAnimController;->preFolderIconAnim(Z)V

    .line 226
    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/folder/FolderAnimController;->preFolderGridAnim(Z[I)V

    return-void
.end method

.method private prepareFolderIconSpringAnimation(Landroid/view/View;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)V
    .locals 1

    .line 943
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconSpringAnimList:Ljava/util/List;

    new-instance v0, Lcom/miui/home/launcher/anim/FolmeAnimation;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/miui/home/launcher/anim/FolmeAnimation;-><init>(Landroid/view/View;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private prepareGridIconSpringAnimation(Landroid/view/View;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)V
    .locals 1

    .line 939
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridIconSpringAnimList:Ljava/util/List;

    new-instance v0, Lcom/miui/home/launcher/anim/FolmeAnimation;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/miui/home/launcher/anim/FolmeAnimation;-><init>(Landroid/view/View;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private resetFolderIconAnimViewBg()V
    .locals 1

    .line 715
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconAnimView:Lcom/miui/home/launcher/FolderIcon;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 716
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconAnimView:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/LauncherIconImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private resetFolderPreviewParams()V
    .locals 2

    .line 285
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mLastIconParams:[I

    const/4 v0, 0x0

    aput v0, p0, v0

    const/4 v1, 0x1

    .line 286
    aput v0, p0, v1

    return-void
.end method

.method private resetGridItemSimpleAnimStatus(Landroid/view/View;)V
    .locals 1

    .line 733
    instance-of v0, p1, Lcom/miui/home/launcher/IShortcutIcon;

    if-eqz v0, :cond_0

    .line 734
    move-object v0, p1

    check-cast v0, Lcom/miui/home/launcher/IShortcutIcon;

    invoke-interface {v0}, Lcom/miui/home/launcher/IShortcutIcon;->resetInRunningFolderSimpleCloseAnimStatus()V

    .line 737
    :cond_0
    iget-boolean p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mIsUseSimpleAnim:Z

    if-nez p0, :cond_1

    instance-of p0, p1, Lcom/miui/home/launcher/ProgressShortcutIcon;

    if-eqz p0, :cond_1

    .line 738
    check-cast p1, Lcom/miui/home/launcher/ProgressShortcutIcon;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->setMamlDownloadVisibility(Z)V

    :cond_1
    return-void
.end method

.method private resetLauncherScale(Z)V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getScaleX()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 379
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 380
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    :cond_0
    if-nez p1, :cond_1

    .line 384
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getScreenContent()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 385
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getScreenContent()Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    :cond_1
    return-void
.end method

.method private resetView(Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 749
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    .line 750
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 751
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleX(F)V

    .line 752
    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    return-void
.end method

.method private setAnimPreStatus(ZZ)V
    .locals 1

    if-nez p1, :cond_4

    .line 152
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderDesktopIcon:Lcom/miui/home/launcher/FolderIcon;

    if-nez p1, :cond_0

    goto :goto_1

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAnimaFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    if-nez v0, :cond_1

    return-void

    .line 158
    :cond_1
    invoke-static {p1}, Lcom/miui/home/launcher/folder/FolderAnimController;->isUseSimpleAnim(Lcom/miui/home/launcher/FolderIcon;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p2, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 159
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderDesktopIcon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderIcon;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconAnimView:Lcom/miui/home/launcher/FolderIcon;

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    .line 160
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderDesktopIcon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderIcon;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/FolderAnimController;->updateAnimFolderInfoAndPreview(Lcom/miui/home/launcher/FolderInfo;)V

    .line 162
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderDesktopIcon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FolderCling;->setAnimFolderIconPositionAndScale(Lcom/miui/home/launcher/FolderIcon;)V

    .line 163
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconAnimView:Lcom/miui/home/launcher/FolderIcon;

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderDesktopIcon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderIcon;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FolderIcon;->loadIconPreViews(Lcom/miui/home/launcher/FolderInfo;)V

    .line 165
    :cond_3
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderDesktopIcon:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {p1}, Lcom/miui/home/launcher/folder/FolderAnimController;->isUseSimpleAnim(Lcom/miui/home/launcher/FolderIcon;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 166
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->resetSimpleAnimSetting()V

    :cond_4
    :goto_1
    return-void
.end method

.method private setBgPivot(Lcom/miui/home/launcher/LauncherIconImageView;Landroid/widget/ImageView;)V
    .locals 0

    const/4 p0, 0x0

    .line 411
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 412
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setPivotY(F)V

    .line 413
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setPivotX(F)V

    .line 414
    invoke-virtual {p2, p0}, Landroid/widget/ImageView;->setPivotY(F)V

    return-void
.end method

.method private setCloseGridItemAnim([IILandroid/view/View;ZZ)V
    .locals 7

    .line 827
    new-instance v0, Lmiuix/animation/controller/AnimState;

    const-string v1, "gridIcon"

    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 828
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    const/4 v2, 0x0

    aget v3, p1, v2

    iget-object v4, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridEndLoc:[I

    aget v4, v4, v2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalEditScale:F

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-virtual {v0, v1, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    const/4 v4, 0x1

    aget p1, p1, v4

    iget-object v5, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridEndLoc:[I

    aget v5, v5, v4

    sub-int/2addr p1, v5

    int-to-float p1, p1

    iget v5, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalEditScale:F

    div-float/2addr p1, v5

    float-to-double v5, p1

    .line 829
    invoke-virtual {v1, v3, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object v1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    if-eqz p5, :cond_0

    const-wide/16 v5, 0x0

    goto :goto_0

    :cond_0
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    .line 830
    :goto_0
    invoke-virtual {p1, v1, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 831
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    const/4 p5, -0x2

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->DAMPING_NORMAL:F

    aput v3, v1, v2

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderAnimController;->getClosePreviewResponse()F

    move-result v3

    aput v3, v1, v4

    invoke-virtual {p1, p5, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p1

    const/16 p5, 0xf

    if-eqz p4, :cond_1

    .line 834
    invoke-direct {p0, v0, p2}, Lcom/miui/home/launcher/folder/FolderAnimController;->setVisibleScale(Lmiuix/animation/controller/AnimState;I)V

    .line 835
    new-instance p2, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {p2}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    new-array p4, v4, [F

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->CLOSE_FOLDER_GRID_FACTORS:F

    aput v1, p4, v2

    invoke-virtual {p2, p5, p4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    check-cast p2, Lmiuix/animation/base/AnimSpecialConfig;

    goto :goto_1

    .line 837
    :cond_1
    sget-object p2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    iget p4, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mSmallIconScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float p4, v1, p4

    iget v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mQuickEditScale:F

    mul-float/2addr p4, v3

    float-to-double v5, p4

    invoke-virtual {v0, p2, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object p4, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    iget v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mSmallIconScale:F

    div-float/2addr v1, v3

    iget v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mQuickEditScale:F

    mul-float/2addr v1, v3

    float-to-double v5, v1

    .line 838
    invoke-virtual {p2, p4, v5, v6}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    .line 839
    new-instance p2, Lmiuix/animation/base/AnimSpecialConfig;

    invoke-direct {p2}, Lmiuix/animation/base/AnimSpecialConfig;-><init>()V

    new-array p4, v4, [F

    const/high16 v1, 0x42fa0000    # 125.0f

    aput v1, p4, v2

    invoke-virtual {p2, p5, p4}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    move-result-object p2

    check-cast p2, Lmiuix/animation/base/AnimSpecialConfig;

    .line 841
    :goto_1
    invoke-direct {p0, p3, v0, p1, p2}, Lcom/miui/home/launcher/folder/FolderAnimController;->prepareGridIconSpringAnimation(Landroid/view/View;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfig;Lmiuix/animation/base/AnimSpecialConfig;)V

    return-void
.end method

.method private setExposedGridViewItemFolme(Landroid/view/View;Lcom/miui/home/launcher/DesktopIcon;[IZIZ)V
    .locals 6

    .line 515
    invoke-direct {p0, p5}, Lcom/miui/home/launcher/folder/FolderAnimController;->initFolmeAnimParams(I)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move v5, p6

    .line 516
    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/folder/FolderAnimController;->initExposedGridViewItemAnimParams(Landroid/view/View;Lcom/miui/home/launcher/DesktopIcon;[IIZ)V

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p4, :cond_0

    .line 518
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/FolderAnimController;->updateExposedGridItemPosition(Landroid/view/View;)V

    .line 519
    iget-object p4, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolmeGridItemParams:[F

    aget v2, p4, p3

    const/4 v3, 0x0

    aget p2, p4, p2

    float-to-long v4, p2

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/folder/FolderAnimController;->addOpenGridItemAnim(Landroid/view/View;FZJ)V

    goto :goto_2

    .line 522
    :cond_0
    iget-boolean p4, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mIsUseSimpleAnim:Z

    if-eqz p4, :cond_2

    if-eqz p6, :cond_2

    invoke-direct {p0, p1, p3}, Lcom/miui/home/launcher/folder/FolderAnimController;->isUseAlphaAnim(Landroid/view/View;Z)Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    :cond_1
    move v5, p3

    goto :goto_1

    :cond_2
    :goto_0
    move v5, p2

    .line 523
    :goto_1
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mExposedStartLoc:[I

    const/4 v4, 0x0

    move-object v0, p0

    move v2, p5

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/folder/FolderAnimController;->setCloseGridItemAnim([IILandroid/view/View;ZZ)V

    :goto_2
    return-void
.end method

.method private setFolder2x2_4State(ILandroid/view/View;FF)Z
    .locals 8

    .line 599
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderAnimController;->isFolder2x2_4Mapping()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p1, v0, :cond_0

    .line 602
    iget p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mSmallIconScale:F

    div-float v4, v1, p1

    div-float v5, v1, p1

    move-object v2, p0

    move-object v3, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/miui/home/launcher/folder/FolderAnimController;->preAnimState(Landroid/view/View;FFFF)V

    goto :goto_0

    .line 604
    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalScaleX:F

    div-float v4, v1, p1

    iget p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalScaleY:F

    div-float v5, v1, p1

    move-object v2, p0

    move-object v3, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/miui/home/launcher/folder/FolderAnimController;->preAnimState(Landroid/view/View;FFFF)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private setFolderAnimListener(Z)V
    .locals 7

    .line 619
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridIconSpringAnimList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sput v0, Lcom/miui/home/launcher/folder/FolderAnimController;->gridAnimCount:I

    .line 620
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridIconSpringAnimList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 623
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderAnimController;->folderAnimationStart()V

    .line 624
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderAnimController;->folderAnimationEnd()V

    return-void

    .line 627
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderAnimController;->folderAnimationStart()V

    const/4 v0, 0x0

    move v2, v0

    .line 628
    :goto_0
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridIconSpringAnimList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 629
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridIconSpringAnimList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/anim/FolmeAnimation;

    invoke-virtual {v3}, Lcom/miui/home/launcher/anim/FolmeAnimation;->getAnimConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v3

    new-array v4, v1, [Lmiuix/animation/listener/TransitionListener;

    .line 630
    new-instance v5, Lcom/miui/home/launcher/folder/FolderAnimController$GridItemTransitionListener;

    iget-object v6, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridIconSpringAnimList:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/miui/home/launcher/anim/FolmeAnimation;

    invoke-virtual {v6}, Lcom/miui/home/launcher/anim/FolmeAnimation;->getCurrentIcon()Landroid/view/View;

    move-result-object v6

    invoke-direct {v5, p0, v6, p1}, Lcom/miui/home/launcher/folder/FolderAnimController$GridItemTransitionListener;-><init>(Lcom/miui/home/launcher/folder/FolderAnimController;Landroid/view/View;Z)V

    aput-object v5, v4, v0

    invoke-virtual {v3, v4}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setGridEndLoc(Lcom/miui/home/launcher/DesktopIcon;)V
    .locals 6

    .line 575
    invoke-interface {p1}, Lcom/miui/home/launcher/DesktopIcon;->getIconLocation()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconChildRect:Landroid/graphics/Rect;

    invoke-interface {p1, v0}, Lcom/miui/home/launcher/DesktopIcon;->getIconBounds(Landroid/graphics/Rect;)V

    .line 577
    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridEndLoc:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 578
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridEndLoc:[I

    aget v0, p1, v2

    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconChildRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalEditScale:F

    mul-float/2addr v4, p0

    float-to-int v4, v4

    add-int/2addr v0, v4

    aput v0, p1, v2

    .line 579
    aget v0, p1, v1

    iget v2, v3, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    mul-float/2addr v2, p0

    float-to-int p0, v2

    add-int/2addr v0, p0

    aput v0, p1, v1

    goto :goto_0

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconChildRect:Landroid/graphics/Rect;

    invoke-interface {p1, v0}, Lcom/miui/home/launcher/DesktopIcon;->getIconBounds(Landroid/graphics/Rect;)V

    .line 582
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridEndLoc:[I

    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconChildRect:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    iget v5, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalEditScale:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v0, v2

    .line 583
    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    float-to-int v4, v4

    aput v4, v0, v1

    .line 584
    invoke-virtual {v3}, Landroid/graphics/Rect;->setEmpty()V

    .line 585
    invoke-interface {p1}, Lcom/miui/home/launcher/DesktopIcon;->getView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconChildRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 586
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridEndLoc:[I

    aget v0, p1, v2

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconChildRect:Landroid/graphics/Rect;

    iget v3, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    aput v0, p1, v2

    .line 587
    aget v0, p1, v1

    iget p0, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p0

    aput v0, p1, v1

    :goto_0
    return-void
.end method

.method private setGridViewItemFolme(Landroid/view/View;Lcom/miui/home/launcher/DesktopIcon;ZII)V
    .locals 7

    .line 493
    invoke-direct {p0, p5}, Lcom/miui/home/launcher/folder/FolderAnimController;->initFolmeAnimParams(I)V

    .line 494
    invoke-direct {p0, p1, p2, p5}, Lcom/miui/home/launcher/folder/FolderAnimController;->initGridViewItemAnimParams(Landroid/view/View;Lcom/miui/home/launcher/DesktopIcon;I)V

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 496
    invoke-direct {p0, p1, p4, p5}, Lcom/miui/home/launcher/folder/FolderAnimController;->updateGridItemAnimationPosition(Landroid/view/View;II)V

    .line 497
    iget-object p3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolmeGridItemParams:[F

    aget v2, p3, p2

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/miui/home/launcher/folder/FolderAnimController;->addOpenGridItemAnim(Landroid/view/View;FZJ)V

    goto :goto_4

    .line 499
    :cond_0
    iget-object p3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mDesktopImageViews:[Landroid/widget/ImageView;

    aget-object p3, p3, p4

    iget-object p4, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridStartLoc:[I

    invoke-virtual {p3, p4}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 500
    iget-boolean p3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mIsUseSimpleAnim:Z

    const/4 p4, 0x1

    if-eqz p3, :cond_2

    const/16 v0, 0x8

    if-ge p5, v0, :cond_1

    goto :goto_0

    :cond_1
    move v5, p2

    goto :goto_1

    :cond_2
    :goto_0
    move v5, p4

    :goto_1
    if-eqz p3, :cond_4

    .line 501
    invoke-direct {p0, p1, v5}, Lcom/miui/home/launcher/folder/FolderAnimController;->isUseAlphaAnim(Landroid/view/View;Z)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    move v6, p2

    goto :goto_3

    :cond_4
    :goto_2
    move v6, p4

    .line 502
    :goto_3
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridStartLoc:[I

    move-object v1, p0

    move v3, p5

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/folder/FolderAnimController;->setCloseGridItemAnim([IILandroid/view/View;ZZ)V

    :goto_4
    return-void
.end method

.method private setIsUseSimpleAnim(Z)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderDesktopIcon:Lcom/miui/home/launcher/FolderIcon;

    invoke-static {v0}, Lcom/miui/home/launcher/folder/FolderAnimController;->isUseSimpleAnim(Lcom/miui/home/launcher/FolderIcon;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mIsUseSimpleAnim:Z

    return-void
.end method

.method private setLastPreView(I)V
    .locals 1

    .line 592
    iget v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mLastItemIndex:I

    if-ne p1, v0, :cond_0

    .line 593
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridStartLoc:[I

    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mLastPreViewX:I

    const/4 v0, 0x1

    .line 594
    aget p1, p1, v0

    iput p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mLastPreViewY:I

    :cond_0
    return-void
.end method

.method private setLastPreviewParams(I)V
    .locals 4

    .line 332
    iget v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mLastItemIndex:I

    if-ne p1, v0, :cond_0

    .line 333
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mLastIconParams:[I

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mTargetLoc:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mStartLoc:[I

    aget v3, p0, v1

    sub-int/2addr v2, v3

    aput v2, p1, v1

    const/4 v1, 0x1

    .line 334
    aget v0, v0, v1

    aget p0, p0, v1

    sub-int/2addr v0, p0

    aput v0, p1, v1

    :cond_0
    return-void
.end method

.method private setVisibleScale(Lmiuix/animation/controller/AnimState;I)V
    .locals 4

    .line 852
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderAnimController;->isFolder2x2_4Mapping()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 854
    sget-object p2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    iget v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mSmallIconScale:F

    div-float v0, v1, v0

    float-to-double v2, v0

    invoke-virtual {p1, p2, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object p2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    iget p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mSmallIconScale:F

    div-float/2addr v1, p0

    float-to-double v0, v1

    .line 855
    invoke-virtual {p1, p2, v0, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    goto :goto_0

    .line 857
    :cond_0
    sget-object p2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    iget v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalScaleX:F

    div-float v0, v1, v0

    float-to-double v2, v0

    invoke-virtual {p1, p2, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object p2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    iget p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalScaleY:F

    div-float/2addr v1, p0

    float-to-double v0, v1

    .line 858
    invoke-virtual {p1, p2, v0, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    goto :goto_0

    .line 860
    :cond_1
    iget v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mLastItemIndex:I

    if-ne p2, v0, :cond_2

    .line 861
    sget-object p2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    iget v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mSmallIconScale:F

    div-float v0, v1, v0

    float-to-double v2, v0

    invoke-virtual {p1, p2, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object p2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    iget p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mSmallIconScale:F

    div-float/2addr v1, p0

    float-to-double v0, v1

    .line 862
    invoke-virtual {p1, p2, v0, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    goto :goto_0

    .line 864
    :cond_2
    sget-object p2, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    iget v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalScaleX:F

    div-float v0, v1, v0

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mQuickEditScale:F

    mul-float/2addr v0, v2

    float-to-double v2, v0

    invoke-virtual {p1, p2, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p1

    sget-object p2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    iget v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalScaleY:F

    div-float/2addr v1, v0

    iget p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mQuickEditScale:F

    mul-float/2addr v1, p0

    float-to-double v0, v1

    .line 865
    invoke-virtual {p1, p2, v0, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    :goto_0
    return-void
.end method

.method private setupView(ZLcom/miui/home/launcher/FolderIcon;)V
    .locals 3

    .line 978
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderAnimController;->clearAnimList()V

    .line 979
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderAnimListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 980
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderAnimController;->registerFolderAnimListener(Lcom/miui/home/launcher/folder/FolderAnimListener;)V

    .line 981
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/folder/FolderAnimController;->registerFolderAnimListener(Lcom/miui/home/launcher/folder/FolderAnimListener;)V

    .line 982
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolderAnimIcon()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconAnimView:Lcom/miui/home/launcher/FolderIcon;

    .line 983
    iput-object p2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderDesktopIcon:Lcom/miui/home/launcher/FolderIcon;

    .line 984
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderIcon;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAnimaFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    .line 985
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAnimaFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    .line 986
    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutsAdapter;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    .line 987
    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderIcon;->getPreviewArray()[Landroid/widget/ImageView;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mDesktopImageViews:[Landroid/widget/ImageView;

    .line 989
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderAnimController;->getFolderIconImgView()Landroid/widget/ImageView;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/folder/FolderAnimController;->initAnimState(ZLandroid/widget/ImageView;)V

    .line 990
    iget-object p2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAnimaFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderGridView;->onLayoutAnimSkipToEnd()V

    .line 992
    iget-object p2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAnimaFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderGridView;->getMaxRow()I

    move-result p2

    const/4 v0, 0x3

    mul-int/2addr p2, v0

    iput p2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->DISPLAY_COUNT_MAX:I

    .line 993
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderColumnCount:I

    .line 994
    iget-object p2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconAnimView:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderIcon;->getIconColumCount()I

    move-result p2

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAnimaFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconAnimView:Lcom/miui/home/launcher/FolderIcon;

    invoke-direct {p0, v0, p2, v1, v2}, Lcom/miui/home/launcher/folder/FolderAnimController;->initIconLoc(IIILcom/miui/home/launcher/FolderIcon;)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mLastItemIndex:I

    .line 995
    iget-object p2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderAnimProgressController:Lcom/miui/home/launcher/folder/FolderAnimProgressController;

    iget v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalEditScale:F

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderAnimListenerList:Ljava/util/ArrayList;

    iget-boolean p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mIsUseSimpleAnim:Z

    invoke-virtual {p2, v0, v1, p1, p0}, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->initProgressListener(FLjava/util/ArrayList;ZZ)V

    return-void
.end method

.method private startAnim()V
    .locals 4

    const-string v0, "FolderAnimController"

    const-string v1, "do startFolderAnim"

    .line 231
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    move v2, v1

    .line 232
    :goto_0
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mTitleSpringAnimList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 233
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mTitleSpringAnimList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/anim/FolmeAnimation;

    invoke-virtual {v3}, Lcom/miui/home/launcher/anim/FolmeAnimation;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    :cond_0
    iget-boolean v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mIsUseSimpleAnim:Z

    if-nez v2, :cond_1

    move v2, v1

    .line 236
    :goto_1
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mBgSpringAnimList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 237
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mBgSpringAnimList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/anim/FolmeAnimation;

    invoke-virtual {v3}, Lcom/miui/home/launcher/anim/FolmeAnimation;->start()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 240
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PreView AnimIconCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconSpringAnimList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 241
    :goto_2
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconSpringAnimList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 242
    iget-boolean v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mIsUseSimpleAnim:Z

    if-eqz v3, :cond_2

    .line 243
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconSpringAnimList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/anim/FolmeAnimation;

    invoke-virtual {v3}, Lcom/miui/home/launcher/anim/FolmeAnimation;->skipToEndStateImmediately()V

    goto :goto_3

    .line 245
    :cond_2
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconSpringAnimList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/anim/FolmeAnimation;

    invoke-virtual {v3}, Lcom/miui/home/launcher/anim/FolmeAnimation;->start()V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 248
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GridItem AnimIconCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridIconSpringAnimList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_4
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridIconSpringAnimList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 250
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridIconSpringAnimList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/anim/FolmeAnimation;

    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/FolmeAnimation;->start()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method private updateAnimFolderInfoAndPreview(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAnimaFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAnimaFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->isBigFolder()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 177
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 178
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 179
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconAnimView:Lcom/miui/home/launcher/FolderIcon;

    check-cast p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->createOrRemoveView()V

    :cond_1
    return-void
.end method

.method private updateBgPosition(Lcom/miui/home/launcher/LauncherIconImageView;Landroid/widget/ImageView;FF)V
    .locals 8

    .line 418
    new-instance v0, Lmiuix/animation/controller/AnimState;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 419
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->folderGridLoc:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v4, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->bgLoc:[I

    aget v4, v4, v3

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalEditScale:F

    iget v5, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolmeScale:F

    mul-float/2addr v4, v5

    div-float/2addr v2, v4

    float-to-double v4, v2

    invoke-virtual {v0, v1, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    iget-object v4, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->folderGridLoc:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v6, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->bgLoc:[I

    aget v6, v6, v5

    sub-int/2addr v4, v6

    int-to-float v4, v4

    iget v6, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalEditScale:F

    iget p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolmeScale:F

    mul-float/2addr v6, p0

    div-float/2addr v4, v6

    float-to-double v6, v4

    .line 420
    invoke-virtual {v1, v2, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    float-to-double v6, p3

    .line 421
    invoke-virtual {p0, v1, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    sget-object p3, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    float-to-double v1, p4

    .line 422
    invoke-virtual {p0, p3, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    new-array p0, v5, [Landroid/view/View;

    aput-object p1, p0, v3

    .line 423
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    invoke-interface {p0, v0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    new-array p0, v5, [Landroid/view/View;

    aput-object p2, p0, v3

    .line 424
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    invoke-interface {p0, v0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private updateExposedGridItemPosition(Landroid/view/View;)V
    .locals 10

    .line 569
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mExposedStartLoc:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridEndLoc:[I

    aget v1, v3, v1

    sub-int/2addr v2, v1

    int-to-float v1, v2

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalEditScale:F

    div-float v8, v1, v2

    const/4 v1, 0x1

    .line 570
    aget v0, v0, v1

    aget v1, v3, v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float v9, v0, v2

    .line 571
    iget v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mSmallIconScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v6, v1, v0

    div-float v7, v1, v0

    move-object v4, p0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Lcom/miui/home/launcher/folder/FolderAnimController;->preAnimState(Landroid/view/View;FFFF)V

    return-void
.end method

.method private updateFolderIconImgViewPosition(Landroid/widget/ImageView;Lcom/miui/home/launcher/DesktopIcon;)V
    .locals 10

    .line 306
    new-instance v0, Lmiuix/animation/controller/AnimState;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 307
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mTargetLoc:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v4, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mStartLoc:[I

    aget v4, v4, v3

    sub-int/2addr v2, v4

    int-to-float v2, v2

    iget v4, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalEditScale:F

    div-float/2addr v2, v4

    float-to-double v4, v2

    invoke-virtual {v0, v1, v4, v5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object v1

    sget-object v2, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    iget-object v4, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mTargetLoc:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    iget-object v6, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mStartLoc:[I

    aget v6, v6, v5

    sub-int/2addr v4, v6

    int-to-float v4, v4

    iget p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalEditScale:F

    div-float/2addr v4, p0

    float-to-double v6, v4

    .line 308
    invoke-virtual {v1, v2, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 309
    invoke-interface {p2}, Lcom/miui/home/launcher/DesktopIcon;->getIconWidth()I

    move-result v2

    int-to-double v6, v2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-double v8, v2

    div-double/2addr v6, v8

    invoke-virtual {p0, v1, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p0

    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 310
    invoke-interface {p2}, Lcom/miui/home/launcher/DesktopIcon;->getIconHeight()I

    move-result p2

    int-to-double v6, p2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result p2

    int-to-double v8, p2

    div-double/2addr v6, v8

    invoke-virtual {p0, v1, v6, v7}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    new-array p0, v5, [Landroid/view/View;

    aput-object p1, p0, v3

    .line 311
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    invoke-interface {p0, v0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method private updateGridItemAnimationPosition(Landroid/view/View;II)V
    .locals 9

    .line 551
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconAnimView:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderIcon;->getPreviewArray()[Landroid/widget/ImageView;

    move-result-object v0

    .line 552
    aget-object p2, v0, p2

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridStartLoc:[I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 554
    iget-object p2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridStartLoc:[I

    const/4 v0, 0x0

    aget v1, p2, v0

    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridEndLoc:[I

    aget v0, v2, v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalEditScale:F

    div-float v7, v0, v1

    const/4 v0, 0x1

    .line 555
    aget p2, p2, v0

    aget v0, v2, v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    div-float v8, p2, v1

    .line 556
    invoke-direct {p0, p3, p1, v7, v8}, Lcom/miui/home/launcher/folder/FolderAnimController;->setFolder2x2_4State(ILandroid/view/View;FF)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 560
    :cond_0
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/folder/FolderAnimController;->isUseSmallScale(I)Z

    move-result p2

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_1

    iget p2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mSmallIconScale:F

    goto :goto_0

    :cond_1
    iget p2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalScaleX:F

    :goto_0
    div-float p2, v0, p2

    move v5, p2

    .line 561
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/folder/FolderAnimController;->isUseSmallScale(I)Z

    move-result p2

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mSmallIconScale:F

    goto :goto_1

    :cond_2
    iget p2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalScaleY:F

    :goto_1
    div-float/2addr v0, p2

    move v6, v0

    move-object v3, p0

    move-object v4, p1

    .line 560
    invoke-virtual/range {v3 .. v8}, Lcom/miui/home/launcher/folder/FolderAnimController;->preAnimState(Landroid/view/View;FFFF)V

    return-void
.end method

.method private updateSmallFolderPreViewPosition(Landroid/view/View;FF)V
    .locals 4

    .line 809
    new-instance v0, Lmiuix/animation/controller/AnimState;

    invoke-direct {v0}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 810
    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalEditScale:F

    iget v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolmeScale:F

    mul-float/2addr v2, v3

    div-float/2addr p2, v2

    float-to-double v2, p2

    invoke-virtual {v0, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object v1, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalEditScale:F

    iget p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolmeScale:F

    mul-float/2addr v2, p0

    div-float/2addr p3, v2

    float-to-double v2, p3

    .line 811
    invoke-virtual {p2, v1, v2, v3}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    const/4 p0, 0x1

    new-array p0, p0, [Landroid/view/View;

    const/4 p2, 0x0

    aput-object p1, p0, p2

    .line 812
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p0

    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p0

    invoke-interface {p0, v0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method


# virtual methods
.method public cancelFolderAnim()V
    .locals 2

    const-string v0, "FolderAnimController"

    const-string v1, "cancelFolderAnim"

    .line 947
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mTitleSpringAnimList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/anim/FolmeAnimation;

    .line 949
    invoke-virtual {v1}, Lcom/miui/home/launcher/anim/FolmeAnimation;->cancel()V

    goto :goto_0

    .line 951
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mBgSpringAnimList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/anim/FolmeAnimation;

    .line 952
    invoke-virtual {v1}, Lcom/miui/home/launcher/anim/FolmeAnimation;->cancel()V

    goto :goto_1

    .line 954
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconSpringAnimList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/anim/FolmeAnimation;

    .line 955
    invoke-virtual {v1}, Lcom/miui/home/launcher/anim/FolmeAnimation;->cancel()V

    goto :goto_2

    .line 957
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridIconSpringAnimList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/anim/FolmeAnimation;

    .line 958
    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/FolmeAnimation;->cancel()V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public folderAnimationEnd()V
    .locals 1

    .line 1009
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderAnimListenerList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/folder/FolderAnimListener;

    .line 1010
    invoke-interface {v0}, Lcom/miui/home/launcher/folder/FolderAnimListener;->onFolderAnimationEnd()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public folderAnimationStart()V
    .locals 1

    .line 1003
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderAnimListenerList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/folder/FolderAnimListener;

    .line 1004
    invoke-interface {v0}, Lcom/miui/home/launcher/folder/FolderAnimListener;->onFolderAnimationStart()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected getClosePreviewResponse()F
    .locals 0

    .line 816
    iget p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->BASE_RESPONSE:F

    return p0
.end method

.method protected getGridItemDelay(J)J
    .locals 0

    return-wide p1
.end method

.method protected getGridViewResponse(I)F
    .locals 3

    .line 489
    iget v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->BASE_RESPONSE:F

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderColumnCount:I

    div-int v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->ROW_RES_DIFF:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderColumnCount:I

    rem-int/2addr p1, v1

    int-to-float p1, p1

    iget p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->COL_RES_DIFF:F

    mul-float/2addr p1, p0

    add-float/2addr v0, p1

    return v0
.end method

.method protected getPreViewOpenResponse(I)F
    .locals 3

    .line 281
    iget v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->BASE_RESPONSE:F

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellCountY()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderColumnCount:I

    div-int v2, p1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->ROW_RES_DIFF:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderColumnCount:I

    rem-int/2addr p1, v1

    int-to-float p1, p1

    iget p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->COL_RES_DIFF:F

    mul-float/2addr p1, p0

    add-float/2addr v0, p1

    return v0
.end method

.method protected getTitleDamping()F
    .locals 0

    .line 364
    iget p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->DAMPING:F

    return p0
.end method

.method protected initAnimRate()V
    .locals 5

    .line 117
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isHighAnimationRate()Z

    move-result v0

    const v1, 0x3e8f5c29    # 0.28f

    const/high16 v2, 0x40a00000    # 5.0f

    if-eqz v0, :cond_0

    .line 118
    iput v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->BASE_RESPONSE:F

    const v0, 0x3ea3d70a    # 0.32f

    .line 119
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->RESPONSE_NORMAL:F

    const v0, 0x3ca3d70a    # 0.02f

    .line 120
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->ROW_RES_DIFF:F

    .line 121
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->COL_RES_DIFF:F

    .line 122
    iput v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->ALPHA_DIFF:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 123
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->DAMPING_NORMAL:F

    .line 124
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->DAMPING:F

    const-wide/16 v3, 0x78

    .line 125
    iput-wide v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->BG_CLOSE_DELAY:J

    .line 128
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isMiddleAnimationRate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iput v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->BASE_RESPONSE:F

    const v0, 0x3e99999a    # 0.3f

    .line 130
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->RESPONSE_NORMAL:F

    const v0, 0x3c449ba6    # 0.012f

    .line 131
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->ROW_RES_DIFF:F

    .line 132
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->COL_RES_DIFF:F

    .line 133
    iput v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->ALPHA_DIFF:F

    const v0, 0x3f733333    # 0.95f

    .line 134
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->DAMPING_NORMAL:F

    .line 135
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->DAMPING:F

    const-wide/16 v0, 0x64

    .line 136
    iput-wide v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->BG_CLOSE_DELAY:J

    .line 139
    :cond_1
    invoke-static {}, Lcom/miui/home/launcher/common/DeviceLevelUtils;->isLowAnimationRate()Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x3e75c28f    # 0.24f

    .line 140
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->BASE_RESPONSE:F

    const/high16 v0, 0x3e800000    # 0.25f

    .line 141
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->RESPONSE_NORMAL:F

    const v0, 0x3ba3d70a    # 0.005f

    .line 142
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->ROW_RES_DIFF:F

    .line 143
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->COL_RES_DIFF:F

    .line 144
    iput v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->ALPHA_DIFF:F

    const v0, 0x3f666666    # 0.9f

    .line 145
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->DAMPING_NORMAL:F

    .line 146
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->DAMPING:F

    const-wide/16 v0, 0x50

    .line 147
    iput-wide v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->BG_CLOSE_DELAY:J

    :cond_2
    return-void
.end method

.method public initEditScale()V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1079
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mQuickEditScale:F

    .line 1080
    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalEditScale:F

    .line 1082
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderDesktopIcon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderIcon;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemInfo;->isInHotseat()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isInQuickEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1083
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getQuickEditScreenRatio()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mQuickEditScale:F

    .line 1085
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1086
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mNormalEditScale:F

    :cond_1
    return-void
.end method

.method public initGridViewItem()V
    .locals 3

    const/4 v0, 0x0

    .line 721
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 722
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItemView(I)Landroid/view/View;

    move-result-object v1

    .line 723
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/FolderAnimController;->resetView(Landroid/view/View;)V

    .line 724
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/FolderAnimController;->resetGridItemSimpleAnimStatus(Landroid/view/View;)V

    .line 726
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItemView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mIsUseSimpleAnim:Z

    if-nez v1, :cond_0

    .line 727
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItemView(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isUseSimpleAnim()Z
    .locals 0

    .line 213
    iget-boolean p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mIsUseSimpleAnim:Z

    return p0
.end method

.method public preAnimState(Landroid/view/View;FFFF)V
    .locals 3

    .line 758
    new-instance p0, Lmiuix/animation/controller/AnimState;

    invoke-direct {p0}, Lmiuix/animation/controller/AnimState;-><init>()V

    .line 759
    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    float-to-double v1, p2

    invoke-virtual {p0, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object v0, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    float-to-double v1, p3

    .line 760
    invoke-virtual {p2, v0, v1, v2}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object p3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_X:Lmiuix/animation/property/ViewProperty;

    float-to-double v0, p4

    .line 761
    invoke-virtual {p2, p3, v0, v1}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    move-result-object p2

    sget-object p3, Lmiuix/animation/property/ViewProperty;->TRANSLATION_Y:Lmiuix/animation/property/ViewProperty;

    float-to-double p4, p5

    .line 762
    invoke-virtual {p2, p3, p4, p5}, Lmiuix/animation/controller/AnimState;->add(Ljava/lang/Object;D)Lmiuix/animation/controller/AnimState;

    const/4 p2, 0x1

    new-array p2, p2, [Landroid/view/View;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    .line 763
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    invoke-interface {p1, p0}, Lmiuix/animation/IStateStyle;->setTo(Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    return-void
.end method

.method public preFolderGridAnim(Z[I)V
    .locals 9

    .line 437
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v0

    .line 440
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FirstDisplayIcon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAnimaFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " LastDisplayIcon: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAnimaFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    .line 441
    invoke-virtual {v2}, Landroid/widget/GridView;->getLastVisiblePosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FolderAnimController"

    .line 440
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderAnimController;->hideNotDoAnimIcons()V

    .line 443
    invoke-virtual {v0}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->DISPLAY_COUNT_MAX:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mDisplayChildCount:I

    const/4 v1, 0x0

    .line 444
    :goto_0
    iget v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mDisplayChildCount:I

    if-ge v1, v2, :cond_2

    .line 445
    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 446
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderGridView;->getChildView(I)Lcom/miui/home/launcher/DesktopIcon;

    move-result-object v4

    .line 448
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconLocMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 449
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/folder/FolderAnimController;->getIconIndex(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 450
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mDesktopImageViews:[Landroid/widget/ImageView;

    array-length v2, v2

    if-lt v8, v2, :cond_0

    const/4 v8, 0x1

    move-object v2, p0

    move-object v5, p2

    move v6, p1

    move v7, v1

    .line 451
    invoke-direct/range {v2 .. v8}, Lcom/miui/home/launcher/folder/FolderAnimController;->setExposedGridViewItemFolme(Landroid/view/View;Lcom/miui/home/launcher/DesktopIcon;[IZIZ)V

    goto :goto_1

    :cond_0
    move-object v2, p0

    move v5, p1

    move v6, v8

    move v7, v1

    .line 454
    invoke-direct/range {v2 .. v7}, Lcom/miui/home/launcher/folder/FolderAnimController;->setGridViewItemFolme(Landroid/view/View;Lcom/miui/home/launcher/DesktopIcon;ZII)V

    .line 455
    invoke-direct {p0, v8}, Lcom/miui/home/launcher/folder/FolderAnimController;->setLastPreView(I)V

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    move-object v2, p0

    move-object v5, p2

    move v6, p1

    move v7, v1

    .line 458
    invoke-direct/range {v2 .. v8}, Lcom/miui/home/launcher/folder/FolderAnimController;->setExposedGridViewItemFolme(Landroid/view/View;Lcom/miui/home/launcher/DesktopIcon;[IZIZ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    :cond_2
    iput-boolean p1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->folderIsOpen:Z

    .line 463
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/FolderAnimController;->setFolderAnimListener(Z)V

    return-void
.end method

.method public preFolderIconAnim(Z)V
    .locals 10

    .line 257
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderAnimController;->resetFolderPreviewParams()V

    .line 258
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconAnimView:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderIcon;->getPreviewArray()[Landroid/widget/ImageView;

    move-result-object v0

    .line 259
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconLocMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 260
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconLocMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 261
    invoke-virtual {p0, v9}, Lcom/miui/home/launcher/folder/FolderAnimController;->getPreViewOpenResponse(I)F

    move-result v7

    .line 262
    array-length v3, v0

    iget-object v4, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mDesktopImageViews:[Landroid/widget/ImageView;

    array-length v4, v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 263
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v4, v3, :cond_0

    .line 264
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAnimaFolderGridView:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getChildCount()I

    move-result v3

    if-ge v9, v3, :cond_2

    if-eqz p1, :cond_1

    .line 265
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v3, v0, v3

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mDesktopImageViews:[Landroid/widget/ImageView;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v3, v3, v4

    :goto_1
    invoke-direct {p0, v9, v3}, Lcom/miui/home/launcher/folder/FolderAnimController;->calcFolderPreviewLoc(ILandroid/widget/ImageView;)V

    .line 266
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aget-object v8, v0, v3

    move-object v4, p0

    move v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/miui/home/launcher/folder/FolderAnimController;->addFolderPreviewFolme(ZIFLandroid/widget/ImageView;I)V

    .line 267
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/folder/FolderAnimController;->setLastPreviewParams(I)V

    goto :goto_0

    .line 269
    :cond_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v2, v0, v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 274
    :cond_3
    iget v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mLastItemIndex:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_4

    .line 275
    aget-object v3, v0, v1

    .line 276
    iget-object v4, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mLastIconParams:[I

    const/4 v5, 0x0

    aget v5, v4, v5

    int-to-float v5, v5

    aget v4, v4, v2

    int-to-float v4, v4

    invoke-direct {p0, p1, v3, v5, v4}, Lcom/miui/home/launcher/folder/FolderAnimController;->addSmallFolderPreViewAnim(ZLandroid/view/View;FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public registerFolderAnimListener(Lcom/miui/home/launcher/folder/FolderAnimListener;)V
    .locals 0

    .line 999
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderAnimListenerList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public resetGridViewSimpleStatus()V
    .locals 2

    const/4 v0, 0x0

    .line 698
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 699
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mAdapter:Lcom/miui/home/launcher/ShortcutsAdapter;

    invoke-virtual {v1, v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItemView(I)Landroid/view/View;

    move-result-object v1

    .line 700
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/FolderAnimController;->resetGridItemSimpleAnimStatus(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resetTitleView(Landroid/view/View;)V
    .locals 0

    .line 743
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/FolderAnimController;->resetView(Landroid/view/View;)V

    const/high16 p0, 0x3f800000    # 1.0f

    .line 744
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public skipToEnd()V
    .locals 2

    .line 963
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mTitleSpringAnimList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/anim/FolmeAnimation;

    .line 964
    invoke-virtual {v1}, Lcom/miui/home/launcher/anim/FolmeAnimation;->skipToEndDuringAnim()V

    goto :goto_0

    .line 966
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mBgSpringAnimList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/anim/FolmeAnimation;

    .line 967
    invoke-virtual {v1}, Lcom/miui/home/launcher/anim/FolmeAnimation;->skipToEndDuringAnim()V

    goto :goto_1

    .line 969
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderIconSpringAnimList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/anim/FolmeAnimation;

    .line 970
    invoke-virtual {v1}, Lcom/miui/home/launcher/anim/FolmeAnimation;->skipToEndDuringAnim()V

    goto :goto_2

    .line 972
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mGridIconSpringAnimList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/anim/FolmeAnimation;

    .line 973
    invoke-virtual {v0}, Lcom/miui/home/launcher/anim/FolmeAnimation;->skipToEndDuringAnim()V

    goto :goto_3

    :cond_3
    return-void
.end method

.method public startFolderAnim(ZLcom/miui/home/launcher/FolderIcon;[IZ)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderCling:Lcom/miui/home/launcher/FolderCling;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolderAnimIcon()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderAnimProgressController:Lcom/miui/home/launcher/folder/FolderAnimProgressController;

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->initAnimRate()V

    .line 191
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderAnimController;->initAnimRate()V

    .line 192
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/folder/FolderAnimController;->setupView(ZLcom/miui/home/launcher/FolderIcon;)V

    .line 194
    invoke-direct {p0, p4}, Lcom/miui/home/launcher/folder/FolderAnimController;->setIsUseSimpleAnim(Z)V

    .line 196
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderAnimController;->initEditScale()V

    .line 197
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/FolderAnimController;->resetLauncherScale(Z)V

    .line 199
    invoke-direct {p0, p1, p4}, Lcom/miui/home/launcher/folder/FolderAnimController;->setAnimPreStatus(ZZ)V

    .line 200
    invoke-direct {p0, p1, p3}, Lcom/miui/home/launcher/folder/FolderAnimController;->prepareFolderAnim(Z[I)V

    const-string p2, "FolderAnimController"

    const-string/jumbo p3, "startFolderAnim"

    .line 201
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object p2, p0, Lcom/miui/home/launcher/folder/FolderAnimController;->mFolderAnimProgressController:Lcom/miui/home/launcher/folder/FolderAnimProgressController;

    new-instance p3, Lcom/miui/home/launcher/folder/FolderAnimController$$ExternalSyntheticLambda0;

    invoke-direct {p3, p1}, Lcom/miui/home/launcher/folder/FolderAnimController$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-virtual {p2, p1, p3}, Lcom/miui/home/launcher/folder/FolderAnimProgressController;->startListenerProgress(ZLcom/miui/home/launcher/folder/FolderAnimProgressController$FolderAnimProgressCallBack;)V

    .line 209
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderAnimController;->startAnim()V

    return-void
.end method
