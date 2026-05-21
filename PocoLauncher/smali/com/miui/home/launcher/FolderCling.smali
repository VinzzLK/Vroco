.class public Lcom/miui/home/launcher/FolderCling;
.super Lcom/miui/launcher/views/LauncherFrameLayout;
.source "FolderCling.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/home/launcher/DropTarget;
.implements Lcom/miui/home/launcher/DragController$DragListener;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/home/launcher/interfaces/EventBusHandlerHolder;
.implements Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;
.implements Lcom/miui/home/launcher/IShortcutIcon$ShortcutIconContainer;
.implements Lcom/miui/home/launcher/GridConfig$OnGridConfigChangeListener;
.implements Lcom/miui/home/launcher/commercial/recommend/RecommendController$RecommendScreenCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/FolderCling$FolderUpdateLayoutHandler;,
        Lcom/miui/home/launcher/FolderCling$CancelEmptySpaceLongClickHandler;,
        Lcom/miui/home/launcher/FolderCling$LoadingFinishMessageHandler;,
        Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;
    }
.end annotation


# instance fields
.field private folmeDownScale:F

.field private isAutoOpeningByDrag:Z

.field private isFirstDragOpen:Z

.field private mAnimFolderIcon:Lcom/miui/home/launcher/FolderIcon;

.field private mCancelEmptySpaceLongClickHandler:Lcom/miui/home/launcher/FolderCling$CancelEmptySpaceLongClickHandler;

.field private mClickConfirmor:Lcom/miui/home/launcher/common/PreciseClickConfirmor;

.field private mCloseConfirm:Ljava/lang/Runnable;

.field private mCloseTimeout:I

.field private mCoord:[F

.field private mDefaultClipBounds:Landroid/graphics/Rect;

.field private mDragController:Lcom/miui/home/launcher/DragController;

.field private mEditModePaddingTop:I

.field private mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

.field private mFolder:Lcom/miui/home/launcher/Folder;

.field private mFolderClipRectAnimator:Landroid/animation/ObjectAnimator;

.field private mFolderInitPaddingBottom:I

.field private mFolderInitSize:I

.field private mFolderUpdateLayoutHandler:Lcom/miui/home/launcher/FolderCling$FolderUpdateLayoutHandler;

.field private mIsRecommendScreenShow:Z

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLoadingFinishMessageHandler:Lcom/miui/home/launcher/FolderCling$LoadingFinishMessageHandler;

.field private mMaskColor:I

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mNeedUpdateFolderPaddingBottom:Z

.field private mNormalModePaddingTop:I

.field private mOnFinishClose:Ljava/lang/Runnable;

.field private mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

.field private mOpenTime:J

.field private mOpened:Z

.field private mRecommendButtonDescription:Ljava/lang/CharSequence;

.field private mRect:Landroid/graphics/Rect;

.field private mReverseDrawingMode:Z

.field private mSmallIconsRecommendScreen:Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;

.field private mUpdateFolderPaddingHandler:Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;


# direct methods
.method public static synthetic $r8$lambda$SWFFhtjiVvaA32lb2yQPgVBNvVI(Lcom/miui/home/launcher/FolderCling;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/FolderCling;->cancelFolderClipRectAnimation()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 94
    invoke-direct {p0, p1, p2}, Lcom/miui/launcher/views/LauncherFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 67
    iput-boolean p2, p0, Lcom/miui/home/launcher/FolderCling;->mOpened:Z

    const/16 v0, 0x1f4

    .line 75
    iput v0, p0, Lcom/miui/home/launcher/FolderCling;->mCloseTimeout:I

    .line 78
    iput-boolean p2, p0, Lcom/miui/home/launcher/FolderCling;->mIsRecommendScreenShow:Z

    .line 85
    new-instance v0, Lcom/miui/home/launcher/OnLongClickAgent;

    invoke-direct {v0, p0, p0}, Lcom/miui/home/launcher/OnLongClickAgent;-><init>(Landroid/view/ViewGroup;Lcom/miui/home/launcher/OnLongClickAgent$VersionTagGenerator;)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    .line 91
    iput-boolean p2, p0, Lcom/miui/home/launcher/FolderCling;->isFirstDragOpen:Z

    .line 92
    iput-boolean p2, p0, Lcom/miui/home/launcher/FolderCling;->isAutoOpeningByDrag:Z

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 124
    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mCoord:[F

    .line 125
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mRect:Landroid/graphics/Rect;

    .line 153
    iput-boolean p2, p0, Lcom/miui/home/launcher/FolderCling;->mReverseDrawingMode:Z

    .line 373
    new-instance v0, Lcom/miui/home/launcher/FolderCling$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/FolderCling$1;-><init>(Lcom/miui/home/launcher/FolderCling;)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mOnFinishClose:Ljava/lang/Runnable;

    .line 463
    new-instance v0, Lcom/miui/home/launcher/FolderCling$2;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/FolderCling$2;-><init>(Lcom/miui/home/launcher/FolderCling;)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mCloseConfirm:Ljava/lang/Runnable;

    .line 819
    new-instance v0, Lcom/miui/home/launcher/FolderCling$4;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/FolderCling$4;-><init>(Lcom/miui/home/launcher/FolderCling;)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    .line 859
    new-instance v0, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;-><init>(Lcom/miui/home/launcher/FolderCling;Lcom/miui/home/launcher/FolderCling$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mUpdateFolderPaddingHandler:Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;

    .line 860
    new-instance v0, Lcom/miui/home/launcher/FolderCling$CancelEmptySpaceLongClickHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/FolderCling$CancelEmptySpaceLongClickHandler;-><init>(Lcom/miui/home/launcher/FolderCling;Lcom/miui/home/launcher/FolderCling$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mCancelEmptySpaceLongClickHandler:Lcom/miui/home/launcher/FolderCling$CancelEmptySpaceLongClickHandler;

    .line 861
    new-instance v0, Lcom/miui/home/launcher/FolderCling$FolderUpdateLayoutHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/FolderCling$FolderUpdateLayoutHandler;-><init>(Lcom/miui/home/launcher/FolderCling;Lcom/miui/home/launcher/FolderCling$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolderUpdateLayoutHandler:Lcom/miui/home/launcher/FolderCling$FolderUpdateLayoutHandler;

    .line 863
    new-instance v0, Lcom/miui/home/launcher/FolderCling$LoadingFinishMessageHandler;

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/FolderCling$LoadingFinishMessageHandler;-><init>(Lcom/miui/home/launcher/FolderCling;Lcom/miui/home/launcher/FolderCling$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mLoadingFinishMessageHandler:Lcom/miui/home/launcher/FolderCling$LoadingFinishMessageHandler;

    .line 95
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 96
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 97
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0701c6

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/FolderCling;->mEditModePaddingTop:I

    .line 98
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f07021a

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/FolderCling;->mNormalModePaddingTop:I

    .line 99
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0701b9

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    iput p2, p0, Lcom/miui/home/launcher/FolderCling;->mFolderInitPaddingBottom:I

    .line 100
    new-instance p2, Lcom/miui/home/launcher/common/PreciseClickConfirmor;

    invoke-direct {p2, p1}, Lcom/miui/home/launcher/common/PreciseClickConfirmor;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/home/launcher/FolderCling;->mClickConfirmor:Lcom/miui/home/launcher/common/PreciseClickConfirmor;

    .line 101
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    const-wide/16 p1, 0x258

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/OnLongClickAgent;->setTimeOut(J)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/Folder;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/miui/home/launcher/FolderCling;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mRecommendButtonDescription:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/miui/home/launcher/FolderCling;)Lcom/miui/home/launcher/OnLongClickAgent;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/miui/home/launcher/FolderCling;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/miui/home/launcher/FolderCling;->isFirstDragOpen:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/miui/home/launcher/FolderCling;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderCling;->isFirstDragOpen:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/miui/home/launcher/FolderCling;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderCling;->updateBackgroundViewHeight()V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/FolderCling;)I
    .locals 0

    .line 56
    iget p0, p0, Lcom/miui/home/launcher/FolderCling;->mFolderInitPaddingBottom:I

    return p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/FolderCling;)Landroid/graphics/Rect;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mDefaultClipBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/FolderCling;Z)I
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderCling;->getFolderBackgroundTopMargin(Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/FolderCling;Z)I
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderCling;->getFolderHeaderMarginTop(Z)I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/FolderCling;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderCling;->startFolderEnterExitEditModeAnimator(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/FolderCling;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderCling;->updateLayout(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/FolderCling;Lcom/miui/home/launcher/FolderGridView;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/FolderCling;->resetChildEditMode(Lcom/miui/home/launcher/FolderGridView;Z)V

    return-void
.end method

.method private addFolderAnimIconLayoutRule()V
    .locals 2

    .line 341
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mAnimFolderIcon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getIconContainer()Landroid/view/View;

    move-result-object p0

    .line 342
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v1, 0x14

    .line 343
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 344
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private blurFolderIconBg()V
    .locals 12

    .line 348
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mAnimFolderIcon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v1

    .line 349
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getShortcutMenuLayer()Lcom/miui/home/launcher/ShortcutMenuLayer;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->chooseBackgroundBlurContainer(Landroid/view/View;Landroid/view/View;)V

    .line 350
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mAnimFolderIcon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isBigFolder()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0, v1}, Lcom/miui/home/launcher/common/BlurUtilities;->getFolderIconBlurRoundRectRadius(Landroid/content/Context;Ljava/lang/Boolean;Landroid/widget/ImageView;)I

    move-result v2

    const v3, -0x4c89898a

    const/16 v4, 0x64

    const v5, 0x66b4b4b4

    const/16 v6, 0x64

    const v7, -0xeb6c00

    const/16 v8, 0x6a

    const v9, -0xd10e00

    const/16 v10, 0x6a

    const/16 v11, 0xa

    invoke-static/range {v1 .. v11}, Lcom/miui/home/launcher/common/BlurUtilities;->setFolderIconBlur(Landroid/view/View;IIIIIIIIII)V

    return-void
.end method

.method private cancelFolderClipRectAnimation()V
    .locals 1

    .line 690
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolderClipRectAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mFolderClipRectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public static clearOldVersionRecommendStaticMemory()V
    .locals 0

    .line 729
    invoke-static {}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->clearLoadingContents()V

    return-void
.end method

.method private getFolderBackgroundTopMargin(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 812
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0701dc

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getFolderContainerOffsetFromDisableEditToNormalEdit()I
    .locals 4

    const/4 v0, 0x0

    .line 803
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderCling;->getFolderHeaderMarginTop(Z)I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/FolderCling;->getFolderHeaderMarginTop(Z)I

    move-result v3

    sub-int/2addr v1, v3

    .line 804
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderCling;->getFolderBackgroundTopMargin(Z)I

    move-result v0

    add-int/2addr v1, v0

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/FolderCling;->getFolderBackgroundTopMargin(Z)I

    move-result p0

    sub-int/2addr v1, p0

    div-int/lit8 v1, v1, 0x2

    return v1
.end method

.method private getFolderHeaderMarginTop(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 816
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f0701dc

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getFolderTitleOffsetAfterFolderTranslate()I
    .locals 2

    const/4 v0, 0x0

    .line 799
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderCling;->getFolderHeaderMarginTop(Z)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/FolderCling;->getFolderHeaderMarginTop(Z)I

    move-result p0

    sub-int/2addr v0, p0

    neg-int p0, v0

    return p0
.end method

.method private getSoscBlurViewOffsetWidth(Lcom/miui/launcher/sosc/module/SoscEvent;)I
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldDeviceLargeScreenMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 202
    iget p0, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->state:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    .line 203
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private initAnimFolderInfo(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 3

    .line 264
    iget-wide v0, p2, Lcom/miui/home/launcher/ItemInfo;->id:J

    iput-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    .line 265
    iget v0, p2, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    iput v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    .line 266
    iget-object v0, p2, Lcom/miui/home/launcher/ItemInfo;->mTitle:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/miui/home/launcher/ItemInfo;->mTitle:Ljava/lang/CharSequence;

    .line 267
    iget v0, p2, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iput v0, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    .line 268
    iget v0, p2, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    iput v0, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    .line 269
    iget-wide v0, p2, Lcom/miui/home/launcher/ItemInfo;->container:J

    iput-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 270
    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/ShortcutInfo;

    .line 271
    iget-object v2, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v2}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    goto :goto_0

    .line 273
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/FolderCling;->loadAnimFolderIcon(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/FolderInfo;)V

    return-void
.end method

.method private loadAnimFolderIcon(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 2

    .line 278
    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v0, 0x16

    if-ne p1, v0, :cond_0

    const p1, 0x7f0a0198

    goto :goto_0

    :cond_0
    const/16 v0, 0x15

    if-ne p1, v0, :cond_1

    const p1, 0x7f0a0197

    goto :goto_0

    :cond_1
    const p1, 0x7f0a0196

    .line 285
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/FolderIcon;

    iput-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mAnimFolderIcon:Lcom/miui/home/launcher/FolderIcon;

    const/4 v0, 0x1

    .line 286
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ItemIcon;->setUseCustomWidth(Z)V

    .line 287
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mAnimFolderIcon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderIcon;->setAnimFolderIconTag()V

    const/4 p1, 0x0

    if-eqz p2, :cond_2

    .line 288
    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/folder/FolderAnimController;->isUseSimpleAnim(Lcom/miui/home/launcher/FolderIcon;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move v0, p1

    .line 289
    :goto_1
    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mAnimFolderIcon:Lcom/miui/home/launcher/FolderIcon;

    if-eqz v0, :cond_3

    const/4 p1, 0x4

    :cond_3
    invoke-virtual {v1, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 290
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/FolderCling;->reMeasureIcon1x1PreviewContainer(Lcom/miui/home/launcher/FolderInfo;)V

    return-void
.end method

.method private reMeasureIcon1x1PreviewContainer(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 294
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isBigFolder()Z

    move-result v0

    if-nez v0, :cond_0

    .line 295
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    check-cast p1, Lcom/miui/home/launcher/folder/FolderIcon1x1;

    invoke-virtual {p1}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->getPreviewContainer()Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    move-result-object p1

    .line 296
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mAnimFolderIcon:Lcom/miui/home/launcher/FolderIcon;

    check-cast p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->getPreviewContainer()Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    move-result-object p0

    .line 297
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 298
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method private resetChildEditMode(Lcom/miui/home/launcher/FolderGridView;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 849
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderGridView;->getShortcutsAdapter()Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object p0

    .line 850
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDragDisable()Z

    move-result p1

    if-nez p1, :cond_3

    if-eqz p0, :cond_3

    const/4 p1, 0x0

    move v0, p1

    .line 851
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 852
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 853
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIcon()Lcom/miui/home/launcher/IShortcutIcon;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 854
    :cond_1
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIcon()Lcom/miui/home/launcher/IShortcutIcon;

    move-result-object v1

    invoke-interface {v1, p2, p1}, Lcom/miui/home/launcher/IShortcutIcon;->setEditMode(ZZ)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private setAnimFolderIconPosition([I[ILcom/miui/home/launcher/FolderIcon;)V
    .locals 2

    const/4 v0, 0x0

    .line 324
    aget v1, p1, v0

    aget v0, p2, v0

    sub-int/2addr v1, v0

    const/4 v0, 0x1

    .line 325
    aget p1, p1, v0

    aget p2, p2, v0

    sub-int/2addr p1, p2

    .line 326
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p2

    invoke-virtual {p3}, Lcom/miui/home/launcher/ItemIcon;->getIconContainer()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    add-int/2addr v0, v1

    sub-int/2addr p2, v0

    .line 327
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    invoke-virtual {p3}, Lcom/miui/home/launcher/ItemIcon;->getIconContainer()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    add-int/2addr p3, p1

    sub-int/2addr v0, p3

    .line 328
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mAnimFolderIcon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {p0, v1, p1, p2, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    return-void
.end method

.method private setAnimFolderIconScale(Landroid/view/View;FFF)V
    .locals 0

    .line 356
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 357
    invoke-virtual {p1, p3}, Landroid/view/View;->setPivotY(F)V

    .line 358
    invoke-virtual {p1, p4}, Landroid/view/View;->setScaleX(F)V

    .line 359
    invoke-virtual {p1, p4}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method

.method private setFolmeScale(Lcom/miui/home/launcher/FolderIcon;)V
    .locals 0

    .line 333
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getScaleX()F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/FolderCling;->folmeDownScale:F

    return-void
.end method

.method private setSmallIconsRecommendScreenLayoutParams()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mSmallIconsRecommendScreen:Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/miui/launcher/views/LauncherFrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/miui/home/launcher/common/Utilities;->getFolderGridViewWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 121
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mSmallIconsRecommendScreen:Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private startFolderEnterExitEditModeAnimator(Z)V
    .locals 6

    .line 739
    sget-object v0, Landroid/widget/FrameLayout;->SCALE_X:Landroid/util/Property;

    const/4 v1, 0x1

    new-array v2, v1, [F

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    const/4 v5, 0x0

    aput v4, v2, v5

    invoke-static {v0, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 740
    sget-object v2, Landroid/widget/FrameLayout;->SCALE_Y:Landroid/util/Property;

    new-array v4, v1, [F

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v3

    :cond_1
    aput v3, v4, v5

    invoke-static {v2, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p1

    .line 741
    sget-object v2, Landroid/widget/FrameLayout;->TRANSLATION_Y:Landroid/util/Property;

    new-array v3, v1, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .line 742
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    const/4 v3, 0x3

    new-array v3, v3, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v3, v5

    aput-object p1, v3, v1

    const/4 p1, 0x2

    aput-object v2, v3, p1

    invoke-static {p0, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    const-wide/16 v0, 0x172

    .line 743
    invoke-virtual {p0, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 744
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 745
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private updateBackgroundViewHeight()V
    .locals 1

    .line 547
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->isBorderLineShow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 548
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->updateBackgroundViewHeight()V

    :cond_0
    return-void
.end method

.method private updateLayout(Z)V
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Folder;->setOpenedScale(F)V

    .line 542
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Folder;->updateFolderClingPaddingTop()V

    .line 543
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderCling;->updateBackgroundViewHeight()V

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 3

    .line 515
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 518
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 519
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v2, 0x12

    if-eq p0, v2, :cond_1

    .line 520
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eq p0, v1, :cond_1

    .line 521
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v2, 0xe

    if-eq p0, v2, :cond_1

    .line 522
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 p1, 0xb

    if-ne p0, p1, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method

.method public afterDragStart()V
    .locals 0

    .line 649
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->afterDragStart()V

    return-void
.end method

.method public beforeDragStart(I)V
    .locals 0

    .line 645
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Folder;->beforeDragStart(I)V

    return-void
.end method

.method bind(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 4

    .line 210
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Folder;->bind(Lcom/miui/home/launcher/FolderInfo;)V

    .line 211
    iget-wide v0, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 212
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getRecommendScreen()Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;->bind(Lcom/miui/home/launcher/FolderInfo;)V

    :cond_0
    return-void
.end method

.method close(ZZ)V
    .locals 4

    .line 398
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DragController;->removeDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 399
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DragController;->removeDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    .line 400
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mOnFinishClose:Ljava/lang/Runnable;

    invoke-virtual {v0, p1, v1}, Lcom/miui/home/launcher/Folder;->onClose(ZLjava/lang/Runnable;)V

    const/4 p1, 0x0

    .line 401
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderCling;->mOpened:Z

    const/4 p1, 0x1

    .line 402
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderCling;->updateRecommendScreenVisibility(Z)V

    .line 403
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->removeRecommendScreenCallBack()V

    const/4 p1, -0x1

    .line 404
    iput p1, p0, Lcom/miui/home/launcher/FolderCling;->mFolderInitSize:I

    .line 405
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;-><init>(I)V

    invoke-virtual {v0, p2}, Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;->setFromEnterPreview(Z)Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 406
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/home/launcher/FolderCling;->mOpenTime:J

    sub-long/2addr v0, v2

    invoke-static {p1, v0, v1}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackFolderOpenTime(Lcom/miui/home/launcher/FolderInfo;J)V

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 129
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getRecommendAppsSwitch()Lcom/miui/home/launcher/NonOverlapLinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 132
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mCoord:[F

    const/4 v2, 0x1

    .line 131
    invoke-static {v0, p0, v1, v2, v2}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 133
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mCoord:[F

    const/4 v3, 0x0

    aget v4, v1, v3

    float-to-int v4, v4

    aget v5, v1, v2

    float-to-int v5, v5

    aget v1, v1, v3

    float-to-int v1, v1

    .line 135
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/GridView;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    iget-object v3, p0, Lcom/miui/home/launcher/FolderCling;->mCoord:[F

    aget v2, v3, v2

    float-to-int v2, v2

    .line 136
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/GridView;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 133
    invoke-virtual {v0, v4, v5, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 137
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mRect:Landroid/graphics/Rect;

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 138
    iget v0, p0, Lcom/miui/home/launcher/FolderCling;->mMaskColor:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Folder;->getRecommendAppsSwitch()Lcom/miui/home/launcher/NonOverlapLinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/miui/home/launcher/FolderCling;->mMaskColor:I

    .line 139
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, Lcom/miui/home/launcher/FolderCling;->mMaskColor:I

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, Lcom/miui/home/launcher/FolderCling;->mMaskColor:I

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    .line 138
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 140
    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 143
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 144
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 145
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 146
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 147
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 149
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 888
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderCling;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 889
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    .line 890
    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->isEditing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 891
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mOnLongClickAgent:Lcom/miui/home/launcher/OnLongClickAgent;

    .line 892
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/OnLongClickAgent;->onDispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 893
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Folder;->setLongClickDisabled(Z)V

    return p1

    .line 896
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_1

    .line 897
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Folder;->setLongClickDisabled(Z)V

    .line 899
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public enableInteractive(Z)V
    .locals 1

    .line 526
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Folder;->enableInteractive(Z)V

    .line 527
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .locals 0

    .line 161
    iget-boolean p0, p0, Lcom/miui/home/launcher/FolderCling;->mReverseDrawingMode:Z

    if-eqz p0, :cond_0

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_0
    return p2
.end method

.method public getContentOriginalLocation()Landroid/graphics/Rect;
    .locals 1

    .line 933
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 936
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->getViewOriginalLocation(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentShowShortcutIcons()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/home/launcher/IShortcutIcon;",
            ">;"
        }
    .end annotation

    .line 941
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawableUtils;->getAllShortcutIconsFromParent(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEventBusHandlers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 874
    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mEditStateChangedMessageHandler:Lcom/miui/home/launcher/common/messages/EditStateChangedMessageHandler;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mUpdateFolderPaddingHandler:Lcom/miui/home/launcher/FolderCling$UpdateFolderPaddingHandler;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mCancelEmptySpaceLongClickHandler:Lcom/miui/home/launcher/FolderCling$CancelEmptySpaceLongClickHandler;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mFolderUpdateLayoutHandler:Lcom/miui/home/launcher/FolderCling$FolderUpdateLayoutHandler;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mLoadingFinishMessageHandler:Lcom/miui/home/launcher/FolderCling$LoadingFinishMessageHandler;

    const/4 v1, 0x4

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getFolder()Lcom/miui/home/launcher/Folder;
    .locals 0

    .line 174
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    return-object p0
.end method

.method public getFolderAnimIcon()Lcom/miui/home/launcher/FolderIcon;
    .locals 0

    .line 363
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mAnimFolderIcon:Lcom/miui/home/launcher/FolderIcon;

    return-object p0
.end method

.method public getFolderId()J
    .locals 2

    .line 178
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p0

    iget-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->id:J

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getFolderInfo()Lcom/miui/home/launcher/FolderInfo;
    .locals 0

    .line 653
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p0

    return-object p0
.end method

.method public getFolderInitPaddingBottom()I
    .locals 0

    .line 664
    iget p0, p0, Lcom/miui/home/launcher/FolderCling;->mFolderInitPaddingBottom:I

    return p0
.end method

.method public getFolderPaddingBottom(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 808
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getRecommendScreenView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getFolderCellHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x4

    add-int/2addr p0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolderInitPaddingBottom()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getFolmeScale()F
    .locals 0

    .line 337
    iget p0, p0, Lcom/miui/home/launcher/FolderCling;->folmeDownScale:F

    return p0
.end method

.method public getHitView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getNeedUpdateFolderPaddingBottom()Z
    .locals 0

    .line 577
    iget-boolean p0, p0, Lcom/miui/home/launcher/FolderCling;->mNeedUpdateFolderPaddingBottom:Z

    return p0
.end method

.method public getNormalModePaddingTop()I
    .locals 0

    .line 668
    iget p0, p0, Lcom/miui/home/launcher/FolderCling;->mNormalModePaddingTop:I

    return p0
.end method

.method public getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getRecommendScreen()Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;
    .locals 0

    .line 621
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mSmallIconsRecommendScreen:Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;

    return-object p0
.end method

.method public getRecommendScreenView()Landroid/view/View;
    .locals 0

    .line 625
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getRecommendScreen()Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;

    move-result-object p0

    invoke-interface {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;->getView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getVersionTag()Ljava/lang/Object;
    .locals 0

    .line 734
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowAttachCount()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public initAnimFolderIcon(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 4

    .line 247
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->resetFolderScale()V

    .line 248
    new-instance v0, Lcom/miui/home/launcher/FolderInfo;

    invoke-direct {v0}, Lcom/miui/home/launcher/FolderInfo;-><init>()V

    .line 249
    invoke-direct {p0, v0, p1}, Lcom/miui/home/launcher/FolderCling;->initAnimFolderInfo(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/FolderInfo;)V

    .line 250
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/FolderCling;->setAnimFolderIconPositionAndScale(Lcom/miui/home/launcher/FolderIcon;)V

    .line 251
    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mAnimFolderIcon:Lcom/miui/home/launcher/FolderIcon;

    iget-object v2, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/miui/home/launcher/FolderIcon;->bindFolderInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderInfo;Z)V

    .line 252
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mAnimFolderIcon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderIcon;->loadIconPreViews(Lcom/miui/home/launcher/FolderInfo;)V

    .line 253
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mAnimFolderIcon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->updateFolderIconBg()V

    .line 254
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mAnimFolderIcon:Lcom/miui/home/launcher/FolderIcon;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 255
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isBigFolder()Z

    move-result p1

    xor-int/2addr p1, v3

    invoke-static {p1}, Lcom/miui/home/launcher/common/BlurUtilities;->isFolderBlurSupported(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderCling;->blurFolderIconBg()V

    .line 258
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mAnimFolderIcon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 259
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mAnimFolderIcon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getTitleView()Lcom/miui/home/launcher/TitleTextView;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public isDropEnabled()Z
    .locals 1

    .line 448
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v0, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOpened()Z
    .locals 0

    .line 410
    iget-boolean p0, p0, Lcom/miui/home/launcher/FolderCling;->mOpened:Z

    return p0
.end method

.method public isRecommendAppsViewGoingToShow()Z
    .locals 1

    .line 585
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    .line 586
    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->canRecommendAppsScreenShow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 587
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    .line 588
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isOpened()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRecommendScreenShow()Z
    .locals 0

    .line 629
    iget-boolean p0, p0, Lcom/miui/home/launcher/FolderCling;->mIsRecommendScreenShow:Z

    return p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 430
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->stepClose()Z

    .line 431
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isFolderOpenedBeforeResume()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->hasLaunchedAppsFromFolder()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "click_to_close"

    .line 432
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackCloseFolderAfterBackToHome(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onDestory()V
    .locals 2

    .line 920
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    if-eqz v0, :cond_1

    .line 921
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 922
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 925
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 927
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->onBinded(Z)V

    :cond_1
    return-void
.end method

.method public onDragEnd(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 560
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 563
    :cond_0
    iget-boolean p1, p0, Lcom/miui/home/launcher/FolderCling;->isAutoOpeningByDrag:Z

    if-eqz p1, :cond_2

    .line 564
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mDragController:Lcom/miui/home/launcher/DragController;

    if-eqz p1, :cond_1

    .line 565
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragController;->removeDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    :cond_1
    const/4 p1, 0x0

    .line 567
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderCling;->isAutoOpeningByDrag:Z

    .line 569
    :cond_2
    iget-boolean p1, p0, Lcom/miui/home/launcher/FolderCling;->mOpened:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/miui/home/launcher/FolderCling;->mFolderInitSize:I

    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getFolderSize()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 570
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mCloseConfirm:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 488
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->isInQuickEditingMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 489
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Workspace;->scaleCellScreen()V

    .line 491
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mCloseConfirm:Ljava/lang/Runnable;

    iget v0, p0, Lcom/miui/home/launcher/FolderCling;->mCloseTimeout:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 p1, 0x1f4

    .line 492
    iput p1, p0, Lcom/miui/home/launcher/FolderCling;->mCloseTimeout:I

    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 503
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mCloseConfirm:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/16 p1, 0x1f4

    .line 504
    iput p1, p0, Lcom/miui/home/launcher/FolderCling;->mCloseTimeout:I

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    const/16 v0, 0x1f4

    .line 497
    iput v0, p0, Lcom/miui/home/launcher/FolderCling;->mCloseTimeout:I

    .line 498
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->invalidateDragView()V

    return-void
.end method

.method public onDragStart([Lcom/miui/home/launcher/DragSource;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 1

    .line 457
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isFirstObject()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 458
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Launcher;->closeFolder(Z)Z

    :cond_0
    return v0
.end method

.method public onDropCompleted()V
    .locals 0

    return-void
.end method

.method public onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 946
    iget-boolean v0, p0, Lcom/miui/home/launcher/FolderCling;->mOpened:Z

    if-eqz v0, :cond_0

    .line 947
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 106
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const/4 v0, 0x1

    .line 107
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setChildrenDrawingOrderEnabled(Z)V

    const v0, 0x7f0a0190

    .line 108
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/Folder;

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    const v0, 0x7f0a02f8

    .line 109
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mSmallIconsRecommendScreen:Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;

    .line 110
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderCling;->setSmallIconsRecommendScreenLayoutParams()V

    .line 111
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mMaskPaint:Landroid/graphics/Paint;

    .line 112
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/FolderCling;->mMaskColor:I

    .line 113
    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 114
    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onFolderOpenAnimationFinish()V
    .locals 2

    .line 724
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->requestRecommendWhenOpenFolder(Lcom/miui/home/launcher/Launcher;)V

    .line 725
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->isRecommendAppsViewGoingToShow()Z

    move-result p0

    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackFolderOpenWithRecommend(Z)V

    return-void
.end method

.method public onGridConfigChanged(Lcom/miui/home/launcher/GridConfig;)V
    .locals 1

    .line 954
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getRecommendScreen()Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;

    move-result-object p1

    invoke-interface {p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;->onScreenOrientationChanged()V

    .line 955
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701c6

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/FolderCling;->mEditModePaddingTop:I

    .line 956
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07021a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/FolderCling;->mNormalModePaddingTop:I

    .line 957
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0701b9

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/FolderCling;->mFolderInitPaddingBottom:I

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 191
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 192
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 193
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object p1

    .line 194
    iget-object p2, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p2}, Lcom/miui/home/launcher/Launcher;->getFolderClingBlurView()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    .line 195
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceWidth(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f5ae147    # 0.85499996f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderCling;->getSoscBlurViewOffsetWidth(Lcom/miui/launcher/sosc/module/SoscEvent;)I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 196
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight(Landroid/content/Context;)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    iget p1, p1, Lcom/miui/launcher/sosc/module/SoscEvent;->minimizedSize:I

    add-int/2addr p0, p1

    iput p0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_0
    return-void
.end method

.method public onRecommendScreenVisibilityChanged(Z)V
    .locals 3

    .line 676
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderCling;->setRecommendScreenShow(Z)V

    .line 677
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getNeedUpdateFolderPaddingBottom()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 680
    :cond_0
    invoke-static {}, Lcom/miui/home/recents/AnimatorDurationScaleHelper;->isCloseAnimator()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz p1, :cond_1

    .line 681
    new-instance v2, Lcom/miui/home/launcher/FolderCling$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/FolderCling$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/FolderCling;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/miui/home/launcher/FolderCling$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/FolderCling$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/FolderCling;)V

    :goto_0
    if-eqz v0, :cond_2

    .line 683
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    .line 686
    :goto_1
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p0

    new-instance p1, Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;

    invoke-direct {p1, v1}, Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;-><init>(I)V

    invoke-virtual {p0, p1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onRequestMarketDetail(Landroid/content/Intent;)V
    .locals 1

    .line 657
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "appId"

    .line 658
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 659
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getRecommendScreen()Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;->snapToAppView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 2

    .line 961
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInHalfSoscSplitMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 962
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Folder;->loadSoscLayout(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    goto :goto_0

    .line 964
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->onScreenSizeChanged()V

    .line 966
    :goto_0
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderCling;->setSmallIconsRecommendScreenLayoutParams()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 415
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 416
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mClickConfirmor:Lcom/miui/home/launcher/common/PreciseClickConfirmor;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->onTouchEvent(Landroid/view/MotionEvent;)V

    return v0
.end method

.method public onUserDenyRecommendConnectNetWork()V
    .locals 2

    .line 915
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderInfo;->setRecommendAppsSwitchOn(Z)V

    const/4 v0, 0x1

    .line 916
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderCling;->updateRecommendScreenVisibility(Z)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Folder;->onWallpaperColorChanged()V

    .line 639
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mSmallIconsRecommendScreen:Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;

    if-eqz p0, :cond_0

    .line 640
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->onWallpaperColorChanged()V

    :cond_0
    return-void
.end method

.method open(Z)V
    .locals 2

    .line 217
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderCling;->isFirstDragOpen:Z

    .line 218
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FolderInfo;->initRecommendSwitchState(Lcom/miui/home/launcher/Launcher;)V

    const/4 p1, 0x1

    .line 219
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderCling;->mOpened:Z

    .line 220
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderCling;->updateLayout(Z)V

    .line 221
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->setNeedHideBecauseReturnEmptyData(Z)V

    .line 222
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->setRecommendScreenCallBack(Lcom/miui/home/launcher/commercial/recommend/RecommendController$RecommendScreenCallBack;)V

    .line 223
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;

    invoke-direct {v1, v0}, Lcom/miui/home/launcher/common/messages/FolderStateChangedMessage;-><init>(I)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 224
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 225
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFolderClingBlurView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 226
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {p1, v0, p0}, Lcom/miui/home/launcher/DragController;->addDropTarget(ILcom/miui/home/launcher/DropTarget;)V

    .line 227
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Folder;->onOpen()V

    .line 228
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Folder;->getFolderSize()I

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/FolderCling;->mFolderInitSize:I

    .line 229
    invoke-static {}, Lcom/miui/home/launcher/hybrid/HybridController;->clearTrackedSet()V

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/home/launcher/FolderCling;->mOpenTime:J

    return-void
.end method

.method public performClick()Z
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mClickConfirmor:Lcom/miui/home/launcher/common/PreciseClickConfirmor;

    invoke-virtual {v0}, Lcom/miui/home/launcher/common/PreciseClickConfirmor;->confirmClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    invoke-super {p0}, Landroid/widget/FrameLayout;->performClick()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public prepareAutoOpening()V
    .locals 1

    .line 481
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mDragController:Lcom/miui/home/launcher/DragController;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/DragController;->addDragListener(Lcom/miui/home/launcher/DragController$DragListener;)V

    const/4 v0, 0x1

    .line 482
    iput-boolean v0, p0, Lcom/miui/home/launcher/FolderCling;->isAutoOpeningByDrag:Z

    const/16 v0, 0x7d0

    .line 483
    iput v0, p0, Lcom/miui/home/launcher/FolderCling;->mCloseTimeout:I

    return-void
.end method

.method public removeFolderIconAnimView()V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mAnimFolderIcon:Lcom/miui/home/launcher/FolderIcon;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 368
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x0

    .line 369
    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mAnimFolderIcon:Lcom/miui/home/launcher/FolderIcon;

    :cond_0
    return-void
.end method

.method public resetSimpleAnimSetting()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Folder;->setFolderIconChildVisible(I)V

    .line 236
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mAnimFolderIcon:Lcom/miui/home/launcher/FolderIcon;

    if-eqz v0, :cond_0

    .line 237
    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mAnimFolderIcon:Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 p0, 0x4

    .line 240
    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/LauncherIconImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public scrollToLast()V
    .locals 0

    .line 672
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->scrollToLast()V

    return-void
.end method

.method public setAnimFolderIconPositionAndScale(Lcom/miui/home/launcher/FolderIcon;)V
    .locals 4

    .line 304
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderCling;->setFolmeScale(Lcom/miui/home/launcher/FolderIcon;)V

    .line 305
    iget v0, p0, Lcom/miui/home/launcher/FolderCling;->folmeDownScale:F

    .line 306
    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->isInNormalEditingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 307
    invoke-static {}, Lcom/miui/home/launcher/Workspace;->getScreenScaleRatio()F

    move-result v1

    mul-float/2addr v0, v1

    .line 309
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderIcon;->getFolderInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemInfo;->isInHotseat()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Workspace;->isInQuickEditingMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getQuickEditScreenRatio()F

    move-result v1

    mul-float/2addr v0, v1

    :cond_1
    const/4 v1, 0x2

    new-array v2, v1, [I

    new-array v1, v1, [I

    .line 315
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 316
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 318
    invoke-direct {p0, v2, v1, p1}, Lcom/miui/home/launcher/FolderCling;->setAnimFolderIconPosition([I[ILcom/miui/home/launcher/FolderIcon;)V

    .line 319
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mAnimFolderIcon:Lcom/miui/home/launcher/FolderIcon;

    const/4 v1, 0x0

    aget v1, v2, v1

    int-to-float v1, v1

    const/4 v3, 0x1

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/miui/home/launcher/FolderCling;->setAnimFolderIconScale(Landroid/view/View;FFF)V

    .line 320
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderCling;->addFolderAnimIconLayoutRule()V

    return-void
.end method

.method public setContentAlpha(F)V
    .locals 1

    .line 531
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Folder;->setContentAlpha(F)V

    .line 532
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getRecommendScreen()Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;->onFolderAlphaChange(F)V

    return-void
.end method

.method public setContentTranslationY(F)V
    .locals 1

    .line 970
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 971
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getRecommendScreenView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 972
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getEditingEntryView()Lcom/miui/home/launcher/EditingEntryThumbnailView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 974
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspacePreview()Lcom/miui/home/launcher/WorkspaceThumbnailView;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Folder;->setDragController(Lcom/miui/home/launcher/DragController;)V

    .line 186
    iput-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mDragController:Lcom/miui/home/launcher/DragController;

    return-void
.end method

.method public setDrawChildrenReverse(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderCling;->mReverseDrawingMode:Z

    return-void
.end method

.method setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 1

    .line 168
    iput-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 169
    new-instance v0, Lcom/miui/home/launcher/FolderCling$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/FolderCling$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/FolderCling;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/BaseActivity;->addOnGridConfigChangeListener(Lcom/miui/home/launcher/GridConfig$OnGridConfigChangeListener;)V

    .line 170
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Folder;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public setNeedUpdateFolderPaddingBottom(Z)V
    .locals 0

    .line 581
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderCling;->mNeedUpdateFolderPaddingBottom:Z

    return-void
.end method

.method public setRecommendScreenShow(Z)V
    .locals 0

    .line 633
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderCling;->mIsRecommendScreenShow:Z

    return-void
.end method

.method public setRecommendScreenVisibility(Z)V
    .locals 2

    .line 608
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderCling;->setNeedUpdateFolderPaddingBottom(Z)V

    .line 609
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->isRecommendAppsViewGoingToShow()Z

    move-result p1

    .line 610
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getRecommendScreen()Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;

    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->isRecommendScreenShow()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->isRecommendScreenShow()Z

    move-result v1

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    .line 612
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Folder;->isEditing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 613
    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->init()V

    const/4 p1, 0x1

    .line 614
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/commercial/recommend/SmallIconsRecommendScreen;->showOrHideRecommendScreenInner(Z)V

    .line 617
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderCling;->updateLayout(Z)V

    return-void
.end method

.method public startFolderClipRectAnimation()V
    .locals 8

    .line 696
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderCling;->cancelFolderClipRectAnimation()V

    .line 697
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    const/4 v1, 0x0

    .line 698
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/FolderCling;->getFolderPaddingBottom(Z)I

    move-result v2

    const/4 v3, 0x1

    .line 699
    invoke-virtual {p0, v3}, Lcom/miui/home/launcher/FolderCling;->getFolderPaddingBottom(Z)I

    move-result v4

    .line 700
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-direct {v5, v1, v1, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 701
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v6

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v7

    sub-int/2addr v7, v4

    invoke-direct {v2, v1, v1, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 702
    new-instance v6, Landroid/animation/RectEvaluator;

    invoke-direct {v6}, Landroid/animation/RectEvaluator;-><init>()V

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v5, v7, v1

    aput-object v2, v7, v3

    const-string v1, "clipBounds"

    invoke-static {v0, v1, v6, v7}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mFolderClipRectAnimator:Landroid/animation/ObjectAnimator;

    .line 709
    new-instance v2, Lcom/miui/home/launcher/FolderCling$3;

    invoke-direct {v2, p0, v0, v4}, Lcom/miui/home/launcher/FolderCling$3;-><init>(Lcom/miui/home/launcher/FolderCling;Lcom/miui/home/launcher/Folder;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 717
    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mFolderClipRectAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 718
    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mFolderClipRectAnimator:Landroid/animation/ObjectAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 719
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/FolderCling;->mDefaultClipBounds:Landroid/graphics/Rect;

    .line 720
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mFolderClipRectAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public stepClose()Z
    .locals 3

    const/4 v0, 0x1

    .line 385
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderCling;->updateRecommendScreenVisibility(Z)V

    .line 386
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 387
    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Folder;->isEditing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Folder;->isEditAnimatorShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->closeFolder()Z

    return v0

    .line 388
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {p0, v2, v0, v0}, Lcom/miui/home/launcher/Folder;->showEditPanel(ZZZ)V

    return v0

    :cond_2
    return v2
.end method

.method public updateRecommendScreenVisibility(Z)V
    .locals 1

    .line 592
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderCling;->setNeedUpdateFolderPaddingBottom(Z)V

    .line 593
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->isRecommendAppsViewGoingToShow()Z

    move-result p1

    .line 594
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->isRecommendScreenShow()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 595
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->getRecommendScreen()Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/miui/home/launcher/commercial/recommend/RecommendScreen;->showOrHideRecommendScreen(Z)V

    .line 598
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->isRecommendScreenShow()Z

    move-result p1

    if-nez p1, :cond_1

    .line 599
    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 600
    iget-object p0, p0, Lcom/miui/home/launcher/FolderCling;->mFolder:Lcom/miui/home/launcher/Folder;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getInfo()Lcom/miui/home/launcher/FolderInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object p0

    .line 602
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->clearIconResInContents()V

    :cond_1
    return-void
.end method
