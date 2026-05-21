.class public abstract Lcom/miui/home/launcher/FolderIcon;
.super Lcom/miui/home/launcher/ItemIcon;
.source "FolderIcon.java"

# interfaces
.implements Lcom/miui/home/launcher/DropTarget;
.implements Lcom/miui/home/launcher/DragSource;
.implements Lcom/miui/home/launcher/Folder$FolderCallback;
.implements Lcom/miui/home/launcher/PendingSource;
.implements Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
.implements Lcom/miui/home/launcher/IItemInfo;
.implements Lcom/miui/home/launcher/hotseats/HotSeatsViewRebindInfo;
.implements Lcom/miui/home/launcher/folder/FolderAnimListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/FolderIcon$CategoryUpdateListener;
    }
.end annotation


# static fields
.field public static DEFAULT_DRAG_OVER_ANIM_SCALE:F = 1.2f


# instance fields
.field private isAnimFolderIcon:Z

.field private mDesktopFolderIconLayerType:I

.field protected mDragOpenFolder:Ljava/lang/Runnable;

.field protected mFolderBackground:Landroid/graphics/drawable/Drawable;

.field protected mFolderPreviewSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

.field protected mIconCache:Lcom/miui/home/launcher/IconCache;

.field protected mInfo:Lcom/miui/home/launcher/FolderInfo;

.field protected mIsDragingEnter:Z

.field protected mIsFastDelete:Z

.field protected mIsPreRemoved:Z

.field protected mLauncher:Lcom/miui/home/launcher/Launcher;

.field protected mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

.field protected mPerformHapticRunnable:Ljava/lang/Runnable;

.field protected mTmpPos:[F


# direct methods
.method public static synthetic $r8$lambda$PxmtcO3JImtH03z08SzQiokwNWo(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/FolderIcon;->lambda$onResume$4(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WDMgNctowhny8b02DaYwFlTw-yk(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/FolderIcon;->lambda$onPause$5(Lcom/miui/home/launcher/ShortcutInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XF5Ttgo9E7bknVcQ9dOzVv5GPt0(Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/Boolean;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/FolderIcon;->lambda$isInHotseat$6(Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$olwNRrUKoARjFK1JmxwwFPg9fSs(Lcom/miui/home/launcher/FolderIcon;Lcom/miui/home/launcher/FolderIcon;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/FolderIcon;->lambda$updateBackground$3(Lcom/miui/home/launcher/FolderIcon;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qfvp-t1kzS9ZiaszF4wELjvzPTU(Lcom/miui/home/launcher/FolderIcon;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->lambda$deleteSelf$1(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uzAw8hVYhYoXXOxxp0VedJGrBMg(Lcom/miui/home/launcher/FolderIcon;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/FolderIcon;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$wxgBrNCbg7oaiCRReZx4QUJVJLs(Lcom/miui/home/launcher/FolderIcon;)Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-static {p0}, Lcom/miui/home/launcher/FolderIcon;->lambda$updateBackground$2(Lcom/miui/home/launcher/FolderIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ItemIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 90
    invoke-static {}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->getFolderPreviewSerialExecutor()Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderPreviewSerialExecutor:Lcom/miui/home/library/utils/AsyncTaskExecutorHelper$SerialExecutor;

    const/4 p1, 0x0

    .line 94
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderIcon;->mIsPreRemoved:Z

    .line 95
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderIcon;->mIsDragingEnter:Z

    .line 96
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderIcon;->mIsFastDelete:Z

    .line 97
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderIcon;->isAnimFolderIcon:Z

    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 99
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mTmpPos:[F

    .line 100
    new-instance p1, Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-direct {p1}, Lcom/miui/home/launcher/PendingSourceDelegate;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    .line 289
    new-instance p1, Lcom/miui/home/launcher/FolderIcon$2;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/FolderIcon$2;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mDragOpenFolder:Ljava/lang/Runnable;

    .line 312
    new-instance p1, Lcom/miui/home/launcher/FolderIcon$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/miui/home/launcher/FolderIcon$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mPerformHapticRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static create(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Lcom/miui/home/launcher/FolderIcon;
    .locals 2

    .line 108
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/FolderIcon;

    .line 109
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 110
    invoke-direct {p0, p0}, Lcom/miui/home/launcher/FolderIcon;->updateBackground(Lcom/miui/home/launcher/FolderIcon;)V

    return-object p0
.end method

.method public static fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;
    .locals 2

    .line 664
    invoke-virtual {p3}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 665
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p2, :cond_1

    .line 666
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/miui/home/launcher/ItemIcon;->createItemIcon(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/miui/home/launcher/FolderIcon;

    .line 667
    invoke-virtual {p3, v0}, Lcom/miui/home/launcher/FolderInfo;->setBuddyIconView(Lcom/miui/home/launcher/FolderIcon;)V

    .line 670
    :cond_1
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/miui/home/launcher/ItemIcon;->createDefaultLayoutParams(Landroid/view/ViewGroup$LayoutParams;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 673
    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 675
    :cond_2
    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderIcon;->getFolderBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const/4 p2, 0x0

    .line 676
    invoke-virtual {v0, p0, p2}, Lcom/miui/home/launcher/ItemIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 677
    invoke-virtual {p3, p1}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/ItemIcon;->setTitle(Ljava/lang/CharSequence;)V

    .line 678
    invoke-virtual {v0, p3}, Lcom/miui/home/launcher/ItemIcon;->setTag(Ljava/lang/Object;)V

    .line 679
    iput-object p3, v0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    .line 680
    iput-object p1, v0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 681
    iput-object v0, p3, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    .line 682
    invoke-virtual {p3}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    .line 683
    invoke-virtual {p1, p3, v0}, Lcom/miui/home/launcher/Launcher;->updateFolderMessage(Lcom/miui/home/launcher/FolderInfo;Lcom/miui/home/launcher/FolderIcon;)V

    return-object v0
.end method

.method public static fromXml(Lcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;
    .locals 1

    const/4 v0, 0x0

    .line 646
    invoke-static {p0, p1, p2, v0}, Lcom/miui/home/launcher/FolderIcon;->fromXml(Lcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;Z)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p0

    return-object p0
.end method

.method public static fromXml(Lcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;Z)Lcom/miui/home/launcher/FolderIcon;
    .locals 2

    .line 651
    iget v0, p2, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    const p3, 0x7f0d005d

    goto :goto_0

    :cond_0
    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    const p3, 0x7f0d005c

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const p3, 0x7f0d005a

    goto :goto_0

    :cond_2
    const p3, 0x7f0d0059

    .line 658
    :goto_0
    invoke-static {p3, p0, p1, p2}, Lcom/miui/home/launcher/FolderIcon;->fromXml(ILcom/miui/home/launcher/Launcher;Landroid/view/ViewGroup;Lcom/miui/home/launcher/FolderInfo;)Lcom/miui/home/launcher/FolderIcon;

    move-result-object p0

    return-object p0
.end method

.method private handleFolderDeletion(I)V
    .locals 0

    if-nez p1, :cond_1

    .line 433
    iget-boolean p1, p0, Lcom/miui/home/launcher/FolderIcon;->mIsFastDelete:Z

    if-eqz p1, :cond_0

    .line 434
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/Launcher;->removeFolder(Lcom/miui/home/launcher/FolderIcon;)V

    goto :goto_0

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->deleteSelf()V

    goto :goto_0

    .line 439
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->removeFolderOnlyOneApp(Lcom/miui/home/launcher/FolderInfo;)V

    :goto_0
    return-void
.end method

.method private hasPreviewIcons(Lcom/miui/home/launcher/FolderIcon;)Z
    .locals 0

    .line 165
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderIcon;->getPreviewArray()[Landroid/widget/ImageView;

    move-result-object p0

    array-length p0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isRemoveSelfAfterDragAnim()Z
    .locals 1

    .line 273
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->isInFoldLargeScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$deleteSelf$1(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 400
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 401
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    return-void
.end method

.method private static synthetic lambda$isInHotseat$6(Lcom/miui/home/launcher/FolderInfo;)Ljava/lang/Boolean;
    .locals 0

    .line 880
    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemInfo;->isInHotseat()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 312
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performEnterOrCreateFolder(Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$onPause$5(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 866
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIcon()Lcom/miui/home/launcher/IShortcutIcon;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 868
    invoke-interface {p0}, Lcom/miui/home/launcher/DesktopIcon;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/graphics/drawable/MamlCompat;->onPause(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onResume$4(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 848
    invoke-virtual {p0}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIcon()Lcom/miui/home/launcher/IShortcutIcon;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 850
    invoke-interface {p0}, Lcom/miui/home/launcher/DesktopIcon;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/graphics/drawable/MamlCompat;->onResume(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$updateBackground$2(Lcom/miui/home/launcher/FolderIcon;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 694
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getFolderBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 696
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncherApplication()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->getFolderIcon(Lcom/miui/home/launcher/IconCache;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private synthetic lambda$updateBackground$3(Lcom/miui/home/launcher/FolderIcon;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 701
    instance-of p0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;

    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->isFolderBlurSupported(Z)Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p2, :cond_0

    const/4 p0, 0x0

    .line 703
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 705
    :cond_0
    iput-object p2, p1, Lcom/miui/home/launcher/FolderIcon;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    const/4 p0, 0x0

    .line 706
    invoke-virtual {p1, p2, p0}, Lcom/miui/home/launcher/ItemIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private shouldUseAnimBlur()Z
    .locals 1

    .line 831
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderCling;->getFolderAnimIcon()Lcom/miui/home/launcher/FolderIcon;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/miui/home/launcher/FolderIcon;->isAnimFolderIcon:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private updateBackground(Lcom/miui/home/launcher/FolderIcon;)V
    .locals 2

    .line 693
    new-instance v0, Lcom/miui/home/launcher/FolderIcon$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/miui/home/launcher/FolderIcon$$ExternalSyntheticLambda6;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    new-instance v1, Lcom/miui/home/launcher/FolderIcon$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/miui/home/launcher/FolderIcon$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/FolderIcon;Lcom/miui/home/launcher/FolderIcon;)V

    invoke-virtual {p1, v0, v1}, Lcom/miui/home/launcher/FolderIcon;->getIconAsync(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    .line 237
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->isDropable(Lcom/miui/home/launcher/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public addPendingItem(Lcom/miui/home/launcher/PendingItem;)V
    .locals 2

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addPendingItem "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " class = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderIcon"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/PendingSourceDelegate;->addPendingItem(Lcom/miui/home/launcher/PendingItem;)V

    return-void
.end method

.method public bindFolderInfo(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/FolderInfo;Z)V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mFolderBackground:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/ItemIcon;->setIconImageView(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)V

    .line 116
    invoke-virtual {p2, p1}, Lcom/miui/home/launcher/FolderInfo;->getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ItemIcon;->setTag(Ljava/lang/Object;)V

    .line 118
    iput-object p2, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    .line 119
    iput-object p1, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 120
    invoke-virtual {p0, p2, p0}, Lcom/miui/home/launcher/FolderIcon;->rebindInfo(Lcom/miui/home/launcher/ItemInfo;Landroid/view/ViewGroup;)V

    if-nez p3, :cond_0

    .line 122
    invoke-virtual {p2}, Lcom/miui/home/launcher/FolderInfo;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public canBeDeleted()Z
    .locals 1

    .line 383
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->isPendingItemsEmtpy()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->isDeletableWhenOne()Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public checkToDeleteSelf()V
    .locals 4

    .line 420
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0}, Lcom/miui/home/launcher/FolderInfo;->count()I

    move-result v0

    .line 421
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->canBeDeleted()Z

    move-result v1

    const-string v2, "FolderIcon"

    if-eqz v1, :cond_0

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkToDeleteSelf "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/miui/home/launcher/FolderIcon;->mIsFastDelete:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->handleFolderDeletion(I)V

    :cond_0
    if-nez v0, :cond_1

    .line 425
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->isPendingItemsEmtpy()Z

    move-result v0

    if-nez v0, :cond_1

    .line 426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkToDeleteSelf pendingSources = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    .line 427
    invoke-virtual {p0}, Lcom/miui/home/launcher/PendingSourceDelegate;->getPendingItems()Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    aget-object p0, p0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 426
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected clearAnimIconsImgData()V
    .locals 0

    return-void
.end method

.method public clearFolderIconLayerType()V
    .locals 2

    .line 190
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLayerType()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/FolderIcon;->mDesktopFolderIconLayerType:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 191
    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public deleteSelf()V
    .locals 3

    .line 388
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/CellLayout;

    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/CellLayout;

    invoke-virtual {v0}, Lcom/miui/home/launcher/CellLayout;->getOnLongClickAgent()Lcom/miui/home/launcher/OnLongClickAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/OnLongClickAgent;->cancelCustomziedLongPress()V

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/FolderIcon;->resetDragItemIfNeed(Lcom/miui/home/launcher/FolderInfo;)V

    const/4 v0, 0x0

    .line 392
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->closeFolder(Lcom/miui/home/launcher/FolderInfo;)V

    .line 394
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/Launcher;->preRemoveItem(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 395
    iput-boolean v0, p0, Lcom/miui/home/launcher/FolderIcon;->mIsPreRemoved:Z

    .line 396
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 397
    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 398
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 399
    new-instance v1, Lcom/miui/home/launcher/FolderIcon$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/FolderIcon$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 403
    new-instance v1, Lcom/miui/home/launcher/FolderIcon$3;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/FolderIcon$3;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 409
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method protected dropIconIntoFolderIcon(Lcom/miui/home/launcher/DragObject;Z)V
    .locals 0

    return-void
.end method

.method public finishPendingAll()V
    .locals 1

    .line 549
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-virtual {p0}, Lcom/miui/home/launcher/PendingSourceDelegate;->getPendingItems()Ljava/util/HashSet;

    move-result-object p0

    .line 550
    invoke-virtual {p0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/PendingItem;

    .line 551
    invoke-interface {v0}, Lcom/miui/home/launcher/PendingItem;->finishPending()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected folderIsOpen(Lcom/miui/home/launcher/FolderInfo;)Z
    .locals 0

    .line 769
    iget-boolean p0, p1, Lcom/miui/home/launcher/FolderInfo;->opened:Z

    return p0
.end method

.method public folmeDown()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result v0

    if-nez v0, :cond_0

    .line 217
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->folmeDown()V

    :cond_0
    return-void
.end method

.method public folmeUp()V
    .locals 0

    .line 223
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->folmeUp()V

    return-void
.end method

.method public abstract synthetic getBackAnimPreviewDrawable()Landroid/graphics/drawable/Drawable;
.end method

.method public getContainerId()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCover()Landroid/widget/ImageView;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultLayerType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method protected getDragEnterAnimatorValues()[F
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [F

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p0, v0

    .line 302
    sget v0, Lcom/miui/home/launcher/FolderIcon;->DEFAULT_DRAG_OVER_ANIM_SCALE:F

    const/4 v1, 0x1

    aput v0, p0, v1

    return-object p0
.end method

.method protected getDragExitAnimatorValues()[F
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [F

    .line 309
    sget v0, Lcom/miui/home/launcher/FolderIcon;->DEFAULT_DRAG_OVER_ANIM_SCALE:F

    const/4 v1, 0x0

    aput v0, p0, v1

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    aput v1, p0, v0

    return-object p0
.end method

.method public getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;
    .locals 2

    .line 233
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ItemIcon;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const p0, 0x7f10008f

    invoke-virtual {p1, p0, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDropTargetDelegate(Lcom/miui/home/launcher/DragObject;)Lcom/miui/home/launcher/DropTarget;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getFolderBackground()Landroid/graphics/drawable/Drawable;
.end method

.method protected getFolderBgGridFourIcon(Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 744
    invoke-virtual {p1}, Lcom/miui/home/launcher/IconCache;->getFolderBgGridFourIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/FolderIcon;->getNonNullIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected getFolderBgGridFourLight(Lcom/miui/home/launcher/IconCache;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 748
    invoke-virtual {p1}, Lcom/miui/home/launcher/IconCache;->getFolderBgGridFourLight()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/miui/home/launcher/FolderIcon;->getNonNullIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected getFolderIcon(Lcom/miui/home/launcher/IconCache;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 732
    invoke-virtual {p1}, Lcom/miui/home/launcher/IconCache;->getFolderIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/launcher/views/LauncherRelativeLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f0802c4

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/FolderIcon;->getNonNullIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method protected getFolderIconLight(Lcom/miui/home/launcher/IconCache;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 740
    invoke-virtual {p1}, Lcom/miui/home/launcher/IconCache;->getFolderIconLight()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/launcher/views/LauncherRelativeLayout;->mContext:Landroid/content/Context;

    const v1, 0x7f0802c7

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/FolderIcon;->getNonNullIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getFolderInfo()Lcom/miui/home/launcher/FolderInfo;
    .locals 0

    .line 539
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    return-object p0
.end method

.method protected getFolderPreviewAlpha(Z)F
    .locals 0

    if-eqz p1, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 0

    .line 334
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->getHitRect(Landroid/graphics/Rect;)V

    .line 335
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->setHitRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getHitView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected getIconAsync(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Landroid/graphics/drawable/Drawable;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 736
    invoke-static {p1, p2}, Lcom/miui/home/library/utils/AsyncTaskExecutorHelper;->execParallel(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public abstract getIconColumCount()I
.end method

.method public getItemInfo()Lcom/miui/home/launcher/ItemInfo;
    .locals 0

    .line 875
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    return-object p0
.end method

.method public getMirrorDragListener()Lcom/miui/home/library/mirror/MirrorDragListener;
    .locals 1

    .line 601
    new-instance v0, Lcom/miui/home/launcher/FolderIcon$5;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/FolderIcon$5;-><init>(Lcom/miui/home/launcher/FolderIcon;)V

    return-object v0
.end method

.method public bridge synthetic getMirrorMenuListener()Lcom/miui/home/library/mirror/MirrorMenuListener;
    .locals 0

    invoke-super {p0}, Lcom/miui/home/library/mirror/MirrorContextView;->getMirrorMenuListener()Lcom/miui/home/library/mirror/MirrorMenuListener;

    move-result-object p0

    return-object p0
.end method

.method protected getNonNullIcon(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object p2
.end method

.method public getOnDropAnnounce()Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;
    .locals 0

    return-object p0
.end method

.method public abstract getPreviewArray()[Landroid/widget/ImageView;
.end method

.method public abstract getPreviewContainer()Landroid/view/ViewGroup;
.end method

.method public abstract synthetic getPreviewContainerSnapshot()Landroid/graphics/Bitmap;
.end method

.method public abstract synthetic getPreviewCount()I
.end method

.method public abstract synthetic getPreviewHeight()F
.end method

.method public abstract synthetic getPreviewIconHeight()F
.end method

.method public bridge synthetic getPreviewItems()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/Folder$FolderCallback;->getPreviewItems()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getScreenId()J
    .locals 2

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getScreenId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSpanX()I
    .locals 0

    .line 777
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    return p0
.end method

.method public getSpanY()I
    .locals 0

    .line 781
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    return p0
.end method

.method public bridge synthetic getViewCellX()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewCellX()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getViewCellY()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewCellY()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getViewSpanX()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewSpanX()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getViewSpanY()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewSpanY()I

    move-result p0

    return p0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .line 596
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ItemIcon;->hasOverlappingRendering(Lcom/miui/home/launcher/Launcher;)Z

    move-result p0

    return p0
.end method

.method public invalidatePreviews()V
    .locals 0

    return-void
.end method

.method public isDropEnabled()Z
    .locals 2

    .line 355
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    sget-object v1, Lcom/miui/home/launcher/LauncherState;->ALL_APPS:Lcom/miui/home/launcher/LauncherState;

    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/Launcher;->isInState(Lcom/miui/home/launcher/LauncherState;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderCling;->isOpened()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected isDropable(Lcom/miui/home/launcher/ItemInfo;)Z
    .locals 3

    .line 241
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isInHotseatRecommend()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p1, Lcom/miui/home/launcher/ItemInfo;->itemType:I

    if-eqz v0, :cond_1

    const/16 v2, 0x12

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    const/16 v2, 0xe

    if-ne v0, v2, :cond_0

    instance-of v2, p1, Lcom/miui/home/launcher/oldman/ElderlyManShortcut;

    if-eqz v2, :cond_1

    :cond_0
    const/16 v2, 0xb

    if-eq v0, v2, :cond_1

    const/16 v2, 0x11

    if-ne v0, v2, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    iget-boolean p0, p0, Lcom/miui/home/launcher/FolderInfo;->opened:Z

    if-nez p0, :cond_2

    iget p0, p1, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    if-ne p0, v1, :cond_2

    iget p0, p1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    if-ne p0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isInHotseat()Z
    .locals 1

    .line 880
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Lcom/miui/home/launcher/FolderIcon$$ExternalSyntheticLambda5;->INSTANCE:Lcom/miui/home/launcher/FolderIcon$$ExternalSyntheticLambda5;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isPendingItemsEmtpy()Z
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-virtual {p0}, Lcom/miui/home/launcher/PendingSourceDelegate;->isPendingItemsEmtpy()Z

    move-result p0

    return p0
.end method

.method public isPreRemoved()Z
    .locals 0

    .line 350
    iget-boolean p0, p0, Lcom/miui/home/launcher/FolderIcon;->mIsPreRemoved:Z

    return p0
.end method

.method public loadIconPreViews(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 4

    .line 127
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    .line 129
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->hasPreviewIcons(Lcom/miui/home/launcher/FolderIcon;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 130
    instance-of v0, p1, Lcom/miui/home/launcher/folder/FolderIcon2x2;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 131
    check-cast p1, Lcom/miui/home/launcher/folder/FolderIcon2x2;

    invoke-virtual {p1}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getFolderPreviewIconView()[Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    move-result-object p1

    .line 132
    check-cast p0, Lcom/miui/home/launcher/folder/FolderIcon2x2;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon2x2;->getFolderPreviewIconView()[Lcom/miui/home/launcher/folder/FolderPreviewIconView;

    move-result-object p0

    .line 133
    array-length v0, p1

    array-length v2, p0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 136
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->getMBuddyInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->setMBuddyInfo(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 137
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/folder/FolderPreviewIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    :cond_0
    check-cast p1, Lcom/miui/home/launcher/folder/FolderIcon1x1;

    invoke-virtual {p1}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->getFolderPreviewIconView()[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    move-result-object p1

    .line 141
    check-cast p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;

    invoke-virtual {p0}, Lcom/miui/home/launcher/folder/FolderIcon1x1;->getFolderPreviewIconView()[Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;

    move-result-object p0

    .line 142
    array-length v0, p1

    array-length v2, p0

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_1
    if-ge v1, v0, :cond_4

    .line 144
    aget-object v2, p1, v1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_1

    .line 145
    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 146
    aget-object v2, p0, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->setMBuddyInfo(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 147
    aget-object v2, p0, v1

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 151
    :cond_1
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->getMBuddyInfo()Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->setMBuddyInfo(Lcom/miui/home/launcher/ShortcutInfo;)V

    .line 152
    aget-object v2, p0, v1

    aget-object v3, p1, v1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/home/launcher/folder/FolderIconPreviewContainer1X1$PreviewIconView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 156
    :cond_3
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->clearAnimIconsImgData()V

    :cond_4
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 804
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 805
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->setBlur()V

    return-void
.end method

.method public onClose()V
    .locals 5

    .line 318
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getPreviewArray()[Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 319
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 320
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 321
    instance-of v4, v3, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    if-eqz v4, :cond_0

    .line 322
    check-cast v3, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    invoke-virtual {v3}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->getForegroundLayers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;

    .line 323
    invoke-virtual {v4}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$Layer;->resetBackAnim()V

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    :cond_1
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isInNormalEditing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 328
    invoke-interface {p0, v1}, Lcom/miui/home/launcher/Folder$FolderCallback;->loadItemIcons(Z)V

    :cond_2
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 798
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->onDetachedFromWindow()V

    .line 799
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->clearAllBlur(Landroid/view/View;)V

    return-void
.end method

.method public onDragCompleted(Lcom/miui/home/launcher/DropTarget;Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDragOver(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 3

    .line 255
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/Launcher;->insertNewShortcutFromAllApps(Lcom/miui/home/launcher/DragObject;)V

    :cond_0
    const/4 v0, 0x1

    .line 258
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/FolderIcon;->dropIconIntoFolderIcon(Lcom/miui/home/launcher/DragObject;Z)V

    .line 259
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->isLastObject()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/miui/launcher/views/LauncherRelativeLayout;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-static {v1, v2}, Lcom/miui/home/launcher/LauncherModel;->updateFolderItems(Landroid/content/Context;Lcom/miui/home/launcher/FolderInfo;)V

    .line 262
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v1

    .line 263
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderIcon;->isRemoveSelfAfterDragAnim()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 264
    invoke-virtual {p0, p1, v1}, Lcom/miui/home/launcher/FolderIcon;->removeSelfAfterDragAnim(Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ItemInfo;)V

    goto :goto_0

    .line 266
    :cond_2
    invoke-virtual {v1}, Lcom/miui/home/launcher/ItemInfo;->finishPending()V

    .line 268
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/FolderIcon;->getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/DragObject;->setOnDropAnnounce(Ljava/lang/String;)V

    return v0
.end method

.method public onDropBack(Lcom/miui/home/launcher/DragObject;)V
    .locals 3

    const/4 v0, 0x1

    .line 571
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/FolderIcon;->dropIconIntoFolderIcon(Lcom/miui/home/launcher/DragObject;Z)V

    .line 572
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragInfo()Lcom/miui/home/launcher/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 573
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/FolderIcon$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/miui/home/launcher/FolderIcon$4;-><init>(Lcom/miui/home/launcher/FolderIcon;Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ShortcutInfo;)V

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/DragView;->setOnRemoveCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDropCompleted()V
    .locals 0

    return-void
.end method

.method public onFolderAnimationEnd()V
    .locals 0

    .line 205
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->restoreFolderIconLayerType()V

    return-void
.end method

.method public onFolderAnimationStart()V
    .locals 0

    .line 200
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->clearFolderIconLayerType()V

    return-void
.end method

.method public onIconRemoved()V
    .locals 0

    .line 637
    invoke-super {p0}, Lcom/miui/home/launcher/ItemIcon;->onIconRemoved()V

    return-void
.end method

.method protected onIconRemoved(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    .line 726
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Landroid/view/View;

    move-result-object p0

    instance-of p0, p0, Lcom/miui/home/launcher/ProgressShortcutIcon;

    if-eqz p0, :cond_0

    .line 727
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/ProgressShortcutIcon;

    invoke-virtual {p0}, Lcom/miui/home/launcher/ProgressShortcutIcon;->onIconRemoved()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 790
    invoke-super/range {p0 .. p5}, Landroid/widget/RelativeLayout;->onLayout(ZIIII)V

    .line 793
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->setBlur()V

    return-void
.end method

.method public onOpen()V
    .locals 0

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 857
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    if-nez p0, :cond_0

    return-void

    .line 860
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 861
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 864
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 865
    sget-object p0, Lcom/miui/home/launcher/FolderIcon$$ExternalSyntheticLambda4;->INSTANCE:Lcom/miui/home/launcher/FolderIcon$$ExternalSyntheticLambda4;

    invoke-interface {v0, p0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 839
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    if-nez p0, :cond_0

    return-void

    .line 842
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderInfo;->getContents()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 843
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 846
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 847
    sget-object p0, Lcom/miui/home/launcher/FolderIcon$$ExternalSyntheticLambda3;->INSTANCE:Lcom/miui/home/launcher/FolderIcon$$ExternalSyntheticLambda3;

    invoke-interface {v0, p0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 820
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-ne p1, p0, :cond_1

    .line 822
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 823
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->setBlur()V

    goto :goto_0

    .line 825
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-static {p0}, Lcom/miui/home/launcher/common/BlurUtilities;->clearAllBlur(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public rebindInfo(Lcom/miui/home/launcher/ItemInfo;Landroid/view/ViewGroup;)V
    .locals 0

    .line 170
    check-cast p1, Lcom/miui/home/launcher/FolderInfo;

    .line 171
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getMessageText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/miui/home/launcher/ItemIcon;->setMessageImmediately(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p1, p0}, Lcom/miui/home/launcher/FolderInfo;->setBuddyIconView(Lcom/miui/home/launcher/FolderIcon;)V

    .line 173
    iput-object p0, p1, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    .line 174
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isOpened()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-boolean p0, p0, Lcom/miui/home/launcher/FolderIcon;->isAnimFolderIcon:Z

    if-eqz p0, :cond_1

    .line 175
    :cond_0
    iget-object p0, p1, Lcom/miui/home/launcher/FolderInfo;->icon:Lcom/miui/home/launcher/Folder$FolderCallback;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/miui/home/launcher/Folder$FolderCallback;->showPreview(Z)V

    :cond_1
    return-void
.end method

.method public recalHitRect(Landroid/graphics/Rect;F[I)V
    .locals 4

    .line 340
    iget p0, p1, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x1

    aget v1, p3, v0

    iget v2, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    int-to-float v2, p0

    .line 341
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    float-to-int v2, v2

    aget p3, p3, v0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v0

    int-to-float p3, p3

    .line 342
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr p3, v0

    float-to-int p2, p3

    .line 340
    invoke-virtual {p1, p0, v1, v2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public removeFolderOnlyOneApp(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 12

    .line 452
    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->isDeletableWhenOne()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->isPendingItemsEmtpy()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    .line 453
    iput-boolean v0, p0, Lcom/miui/home/launcher/FolderIcon;->mIsPreRemoved:Z

    .line 454
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeFolderOnlyOneApp folder id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcom/miui/home/launcher/ItemInfo;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FolderIcon"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v1, p0, Lcom/miui/launcher/views/LauncherRelativeLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/miui/home/launcher/FolderInfo;->getAdapter(Landroid/content/Context;)Lcom/miui/home/launcher/ShortcutsAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/ShortcutsAdapter;->getItem(I)Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v1

    .line 457
    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3}, Lcom/miui/home/launcher/Launcher;->getFolderCling()Lcom/miui/home/launcher/FolderCling;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderCling;->getFolder()Lcom/miui/home/launcher/Folder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/Folder;->getContent()Lcom/miui/home/launcher/FolderGridView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/home/launcher/FolderGridView;->clearLastPosMap()V

    .line 458
    iget-boolean v3, p1, Lcom/miui/home/launcher/FolderInfo;->opened:Z

    if-eqz v3, :cond_0

    .line 459
    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v3, v2}, Lcom/miui/home/launcher/Launcher;->closeFolder(Z)Z

    .line 461
    :cond_0
    invoke-virtual {p1}, Lcom/miui/home/launcher/ItemInfo;->isInHotseat()Z

    move-result v3

    .line 462
    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iput v4, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    .line 463
    iget v4, p1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    iput v4, v1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    .line 464
    iget-wide v4, p1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iput-wide v4, v1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    if-eqz v3, :cond_1

    const-wide/16 v4, -0x65

    goto :goto_0

    :cond_1
    const-wide/16 v4, -0x64

    .line 465
    :goto_0
    iput-wide v4, v1, Lcom/miui/home/launcher/ItemInfo;->container:J

    .line 466
    iget-object v4, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v4, v1}, Lcom/miui/home/launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/miui/home/launcher/ItemInfo;)V

    .line 467
    iget-object v4, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/FolderInfo;->getBuddyIconView()Lcom/miui/home/launcher/FolderIcon;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/miui/home/launcher/Launcher;->removeFolder(Lcom/miui/home/launcher/FolderIcon;)V

    .line 468
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getBuddyIconView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 469
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 470
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 472
    :cond_2
    invoke-static {}, Lcom/miui/home/launcher/IconReorganizeMonitor;->isAutoReorganizing()Z

    move-result v4

    if-eqz v4, :cond_3

    instance-of v4, p1, Lcom/miui/home/launcher/ShortcutIcon;

    if-eqz v4, :cond_3

    .line 473
    check-cast p1, Lcom/miui/home/launcher/ShortcutIcon;

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/ShortcutIcon;->setIgnoreAnimationForOnce(Z)V

    .line 476
    :cond_3
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->isPairIcon()Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    if-eqz v3, :cond_5

    .line 478
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget p1, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2}, Lcom/miui/home/launcher/Launcher;->addItemToHotseats(Lcom/miui/home/launcher/ItemInfo;ILjava/lang/Runnable;)V

    if-eqz v0, :cond_6

    .line 480
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->uncheckShortcut(Lcom/miui/home/launcher/ShortcutInfo;)V

    goto :goto_2

    .line 483
    :cond_5
    iget-object v3, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-wide v5, v1, Lcom/miui/home/launcher/ItemInfo;->screenId:J

    iget-wide v7, v1, Lcom/miui/home/launcher/ItemInfo;->container:J

    iget v9, v1, Lcom/miui/home/launcher/ItemInfo;->cellX:I

    iget v10, v1, Lcom/miui/home/launcher/ItemInfo;->cellY:I

    const/4 v11, 0x0

    move-object v4, v1

    invoke-virtual/range {v3 .. v11}, Lcom/miui/home/launcher/Launcher;->addItemToWorkspace(Lcom/miui/home/launcher/ItemInfo;JJIILjava/lang/Runnable;)V

    if-eqz v0, :cond_6

    .line 485
    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->isChecked()Z

    move-result v0

    invoke-virtual {p1, p0, v0, v1}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->resetIconDragSourceExcludeHotSeats(Lcom/miui/home/launcher/Launcher;ZLcom/miui/home/launcher/ShortcutInfo;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public removePendingItem(Lcom/miui/home/launcher/PendingItem;)V
    .locals 2

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removePendingItem "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " class = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FolderIcon"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mPendingItemsDelegate:Lcom/miui/home/launcher/PendingSourceDelegate;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/PendingSourceDelegate;->removePendingItem(Lcom/miui/home/launcher/PendingItem;)V

    .line 372
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->checkToDeleteSelf()V

    .line 373
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->invalidateWorkspacePreview()V

    return-void
.end method

.method protected removeSelfAfterDragAnim(Lcom/miui/home/launcher/DragObject;Lcom/miui/home/launcher/ItemInfo;)V
    .locals 1

    .line 277
    new-instance v0, Lcom/miui/home/launcher/FolderIcon$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/miui/home/launcher/FolderIcon$1;-><init>(Lcom/miui/home/launcher/FolderIcon;Lcom/miui/home/launcher/ItemInfo;Lcom/miui/home/launcher/DragObject;)V

    invoke-virtual {p1, v0}, Lcom/miui/home/launcher/DragObject;->addDragAnimationListener(Lcom/miui/home/launcher/DragController$DropAnimationListener;)V

    return-void
.end method

.method protected resetDragItemIfNeed(Lcom/miui/home/launcher/FolderInfo;)V
    .locals 1

    .line 413
    iget-object v0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getDragController()Lcom/miui/home/launcher/DragController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/DragController;->isFolderDragging(Lcom/miui/home/launcher/FolderInfo;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 414
    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->resetDragItems()V

    :cond_0
    return-void
.end method

.method public restoreFolderIconLayerType()V
    .locals 2

    .line 195
    iget v0, p0, Lcom/miui/home/launcher/FolderIcon;->mDesktopFolderIconLayerType:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public setAnimFolderIconTag()V
    .locals 1

    const/4 v0, 0x1

    .line 688
    iput-boolean v0, p0, Lcom/miui/home/launcher/FolderIcon;->isAnimFolderIcon:Z

    return-void
.end method

.method public setBlur()V
    .locals 13

    .line 809
    instance-of v0, p0, Lcom/miui/home/launcher/folder/FolderIcon1x1;

    .line 810
    invoke-static {v0}, Lcom/miui/home/launcher/common/BlurUtilities;->isFolderBlurSupported(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 811
    iget-object v2, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-object v3, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-static {v1, v0, v3}, Lcom/miui/home/launcher/common/BlurUtilities;->getFolderIconBlurRoundRectRadius(Landroid/content/Context;Ljava/lang/Boolean;Landroid/widget/ImageView;)I

    move-result v3

    const v4, -0x4c89898a

    const/16 v5, 0x64

    const v6, 0x66b4b4b4

    const/16 v7, 0x64

    const v8, -0xeb6c00

    const/16 v9, 0x6a

    const v10, -0xd10e00

    const/16 v11, 0x6a

    .line 814
    invoke-direct {p0}, Lcom/miui/home/launcher/FolderIcon;->shouldUseAnimBlur()Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    move v12, p0

    .line 811
    invoke-static/range {v2 .. v12}, Lcom/miui/home/launcher/common/BlurUtilities;->setFolderIconBlur(Landroid/view/View;IIIIIIIIII)V

    :cond_1
    return-void
.end method

.method public bridge synthetic setClipGridViewChild(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/folder/FolderAnimListener;->setClipGridViewChild(Z)V

    return-void
.end method

.method public setDragController(Lcom/miui/home/launcher/DragController;)V
    .locals 0

    return-void
.end method

.method public setEditMode(ZZ)V
    .locals 0

    .line 642
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mNoWordAdapter:Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/util/noword/NoWordLauncherElementAdapter;->onEditModeChange(Z)V

    return-void
.end method

.method public setFastDelete(Z)V
    .locals 0

    .line 556
    iput-boolean p1, p0, Lcom/miui/home/launcher/FolderIcon;->mIsFastDelete:Z

    return-void
.end method

.method protected setHitRect(Landroid/graphics/Rect;)V
    .locals 4

    .line 346
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/miui/home/launcher/ItemIcon;->mIconImageView:Lcom/miui/home/launcher/LauncherIconImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getBottom()I

    move-result p0

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public bridge synthetic setIgnoreAnimationForOnce(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/AutoLayoutAnimation$HostView;->setIgnoreAnimationForOnce(Z)V

    return-void
.end method

.method public setIsDrawingInThumbnailView(Z)V
    .locals 1

    .line 544
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ItemIcon;->setIsDrawingInThumbnailView(Z)V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 545
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->getDefaultLayerType()I

    move-result p1

    :goto_0
    sget-object v0, Lcom/miui/home/launcher/ItemIcon;->sLayerPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout;->setLayerType(ILandroid/graphics/Paint;)V

    return-void
.end method

.method public shouldDisableLongPressInHotSeat()Z
    .locals 1

    .line 444
    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->isPreRemoved()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/FolderIcon;->isPendingItemsEmtpy()Z

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

.method public updateFolderTilte(Lcom/miui/home/launcher/ShortcutInfo;Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 4

    .line 497
    invoke-static {}, Lcom/miui/home/launcher/common/AppCategoryManager;->getInstance()Lcom/miui/home/launcher/common/AppCategoryManager;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/launcher/views/LauncherRelativeLayout;->mContext:Landroid/content/Context;

    .line 498
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/miui/home/launcher/FolderIcon$CategoryUpdateListener;

    iget-object p0, p0, Lcom/miui/home/launcher/FolderIcon;->mInfo:Lcom/miui/home/launcher/FolderInfo;

    invoke-direct {v2, p0}, Lcom/miui/home/launcher/FolderIcon$CategoryUpdateListener;-><init>(Lcom/miui/home/launcher/FolderInfo;)V

    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/String;

    .line 499
    invoke-virtual {p1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, p0, v3

    invoke-virtual {p2}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, p0, p2

    .line 497
    invoke-virtual {v0, v1, v2, p0}, Lcom/miui/home/launcher/common/AppCategoryManager;->getAppCategoryId(Landroid/content/Context;Lcom/miui/home/launcher/common/AppCategoryManager$OnCategoryLoadedListener;[Ljava/lang/String;)V

    return-void
.end method

.method public updateNewInstallIndicator(Z)V
    .locals 0

    .line 183
    iget-object p0, p0, Lcom/miui/home/launcher/ItemIcon;->mTitleView:Lcom/miui/home/launcher/TitleTextView;

    if-eqz p0, :cond_0

    .line 184
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/TitleTextView;->updateNewInstallIndicator(Z)V

    :cond_0
    return-void
.end method
