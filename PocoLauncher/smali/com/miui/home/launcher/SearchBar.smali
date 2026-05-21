.class public Lcom/miui/home/launcher/SearchBar;
.super Landroid/widget/FrameLayout;
.source "SearchBar.java"

# interfaces
.implements Lcom/miui/home/launcher/WallpaperUtils$WallpaperColorChangedListener;
.implements Lcom/miui/launcher/sosc/interfaces/SoscingView;


# static fields
.field public static final WIDTH:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/miui/home/launcher/SearchBar;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDesktopLayout:Lcom/miui/home/launcher/SearchBarDesktopLayout;

.field private mDrawerLayout:Lcom/miui/home/launcher/SearchBarDrawerLayout;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mSearchBarWidth:I

.field private mWidthAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public static synthetic $r8$lambda$QsmTESfUZDMRbobA596o8344zRQ(Lcom/miui/home/launcher/SearchBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBar;->lambda$tryUpdate$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$nX7wUjvDEb6GwXL8IGc4VupJnqU(Lcom/miui/home/launcher/SearchBar;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBar;->lambda$tryUpdate$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 85
    new-instance v0, Lcom/miui/home/launcher/SearchBar$1;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string/jumbo v2, "width"

    invoke-direct {v0, v1, v2}, Lcom/miui/home/launcher/SearchBar$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/miui/home/launcher/SearchBar;->WIDTH:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    sget-object p1, Lcom/miui/home/launcher/SearchBar;->WIDTH:Landroid/util/Property;

    const/4 p2, 0x2

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    invoke-static {p0, p1, p2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/SearchBar;->mWidthAnimator:Landroid/animation/ObjectAnimator;

    .line 34
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBar;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private init()V
    .locals 1

    .line 51
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBar;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 52
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getSearchBarWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/home/launcher/SearchBar;->mSearchBarWidth:I

    return-void
.end method

.method private synthetic lambda$tryUpdate$0()V
    .locals 1

    .line 42
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBar;->getDesktopLayout()Lcom/miui/home/launcher/SearchBarDesktopLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBar;->getDesktopLayout()Lcom/miui/home/launcher/SearchBarDesktopLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->refreshSearchBarExterior()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$tryUpdate$1()V
    .locals 1

    .line 39
    invoke-static {}, Lcom/miui/home/launcher/SearchBarStyleData;->getInstance()Lcom/miui/home/launcher/SearchBarStyleData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBarStyleData;->initDataIfNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    new-instance v0, Lcom/miui/home/launcher/SearchBar$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/SearchBar$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/SearchBar;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private updatePadding()V
    .locals 3

    .line 166
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->isInHalfSoscSplitMode()Z

    move-result v0

    .line 167
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v0, :cond_0

    const v0, 0x7f070675

    goto :goto_0

    :cond_0
    const v0, 0x7f070674

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 168
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, v1, v0, v2}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBar;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->isFolderOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 130
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public getDesktopLayout()Lcom/miui/home/launcher/SearchBarDesktopLayout;
    .locals 0

    .line 118
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBar;->mDesktopLayout:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    return-object p0
.end method

.method public getDrawerLayout()Lcom/miui/home/launcher/SearchBarDrawerLayout;
    .locals 0

    .line 122
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBar;->mDrawerLayout:Lcom/miui/home/launcher/SearchBarDrawerLayout;

    return-object p0
.end method

.method public getLauncher()Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBar;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method public getSearchBarWidth()I
    .locals 0

    .line 73
    iget p0, p0, Lcom/miui/home/launcher/SearchBar;->mSearchBarWidth:I

    return p0
.end method

.method public hideMenu()V
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBar;->mDesktopLayout:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    if-eqz p0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->hideMenu()V

    :cond_0
    return-void
.end method

.method public isShowingMenu()Z
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBar;->mDesktopLayout:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    if-eqz p0, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->isShowingMenu()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isThemesShow()I
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBar;->mDesktopLayout:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    if-eqz p0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->isThemesShow()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public isXiaoaiShow()Z
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBar;->mDesktopLayout:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    if-eqz p0, :cond_0

    .line 105
    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->isXiaoaiShow()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 61
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a0323

    .line 62
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/SearchBarDesktopLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBar;->mDesktopLayout:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    const v0, 0x7f0a0324

    .line 63
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/SearchBarDrawerLayout;

    iput-object v0, p0, Lcom/miui/home/launcher/SearchBar;->mDrawerLayout:Lcom/miui/home/launcher/SearchBarDrawerLayout;

    return-void
.end method

.method public onInterceptSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 68
    iget p1, p0, Lcom/miui/home/launcher/SearchBar;->mSearchBarWidth:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 69
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onScreenSizeChanged()V
    .locals 0

    .line 153
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBar;->updatePadding()V

    return-void
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 158
    invoke-direct {p0}, Lcom/miui/home/launcher/SearchBar;->updatePadding()V

    return-void
.end method

.method public onWallpaperColorChanged()V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBar;->mDesktopLayout:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->onWallpaperColorChanged()V

    return-void
.end method

.method public openSearch(Ljava/lang/String;)V
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBar;->mDesktopLayout:Lcom/miui/home/launcher/SearchBarDesktopLayout;

    if-eqz p0, :cond_0

    .line 148
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/SearchBarDesktopLayout;->openSearch(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSearchBarWidth(I)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/miui/home/launcher/SearchBar;->mSearchBarWidth:I

    return-void
.end method

.method public setSearchBarWidthAnim(I)V
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/miui/home/launcher/SearchBar;->mWidthAnimator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [I

    iget v2, p0, Lcom/miui/home/launcher/SearchBar;->mSearchBarWidth:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setIntValues([I)V

    .line 82
    iget-object p0, p0, Lcom/miui/home/launcher/SearchBar;->mWidthAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public tryUpdate()V
    .locals 1

    .line 38
    new-instance v0, Lcom/miui/home/launcher/SearchBar$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/miui/home/launcher/SearchBar$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/SearchBar;)V

    invoke-static {v0}, Lcom/miui/home/launcher/common/BackgroundThread;->post(Ljava/lang/Runnable;)V

    return-void
.end method
