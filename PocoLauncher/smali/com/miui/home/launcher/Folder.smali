.class public Lcom/miui/home/launcher/Folder;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "Folder.java"

# interfaces
.implements Lcom/miui/home/launcher/DragSource;
.implements Lcom/miui/home/launcher/NewInstallIconContainer;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/launcher/sosc/interfaces/SoscingView;
.implements Lcom/miui/home/launcher/folder/FolderAnimListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/Folder$FolderCallback;
    }
.end annotation


# static fields
.field public static DEFAULT_FOLDER_CLOSE_DURATION:I = 0xe6

.field public static DEFAULT_FOLDER_EDITING_DURATION:I = 0xc8

.field public static DEFAULT_FOLDER_NAME:Ljava/lang/String; = null

.field public static DEFAULT_FOLDER_OPEN_DURATION:I = 0xe6


# instance fields
.field private final MSG_LONG_CLICK:I

.field private final TAG:Ljava/lang/String;

.field protected mBackgroundView:Landroid/view/ViewGroup;

.field private mBorderLineShow:Z

.field private mClosing:Z

.field protected mContent:Lcom/miui/home/launcher/FolderGridView;

.field private mContentBackground:Landroid/graphics/drawable/Drawable;

.field private mContentRect:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mDefaultUnnamedFolderName:Ljava/lang/String;

.field protected mDragController:Lcom/miui/home/launcher/DragController;

.field protected mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

.field private mEditAnimator:Landroid/animation/ValueAnimator;

.field private mEditAnimatorShowing:Z

.field private mEditBackgroundAnimator:Landroid/animation/ValueAnimator;

.field private mEnableChildViewChangeInFolderAnimation:Z

.field private mEnableShowFolderContentBg:Z

.field private mFolderGrid:Landroid/widget/FrameLayout;

.field private mFolderNameTextClear:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mHeader:Landroid/view/View;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInfo:Lcom/miui/home/launcher/FolderInfo;

.field private mIsEditing:Z

.field private mIsGridViewScrolled:Z

.field private mIsGridViewScrolling:Z

.field private mIsOutSideClick:Z

.field private mItemIconToPreviewIconScale:F

.field private mLastOpenedScale:F

.field protected mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mLongClickDisabled:Z

.field private mNewInstallAnimHelper:Lcom/miui/home/launcher/NewInstallAnimHelper;

.field private mNewInstallIconScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mOnFinishClose:Ljava/lang/Runnable;

.field private mOpenedScale:F

.field private mPreviewPosRect:Landroid/graphics/Rect;

.field private mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

.field private mRenameEdit:Landroid/widget/EditText;

.field protected mTitleText:Landroid/widget/TextView;

.field private mTmpPos:[F

.field private mVerticalScrollOffset:I

.field private mVisionCenterX:F

.field private mVisionCenterY:F


# direct methods
.method public static synthetic $r8$lambda$EZswGy7m-HljuWu8whSR4v0cRfk(Lcom/miui/home/launcher/Folder;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->lambda$onClose$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$U3lLzj3_MRAa2_oTYKTV368AfZI(Lcom/miui/home/launcher/Folder;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->lambda$exitEditState$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$dA5nSlSCkHXzjP48PXfV4Z27oMc(Lcom/miui/home/launcher/Folder;Landroid/graphics/Rect;ILandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/Folder;->lambda$dealWithHeadEvent$1(Landroid/graphics/Rect;ILandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$pQZKX5CF3NmWRZlKNI1J7BlM7_E(Lcom/miui/home/launcher/Folder;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Folder;->lambda$new$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 138
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10014d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/home/launcher/Folder;->DEFAULT_FOLDER_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 339
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "Folder"

    .line 112
    iput-object p2, p0, Lcom/miui/home/launcher/Folder;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    .line 119
    iput-object p2, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    .line 122
    iput-object p2, p0, Lcom/miui/home/launcher/Folder;->mOnFinishClose:Ljava/lang/Runnable;

    const/4 p2, 0x0

    .line 124
    iput-boolean p2, p0, Lcom/miui/home/launcher/Folder;->mEditAnimatorShowing:Z

    .line 125
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditAnimator:Landroid/animation/ValueAnimator;

    .line 126
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditBackgroundAnimator:Landroid/animation/ValueAnimator;

    .line 162
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mPreviewPosRect:Landroid/graphics/Rect;

    .line 163
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mContentRect:Landroid/graphics/Rect;

    const/high16 v0, -0x40800000    # -1.0f

    .line 169
    iput v0, p0, Lcom/miui/home/launcher/Folder;->mItemIconToPreviewIconScale:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 170
    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mTmpPos:[F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 171
    iput v0, p0, Lcom/miui/home/launcher/Folder;->mOpenedScale:F

    .line 172
    iput v0, p0, Lcom/miui/home/launcher/Folder;->mLastOpenedScale:F

    .line 173
    iput-boolean p2, p0, Lcom/miui/home/launcher/Folder;->mEnableShowFolderContentBg:Z

    .line 174
    iput-boolean p2, p0, Lcom/miui/home/launcher/Folder;->mIsGridViewScrolled:Z

    .line 176
    iput-boolean p2, p0, Lcom/miui/home/launcher/Folder;->mIsGridViewScrolling:Z

    const/4 v0, 0x1

    .line 179
    iput-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mEnableChildViewChangeInFolderAnimation:Z

    .line 181
    iput-boolean p2, p0, Lcom/miui/home/launcher/Folder;->mBorderLineShow:Z

    .line 183
    iput p2, p0, Lcom/miui/home/launcher/Folder;->mVerticalScrollOffset:I

    .line 185
    iput-boolean p2, p0, Lcom/miui/home/launcher/Folder;->mLongClickDisabled:Z

    .line 208
    iput p2, p0, Lcom/miui/home/launcher/Folder;->MSG_LONG_CLICK:I

    .line 340
    iput-object p1, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    .line 341
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance v0, Lcom/miui/home/launcher/Folder$1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Folder$1;-><init>(Lcom/miui/home/launcher/Folder;)V

    invoke-direct {p1, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/miui/home/launcher/Folder;->mHandler:Landroid/os/Handler;

    .line 354
    new-instance p1, Lcom/miui/home/launcher/Folder$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/Folder$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/Folder;)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/Folder;)Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcom/miui/home/launcher/Folder;->mIsEditing:Z

    return p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/Folder;)Landroid/widget/EditText;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/miui/home/launcher/Folder;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->clearRenameEditFocusState()V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/home/launcher/Folder;)Z
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->isTitleClickDisabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/miui/home/launcher/Folder;)Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcom/miui/home/launcher/Folder;->mIsOutSideClick:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/miui/home/launcher/Folder;)Landroid/widget/ImageView;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mFolderNameTextClear:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/miui/home/launcher/Folder;Landroid/view/View;Z)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/Folder;->setFadeAnimation(Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/home/launcher/Folder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->getRenameTextSelected()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/miui/home/launcher/Folder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->getRenameTextBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1701(Lcom/miui/home/launcher/Folder;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 108
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1801(Lcom/miui/home/launcher/Folder;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 108
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$202(Lcom/miui/home/launcher/Folder;Z)Z
    .locals 0

    .line 108
    iput-boolean p1, p0, Lcom/miui/home/launcher/Folder;->mEditAnimatorShowing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/Folder;Z)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Folder;->showOrHideSoftInput(Z)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/Folder;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContentBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/Folder;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mNewInstallIconScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/Folder;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->setFolderAnimToEnd()V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/Folder;)Landroid/widget/FrameLayout;
    .locals 0

    .line 108
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mFolderGrid:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$800(Lcom/miui/home/launcher/Folder;)V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->sendFolderScrollEventIfNeeded()V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/home/launcher/Folder;)Z
    .locals 0

    .line 108
    iget-boolean p0, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    return p0
.end method

.method private checkChildAnimEnable()Z
    .locals 1

    .line 1382
    sget-boolean p0, Lcom/miui/home/launcher/common/Utilities;->ATLEAST_NOUGAT_MR1:Z

    if-nez p0, :cond_1

    .line 1383
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p0

    const-string v0, "accessibility"

    .line 1384
    invoke-virtual {p0, v0}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

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

.method private clearRenameEditFocusState()V
    .locals 1

    .line 1356
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1357
    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 1358
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_0
    return-void
.end method

.method private dealWithHeadEvent()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 527
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 528
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701d2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 529
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    new-instance v3, Lcom/miui/home/launcher/Folder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/miui/home/launcher/Folder$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/Folder;Landroid/graphics/Rect;I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private getFolderHeaderMarginTop()I
    .locals 0

    .line 1326
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mHeader:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1327
    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return p0
.end method

.method private getGridViewHeight()I
    .locals 4

    .line 831
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderGridView;->calculateHeight()I

    move-result v0

    .line 832
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderCling;->isRecommendScreenShow()Z

    move-result v1

    .line 833
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/miui/home/launcher/FolderCling;->getFolderPaddingBottom(Z)I

    move-result v1

    sub-int/2addr v2, v1

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v2, v1

    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->getFolderHeaderMarginTop()I

    move-result v1

    sub-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p0

    sub-int/2addr v2, p0

    .line 834
    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method private getLastPosition(II)I
    .locals 3

    .line 822
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, p1

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderGridView;->calculateHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 823
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v1

    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/FolderCling;->getFolderPaddingBottom(Z)I

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    sub-int/2addr p1, v0

    .line 825
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_0
    return p1
.end method

.method private getPlaceHolderIconUseAnimStatus()Z
    .locals 1

    .line 924
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    .line 925
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderAnimController()Lcom/miui/home/launcher/folder/FolderAnimController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 926
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFolderAnimController()Lcom/miui/home/launcher/folder/FolderAnimController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderAnimController;->isUseSimpleAnim()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getRenameTextBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1500
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f08020f

    goto :goto_0

    :cond_0
    const v0, 0x7f08020e

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getRenameTextSelected()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1496
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080211

    goto :goto_0

    :cond_0
    const v0, 0x7f080210

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private isFoldDeviceAndNoWordModel()Z
    .locals 0

    .line 1388
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isNoWordModel()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isTitleClickDisabled()Z
    .locals 1

    .line 1026
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->isSoscSplit()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1027
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

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

.method private synthetic lambda$dealWithHeadEvent$1(Landroid/graphics/Rect;ILandroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 530
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_4

    iget-object p3, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p3}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 533
    :cond_0
    iget-object p3, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p3

    if-nez p3, :cond_1

    return v0

    .line 537
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 538
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 539
    invoke-static {p0, p4}, Lcom/miui/home/launcher/Folder;->access$1701(Lcom/miui/home/launcher/Folder;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 541
    :cond_2
    invoke-virtual {p3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p3

    .line 542
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getHitRect(Landroid/graphics/Rect;)V

    .line 543
    iget v0, p1, Landroid/graphics/Rect;->left:I

    add-int v1, v0, p2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, p2

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-int/2addr v0, p2

    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v2, v0, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 544
    invoke-virtual {p4}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p4}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 545
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->performClick()Z

    const/4 p0, 0x1

    return p0

    .line 548
    :cond_3
    invoke-static {p0, p4}, Lcom/miui/home/launcher/Folder;->access$1801(Lcom/miui/home/launcher/Folder;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :cond_4
    :goto_0
    return v0
.end method

.method private synthetic lambda$exitEditState$3()V
    .locals 1

    const/4 v0, 0x0

    .line 899
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Folder;->showOrHideSoftInput(Z)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 355
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    .line 356
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v0

    sub-int/2addr v0, p1

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 358
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mHeader:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    aget v1, v1, v2

    .line 359
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    if-lez p1, :cond_0

    if-le v1, v0, :cond_0

    sub-int/2addr v0, v1

    .line 362
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    add-int/2addr p1, v0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->updateFolderClingPaddingTop()V

    :goto_0
    return-object p2
.end method

.method private synthetic lambda$onClose$2()V
    .locals 1

    const/4 v0, 0x0

    .line 869
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Folder;->showOrHideSoftInput(Z)V

    return-void
.end method

.method private onCloseAnimationFinished()V
    .locals 3

    .line 903
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 904
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderInfo;->onBinded(Z)V

    .line 905
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->getPlaceHolderIconUseAnimStatus()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    invoke-interface {v0, v2}, Lcom/miui/home/launcher/Folder$FolderCallback;->showPlaceHolderIconAnim(Z)V

    .line 908
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    invoke-interface {v0, v2}, Lcom/miui/home/launcher/Folder$FolderCallback;->showPreview(Z)V

    .line 909
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Folder;->setFolderIconChildVisible(I)V

    .line 911
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->setOpeningAnimationInterrupted(Z)V

    .line 912
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mOnFinishClose:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 913
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 914
    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mOnFinishClose:Ljava/lang/Runnable;

    .line 916
    :cond_2
    iput-boolean v1, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    .line 917
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mNewInstallAnimHelper:Lcom/miui/home/launcher/NewInstallAnimHelper;

    invoke-virtual {v0}, Lcom/miui/home/launcher/NewInstallAnimHelper;->onParentInvisible()V

    .line 918
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->removeFolderIconAnimView()V

    .line 919
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->updateEditViewBlurMode(Z)V

    .line 920
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->updateWorkProfileTipShowState()V

    return-void
.end method

.method private onOpenAnimationFinished()V
    .locals 2

    .line 930
    iget v0, p0, Lcom/miui/home/launcher/Folder;->mOpenedScale:F

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 931
    iget v0, p0, Lcom/miui/home/launcher/Folder;->mOpenedScale:F

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 932
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->setupContentAlpha(F)V

    .line 933
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->onFolderOpenAnimationFinish()V

    .line 934
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 935
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->focusTalkBackToView(Landroid/view/View;)V

    .line 937
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mNewInstallAnimHelper:Lcom/miui/home/launcher/NewInstallAnimHelper;

    invoke-virtual {p0}, Lcom/miui/home/launcher/NewInstallAnimHelper;->onParentVisible()V

    return-void
.end method

.method private reCalcContentPosition()V
    .locals 6

    .line 877
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTmpPos:[F

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v3, 0x0

    aput v2, v0, v3

    .line 878
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-static {v2, p0, v0, v3, v3}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[FZZ)F

    .line 879
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContentRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mTmpPos:[F

    aget v4, v2, v3

    float-to-int v4, v4

    aget v5, v2, v1

    float-to-int v5, v5

    aget v2, v2, v3

    float-to-int v2, v2

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mTmpPos:[F

    aget v1, v3, v1

    float-to-int v1, v1

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    .line 880
    invoke-virtual {v3}, Landroid/widget/GridView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v1, v3

    .line 879
    invoke-virtual {v0, v4, v5, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 881
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldLargeScreenWithoutSplit(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 882
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContentRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 883
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContentRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 885
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/Folder;->mVisionCenterX:F

    .line 886
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/home/launcher/DeviceConfig;->isInFoldLargeScreenWithoutSplit(Landroid/content/Context;)Z

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eqz v0, :cond_1

    .line 887
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getFolderCellHeight()I

    move-result v0

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getNumColumns()I

    move-result v2

    mul-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContentRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/Folder;->mVisionCenterY:F

    goto :goto_0

    .line 889
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContentRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContentRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/miui/home/launcher/Folder;->mVisionCenterY:F

    .line 891
    :goto_0
    iget v0, p0, Lcom/miui/home/launcher/Folder;->mVisionCenterX:F

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setPivotX(F)V

    .line 892
    iget v0, p0, Lcom/miui/home/launcher/Folder;->mVisionCenterY:F

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setPivotY(F)V

    return-void
.end method

.method private resetBackgroundViewHeight()V
    .locals 2

    .line 608
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->getGridViewHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 609
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 610
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->updateBackgroundViewHeight()V

    :cond_1
    return-void
.end method

.method private resetHeader()V
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mHeader:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 260
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    .line 261
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 262
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mHeader:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 263
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 264
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->getTitle()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private resetItemWhenDropBackToFolder(Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1

    .line 696
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object p0

    invoke-virtual {p2, v0, p0}, Lcom/miui/home/launcher/FolderInfo;->add(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/allapps/LauncherMode;)V

    .line 697
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 700
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->resetCheckBox()V

    .line 701
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->showItemTitle()V

    .line 702
    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 703
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    return-void
.end method

.method private resetItemWhenFolderDisappeared(Lcom/miui/home/launcher/DragObject;)V
    .locals 2

    .line 707
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 708
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DragView;->getContent()Landroid/view/View;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 710
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/Launcher;->addItem(Lcom/miui/home/launcher/ItemInfo;Z)Landroid/view/View;

    .line 712
    :goto_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    return-void
.end method

.method private resetView(Landroid/view/View;Z)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    .line 276
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationX(F)V

    .line 277
    invoke-virtual {p1, p0}, Landroid/view/View;->setTranslationY(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 278
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 279
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    .line 280
    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    .line 281
    instance-of p0, p1, Lcom/miui/home/launcher/IShortcutIcon;

    if-eqz p0, :cond_1

    .line 282
    check-cast p1, Lcom/miui/home/launcher/IShortcutIcon;

    invoke-interface {p1}, Lcom/miui/home/launcher/IShortcutIcon;->resetInRunningFolderSimpleCloseAnimStatus()V

    :cond_1
    return-void
.end method

.method private sendFolderScrollEventIfNeeded()V
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderGridView;->computeVerticalScrollOffset()I

    move-result v0

    .line 554
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isCreatedSuccessfully()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/miui/home/launcher/Folder;->mVerticalScrollOffset:I

    if-eq v0, v1, :cond_0

    .line 556
    iput v0, p0, Lcom/miui/home/launcher/Folder;->mVerticalScrollOffset:I

    .line 557
    sget-object v0, Lcom/miui/home/recents/TouchInteractionService;->MAIN_THREAD_EXECUTOR:Lcom/miui/home/launcher/MainThreadExecutor;

    invoke-virtual {v0}, Lcom/miui/home/library/utils/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/Folder$8;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Folder$8;-><init>(Lcom/miui/home/launcher/Folder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private setEnableContent(Z)V
    .locals 1

    .line 1160
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 1161
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0, p1}, Landroid/widget/GridView;->setClickable(Z)V

    .line 1162
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setLongClickable(Z)V

    return-void
.end method

.method private setFadeAnimation(Landroid/view/View;Z)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x2

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    new-array p2, v2, [Landroid/view/View;

    aput-object p1, p2, v1

    .line 1516
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    aput-object v0, p2, v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p2, v2

    const-wide/16 v0, 0x12c

    invoke-static {v0, v1}, Lmiuix/animation/FolmeEase;->sinOut(J)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v0

    aput-object v0, p2, p0

    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    :cond_1
    new-array p2, v2, [Landroid/view/View;

    aput-object p1, p2, v1

    .line 1518
    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    sget-object v0, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    aput-object v0, p2, v1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p2, v2

    const-wide/16 v0, 0x96

    invoke-static {v0, v1}, Lmiuix/animation/FolmeEase;->sinOut(J)Lmiuix/animation/utils/EaseManager$EaseStyle;

    move-result-object v0

    aput-object v0, p2, p0

    invoke-interface {p1, p2}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    :goto_0
    return-void
.end method

.method private setFolderAnimToEnd()V
    .locals 0

    .line 1504
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-nez p0, :cond_0

    return-void

    .line 1507
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFolderAnimController()Lcom/miui/home/launcher/folder/FolderAnimController;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1509
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderAnimController;->skipToEnd()V

    :cond_1
    return-void
.end method

.method private setFolderMessageVisible(I)V
    .locals 1

    .line 951
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getMessageText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 952
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ItemIcon;->setMessageVisible(I)V

    :cond_0
    return-void
.end method

.method private setTitleTextAccessibilityDelegate(Landroid/widget/TextView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 508
    :cond_0
    new-instance v0, Lcom/miui/home/launcher/Folder$7;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/Folder$7;-><init>(Lcom/miui/home/launcher/Folder;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method private setViewLayoutParamsOfSoscSplit()V
    .locals 6

    .line 226
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 227
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 228
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0701da

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 227
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 229
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 231
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mHeader:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 232
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 233
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 234
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0701dc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 231
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 235
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0701d7

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private setViewTextSize(Landroid/widget/TextView;)V
    .locals 1

    .line 1420
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0701d6

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    int-to-float p0, p0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private showOrHideSoftInput(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 585
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 586
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-static {p1, p0}, Lcom/miui/home/launcher/util/MainThreadHelper;->showKeyboardAsync(Landroid/content/Context;Landroid/view/View;)V

    goto :goto_0

    .line 588
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/home/launcher/util/MainThreadHelper;->hideKeyboardAsync(Landroid/content/Context;Landroid/os/IBinder;)V

    :goto_0
    return-void
.end method

.method private tellDesktopIconIsOnAnimation(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 1299
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1300
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v1, v1, Lcom/miui/home/launcher/DesktopIcon;

    if-eqz v1, :cond_0

    .line 1301
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/DesktopIcon;

    invoke-interface {v1, p1}, Lcom/miui/home/launcher/DesktopIcon;->onAnimation(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateWorkProfileTipShowState()V
    .locals 2

    .line 640
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isWorkFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    const-string v1, "had_show_work_profile_folder"

    invoke-static {v0, p0, v1}, Lcom/miui/home/launcher/util/WorkProfileHelper;->showOrHideWorkProfileTipsOnDesktop(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcom/miui/home/launcher/Folder;->mNewInstallIconScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public afterDragStart()V
    .locals 0

    .line 1311
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->afterDragStart()V

    return-void
.end method

.method public beforeDragStart(I)V
    .locals 0

    .line 1307
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->beforeDragStart(I)V

    return-void
.end method

.method bind(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 4

    .line 983
    iput-object p1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    const/4 v0, 0x1

    .line 984
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FolderInfo;->onBinded(Z)V

    .line 986
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    const v2, 0x7f1100eb

    const v3, 0x7f1100ec

    invoke-static {v0, v1, v2, v3}, Lcom/miui/home/launcher/common/Utilities;->adaptTitleStyleToWallpaper(Landroid/content/Context;Landroid/widget/TextView;II)V

    .line 987
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 988
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    const v2, 0x7f1100ed

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->adaptTitleStyleToNoWord(Landroid/content/Context;Landroid/view/View;I)V

    .line 989
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/Utilities;->adaptTitleStyleToNoWord(Landroid/content/Context;Landroid/view/View;I)V

    .line 990
    invoke-static {}, Lcom/miui/home/launcher/LauncherSoscController;->getInstance()Lcom/miui/home/launcher/LauncherSoscController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/LauncherSoscController;->getSoscEvent()Lcom/miui/launcher/sosc/module/SoscEvent;

    move-result-object v0

    .line 991
    invoke-virtual {v0}, Lcom/miui/launcher/sosc/module/SoscEvent;->isHalfSoscSplit()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 992
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->setViewLayoutParamsOfSoscSplit()V

    goto :goto_0

    .line 994
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->resetViewsLayoutParams()V

    .line 998
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->resetFolderGridViewLayoutParams()V

    .line 999
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->updateAppearance()V

    if-nez p1, :cond_2

    const/4 p1, 0x0

    .line 1001
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Folder;->setContentAdapter(Landroid/widget/BaseAdapter;)V

    goto :goto_1

    .line 1003
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Folder;->setContentAdapter(Landroid/widget/BaseAdapter;)V

    :goto_1
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1032
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1035
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 1036
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatchTouchEvent: action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Folder"

    invoke-static {v3, v2}, Lcom/miui/home/launcher/MiuiHomeLog;->debug(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v4, 0x5

    if-eq v0, v4, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "dispatchTouchEvent: removeMessages MSG_LONG_CLICK "

    .line 1041
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1043
    iput-boolean v2, p0, Lcom/miui/home/launcher/Folder;->mLongClickDisabled:Z

    goto :goto_0

    .line 1046
    :cond_2
    iput-boolean v1, p0, Lcom/miui/home/launcher/Folder;->mLongClickDisabled:Z

    .line 1051
    :goto_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public enableInteractive(Z)V
    .locals 1

    .line 1255
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Folder;->setEnableContent(Z)V

    .line 1256
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1257
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    return-void
.end method

.method public exitEditState()V
    .locals 2

    .line 896
    iget-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mIsEditing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 898
    invoke-virtual {p0, v0, v0}, Lcom/miui/home/launcher/Folder;->showEditPanel(ZZ)V

    .line 899
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/home/launcher/Folder$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Folder$$ExternalSyntheticLambda3;-><init>(Lcom/miui/home/launcher/Folder;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic getAllVisibleMIMarketNewInstallShortcuts()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/NewInstallIconContainer;->getAllVisibleMIMarketNewInstallShortcuts()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getContainerId()J
    .locals 2

    .line 724
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-wide v0, p0, Lcom/miui/home/launcher/ItemInfo;->id:J

    return-wide v0
.end method

.method public getContainerView()Landroid/view/ViewGroup;
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    return-object p0
.end method

.method public getContent()Lcom/miui/home/launcher/FolderGridView;
    .locals 0

    .line 664
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    return-object p0
.end method

.method public getDragedItem()Lcom/miui/home/launcher/ShortcutInfo;
    .locals 0

    .line 1230
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    return-object p0
.end method

.method public getEditText(Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    .line 957
    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 959
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mDefaultUnnamedFolderName:Ljava/lang/String;

    return-object p0

    .line 961
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public getFolderSize()I
    .locals 0

    .line 1266
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 1269
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result p0

    return p0
.end method

.method public getHeader()Landroid/view/View;
    .locals 0

    .line 668
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mHeader:Landroid/view/View;

    return-object p0
.end method

.method public getInfo()Lcom/miui/home/launcher/FolderInfo;
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    return-object p0
.end method

.method public getRecommendAppsSwitch()Lcom/miui/home/launcher/NonOverlapLinearLayout;
    .locals 0

    .line 672
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    return-object p0
.end method

.method public getTitle()Landroid/view/View;
    .locals 0

    .line 1331
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    return-object p0
.end method

.method handleItemLongClick(Landroid/view/View;)Z
    .locals 5

    .line 1182
    iget-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mLongClickDisabled:Z

    const-string v1, "Folder"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const-string p0, "handleItemLongClick: LongClick disabled"

    .line 1183
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1186
    :cond_0
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager;->isClosingAnimRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "handleItemLongClick: sendmessage MSG_LONG_CLICK"

    .line 1187
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 1189
    iput v2, v0, Landroid/os/Message;->what:I

    .line 1190
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1191
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x64

    invoke-virtual {p0, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v2

    .line 1194
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1196
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 1201
    :cond_2
    iget-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-boolean v0, v0, Lcom/miui/home/launcher/FolderInfo;->opened:Z

    if-nez v0, :cond_3

    goto :goto_0

    .line 1205
    :cond_3
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isDragDisable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    invoke-static {p1}, Lcom/miui/home/launcher/shortcuts/ShortcutMenuManager;->canShowShortcutMenu(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1206
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/common/Utilities;->showDragDisableToast(Landroid/content/Context;)V

    return v1

    .line 1210
    :cond_4
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->onLongClick(Landroid/view/View;)Z

    return v1

    :cond_5
    :goto_0
    return v2
.end method

.method public hasNewInstallApps()Z
    .locals 0

    .line 194
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->hasNewInstalledApp()Z

    move-result p0

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 1

    .line 1149
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1150
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 1152
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object p0

    return-object p0
.end method

.method public isBorderLineShow()Z
    .locals 0

    .line 1335
    iget-boolean p0, p0, Lcom/miui/home/launcher/Folder;->mBorderLineShow:Z

    return p0
.end method

.method public isEditAnimatorShowing()Z
    .locals 0

    .line 1291
    iget-boolean p0, p0, Lcom/miui/home/launcher/Folder;->mEditAnimatorShowing:Z

    return p0
.end method

.method public isEditing()Z
    .locals 0

    .line 1156
    iget-boolean p0, p0, Lcom/miui/home/launcher/Folder;->mIsEditing:Z

    return p0
.end method

.method public isGridViewScrolled()Z
    .locals 0

    .line 580
    iget-boolean p0, p0, Lcom/miui/home/launcher/Folder;->mIsGridViewScrolled:Z

    return p0
.end method

.method public isGridViewScrolling()Z
    .locals 0

    .line 572
    iget-boolean p0, p0, Lcom/miui/home/launcher/Folder;->mIsGridViewScrolling:Z

    return p0
.end method

.method public isRenameEditVisible()Z
    .locals 0

    .line 1451
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/EditText;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public loadSoscLayout(Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 216
    invoke-virtual {p1}, Lcom/miui/launcher/sosc/module/SoscEvent;->isHalfSoscSplit()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 217
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->setViewLayoutParamsOfSoscSplit()V

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->resetViewsLayoutParams()V

    .line 221
    :goto_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->resetFolderGridViewLayoutParams()V

    const/4 p1, 0x0

    .line 222
    invoke-virtual {p0, p1, p1}, Lcom/miui/home/launcher/Folder;->showEditPanel(ZZ)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1009
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a0199

    if-eq p1, v0, :cond_2

    const v0, 0x7f0a03ba

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1011
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->isTitleClickDisabled()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 1015
    :cond_1
    sget-object p1, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {p1}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object p1

    new-instance v0, Lcom/miui/home/recents/event/FolderEditEvent;

    invoke-direct {v0}, Lcom/miui/home/recents/event/FolderEditEvent;-><init>()V

    invoke-virtual {p1, v0}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    const/4 p1, 0x1

    .line 1017
    invoke-virtual {p0, p1, p1}, Lcom/miui/home/launcher/Folder;->showEditPanel(ZZ)V

    goto :goto_0

    .line 1020
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method onClose(ZLjava/lang/Runnable;)V
    .locals 5

    .line 838
    iget-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 841
    iput-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    .line 842
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/miui/home/launcher/FolderInfo;->opened:Z

    .line 843
    invoke-virtual {p0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 844
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->checkChildAnimEnable()Z

    move-result v1

    iput-boolean v1, p0, Lcom/miui/home/launcher/Folder;->mEnableChildViewChangeInFolderAnimation:Z

    .line 845
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 846
    invoke-virtual {p0, v2, v2}, Lcom/miui/home/launcher/Folder;->showEditPanel(ZZ)V

    .line 847
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080212

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVerticalScrollbarThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 848
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1, v2, v0}, Lcom/miui/home/launcher/FolderGridView;->awakenScrollBar(IZ)V

    .line 849
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->removeDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 852
    iput-object p2, p0, Lcom/miui/home/launcher/Folder;->mOnFinishClose:Ljava/lang/Runnable;

    .line 853
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object p2, p2, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    if-eqz p2, :cond_4

    .line 854
    invoke-interface {p2}, Lcom/miui/home/launcher/Folder$FolderCallback;->onClose()V

    if-nez p1, :cond_1

    .line 860
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->onCloseAnimationFinished()V

    .line 861
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/FolderCling;->setContentTranslationY(F)V

    goto :goto_0

    .line 863
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object p1, p1, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mPreviewPosRect:Landroid/graphics/Rect;

    invoke-interface {p1, p2}, Lcom/miui/home/launcher/Folder$FolderCallback;->getPreviewPosition(Landroid/graphics/Rect;)F

    .line 865
    :goto_0
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 866
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 869
    :cond_2
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    new-instance p2, Lcom/miui/home/launcher/Folder$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/miui/home/launcher/Folder$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/Folder;)V

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->post(Ljava/lang/Runnable;)Z

    .line 870
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->setFolderTitleBackground()V

    .line 871
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 872
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 p1, 0x7

    new-instance p2, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;

    const-string v0, "drag_over_threshold"

    invoke-direct {p2, v0}, Lcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/Launcher;->cancelShortcutMenu(ILcom/miui/home/launcher/shortcuts/CancelShortcutMenuReason;)V

    :cond_3
    return-void

    .line 856
    :cond_4
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->onCloseAnimationFinished()V

    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    const/4 p2, 0x0

    .line 716
    iput-object p2, p0, Lcom/miui/home/launcher/Folder;->mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz p1, :cond_0

    .line 718
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->refreshPreviewIcons()V

    :cond_0
    return-void
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 4

    .line 677
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/miui/home/launcher/ItemInfo;->container:J

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/Launcher;->getFolderInfoById(J)Lcom/miui/home/launcher/FolderInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 678
    iget-object v1, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    check-cast v1, Lcom/miui/home/launcher/FolderIcon;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderIcon;->isPreRemoved()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 683
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->isFolderAnimating()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 684
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->setFolderAnimToEnd()V

    .line 685
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Launcher;->setFolderAnimating(Z)V

    .line 686
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object p0

    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/FolderIcon;->dropIconIntoFolderIcon(Lcom/miui/home/launcher/DragObject;Z)V

    return-void

    .line 690
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getLauncherMode()Lcom/miui/home/launcher/allapps/LauncherMode;

    move-result-object v1

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v1, v2, v3}, Lcom/miui/home/launcher/allapps/LauncherMode;->canAddToFolder(Ljava/util/Collection;Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 691
    invoke-direct {p0, p1, v0}, Lcom/miui/home/launcher/Folder;->resetItemWhenDropBackToFolder(Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/FolderInfo;)V

    :cond_2
    return-void

    .line 679
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Folder;->resetItemWhenFolderDisappeared(Lcom/miui/home/launcher/DragObject;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 391
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const/4 v0, 0x1

    .line 392
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawingOrderEnabled(Z)V

    const v0, 0x7f0a0194

    .line 393
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/FolderGridView;

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    const v0, 0x7f0a00ab

    .line 394
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mBackgroundView:Landroid/view/ViewGroup;

    .line 395
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 396
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 397
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 398
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mContentBackground:Landroid/graphics/drawable/Drawable;

    const v0, 0x7f0a03ba

    .line 399
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    .line 400
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0195

    .line 401
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mHeader:Landroid/view/View;

    const v0, 0x7f0a0301

    .line 402
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    const v0, 0x7f0a0199

    .line 403
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mFolderNameTextClear:Landroid/widget/ImageView;

    .line 404
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 406
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->setRenameEditTextChangedListener()V

    .line 407
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mImm:Landroid/view/inputmethod/InputMethodManager;

    const v0, 0x7f0a02f5

    .line 408
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/NonOverlapLinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    const/4 v0, 0x0

    .line 409
    iput-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mIsEditing:Z

    const v0, 0x7f0a0193

    .line 411
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mFolderGrid:Landroid/widget/FrameLayout;

    .line 413
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100531

    .line 414
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mDefaultUnnamedFolderName:Ljava/lang/String;

    .line 415
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Folder;->setTitleTextAccessibilityDelegate(Landroid/widget/TextView;)V

    .line 417
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 419
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditAnimator:Landroid/animation/ValueAnimator;

    sget v1, Lcom/miui/home/launcher/Folder;->DEFAULT_FOLDER_EDITING_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 420
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 421
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/Folder$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Folder$2;-><init>(Lcom/miui/home/launcher/Folder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 435
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/Folder$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Folder$3;-><init>(Lcom/miui/home/launcher/Folder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 454
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditBackgroundAnimator:Landroid/animation/ValueAnimator;

    sget v1, Lcom/miui/home/launcher/Folder;->DEFAULT_FOLDER_EDITING_DURATION:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 455
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditBackgroundAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/miui/home/launcher/Folder$4;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Folder$4;-><init>(Lcom/miui/home/launcher/Folder;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 461
    new-instance v0, Lcom/miui/home/launcher/NewInstallAnimHelper;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/NewInstallAnimHelper;-><init>(Lcom/miui/home/launcher/NewInstallIconContainer;)V

    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mNewInstallAnimHelper:Lcom/miui/home/launcher/NewInstallAnimHelper;

    .line 462
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    new-instance v1, Lcom/miui/home/launcher/Folder$5;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Folder$5;-><init>(Lcom/miui/home/launcher/Folder;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 489
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/launcher/Folder$6;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Folder$6;-><init>(Lcom/miui/home/launcher/Folder;)V

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/LauncherStateManager;->addStateListener(Lcom/miui/home/launcher/LauncherStateManager$StateListener;)V

    .line 503
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->dealWithHeadEvent()V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onFolderAnimationEnd()V
    .locals 3

    const-string v0, "Folder"

    const-string v1, "onFolderAnimationEnd"

    .line 616
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->setFolderAnimating(Z)V

    .line 618
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->resetContentPivot()V

    .line 619
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/Launcher;->setDrawEdgeLine(Z)V

    .line 620
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mFolderGrid:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 621
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 622
    iget-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    if-eqz v0, :cond_0

    .line 623
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->onCloseAnimationFinished()V

    goto :goto_0

    .line 625
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->onOpenAnimationFinished()V

    .line 627
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->isGridviewChildCountChanged()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 628
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v2}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->notifyDataSetChanged()V

    .line 629
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/FolderInfo;->setIsGridviewChildCountChanged(Z)V

    .line 631
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 632
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 633
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 635
    :cond_2
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Folder;->tellDesktopIconIsOnAnimation(Z)V

    .line 636
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->updateWorkProfileTipShowState()V

    return-void
.end method

.method public onFolderAnimationStart()V
    .locals 3

    const-string v0, "Folder"

    const-string v1, "onFolderAnimationStart"

    .line 595
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->setFolderAnimating(Z)V

    .line 597
    iget v0, p0, Lcom/miui/home/launcher/Folder;->mOpenedScale:F

    iput v0, p0, Lcom/miui/home/launcher/Folder;->mLastOpenedScale:F

    const/4 v0, 0x0

    .line 599
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 600
    iget-boolean v2, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    if-nez v2, :cond_0

    .line 601
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mFolderGrid:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 602
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->resetBackgroundViewHeight()V

    .line 604
    :cond_0
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Folder;->tellDesktopIconIsOnAnimation(Z)V

    return-void
.end method

.method public onInterceptSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1167
    iget-boolean p1, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-boolean p1, p1, Lcom/miui/home/launcher/FolderInfo;->opened:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderGridView;->isEventDispatchDisabled()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1171
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/DragController;->isDragging()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 1174
    :cond_1
    instance-of p1, p2, Lcom/miui/home/launcher/IShortcutIcon;

    if-eqz p1, :cond_2

    .line 1175
    move-object p1, p2

    check-cast p1, Lcom/miui/home/launcher/IShortcutIcon;

    .line 1176
    invoke-interface {p1, p2}, Lcom/miui/home/launcher/IShortcutIcon;->resetIShortcutIcon(Landroid/view/View;)V

    .line 1178
    :cond_2
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Launcher;->onClick(Landroid/view/View;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 1219
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Folder;->handleItemLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/DragMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_0

    .line 1341
    invoke-virtual {p1}, Lcom/miui/home/launcher/common/messages/DragMessage;->isDragging()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Folder;->showOrHideFolderBorderLine(Z)V

    :cond_0
    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/EnterRecentFromAppEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1352
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->clearRenameEditFocusState()V

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/recents/messages/FsGestureStartEvent;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        sticky = true
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1347
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->clearRenameEditFocusState()V

    return-void
.end method

.method onOpen()V
    .locals 5

    .line 761
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mEnableShowFolderContentBg:Z

    const/4 v1, 0x0

    .line 762
    iput-boolean v1, p0, Lcom/miui/home/launcher/Folder;->mClosing:Z

    .line 763
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/miui/home/launcher/FolderInfo;->opened:Z

    .line 764
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContentBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 765
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->checkChildAnimEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mEnableChildViewChangeInFolderAnimation:Z

    .line 767
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 768
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08021e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVerticalScrollbarThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 770
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mDragController:Lcom/miui/home/launcher/DragController;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/DragController;->addDropTarget(Lcom/miui/home/launcher/DropTarget;)V

    .line 771
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 773
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    if-nez v0, :cond_1

    return-void

    .line 776
    :cond_1
    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    invoke-interface {v0}, Lcom/miui/home/launcher/Folder$FolderCallback;->onOpen()V

    .line 777
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/folder/FolderAnimController;->isUseSimpleAnim(Lcom/miui/home/launcher/FolderIcon;)Z

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 779
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v2, v2, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    invoke-static {}, Lcom/miui/home/recents/AnimatorDurationScaleHelper;->isCloseAnimator()Z

    move-result v4

    invoke-interface {v2, v4}, Lcom/miui/home/launcher/Folder$FolderCallback;->showPreview(Z)V

    .line 780
    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/Folder;->setFolderIconChildVisible(I)V

    goto :goto_1

    .line 783
    :cond_2
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/Folder;->setFolderMessageVisible(I)V

    .line 785
    :goto_1
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAlpha(F)V

    .line 786
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/home/launcher/Launcher;->performLayoutNow(Landroid/view/View;)V

    .line 787
    invoke-static {}, Lcom/miui/home/recents/AnimatorDurationScaleHelper;->isCloseAnimator()Z

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_2
    invoke-virtual {p0, v2}, Lcom/miui/home/launcher/Folder;->setupContentAlpha(F)V

    .line 788
    invoke-static {}, Lcom/miui/home/recents/AnimatorDurationScaleHelper;->isCloseAnimator()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 789
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->onFolderOpenAnimationFinish()V

    .line 790
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mFolderGrid:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 792
    :cond_5
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v0, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mPreviewPosRect:Landroid/graphics/Rect;

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/Folder$FolderCallback;->getPreviewPosition(Landroid/graphics/Rect;)F

    .line 793
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->reCalcContentPosition()V

    .line 795
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->updateFolderClingPaddingTop()V

    .line 796
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 797
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getEventBus()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 800
    :cond_6
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->setFolderTitleBackground()V

    .line 801
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderGridView;->computeVerticalScrollOffset()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/Folder;->mVerticalScrollOffset:I

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 1

    .line 1443
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderGridView;->onScreenSizeChanged()V

    .line 1444
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->resetViewsLayoutParams()V

    .line 1445
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->resetFolderGridViewLayoutParams()V

    .line 1446
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRecommendAppsSwitch:Lcom/miui/home/launcher/NonOverlapLinearLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/NonOverlapLinearLayout;->onScreenSizeChanged()V

    .line 1447
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->updateFolderClingPaddingTop()V

    return-void
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 212
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/Folder;->loadSoscLayout(Lcom/miui/launcher/sosc/module/SoscEvent;)V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 6

    .line 1275
    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->getCurrentWallpaperColorMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1276
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContentBackground:Landroid/graphics/drawable/Drawable;

    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    .line 1278
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContentBackground:Landroid/graphics/drawable/Drawable;

    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1280
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1281
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContentBackground:Landroid/graphics/drawable/Drawable;

    iget-boolean v2, p0, Lcom/miui/home/launcher/Folder;->mEnableShowFolderContentBg:Z

    if-eqz v2, :cond_1

    const/16 v2, 0xff

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1283
    :cond_2
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->getCurrentWallpaperColorMode()I

    move-result v3

    const v4, 0x7f060123

    const v5, 0x7f060124

    if-ne v3, v1, :cond_3

    move v1, v4

    goto :goto_2

    :cond_3
    move v1, v5

    :goto_2
    invoke-static {v2, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1284
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mFolderNameTextClear:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v2

    if-eqz v2, :cond_4

    const v2, 0x7f08029f

    goto :goto_3

    :cond_4
    const v2, 0x7f08029e

    :goto_3
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1285
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/miui/home/launcher/WallpaperUtils;->hasAppliedLightWallpaper()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_4

    :cond_5
    move v4, v5

    :goto_4
    invoke-static {v1, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1286
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->getRenameTextSelected()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1287
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderGridView;->onWallpaperColorChanged()V

    return-void
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    const v0, 0x1020036

    if-ne p1, v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 385
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public removeItem(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 1

    .line 728
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/FolderInfo;->remove(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 729
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    return-void
.end method

.method public resetContentPivot()V
    .locals 4

    const/4 v0, 0x0

    .line 1244
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1245
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1246
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/ShortcutsAdapter;->getIsDragging(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1249
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 1250
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resetFolder()V
    .locals 1

    const/4 v0, 0x0

    .line 249
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->resetGridViewItem(Z)V

    .line 250
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->resetBackgroundViewHeight()V

    .line 251
    iget v0, p0, Lcom/miui/home/launcher/Folder;->mOpenedScale:F

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 252
    iget v0, p0, Lcom/miui/home/launcher/Folder;->mOpenedScale:F

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    const/4 v0, 0x0

    .line 253
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 254
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 255
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->resetHeader()V

    return-void
.end method

.method public resetFolderGridViewLayoutParams()V
    .locals 4

    .line 1424
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getIconWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 1426
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1427
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->getFolderGridViewWidth(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1428
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v2, v1}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1429
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->getFolderItemHorizontalSpacing(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 1430
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->getFolderItemVerticalSpacing(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 1432
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1433
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->getFolderGridViewWidth(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1434
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1435
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070219

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v2, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 1437
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1438
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/home/launcher/common/Utilities;->getFolderGridViewWidth(Landroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1439
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1440
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f0701d1

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-virtual {v1, v0, v3, p0, v3}, Landroid/widget/EditText;->setPaddingRelative(IIII)V

    return-void
.end method

.method public resetFolderScale()V
    .locals 1

    .line 244
    iget v0, p0, Lcom/miui/home/launcher/Folder;->mOpenedScale:F

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 245
    iget v0, p0, Lcom/miui/home/launcher/Folder;->mOpenedScale:F

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    return-void
.end method

.method public resetGridViewItem(Z)V
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutsAdapter;

    const/4 v1, 0x0

    .line 269
    :goto_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/ShortcutsAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 270
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItemView(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/miui/home/launcher/Folder;->resetView(Landroid/view/View;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resetViewsLayoutParams()V
    .locals 6

    .line 1392
    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->isFoldDeviceAndNoWordModel()Z

    .line 1393
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->updateFolderClingPaddingTop()V

    .line 1394
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1395
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1396
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701bc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1397
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    .line 1399
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1400
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1401
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0701da

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1400
    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 1402
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1403
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1404
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->requestLayout()V

    .line 1406
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mHeader:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701dd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1407
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0701df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1408
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0701de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 1409
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0701dc

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 1406
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 1411
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Folder;->setViewTextSize(Landroid/widget/TextView;)V

    .line 1412
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/Folder;->setViewTextSize(Landroid/widget/TextView;)V

    .line 1414
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mFolderGrid:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1415
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701d9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1416
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mFolderGrid:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method

.method public setClipGridViewChild(Z)V
    .locals 0

    .line 647
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mFolderGrid:Landroid/widget/FrameLayout;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    return-void
.end method

.method setContentAdapter(Landroid/widget/BaseAdapter;)V
    .locals 0

    .line 739
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setContentAlpha(F)V
    .locals 1

    .line 1261
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 1262
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0, p1}, Landroid/widget/GridView;->setAlpha(F)V

    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    .line 656
    iput-object p1, p0, Lcom/miui/home/launcher/Folder;->mDragController:Lcom/miui/home/launcher/DragController;

    return-void
.end method

.method public setFolderBackgroundViewMarginTop(I)V
    .locals 0

    .line 1316
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1317
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return-void
.end method

.method public setFolderHeaderMarginTop(I)V
    .locals 0

    .line 1321
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mHeader:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1322
    iput p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return-void
.end method

.method public setFolderIconChildVisible(I)V
    .locals 1

    .line 942
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/ItemIcon;->getIconImageView()Lcom/miui/home/launcher/LauncherIconImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/LauncherIconImageView;->setVisibility(I)V

    .line 946
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderIcon;->getCover()Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 947
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/Folder;->setFolderMessageVisible(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setFolderTitleBackground()V
    .locals 1

    .line 1455
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1456
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->getRenameTextBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 1458
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setGridViewScrolled(Z)V
    .locals 0

    .line 576
    iput-boolean p1, p0, Lcom/miui/home/launcher/Folder;->mIsGridViewScrolled:Z

    return-void
.end method

.method public setGridViewScrolling(Z)V
    .locals 0

    .line 568
    iput-boolean p1, p0, Lcom/miui/home/launcher/Folder;->mIsGridViewScrolling:Z

    return-void
.end method

.method setLauncher(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 743
    iput-object p1, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 744
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderGridView;->setLauncher(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method

.method public setLongClickDisabled(Z)V
    .locals 0

    .line 1055
    iput-boolean p1, p0, Lcom/miui/home/launcher/Folder;->mLongClickDisabled:Z

    return-void
.end method

.method public setOpenedScale(F)V
    .locals 0

    .line 660
    iput p1, p0, Lcom/miui/home/launcher/Folder;->mOpenedScale:F

    return-void
.end method

.method public setRenameEditTextChangedListener()V
    .locals 2

    .line 1463
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/home/launcher/Folder$10;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Folder$10;-><init>(Lcom/miui/home/launcher/Folder;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1483
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/home/launcher/Folder$11;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/Folder$11;-><init>(Lcom/miui/home/launcher/Folder;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public setupContentAlpha(F)V
    .locals 4

    const/4 v0, 0x0

    .line 1234
    :goto_0
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1235
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1236
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v2

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/home/launcher/ShortcutInfo;

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/ShortcutsAdapter;->getIsDragging(Lcom/miui/home/launcher/ShortcutInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 1239
    :cond_0
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public showEditPanel(ZZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1059
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/home/launcher/Folder;->showEditPanel(ZZZ)V

    return-void
.end method

.method public showEditPanel(ZZZ)V
    .locals 3

    if-nez p1, :cond_0

    .line 1063
    iget-boolean v0, p0, Lcom/miui/home/launcher/Folder;->mEditAnimatorShowing:Z

    if-eqz v0, :cond_0

    .line 1064
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1065
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1068
    :cond_0
    iput-boolean p3, p0, Lcom/miui/home/launcher/Folder;->mIsOutSideClick:Z

    if-nez p1, :cond_1

    .line 1071
    iget-object p3, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Landroid/widget/GridView;->setImportantForAccessibility(I)V

    goto :goto_0

    .line 1073
    :cond_1
    iget-object p3, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    const/4 v0, 0x4

    invoke-virtual {p3, v0}, Landroid/widget/GridView;->setImportantForAccessibility(I)V

    .line 1076
    :goto_0
    iget-object p3, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p3}, Lcom/miui/home/launcher/Launcher;->isUninstallDialogShowing()Z

    move-result p3

    if-nez p3, :cond_c

    iget-boolean p3, p0, Lcom/miui/home/launcher/Folder;->mIsEditing:Z

    if-ne p3, p1, :cond_2

    goto/16 :goto_4

    .line 1080
    :cond_2
    iget-object p3, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {p3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1081
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->getEditText(Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 1082
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackFolderRename(Lcom/miui/home/launcher/FolderInfo;)V

    .line 1083
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p3, v2}, Lcom/miui/home/launcher/FolderInfo;->setTitle(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 1085
    iget-object p3, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p3, v1}, Lcom/miui/home/launcher/FolderInfo;->setUserChangeFolderNameStatus(Z)V

    .line 1087
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->updateAppearance()V

    const/4 p3, 0x0

    if-eqz p1, :cond_4

    .line 1090
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCursorVisible(Z)V

    .line 1091
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_1

    .line 1093
    :cond_4
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v0, p3}, Landroid/widget/EditText;->setCursorVisible(Z)V

    :goto_1
    if-eqz p2, :cond_7

    .line 1097
    iget-boolean p2, p0, Lcom/miui/home/launcher/Folder;->mEditAnimatorShowing:Z

    if-eqz p2, :cond_5

    .line 1098
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mEditAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void

    .line 1101
    :cond_5
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mEditAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 1102
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1103
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1104
    iget-boolean p2, p0, Lcom/miui/home/launcher/Folder;->mIsOutSideClick:Z

    if-nez p2, :cond_6

    .line 1105
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mFolderNameTextClear:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1107
    :cond_6
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    xor-int/lit8 p3, p1, 0x1

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 1108
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mFolderNameTextClear:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/Folder;->setFadeAnimation(Landroid/view/View;Z)V

    return-void

    .line 1111
    :cond_7
    iput-boolean p1, p0, Lcom/miui/home/launcher/Folder;->mIsEditing:Z

    xor-int/lit8 p2, p1, 0x1

    .line 1112
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/Folder;->setEnableContent(Z)V

    if-nez p1, :cond_8

    .line 1114
    invoke-direct {p0, p3}, Lcom/miui/home/launcher/Folder;->showOrHideSoftInput(Z)V

    .line 1115
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setAlpha(F)V

    .line 1117
    :cond_8
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    const/16 v0, 0x8

    if-eqz p1, :cond_9

    move v1, v0

    goto :goto_2

    :cond_9
    move v1, p3

    :goto_2
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1118
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    if-eqz p1, :cond_a

    move v1, p3

    goto :goto_3

    :cond_a
    move v1, v0

    :goto_3
    invoke-virtual {p2, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1119
    iget-object p2, p0, Lcom/miui/home/launcher/Folder;->mFolderNameTextClear:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/miui/home/launcher/Folder;->mIsOutSideClick:Z

    if-nez v1, :cond_b

    if-eqz p1, :cond_b

    move v0, p3

    :cond_b
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1120
    iput-boolean p3, p0, Lcom/miui/home/launcher/Folder;->mIsOutSideClick:Z

    :cond_c
    :goto_4
    return-void
.end method

.method showOrHideFolderBorderLine(Z)V
    .locals 5

    .line 1363
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 1364
    invoke-static {}, Lcom/miui/home/launcher/allapps/LauncherModeController;->isElderlyManMode()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07008e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/2addr v0, v1

    .line 1365
    :goto_0
    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v0

    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1366
    iput-boolean p1, p0, Lcom/miui/home/launcher/Folder;->mBorderLineShow:Z

    if-eqz p1, :cond_1

    .line 1368
    invoke-virtual {p0}, Lcom/miui/home/launcher/Folder;->updateBackgroundViewHeight()V

    .line 1370
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1371
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mEditBackgroundAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [I

    iget-object v2, p0, Lcom/miui/home/launcher/Folder;->mContentBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    aput v2, v1, v3

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    const/16 v3, 0xff

    :cond_2
    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 1372
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mEditBackgroundAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public startDrag(Landroid/view/View;)V
    .locals 4

    .line 1223
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 1224
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mDragController:Lcom/miui/home/launcher/DragController;

    const/4 v2, 0x1

    const/4 v3, 0x3

    invoke-virtual {v1, p1, v2, p0, v3}, Lcom/miui/home/launcher/DragController;->startDrag(Landroid/view/View;ZLcom/miui/home/launcher/DragSource;I)Z

    .line 1225
    iput-object v0, p0, Lcom/miui/home/launcher/Folder;->mDragItem:Lcom/miui/home/launcher/ShortcutInfo;

    .line 1226
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderGridView;->addDragOverItem(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method protected updateAppearance()V
    .locals 4

    .line 965
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 966
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/Folder;->getEditText(Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 967
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 968
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mDefaultUnnamedFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 969
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mDefaultUnnamedFolderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 970
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v1, v0, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/miui/home/launcher/Folder$FolderCallback;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 972
    :cond_0
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 973
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 974
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v2, v1, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/miui/home/launcher/Folder$FolderCallback;->setTitle(Ljava/lang/CharSequence;)V

    .line 976
    :cond_1
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 977
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mRenameEdit:Landroid/widget/EditText;

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected updateBackgroundViewHeight()V
    .locals 3

    .line 1376
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1377
    iget-object v1, p0, Lcom/miui/home/launcher/Folder;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/miui/home/launcher/Folder;->getGridViewHeight()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1378
    iget-object p0, p0, Lcom/miui/home/launcher/Folder;->mBackgroundView:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public updateFolderClingPaddingTop()V
    .locals 4

    .line 808
    iget-object v0, p0, Lcom/miui/home/launcher/Folder;->mPreviewPosRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerY()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 809
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getStatusBarHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    .line 810
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getRealScreenHeight()I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mContent:Lcom/miui/home/launcher/FolderGridView;

    .line 811
    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderGridView;->calculateHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/home/launcher/Folder;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 812
    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderCling;->getRecommendScreenView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 813
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    int-to-float v3, v1

    sub-int/2addr v2, v1

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v3, v2

    float-to-int v0, v3

    .line 815
    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/Folder;->getLastPosition(II)I

    move-result v0

    .line 816
    invoke-static {p0, v0}, Lcom/miui/home/launcher/common/ViewFunctions;->setViewPaddingTop(Landroid/view/View;I)V

    return-void
.end method
