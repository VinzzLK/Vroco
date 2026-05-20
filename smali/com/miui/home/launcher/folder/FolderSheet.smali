.class public Lcom/miui/home/launcher/folder/FolderSheet;
.super Lcom/miui/home/launcher/AbstractFloatingView;
.source "FolderSheet.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field private static mIsFolderSheetViewShow:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private downY:F

.field private eventY:F

.field private isKeyboardShow:Z

.field listener:Lcom/miui/home/launcher/LauncherStateManager$StateListener;

.field private mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

.field private mBeforeAppPredictButtonStatus:I

.field private mBigFolderBorderLayout2x2_4:Lmiuix/visual/check/BorderLayout;

.field private mBigFolderBorderLayout2x2_9:Lmiuix/visual/check/BorderLayout;

.field private mBigFolderCheckBox2x2_4:Lmiuix/visual/check/VisualCheckBox;

.field private mBigFolderCheckBox2x2_9:Lmiuix/visual/check/VisualCheckBox;

.field private mBigFolderName2x2_4:Lmiuix/visual/check/VisualCheckedTextView;

.field private mBigFolderName2x2_9:Lmiuix/visual/check/VisualCheckedTextView;

.field private mBigFolderSelectBorder2x2_4:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

.field private mBigFolderSelectBorder2x2_9:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

.field private mDefaultFolderBorderLayout:Lmiuix/visual/check/BorderLayout;

.field private mDefaultFolderCheckBox:Lmiuix/visual/check/VisualCheckBox;

.field private mDefaultFolderName:Lmiuix/visual/check/VisualCheckedTextView;

.field private mDefaultFolderSelectBorder:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

.field private mFolderEditText:Landroid/widget/EditText;

.field private mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

.field private mFolderNameTextClear:Landroid/widget/ImageView;

.field private mFolderPickerAppPredictExposed:Landroid/widget/LinearLayout;

.field private mFolderPickerAppPredictTitle:Landroid/widget/TextView;

.field private mFolderPickerBody:Landroid/widget/ScrollView;

.field private mFolderPickerCancel:Landroid/widget/ImageView;

.field private mFolderPickerDragLine:Landroid/widget/ImageView;

.field private mFolderPickerOk:Landroid/widget/ImageView;

.field private mFolderPickerRecommendAppsTitle:Landroid/widget/TextView;

.field private mFolderPickerSelectBigFolderBg:Landroid/widget/ImageView;

.field private mFolderPickerSelectBigFolderImg2x2_4:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

.field private mFolderPickerSelectBigFolderImg2x2_9:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

.field private mFolderPickerSelectDefaultFolderBg:Landroid/widget/ImageView;

.field private mFolderPickerSelectDefaultFolderImg:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

.field private mFolderPickerSelectWallpaperBg:Landroid/widget/ImageView;

.field private mFolderPickerTitle:Landroid/widget/TextView;

.field private mFolderTitle:Landroid/widget/TextView;

.field private mFolderTitleLayout:Landroid/view/View;

.field private mFolderType:I

.field private mRecommendAppsRelativeLayout:Landroid/widget/LinearLayout;

.field private mRecommendAppsSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

.field private mSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

.field private mSplitLine:Landroid/view/View;

.field private mTranslationY:F

.field private moveY:F


# direct methods
.method public static synthetic $r8$lambda$DG9UNkebJrqzcIwMoeO0jYFdKIo(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/Launcher;Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/folder/FolderSheet;->lambda$show$0(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/Launcher;Landroid/view/View;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/AbstractFloatingView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 106
    iput-boolean p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->isKeyboardShow:Z

    const-string p1, "FolderSheet"

    .line 110
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->TAG:Ljava/lang/String;

    .line 585
    new-instance p1, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    const-string p2, "Folder Sheet"

    invoke-direct {p1, p2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    .line 799
    new-instance p1, Lcom/miui/home/launcher/folder/FolderSheet$3;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/folder/FolderSheet$3;-><init>(Lcom/miui/home/launcher/folder/FolderSheet;)V

    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->listener:Lcom/miui/home/launcher/LauncherStateManager$StateListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/folder/FolderSheet;Ljava/lang/CharSequence;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->updateFolderNameTextClearByText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/folder/FolderSheet;)Landroid/widget/EditText;
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/folder/FolderSheet;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderSheetRenameTextSelected(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/folder/FolderSheet;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderSheetRenameTextBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/folder/FolderSheet;Z)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->closeFolderSheet(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/folder/FolderSheet;Landroid/content/Context;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->setNavigationBarOrStatusBarTransparent(Landroid/content/Context;)V

    return-void
.end method

.method private closeFolderSheet(Z)V
    .locals 3

    .line 416
    iget-boolean v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->isKeyboardShow:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 417
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/miui/home/launcher/util/MainThreadHelper;->hideKeyboardAsync(Landroid/content/Context;Landroid/os/IBinder;)V

    .line 418
    iput-boolean v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->isKeyboardShow:Z

    .line 420
    :cond_0
    iput-boolean v1, p0, Lcom/miui/home/launcher/AbstractFloatingView;->mIsOpen:Z

    .line 421
    sput-boolean v1, Lcom/miui/home/launcher/folder/FolderSheet;->mIsFolderSheetViewShow:Z

    if-eqz p1, :cond_1

    .line 423
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f01003e

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    .line 424
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 426
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->finalizeFolderSheetClose()V

    return-void
.end method

.method private closeOrOpenPickerByTouch(FI)V
    .locals 0

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 717
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->handleClose(Z)V

    goto :goto_0

    .line 719
    :cond_0
    iget p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mTranslationY:F

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 720
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->handleOpen()V

    :goto_0
    return-void
.end method

.method private finalizeFolderSheetClose()V
    .locals 1

    .line 430
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->setNavigationBarOrStatusBarTransparent(Landroid/content/Context;)V

    .line 431
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 433
    :cond_0
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    .line 434
    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 435
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->restoreLauncherBlurWithAnim()V

    .line 436
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->trackQuitFolderPicker()V

    return-void
.end method

.method private getColorFromTheme(Landroid/content/Context;II)I
    .locals 0

    .line 540
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/Context;->getColor(I)I

    move-result p0

    .line 542
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources$Theme;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "FolderSheet"

    const-string p2, "Color find error"

    .line 544
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return p0
.end method

.method private getColorWithTheme(Landroid/content/Context;II)I
    .locals 0

    .line 759
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private getDrawableWithTheme(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 763
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getFolderPickerDragLineDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const v0, 0x7f08029d

    const v1, 0x7f08029c

    .line 855
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getDrawableWithTheme(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getFolderPickerSelectDefaultFolderBg()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 858
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isDarkMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isMiuiLauncher()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0802c6

    goto :goto_0

    :cond_0
    const v0, 0x7f0802c5

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/16 v0, 0xff

    .line 859
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-object p0
.end method

.method private getFolderPickerTextColor(Landroid/content/Context;)I
    .locals 2

    const v0, 0x7f0606c0

    const v1, 0x7f060057

    .line 848
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getColorWithTheme(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method private getFolderPickerTitleColor(Landroid/content/Context;)I
    .locals 2

    const v0, 0x7f060052

    const v1, 0x7f060053

    .line 851
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getColorWithTheme(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method private getFolderSheetBigFolderBg2x2_9(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const v0, 0x7f08027d

    const v1, 0x7f08027e

    .line 745
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getDrawableWithTheme(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getFolderSheetRenameTextBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const v0, 0x7f080216

    const v1, 0x7f080217

    .line 864
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getDrawableWithTheme(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getFolderSheetRenameTextSelected(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const v0, 0x7f080219

    const v1, 0x7f080218

    .line 867
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getDrawableWithTheme(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private getFolderSheetTextClearDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const v0, 0x7f08029f

    const v1, 0x7f08029e

    .line 870
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getDrawableWithTheme(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static getFolderSheetType()I
    .locals 1

    const/16 v0, 0x1000

    return v0
.end method

.method private getFolderSizeByType()Ljava/lang/String;
    .locals 4

    .line 440
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    iget p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderType:I

    const-string v1, "2*2"

    const-string v2, "1*1"

    const/16 v3, 0x15

    if-ne v0, p0, :cond_1

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    return-object v1

    :cond_1
    if-ne p0, v3, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    return-object v1
.end method

.method private handleLauncherIconVisible(Z)V
    .locals 5

    .line 775
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    .line 779
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getWorkspace()Lcom/miui/home/launcher/Workspace;

    move-result-object v0

    .line 780
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getHotSeats()Lcom/miui/home/launcher/hotseats/HotSeats;

    move-result-object v1

    if-eqz v0, :cond_5

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz p1, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v3

    .line 784
    :goto_0
    invoke-virtual {v0, v4}, Lcom/miui/home/launcher/ScreenView;->setVisibility(I)V

    if-eqz p1, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    .line 785
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 786
    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBarContainer()Lcom/miui/home/launcher/SearchBarContainer;

    move-result-object p0

    .line 787
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isShowSearchBar()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p0, :cond_5

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v2, v3

    .line 788
    :goto_2
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_5
    :goto_3
    return-void
.end method

.method private handleOpen()V
    .locals 1

    const/4 v0, 0x1

    .line 402
    iput-boolean v0, p0, Lcom/miui/home/launcher/AbstractFloatingView;->mIsOpen:Z

    .line 403
    sput-boolean v0, Lcom/miui/home/launcher/folder/FolderSheet;->mIsFolderSheetViewShow:Z

    .line 404
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->notifyBackGestureStatus()V

    const/4 v0, 0x0

    .line 405
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->handleLauncherIconVisible(Z)V

    .line 406
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setLauncherBlurWithAnim()V

    return-void
.end method

.method private handleSlidingButtonColorDarkModeSyncInternal()V
    .locals 4

    .line 556
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f1103af

    sget-object v2, Lmiuix/slidingwidget/R$styleable;->SlidingButton:[I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :try_start_1
    const-class v1, Lmiuix/slidingwidget/widget/SlidingButton;

    const-string v2, "mHelper"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 558
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 559
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 560
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mRecommendAppsSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/slidingwidget/widget/SlidingButtonHelper;

    .line 561
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->initResource(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 562
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lmiuix/slidingwidget/widget/SlidingButtonHelper;->initResource(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 563
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->requestLayout()V

    .line 564
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->invalidate()V

    .line 565
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mRecommendAppsSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->requestLayout()V

    .line 566
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mRecommendAppsSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->invalidate()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 567
    :try_start_2
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->close()V
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_0

    .line 556
    :try_start_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 568
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private handleVisualCheckedTextViewColorDarkModeSyncInternal(ZLmiuix/visual/check/VisualCheckedTextView;)V
    .locals 4

    .line 523
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06062e

    const v2, 0x7f0600df

    invoke-direct {p0, v0, v1, v2}, Lcom/miui/home/launcher/folder/FolderSheet;->getColorFromTheme(Landroid/content/Context;II)I

    move-result v0

    .line 524
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0606d2

    const v3, 0x7f0600e0

    invoke-direct {p0, v1, v2, v3}, Lcom/miui/home/launcher/folder/FolderSheet;->getColorFromTheme(Landroid/content/Context;II)I

    move-result p0

    .line 526
    const-class v1, Lmiuix/visual/check/VisualCheckedTextView;

    const-string v2, "mCheckedColor"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 527
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 528
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, p2, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 530
    const-class v1, Lmiuix/visual/check/VisualCheckedTextView;

    const-string v3, "mUncheckedColor"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 531
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 532
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p0

    .line 533
    :goto_0
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 535
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private init(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 2

    .line 134
    iput-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    .line 135
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderType:I

    .line 137
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010032

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAnimation(Landroid/view/animation/Animation;)V

    .line 138
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->initListener(Lcom/miui/home/launcher/FolderInfo;)V

    .line 139
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->initPreviewIcon()V

    .line 140
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerAppPredictExposed:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setFolderPickerDarkModeColor()V

    .line 144
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isBigFolder()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->isDefaultFolder(Z)V

    .line 145
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setFolderPickerLocation()V

    return-void
.end method

.method private initFolderPreviewIcon2x2_4()V
    .locals 7

    .line 608
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v0

    const/4 v1, 0x7

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 613
    new-instance v2, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;-><init>(Landroid/content/Context;)V

    .line 616
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderImg2x2_4:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->addPreView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderImg2x2_4:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->setFolderIconPlaceholderDrawableMatchingWallpaperColor()V

    .line 622
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderImg2x2_4:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 623
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    iget-object v5, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    const/4 v6, 0x0

    .line 622
    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->loadItemIcons(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;ZLcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;Z)V

    return-void
.end method

.method private initFolderPreviewIcon2x2_9()V
    .locals 7

    .line 627
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v0

    const/16 v1, 0xc

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 631
    new-instance v2, Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;-><init>(Landroid/content/Context;)V

    .line 634
    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderImg2x2_9:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->addPreView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderImg2x2_9:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->setFolderIconPlaceholderDrawableMatchingWallpaperColor()V

    .line 639
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderImg2x2_9:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v3

    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 640
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    iget-object v5, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    const/4 v6, 0x0

    .line 639
    invoke-virtual/range {v1 .. v6}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->loadItemIcons(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;ZLcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;Z)V

    return-void
.end method

.method private initPreviewIcon()V
    .locals 4

    .line 588
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->initFolderPreviewIcon2x2_4()V

    .line 589
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectDefaultFolderImg:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->loadItemIcons(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;)V

    .line 590
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->initFolderPreviewIcon2x2_9()V

    .line 591
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderBg:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 592
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_0

    .line 593
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setDefaultFolderGone()V

    .line 594
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setBigFolderGone2x2_9()V

    .line 595
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setBigFolderVisible2x2_4()V

    goto :goto_0

    :cond_0
    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    .line 597
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setDefaultFolderGone()V

    .line 598
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setBigFolderGone2x2_4()V

    .line 599
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setBigFolderVisible2x2_9()V

    goto :goto_0

    .line 601
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setDefaultFolderVisible()V

    .line 602
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setBigFolderGone2x2_4()V

    .line 603
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setBigFolderGone2x2_9()V

    :goto_0
    return-void
.end method

.method private initTitleAndRecommendAppsSwitchView()V
    .locals 2

    const v0, 0x7f0a01a2

    .line 251
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderTitleLayout:Landroid/view/View;

    const v0, 0x7f0a03ba

    .line 252
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderTitle:Landroid/widget/TextView;

    .line 253
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0301

    .line 254
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderEditText:Landroid/widget/EditText;

    const v0, 0x7f0a0199

    .line 255
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderNameTextClear:Landroid/widget/ImageView;

    .line 256
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setTextView()V

    const v0, 0x7f0a02f6

    .line 258
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerRecommendAppsTitle:Landroid/widget/TextView;

    const v0, 0x7f0a01a1

    .line 259
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mRecommendAppsRelativeLayout:Landroid/widget/LinearLayout;

    .line 260
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02f4

    .line 261
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mRecommendAppsSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 262
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isRecommendSwitchOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 263
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setRecommendAppsRelativeLayoutVisibility()V

    return-void
.end method

.method private internationalNotSupportAppPredict()V
    .locals 2

    .line 725
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    .line 726
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    goto :goto_0

    .line 728
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/FolderInfo;->isAppPredictOpen(Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method private isDefaultFolder(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 645
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerAppPredictExposed:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 646
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 647
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p0, v0}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public static isFolderSheetViewShow()Z
    .locals 1

    .line 889
    sget-boolean v0, Lcom/miui/home/launcher/folder/FolderSheet;->mIsFolderSheetViewShow:Z

    return v0
.end method

.method private static synthetic lambda$show$0(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/Launcher;Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 123
    instance-of p3, p2, Lcom/miui/home/launcher/folder/FolderSheet;

    if-nez p3, :cond_0

    return-void

    .line 126
    :cond_0
    check-cast p2, Lcom/miui/home/launcher/folder/FolderSheet;

    .line 127
    invoke-direct {p2, p0}, Lcom/miui/home/launcher/folder/FolderSheet;->init(Lcom/miui/home/launcher/FolderInfo;)V

    .line 128
    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 129
    invoke-direct {p2}, Lcom/miui/home/launcher/folder/FolderSheet;->handleOpen()V

    return-void
.end method

.method private renameFolder()V
    .locals 3

    .line 874
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Folder;->getEditText(Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 875
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 876
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 877
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/home/launcher/FolderInfo;->setTitle(Ljava/lang/CharSequence;Landroid/content/Context;)V

    .line 878
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderInfo;->setUserChangeFolderNameStatus(Z)V

    :cond_0
    return-void
.end method

.method private restoreLauncherBlurWithAnim()V
    .locals 3

    .line 771
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0x118

    invoke-static {p0, v0, v1, v2}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenExitFolderPicker(Lcom/miui/home/launcher/Launcher;FZI)V

    return-void
.end method

.method private setBackgroundBasedOnDarkMode(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 482
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f0802ef

    invoke-static {p0, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private setBigFolderGone2x2_4()V
    .locals 2

    .line 668
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderBg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 669
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderImg2x2_4:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private setBigFolderGone2x2_9()V
    .locals 2

    .line 678
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderBg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 679
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderImg2x2_9:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private setBigFolderVisible2x2_4()V
    .locals 2

    .line 663
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderBg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 664
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderImg2x2_4:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private setBigFolderVisible2x2_9()V
    .locals 2

    .line 673
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderBg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 674
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderImg2x2_9:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method private setCheckedBox(I)V
    .locals 4

    .line 267
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mDefaultFolderCheckBox:Lmiuix/visual/check/VisualCheckBox;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p1, v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    .line 268
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderCheckBox2x2_4:Lmiuix/visual/check/VisualCheckBox;

    const/16 v3, 0x15

    if-ne p1, v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    invoke-virtual {v0, v3}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    .line 269
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderCheckBox2x2_9:Lmiuix/visual/check/VisualCheckBox;

    const/16 v0, 0x16

    if-ne p1, v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {p0, v1}, Lmiuix/visual/check/VisualCheckBox;->setChecked(Z)V

    return-void
.end method

.method private setDefaultFolderGone()V
    .locals 2

    .line 658
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectDefaultFolderBg:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 659
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectDefaultFolderImg:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private setDefaultFolderVisible()V
    .locals 2

    .line 652
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectDefaultFolderBg:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderPickerSelectDefaultFolderBg()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 653
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectDefaultFolderBg:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 654
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectDefaultFolderImg:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method private setFolderPickerDarkModeColor()V
    .locals 4

    .line 489
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerDragLine:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderPickerDragLineDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 490
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectWallpaperBg:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderSheetWallpaperBg(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 491
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mDefaultFolderSelectBorder:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderSheetDefaultFolderBg(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 492
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderSelectBorder2x2_4:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderSheetBigFolderBg(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 493
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderSelectBorder2x2_9:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderSheetBigFolderBg2x2_9(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 494
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderSheetBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 495
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getNavigationBarColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_0

    .line 497
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHasNavigationBar()Z

    move-result v0

    if-nez v0, :cond_1

    .line 498
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getNavigationBarColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 500
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerOk:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderPickerTextColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 501
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerCancel:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderPickerTextColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 502
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderPickerTitleColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 503
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "folder_picker_tab_text_size"

    invoke-static {v2, v3}, Lcom/miui/home/launcher/util/DimenUtils1X;->getDimensionPixelSize(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 504
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerAppPredictTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderPickerTextColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 505
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerRecommendAppsTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderPickerTextColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 506
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderPickerTextColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 507
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderSheetRenameTextBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 508
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderPickerTextColor(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 509
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderSheetRenameTextSelected(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 510
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderNameTextClear:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderSheetTextClearDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setLauncherBlurWithAnim()V
    .locals 3

    .line 767
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x1

    const/16 v2, 0x118

    invoke-static {p0, v0, v1, v2}, Lcom/miui/home/launcher/common/BlurUtils;->fastBlurWhenEnterFolderPicker(Lcom/miui/home/launcher/Launcher;FZI)V

    return-void
.end method

.method private setNavigationBarOrStatusBarColor(Landroid/content/Context;)V
    .locals 1

    .line 832
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHasNavigationBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 833
    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->getNavigationBarColor(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_0

    .line 835
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->getNavigationBarColor(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    :goto_0
    return-void
.end method

.method private setNavigationBarOrStatusBarTransparent(Landroid/content/Context;)V
    .locals 2

    .line 840
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isHasNavigationBar()Z

    move-result v0

    const v1, 0x7f0606b8

    if-eqz v0, :cond_0

    .line 841
    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/Window;->setNavigationBarColor(I)V

    goto :goto_0

    .line 843
    :cond_0
    invoke-static {p1}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/view/Window;->setStatusBarColor(I)V

    :goto_0
    return-void
.end method

.method private setRecommendAppsRelativeLayoutVisibility()V
    .locals 3

    .line 306
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->canRecommendSwitchShow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 307
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mRecommendAppsRelativeLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 309
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mRecommendAppsRelativeLayout:Landroid/widget/LinearLayout;

    .line 310
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100438

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mRecommendAppsSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 309
    invoke-static {v0, v1, p0}, Lcom/miui/home/launcher/AccessibilityAdaptHelper;->setSwitchItemViewAccessibility(Landroid/view/View;Ljava/lang/String;Lmiuix/slidingwidget/widget/SlidingButton;)V

    :goto_0
    return-void
.end method

.method private setRecommendAppsSwitch()V
    .locals 2

    .line 883
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getRecommendController()Lcom/miui/home/launcher/commercial/recommend/RecommendController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/commercial/recommend/RecommendController;->isRecommendSwitchOn()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mRecommendAppsSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 884
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mRecommendAppsSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/FolderInfo;->setRecommendAppsSwitchOn(Z)V

    :cond_0
    return-void
.end method

.method private setSwitchItemViewAccessibility(Z)V
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 240
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerAppPredictExposed:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 241
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerAppPredictExposed:Landroid/widget/LinearLayout;

    .line 242
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1003b0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    .line 241
    invoke-static {p1, v0, p0}, Lcom/miui/home/launcher/AccessibilityAdaptHelper;->setSwitchItemViewAccessibility(Landroid/view/View;Ljava/lang/String;Lmiuix/slidingwidget/widget/SlidingButton;)V

    goto :goto_0

    .line 245
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerAppPredictExposed:Landroid/widget/LinearLayout;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 246
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setImportantForAccessibility(I)V

    :goto_0
    return-void
.end method

.method private setTextView()V
    .locals 3

    .line 273
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 275
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderEditText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 276
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/home/launcher/folder/FolderSheet$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/folder/FolderSheet$1;-><init>(Lcom/miui/home/launcher/folder/FolderSheet;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 293
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderEditText:Landroid/widget/EditText;

    new-instance v1, Lcom/miui/home/launcher/folder/FolderSheet$2;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/folder/FolderSheet$2;-><init>(Lcom/miui/home/launcher/folder/FolderSheet;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method public static show(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderInfo;)V
    .locals 3

    .line 122
    new-instance v0, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;

    invoke-direct {v0, p0}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDragLayer()Lcom/miui/home/launcher/DragLayer;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/folder/FolderSheet$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p0}, Lcom/miui/home/launcher/folder/FolderSheet$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/Launcher;)V

    const p0, 0x7f0d005e

    invoke-virtual {v0, p0, v1, v2}, Landroidx/asynclayoutinflater/view/AsyncLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroidx/asynclayoutinflater/view/AsyncLayoutInflater$OnInflateFinishedListener;)V

    return-void
.end method

.method private trackQuitFolderPicker()V
    .locals 6

    .line 827
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->getFolderGridSize()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderSizeByType()Ljava/lang/String;

    move-result-object v1

    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    const-string v3, "false"

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    .line 828
    invoke-virtual {v4}, Lcom/miui/home/launcher/FolderInfo;->getAppPredictPreferenceKey()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->APP_PREDICT_UNINITIALIZED:Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

    invoke-virtual {v5}, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->getValue()I

    move-result v5

    .line 827
    invoke-static {v2, v4, v5}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iget p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBeforeAppPredictButtonStatus:I

    if-ne v2, p0, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "true"

    :goto_0
    invoke-static {v0, v1, v3}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackQuitFolderPicker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateFolderNameTextClearByText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 905
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderNameTextClear:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    .line 908
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getVisibility()I

    move-result p1

    if-nez p1, :cond_1

    .line 909
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderNameTextClear:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 911
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderNameTextClear:Landroid/widget/ImageView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateSelectBorderLayoutParams()V
    .locals 3

    .line 169
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701b3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    .line 170
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701f6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    .line 171
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701f4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 172
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 173
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mDefaultFolderSelectBorder:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->updateSelectBorderLayoutParams(Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;I)V

    .line 174
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderSelectBorder2x2_4:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->updateSelectBorderLayoutParams(Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;I)V

    .line 175
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderSelectBorder2x2_9:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    invoke-direct {p0, v1, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->updateSelectBorderLayoutParams(Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;I)V

    return-void
.end method

.method private updateSelectBorderLayoutParams(Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;I)V
    .locals 0

    .line 179
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    .line 180
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 181
    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 182
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getFolderSheetBackgroundDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 750
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f08020b

    goto :goto_0

    :cond_0
    const v0, 0x7f08021b

    .line 751
    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f08020a

    goto :goto_1

    :cond_1
    const v1, 0x7f08021a

    .line 749
    :goto_1
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getDrawableWithTheme(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getFolderSheetBigFolderBg(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const v0, 0x7f08027f

    const v1, 0x7f080280

    .line 741
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getDrawableWithTheme(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getFolderSheetDefaultFolderBg(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const v0, 0x7f08028b

    const v1, 0x7f08028c

    .line 737
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getDrawableWithTheme(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getFolderSheetWallpaperBg(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2

    const v0, 0x7f0802a4

    const v1, 0x7f0802a3

    .line 733
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getDrawableWithTheme(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getNavigationBarColor(Landroid/content/Context;)I
    .locals 2

    const v0, 0x7f0600dd

    const v1, 0x7f0600dc

    .line 755
    invoke-direct {p0, p1, v0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->getColorWithTheme(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method protected handleClose(Z)V
    .locals 0

    .line 411
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->closeFolderSheet(Z)V

    const/4 p1, 0x1

    .line 412
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->handleLauncherIconVisible(Z)V

    return-void
.end method

.method public initListener(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 3

    const v0, 0x7f0a019c

    .line 186
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerBody:Landroid/widget/ScrollView;

    const v0, 0x7f0a019d

    .line 187
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerCancel:Landroid/widget/ImageView;

    .line 188
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a019f

    .line 189
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerOk:Landroid/widget/ImageView;

    .line 190
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01a9

    .line 191
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerTitle:Landroid/widget/TextView;

    const v0, 0x7f0a019e

    .line 192
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerDragLine:Landroid/widget/ImageView;

    .line 193
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0a01a8

    .line 194
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectWallpaperBg:Landroid/widget/ImageView;

    const v0, 0x7f0a012b

    .line 195
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckedTextView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mDefaultFolderName:Lmiuix/visual/check/VisualCheckedTextView;

    .line 196
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00b6

    .line 197
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckedTextView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderName2x2_4:Lmiuix/visual/check/VisualCheckedTextView;

    .line 198
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00b7

    .line 199
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckedTextView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderName2x2_9:Lmiuix/visual/check/VisualCheckedTextView;

    .line 200
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a012a

    .line 201
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckBox;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mDefaultFolderCheckBox:Lmiuix/visual/check/VisualCheckBox;

    .line 202
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00b4

    .line 203
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckBox;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderCheckBox2x2_4:Lmiuix/visual/check/VisualCheckBox;

    .line 204
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a012c

    .line 205
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mDefaultFolderSelectBorder:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    .line 206
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00b8

    .line 207
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderSelectBorder2x2_4:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    .line 208
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01a5

    .line 209
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderImg2x2_9:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    const v0, 0x7f0a01a4

    .line 210
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderImg2x2_4:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    const v0, 0x7f0a00b5

    .line 211
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/VisualCheckBox;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderCheckBox2x2_9:Lmiuix/visual/check/VisualCheckBox;

    .line 212
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00b9

    .line 213
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderSelectBorder2x2_9:Lcom/miui/home/settings/FixedAspectRatioLottieAnimView;

    .line 214
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a01a3

    .line 215
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderBg:Landroid/widget/ImageView;

    const v0, 0x7f0a01a7

    .line 216
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectDefaultFolderImg:Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;

    .line 217
    invoke-virtual {v0}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1;->setInFolderSheet()V

    const v0, 0x7f0a01a6

    .line 218
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectDefaultFolderBg:Landroid/widget/ImageView;

    const v0, 0x7f0a019a

    .line 219
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerAppPredictExposed:Landroid/widget/LinearLayout;

    .line 220
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a019b

    .line 221
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerAppPredictTitle:Landroid/widget/TextView;

    const v0, 0x7f0a007f

    .line 222
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/slidingwidget/widget/SlidingButton;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    const v0, 0x7f0a036f

    .line 223
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mSplitLine:Landroid/view/View;

    .line 224
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 225
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v1}, Lcom/miui/home/launcher/FolderInfo;->isAppPredictOpen()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    .line 226
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getAppPredictPreferenceKey()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->APP_PREDICT_UNINITIALIZED:Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;

    invoke-virtual {v2}, Lcom/miui/home/launcher/FolderInfo$AppPredictStatus;->getValue()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/common/PreferenceUtils;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBeforeAppPredictButtonStatus:I

    const v0, 0x7f0a0129

    .line 227
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/BorderLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mDefaultFolderBorderLayout:Lmiuix/visual/check/BorderLayout;

    .line 228
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00b2

    .line 229
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/BorderLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderBorderLayout2x2_4:Lmiuix/visual/check/BorderLayout;

    .line 230
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00b3

    .line 231
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/visual/check/BorderLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderBorderLayout2x2_9:Lmiuix/visual/check/BorderLayout;

    .line 232
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->initTitleAndRecommendAppsSwitchView()V

    .line 234
    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->setCheckedBox(I)V

    .line 235
    iget p1, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->setSwitchItemViewAccessibility(Z)V

    return-void
.end method

.method protected isOfType(I)Z
    .locals 0

    and-int/lit16 p0, p1, 0x1000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 816
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 817
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->listener:Lcom/miui/home/launcher/LauncherStateManager$StateListener;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/LauncherStateManager;->addStateListener(Lcom/miui/home/launcher/LauncherStateManager$StateListener;)V

    return-void
.end method

.method public onBackPressed()Z
    .locals 0

    .line 462
    invoke-super {p0}, Lcom/miui/home/launcher/AbstractFloatingView;->onBackPressed()Z

    const/4 p0, 0x1

    return p0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 12

    .line 574
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    .line 576
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->updateAppPredictList()Z

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderImg2x2_4:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    const/4 v5, 0x1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->loadItemIcons(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;ZLcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;Z)V

    .line 580
    iget-object v6, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderImg2x2_9:Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;

    iget-object v7, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v8

    iget-object v10, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    const/4 v11, 0x1

    move v9, p2

    invoke-virtual/range {v6 .. v11}, Lcom/miui/home/launcher/folder/BaseFolderIconPreviewContainer2X2;->loadItemIcons(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/IconCache;ZLcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;Z)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 316
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_1

    const/16 v2, 0x8

    packed-switch p1, :pswitch_data_2

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 383
    :sswitch_0
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderTitle:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 384
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderEditText:Landroid/widget/EditText;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 385
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->updateFolderNameTextClearByText(Ljava/lang/CharSequence;)V

    .line 386
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 387
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderEditText:Landroid/widget/EditText;

    invoke-static {p1, v1}, Lcom/miui/home/launcher/util/MainThreadHelper;->showKeyboardAsync(Landroid/content/Context;Landroid/view/View;)V

    .line 388
    iput-boolean v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->isKeyboardShow:Z

    goto/16 :goto_1

    .line 396
    :sswitch_1
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mRecommendAppsSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    goto/16 :goto_1

    .line 321
    :sswitch_2
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/FolderInfo;->switchAppPredict(Z)V

    .line 322
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 323
    sget-object p1, Lcom/miui/home/launcher/folder/AppPredictHelper;->INSTANCE:Lcom/miui/home/launcher/folder/AppPredictHelper;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/folder/AppPredictHelper;->addAppPredictListener(Lcom/miui/home/launcher/folder/AppPredictUpdateListener;)V

    goto :goto_0

    .line 325
    :cond_0
    sget-object p1, Lcom/miui/home/launcher/folder/AppPredictHelper;->INSTANCE:Lcom/miui/home/launcher/folder/AppPredictHelper;

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/folder/AppPredictHelper;->removeAppPredictListener(Lcom/miui/home/launcher/folder/AppPredictUpdateListener;)Z

    .line 327
    :goto_0
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->refreshPreviewIcons()V

    .line 329
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->handleClose(Z)V

    .line 330
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    iget v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderType:I

    if-eq v0, v1, :cond_1

    .line 331
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 332
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderInfo:Lcom/miui/home/launcher/FolderInfo;

    iget v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderType:I

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/FolderInfo;->convertIconSize(I)V

    .line 334
    :cond_1
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->renameFolder()V

    .line 335
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setRecommendAppsSwitch()V

    goto/16 :goto_1

    .line 318
    :sswitch_3
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->handleClose(Z)V

    goto/16 :goto_1

    .line 380
    :pswitch_0
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    goto :goto_1

    .line 391
    :pswitch_1
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderEditText:Landroid/widget/EditText;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 392
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderEditText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 393
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderEditText:Landroid/widget/EditText;

    invoke-virtual {p0, v2}, Landroid/widget/EditText;->sendAccessibilityEvent(I)V

    goto :goto_1

    .line 341
    :pswitch_2
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setBigFolderGone2x2_4()V

    .line 342
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setBigFolderGone2x2_9()V

    .line 343
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setDefaultFolderVisible()V

    .line 344
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerAppPredictExposed:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 345
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 346
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1, v1}, Lmiuix/slidingwidget/widget/SlidingButton;->setChecked(Z)V

    const/4 p1, 0x2

    .line 347
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderType:I

    .line 348
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->setCheckedBox(I)V

    .line 349
    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->setSwitchItemViewAccessibility(Z)V

    goto :goto_1

    .line 369
    :pswitch_3
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setBigFolderGone2x2_4()V

    .line 370
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setDefaultFolderGone()V

    .line 371
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setBigFolderVisible2x2_9()V

    .line 372
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerAppPredictExposed:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 373
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 374
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->internationalNotSupportAppPredict()V

    const/16 p1, 0x16

    .line 375
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderType:I

    .line 376
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->setCheckedBox(I)V

    .line 377
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->setSwitchItemViewAccessibility(Z)V

    goto :goto_1

    .line 355
    :pswitch_4
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setDefaultFolderGone()V

    .line 356
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setBigFolderGone2x2_9()V

    .line 357
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setBigFolderVisible2x2_4()V

    .line 358
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerAppPredictExposed:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 359
    iget-object p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mAppPredictSlidingButton:Lmiuix/slidingwidget/widget/SlidingButton;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 360
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->internationalNotSupportAppPredict()V

    const/16 p1, 0x15

    .line 361
    iput p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderType:I

    .line 362
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->setCheckedBox(I)V

    .line 363
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->setSwitchItemViewAccessibility(Z)V

    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a00b2
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x7f0a0129
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7f0a0199
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x7f0a019d -> :sswitch_3
        0x7f0a019f -> :sswitch_2
        0x7f0a01a1 -> :sswitch_1
        0x7f0a03ba -> :sswitch_0
    .end sparse-switch
.end method

.method public onControllerInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDarkModeChange()V
    .locals 4

    .line 468
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectDefaultFolderBg:Landroid/widget/ImageView;

    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->getFolderPickerSelectDefaultFolderBg()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 469
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectBigFolderBg:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/miui/home/launcher/folder/FolderIcon4x4NormalBackgroundDrawable;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 470
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mSplitLine:Landroid/view/View;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0600ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 471
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setFolderPickerDarkModeColor()V

    .line 472
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->handleSlidingButtonColorDarkModeSyncInternal()V

    .line 473
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mDefaultFolderCheckBox:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {v0}, Lmiuix/visual/check/VisualCheckBox;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mDefaultFolderName:Lmiuix/visual/check/VisualCheckedTextView;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->handleVisualCheckedTextViewColorDarkModeSyncInternal(ZLmiuix/visual/check/VisualCheckedTextView;)V

    .line 474
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderCheckBox2x2_4:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {v0}, Lmiuix/visual/check/VisualCheckBox;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderName2x2_4:Lmiuix/visual/check/VisualCheckedTextView;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->handleVisualCheckedTextViewColorDarkModeSyncInternal(ZLmiuix/visual/check/VisualCheckedTextView;)V

    .line 475
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderCheckBox2x2_9:Lmiuix/visual/check/VisualCheckBox;

    invoke-virtual {v0}, Lmiuix/visual/check/VisualCheckBox;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mBigFolderName2x2_9:Lmiuix/visual/check/VisualCheckedTextView;

    invoke-direct {p0, v0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->handleVisualCheckedTextViewColorDarkModeSyncInternal(ZLmiuix/visual/check/VisualCheckedTextView;)V

    .line 476
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerAppPredictExposed:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->setBackgroundBasedOnDarkMode(Landroid/view/View;)V

    .line 477
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mRecommendAppsRelativeLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/folder/FolderSheet;->setBackgroundBasedOnDarkMode(Landroid/view/View;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 822
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 823
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getStateManager()Lcom/miui/home/launcher/LauncherStateManager;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->listener:Lcom/miui/home/launcher/LauncherStateManager$StateListener;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/LauncherStateManager;->removeStateListener(Lcom/miui/home/launcher/LauncherStateManager$StateListener;)V

    return-void
.end method

.method public onScreenSizeChange()V
    .locals 0

    .line 794
    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setFolderPickerLocation()V

    .line 795
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->setLauncherBlurWithAnim()V

    .line 796
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->updateSelectBorderLayoutParams()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 684
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getDeviceHeight()I

    move-result p1

    const/4 v0, 0x2

    div-int/2addr p1, v0

    .line 685
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v2, :cond_3

    if-eq v1, v0, :cond_1

    const/4 p2, 0x3

    if-eq v1, p2, :cond_0

    goto :goto_0

    .line 707
    :cond_0
    sget-boolean p2, Lcom/miui/home/launcher/folder/FolderSheet;->mIsFolderSheetViewShow:Z

    if-eqz p2, :cond_5

    .line 708
    iget p2, p0, Lcom/miui/home/launcher/folder/FolderSheet;->moveY:F

    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->closeOrOpenPickerByTouch(FI)V

    goto :goto_0

    .line 693
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->moveY:F

    .line 694
    iget v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->downY:F

    sub-float/2addr p1, v0

    iget v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->eventY:F

    sub-float/2addr p1, v0

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 696
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iget p2, p0, Lcom/miui/home/launcher/folder/FolderSheet;->downY:F

    sub-float/2addr p1, p2

    iget p2, p0, Lcom/miui/home/launcher/folder/FolderSheet;->eventY:F

    sub-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    goto :goto_0

    .line 698
    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    goto :goto_0

    .line 703
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-direct {p0, p2, p1}, Lcom/miui/home/launcher/folder/FolderSheet;->closeOrOpenPickerByTouch(FI)V

    goto :goto_0

    .line 687
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->downY:F

    .line 688
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->eventY:F

    .line 689
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getTranslationY()F

    move-result p1

    iput p1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mTranslationY:F

    :cond_5
    :goto_0
    return v2
.end method

.method public resetSheetStatus()V
    .locals 2

    .line 893
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/miui/home/launcher/folder/FolderSheet;->mIsFolderSheetViewShow:Z

    if-eqz v0, :cond_2

    const-string v0, "FolderSheet"

    const-string v1, "SCREEN_OFF trigger"

    .line 894
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 896
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderEditText:Landroid/widget/EditText;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 897
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 898
    iget-object v0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 900
    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderNameTextClear:Landroid/widget/ImageView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setFolderPickerLocation()V
    .locals 4

    .line 149
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 150
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreenMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0701b3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 152
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v1

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 153
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerDragLine:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 154
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->setNavigationBarOrStatusBarTransparent(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    .line 156
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 v1, 0x0

    .line 157
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 158
    iget-object v2, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerDragLine:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 159
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/folder/FolderSheet;->setNavigationBarOrStatusBarColor(Landroid/content/Context;)V

    .line 161
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070204

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 163
    iget-object v1, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectWallpaperBg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/launcher/folder/FolderSheet;->mFolderPickerSelectWallpaperBg:Landroid/widget/ImageView;

    .line 164
    invoke-virtual {v3}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v3

    .line 163
    invoke-virtual {v1, v0, v2, v0, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 165
    invoke-direct {p0}, Lcom/miui/home/launcher/folder/FolderSheet;->updateSelectBorderLayoutParams()V

    return-void
.end method
