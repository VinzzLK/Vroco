.class public Lcom/miui/home/launcher/UninstallDropTarget;
.super Lcom/miui/home/launcher/ButtonDropTarget;
.source "UninstallDropTarget.java"

# interfaces
.implements Lcom/miui/home/launcher/DropTarget$OnDropAnnounce;


# static fields
.field public static final DELETE:Lcom/miui/home/launcher/UninstallDropTargetMode;

.field private static final DRAG_OVER_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

.field private static final DRAG_OVER_STATE_DELETE:Lcom/miui/home/launcher/multiselect/TopMenuState;

.field private static final PRESSED_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

.field private static final PRESSED_COLOR_DELETE:Lcom/miui/home/launcher/multiselect/TopMenuColor;

.field private static final PRESSED_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

.field public static final UNINSTALL:Lcom/miui/home/launcher/UninstallDropTargetMode;


# instance fields
.field private mBackgroundImageView:Landroid/widget/ImageView;

.field private mIsContainUninstallOrDeleteItem:Z

.field private mUninstallDropTargetMode:Lcom/miui/home/launcher/UninstallDropTargetMode;


# direct methods
.method public static synthetic $r8$lambda$elAw8xEp8ArqGKcZhKJPjs4C3L8(Lcom/miui/home/launcher/UninstallDropTarget;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/UninstallDropTarget;->lambda$onFinishInflate$0(Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 40
    new-instance v0, Lcom/miui/home/launcher/multiselect/TopMenuColor;

    const v1, 0x7f0606b5

    invoke-direct {v0, v1, v1}, Lcom/miui/home/launcher/multiselect/TopMenuColor;-><init>(II)V

    sput-object v0, Lcom/miui/home/launcher/UninstallDropTarget;->PRESSED_COLOR:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    .line 41
    new-instance v1, Lcom/miui/home/launcher/multiselect/TopMenuState;

    const-string v2, "pressed"

    invoke-direct {v1, v0, v2}, Lcom/miui/home/launcher/multiselect/TopMenuState;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuColor;Ljava/lang/String;)V

    sput-object v1, Lcom/miui/home/launcher/UninstallDropTarget;->PRESSED_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    .line 43
    new-instance v1, Lcom/miui/home/launcher/multiselect/TopMenuState;

    const-string v2, "drag_over"

    invoke-direct {v1, v0, v2}, Lcom/miui/home/launcher/multiselect/TopMenuState;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuColor;Ljava/lang/String;)V

    sput-object v1, Lcom/miui/home/launcher/UninstallDropTarget;->DRAG_OVER_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    .line 45
    new-instance v0, Lcom/miui/home/launcher/multiselect/TopMenuColor;

    const v1, 0x7f0606ac

    invoke-direct {v0, v1, v1}, Lcom/miui/home/launcher/multiselect/TopMenuColor;-><init>(II)V

    sput-object v0, Lcom/miui/home/launcher/UninstallDropTarget;->PRESSED_COLOR_DELETE:Lcom/miui/home/launcher/multiselect/TopMenuColor;

    .line 47
    new-instance v1, Lcom/miui/home/launcher/multiselect/TopMenuState;

    invoke-direct {v1, v0, v2}, Lcom/miui/home/launcher/multiselect/TopMenuState;-><init>(Lcom/miui/home/launcher/multiselect/TopMenuColor;Ljava/lang/String;)V

    sput-object v1, Lcom/miui/home/launcher/UninstallDropTarget;->DRAG_OVER_STATE_DELETE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    .line 49
    new-instance v0, Lcom/miui/home/launcher/UninstallDropTargetMode$Uninstall;

    invoke-direct {v0}, Lcom/miui/home/launcher/UninstallDropTargetMode$Uninstall;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/UninstallDropTarget;->UNINSTALL:Lcom/miui/home/launcher/UninstallDropTargetMode;

    .line 50
    new-instance v0, Lcom/miui/home/launcher/UninstallDropTargetMode$Delete;

    invoke-direct {v0}, Lcom/miui/home/launcher/UninstallDropTargetMode$Delete;-><init>()V

    sput-object v0, Lcom/miui/home/launcher/UninstallDropTarget;->DELETE:Lcom/miui/home/launcher/UninstallDropTargetMode;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ButtonDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 53
    iput-boolean p1, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mIsContainUninstallOrDeleteItem:Z

    return-void
.end method

.method private changeIconAndLabel()V
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mUninstallDropTargetMode:Lcom/miui/home/launcher/UninstallDropTargetMode;

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDropTargetMode;->getIconResId()I

    move-result v0

    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mUninstallDropTargetMode:Lcom/miui/home/launcher/UninstallDropTargetMode;

    invoke-virtual {v1}, Lcom/miui/home/launcher/UninstallDropTargetMode;->getIconResIdLightWallpaper()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->setImageResource(II)V

    const v0, 0x7f0a03cc

    .line 91
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mBackgroundImageView:Landroid/widget/ImageView;

    .line 92
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mUninstallDropTargetMode:Lcom/miui/home/launcher/UninstallDropTargetMode;

    invoke-virtual {v0}, Lcom/miui/home/launcher/UninstallDropTargetMode;->getIconBackgroundResId()I

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mBackgroundImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mUninstallDropTargetMode:Lcom/miui/home/launcher/UninstallDropTargetMode;

    invoke-virtual {v1}, Lcom/miui/home/launcher/UninstallDropTargetMode;->getLabelResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mBackgroundImageView:Landroid/widget/ImageView;

    invoke-static {p0, v0, v1}, Lcom/miui/home/launcher/AccessibilityAdaptHelper;->setImageViewAsButtonAccessibility(Landroid/view/View;Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void
.end method

.method private getTopMenuState(I)Lcom/miui/home/launcher/multiselect/TopMenuState;
    .locals 0

    .line 112
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDropTarget;->isUninstallMode()Z

    move-result p0

    if-nez p0, :cond_0

    .line 113
    sget-object p0, Lcom/miui/home/launcher/UninstallDropTarget;->DRAG_OVER_STATE_DELETE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    return-object p0

    :cond_0
    const/4 p0, 0x1

    if-ne p1, p0, :cond_1

    .line 116
    sget-object p0, Lcom/miui/home/launcher/UninstallDropTarget;->PRESSED_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    return-object p0

    .line 118
    :cond_1
    sget-object p0, Lcom/miui/home/launcher/UninstallDropTarget;->DRAG_OVER_STATE:Lcom/miui/home/launcher/multiselect/TopMenuState;

    return-object p0
.end method

.method private synthetic lambda$onFinishInflate$0(Landroid/view/View;)V
    .locals 1

    .line 70
    invoke-virtual {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->isNormalState()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mUninstallDropTargetMode:Lcom/miui/home/launcher/UninstallDropTargetMode;

    iget-object p0, p0, Lcom/miui/home/launcher/ButtonDropTarget;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getMonitor()Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/multiselect/MultiSelectMonitor;->getCheckedShortcutInfos()[Lcom/miui/home/launcher/ShortcutInfo;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/miui/home/launcher/UninstallDropTargetMode;->onClick(Lcom/miui/home/launcher/Launcher;Ljava/util/List;)V

    const-string/jumbo p0, "uninstall"

    .line 72
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackEditModeTopMenuClickEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 4

    .line 216
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragSource()Lcom/miui/home/launcher/DragSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/miui/home/launcher/DragSource;->getContainerId()J

    move-result-wide v0

    const-wide/16 v2, -0x70

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const-wide/16 v2, -0x6e

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    .line 220
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ButtonDropTarget;->acceptDrop(Lcom/miui/home/launcher/DragObject;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public changeToNormalState(ZZ)V
    .locals 0

    .line 191
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->changeToNormalState(ZZ)V

    const/4 p1, 0x1

    .line 192
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/UninstallDropTarget;->dealWithViewBlur(Z)V

    return-void
.end method

.method public dealWithViewBlur(Z)V
    .locals 2

    .line 202
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 203
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mBackgroundImageView:Landroid/widget/ImageView;

    int-to-float v0, v0

    const/high16 v1, 0x42480000    # 50.0f

    invoke-static {p0, p1, v1, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setEditBlurWithRadius(Landroid/view/View;ZFF)V

    return-void
.end method

.method public folmeComplete(Ljava/lang/Object;)V
    .locals 0

    .line 197
    invoke-super {p0, p1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->folmeComplete(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 198
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/UninstallDropTarget;->dealWithViewBlur(Z)V

    return-void
.end method

.method protected getDragOverState()Lcom/miui/home/launcher/multiselect/TopMenuState;
    .locals 1

    const/4 v0, 0x2

    .line 107
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/UninstallDropTarget;->getTopMenuState(I)Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object p0

    return-object p0
.end method

.method public getDropAnnounceForAccessibility(Lcom/miui/home/launcher/DragObject;)Ljava/lang/String;
    .locals 0

    .line 157
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f100092

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getPressedState()Lcom/miui/home/launcher/multiselect/TopMenuState;
    .locals 1

    const/4 v0, 0x1

    .line 102
    invoke-direct {p0, v0}, Lcom/miui/home/launcher/UninstallDropTarget;->getTopMenuState(I)Lcom/miui/home/launcher/multiselect/TopMenuState;

    move-result-object p0

    return-object p0
.end method

.method protected hasTouchAnim()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isContainUninstallOrDeleteItem()Z
    .locals 0

    .line 165
    iget-boolean p0, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mIsContainUninstallOrDeleteItem:Z

    return p0
.end method

.method public isUninstallMode()Z
    .locals 1

    .line 85
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mUninstallDropTargetMode:Lcom/miui/home/launcher/UninstallDropTargetMode;

    sget-object v0, Lcom/miui/home/launcher/UninstallDropTarget;->UNINSTALL:Lcom/miui/home/launcher/UninstallDropTargetMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onDragEnter(Lcom/miui/home/launcher/DragObject;)V
    .locals 1

    .line 143
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ButtonDropTarget;->onDragEnter(Lcom/miui/home/launcher/DragObject;)V

    const v0, 0x7f100070

    .line 144
    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->announceForAccessibility(I)V

    .line 145
    invoke-static {}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->getInstance()Lcom/miui/home/launcher/common/HapticFeedbackCompat;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miui/home/launcher/common/HapticFeedbackCompat;->performReadyDrop(Landroid/view/View;)V

    .line 146
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setSelected(Z)V

    return-void
.end method

.method public onDragExit(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 151
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ButtonDropTarget;->onDragExit(Lcom/miui/home/launcher/DragObject;)V

    .line 152
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDragView()Lcom/miui/home/launcher/DragView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setSelected(Z)V

    return-void
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 2

    .line 136
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ButtonDropTarget;->onDrop(Lcom/miui/home/launcher/DragObject;)Z

    .line 137
    invoke-virtual {p1}, Lcom/miui/home/launcher/DragObject;->getDraggingSize()I

    move-result v0

    invoke-static {v0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackDragApkToCenterDeleteDropTargetEvent(I)V

    .line 138
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mUninstallDropTargetMode:Lcom/miui/home/launcher/UninstallDropTargetMode;

    iget-object v1, p0, Lcom/miui/home/launcher/ButtonDropTarget;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0, v1, p0, p1}, Lcom/miui/home/launcher/UninstallDropTargetMode;->onDrop(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/UninstallDropTarget;Lcom/miui/home/launcher/DragObject;)Z

    move-result p0

    return p0
.end method

.method public onDropStart(Lcom/miui/home/launcher/DragObject;)V
    .locals 0

    .line 130
    invoke-super {p0, p1}, Lcom/miui/home/launcher/ButtonDropTarget;->onDropStart(Lcom/miui/home/launcher/DragObject;)V

    const/4 p0, 0x1

    .line 131
    iput-boolean p0, p1, Lcom/miui/home/launcher/DragObject;->removeDragViewsAtLast:Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 68
    invoke-super {p0}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->onFinishInflate()V

    .line 69
    new-instance v0, Lcom/miui/home/launcher/UninstallDropTarget$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/UninstallDropTarget$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/UninstallDropTarget;)V

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setIsContainUninstallOrDeleteItem(Z)V
    .locals 0

    .line 161
    iput-boolean p1, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mIsContainUninstallOrDeleteItem:Z

    return-void
.end method

.method public setMode(Lcom/miui/home/launcher/UninstallDropTargetMode;)V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mUninstallDropTargetMode:Lcom/miui/home/launcher/UninstallDropTargetMode;

    if-eq v0, p1, :cond_0

    .line 79
    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mUninstallDropTargetMode:Lcom/miui/home/launcher/UninstallDropTargetMode;

    .line 80
    invoke-direct {p0}, Lcom/miui/home/launcher/UninstallDropTarget;->changeIconAndLabel()V

    :cond_0
    return-void
.end method

.method public showIfNeed()V
    .locals 3

    .line 170
    invoke-virtual {p0}, Lcom/miui/home/launcher/ButtonDropTarget;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 171
    iget-boolean v0, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mIsContainUninstallOrDeleteItem:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 172
    invoke-virtual {p0, v2, v1}, Lcom/miui/home/launcher/UninstallDropTarget;->changeToNormalState(ZZ)V

    goto :goto_0

    .line 174
    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->changeToGoneState(ZZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateImageAndTextColor(II)V
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDropTarget;->isUninstallMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/multiselect/TopMenuContainer;->updateImageAndTextColor(II)V

    :cond_0
    return-void
.end method

.method public updateViewBlurMode(Z)V
    .locals 2

    .line 207
    invoke-static {}, Lcom/miui/home/launcher/common/BlurUtilities;->isThreeLayerBlurSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/ButtonDropTarget;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 209
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDropTarget;->mBackgroundImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const/16 p1, 0xa

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    int-to-float v0, v0

    invoke-static {p0, p1, v0}, Lcom/miui/home/launcher/common/BlurUtilities;->setViewBlur(Landroid/view/View;IF)V

    :cond_1
    return-void
.end method
