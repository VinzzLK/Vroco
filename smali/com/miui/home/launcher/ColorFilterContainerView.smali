.class public Lcom/miui/home/launcher/ColorFilterContainerView;
.super Landroid/widget/RelativeLayout;
.source "ColorFilterContainerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/ColorFilterContainerView$ColorFilterRevealPrgListener;
    }
.end annotation


# instance fields
.field private isColorFilterAnimOpen:Z

.field private isColorFilterEnabled:Z

.field private mAllAppsContainerView:Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;

.field private mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

.field private mColorFilterGroup:Landroid/widget/RadioGroup;

.field private mColorFilterSearchBarIcon:Landroid/view/View;

.field private mColorMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/miui/home/launcher/bean/AllAppsColorBean;",
            ">;"
        }
    .end annotation
.end field

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mRevealAnimRadius:I

.field private mRevealDrawable:Lcom/miui/home/launcher/allapps/anim/RevealDrawable;

.field private mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

.field private mSelectedColorType:I


# direct methods
.method public static synthetic $r8$lambda$0SNZ9Yu2I2dO00TtnsVXLzufPjc(Lcom/miui/home/launcher/ColorFilterContainerView;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ColorFilterContainerView;->lambda$changeSearchBarState$2(ZZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$otAaEcOunn7A914m7H0VCB_504E(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/home/launcher/ColorFilterContainerView;->lambda$selectColor$1(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$v35OK0bJv4iPo8avi_73-gBTb74(Lcom/miui/home/launcher/ColorFilterContainerView;Ljava/lang/Integer;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/ColorFilterContainerView;->lambda$setupColorFilterView$0(Ljava/lang/Integer;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/ColorFilterContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 59
    iput p2, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mSelectedColorType:I

    .line 89
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d003b

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/home/launcher/ColorFilterContainerView;)Lcom/miui/home/launcher/allapps/anim/RevealDrawable;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mRevealDrawable:Lcom/miui/home/launcher/allapps/anim/RevealDrawable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/miui/home/launcher/ColorFilterContainerView;)Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    return-object p0
.end method

.method static synthetic access$102(Lcom/miui/home/launcher/ColorFilterContainerView;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;)Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mSearchBarController:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;

    return-object p1
.end method

.method static synthetic access$200(Lcom/miui/home/launcher/ColorFilterContainerView;)Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/miui/home/launcher/ColorFilterContainerView;)Landroid/widget/RadioGroup;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterGroup:Landroid/widget/RadioGroup;

    return-object p0
.end method

.method static synthetic access$400(Lcom/miui/home/launcher/ColorFilterContainerView;)Lcom/miui/home/launcher/Launcher;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-object p0
.end method

.method static synthetic access$500(Lcom/miui/home/launcher/ColorFilterContainerView;Landroid/widget/RadioButton;II)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/ColorFilterContainerView;->updateColorFilterItemDrawable(Landroid/widget/RadioButton;II)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/home/launcher/ColorFilterContainerView;)Landroid/util/SparseArray;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorMap:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$700(Lcom/miui/home/launcher/ColorFilterContainerView;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->animateRecycleView()V

    return-void
.end method

.method private animateRecycleView()V
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getAllAppsRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    if-eqz p0, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->setAnimation()V

    .line 304
    invoke-virtual {p0}, Landroid/view/ViewGroup;->scheduleLayoutAnimation()V

    :cond_0
    return-void
.end method

.method private changeToColorFilter()V
    .locals 2

    const/4 v0, 0x0

    .line 432
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 433
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/SearchBar;->getDrawerLayout()Lcom/miui/home/launcher/SearchBarDrawerLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 434
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBar;->getDrawerLayout()Lcom/miui/home/launcher/SearchBarDrawerLayout;

    move-result-object p0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private changeToSearchBar(Z)V
    .locals 1

    .line 416
    invoke-direct {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->isSearchBarDrawLayoutLegal()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->isAllAppsContainerViewShow()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 417
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBar;->getDrawerLayout()Lcom/miui/home/launcher/SearchBarDrawerLayout;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 418
    iget-object p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/home/launcher/SearchBar;->getDrawerLayout()Lcom/miui/home/launcher/SearchBarDrawerLayout;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_1
    const/4 p1, 0x4

    .line 420
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private getColorResIdFromMap(I)I
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorMap:Landroid/util/SparseArray;

    const v1, 0x7f060020

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 377
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorMap:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/bean/AllAppsColorBean;

    if-nez p0, :cond_1

    return v1

    .line 381
    :cond_1
    invoke-virtual {p0}, Lcom/miui/home/launcher/bean/AllAppsColorBean;->getColorResId()I

    move-result p0

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private isAllAppsContainerViewShow()Z
    .locals 0

    .line 424
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSearchBarDrawLayoutLegal()Z
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getSearchBar()Lcom/miui/home/launcher/SearchBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/SearchBar;->getDrawerLayout()Lcom/miui/home/launcher/SearchBarDrawerLayout;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$changeSearchBarState$2(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 408
    invoke-direct {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->changeToColorFilter()V

    goto :goto_0

    .line 410
    :cond_0
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/ColorFilterContainerView;->changeToSearchBar(Z)V

    :goto_0
    return-void
.end method

.method private static synthetic lambda$selectColor$1(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;I)V
    .locals 0

    .line 241
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->filterAppsWithColor(I)V

    return-void
.end method

.method private synthetic lambda$setupColorFilterView$0(Ljava/lang/Integer;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Landroid/view/View;)V
    .locals 3

    .line 203
    sget-object v0, Lcom/miui/home/recents/anim/StateManager;->Companion:Lcom/miui/home/recents/anim/StateManager$Companion;

    invoke-virtual {v0}, Lcom/miui/home/recents/anim/StateManager$Companion;->getInstance()Lcom/miui/home/recents/anim/StateManager;

    move-result-object v0

    new-instance v1, Lcom/miui/home/recents/event/ColorFilterClickEvent;

    invoke-direct {v1}, Lcom/miui/home/recents/event/ColorFilterClickEvent;-><init>()V

    invoke-virtual {v0, v1}, Lcom/miui/home/recents/anim/StateManager;->sendEvent(Lcom/miui/home/recents/event/Event;)V

    .line 205
    iget v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mSelectedColorType:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 206
    invoke-virtual {p0, p2, v2, v2}, Lcom/miui/home/launcher/ColorFilterContainerView;->resetRadioGroup(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;ZZ)V

    .line 207
    iget-object p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v2}, Lcom/miui/home/launcher/ColorFilterContainerView;->playRevealAnim(Landroid/view/View;I)V

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, p2, v0, v2, v2}, Lcom/miui/home/launcher/ColorFilterContainerView;->selectColor(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;IZZ)V

    .line 211
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p3, p1}, Lcom/miui/home/launcher/ColorFilterContainerView;->playRevealAnim(Landroid/view/View;I)V

    :goto_0
    return-void
.end method

.method private updateColorFilterItemDrawable(Landroid/widget/RadioButton;II)V
    .locals 4

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "button width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , button height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/RadioButton;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorFilter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    if-lt v0, p3, :cond_0

    move v2, p3

    move v0, v1

    goto :goto_0

    .line 354
    :cond_0
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getWidth()I

    move-result v0

    sub-int v0, p3, v0

    div-int/lit8 v0, v0, 0x2

    .line 355
    invoke-virtual {p1}, Landroid/widget/RadioButton;->getWidth()I

    move-result v2

    .line 359
    :goto_0
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/ColorFilterContainerView;->getColorResIdFromMap(I)I

    move-result v3

    if-nez p2, :cond_1

    .line 361
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/miui/home/launcher/graphics/IconPalette;->getColorItemAllDrawableId()I

    move-result p2

    invoke-static {p0, p2}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 362
    invoke-virtual {p0, v1, v1, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    .line 364
    :cond_1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f0801c6

    invoke-static {p2, p3}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 365
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p0

    .line 366
    invoke-virtual {p2, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    add-int p0, v2, v0

    .line 367
    invoke-virtual {p2, v1, v0, v2, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object p0, p2

    :goto_1
    const/4 p2, 0x0

    .line 369
    invoke-virtual {p1, p2, p0, p2, p2}, Landroid/widget/RadioButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public cancelRevealAnim()V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mRevealDrawable:Lcom/miui/home/launcher/allapps/anim/RevealDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mRevealDrawable:Lcom/miui/home/launcher/allapps/anim/RevealDrawable;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->cancel()V

    :cond_0
    return-void
.end method

.method public changeSearchBarState(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 402
    invoke-virtual {p0, p1, v0}, Lcom/miui/home/launcher/ColorFilterContainerView;->changeSearchBarState(ZZ)V

    return-void
.end method

.method public changeSearchBarState(ZZ)V
    .locals 1

    .line 406
    new-instance v0, Lcom/miui/home/launcher/ColorFilterContainerView$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/home/launcher/ColorFilterContainerView$$ExternalSyntheticLambda1;-><init>(Lcom/miui/home/launcher/ColorFilterContainerView;ZZ)V

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 73
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mRevealDrawable:Lcom/miui/home/launcher/allapps/anim/RevealDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mRevealDrawable:Lcom/miui/home/launcher/allapps/anim/RevealDrawable;

    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 75
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public getSelectedColorType()I
    .locals 0

    .line 394
    iget p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mSelectedColorType:I

    return p0
.end method

.method public hideColorFilter()V
    .locals 1

    const/4 v0, 0x4

    .line 386
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public init(Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;

    return-void
.end method

.method public isColorFilterEnabled()Z
    .locals 0

    .line 390
    iget-boolean p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->isColorFilterEnabled:Z

    return p0
.end method

.method public isFilteringAppsWithColor()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->isColorFilterEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->getSelectedColorType()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 94
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 96
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 97
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isColorSearchEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->isColorFilterEnabled:Z

    .line 98
    invoke-static {}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->getInstance()Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/settings/AllAppsSettingHelper;->isColorAnimEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->isColorFilterAnimOpen:Z

    .line 100
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenWidth()I

    move-result v0

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getScreenHeight()I

    move-result v4

    int-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mRevealAnimRadius:I

    .line 101
    invoke-virtual {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->setUp()V

    return-void
.end method

.method public playRevealAnim(Landroid/view/View;I)V
    .locals 12

    .line 266
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getAllAppsView()Landroid/view/View;

    move-result-object v2

    .line 267
    iget-boolean v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->isColorFilterAnimOpen:Z

    if-eqz v0, :cond_1

    if-nez v2, :cond_0

    goto/16 :goto_0

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->cancelRevealAnim()V

    .line 272
    invoke-direct {p0}, Lcom/miui/home/launcher/ColorFilterContainerView;->animateRecycleView()V

    .line 273
    invoke-direct {p0, p2}, Lcom/miui/home/launcher/ColorFilterContainerView;->getColorResIdFromMap(I)I

    move-result p2

    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 275
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    add-float/2addr v0, v1

    div-int/lit8 v1, v5, 0x2

    int-to-float v3, v1

    add-float v7, v0, v3

    .line 276
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getTop()I

    move-result v0

    add-int/2addr v0, v1

    int-to-float v8, v0

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 279
    new-instance v3, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;

    .line 280
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v9

    iget v10, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mRevealAnimRadius:I

    .line 281
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    move-object v6, v3

    invoke-direct/range {v6 .. v11}, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;-><init>(FFIII)V

    iput-object v3, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mRevealDrawable:Lcom/miui/home/launcher/allapps/anim/RevealDrawable;

    .line 283
    new-instance p2, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v3, p2}, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 284
    iget-object p2, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mRevealDrawable:Lcom/miui/home/launcher/allapps/anim/RevealDrawable;

    const/16 v3, 0x1f4

    invoke-virtual {p2, v3}, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->setDuring(I)V

    const/4 p2, 0x1

    .line 286
    invoke-static {p1, p0, v0, p2}, Lcom/miui/home/launcher/common/Utilities;->getDescendantCoordRelativeToAncestor(Landroid/view/View;Landroid/view/View;[IZ)F

    const/4 p1, 0x0

    aget p1, v0, p1

    add-int v3, p1, v1

    .line 290
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result p1

    iget-object p2, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p2}, Landroid/widget/RadioGroup;->getTop()I

    move-result p2

    add-int/2addr p1, p2

    add-int v4, p1, v1

    .line 293
    new-instance p1, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;

    iget v6, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mRevealAnimRadius:I

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;-><init>(Landroid/view/View;IIII)V

    .line 296
    iget-object p2, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mRevealDrawable:Lcom/miui/home/launcher/allapps/anim/RevealDrawable;

    new-instance v0, Lcom/miui/home/launcher/ColorFilterContainerView$ColorFilterRevealPrgListener;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/ColorFilterContainerView$ColorFilterRevealPrgListener;-><init>(Lcom/miui/home/launcher/ColorFilterContainerView;Lcom/miui/home/launcher/allapps/anim/RevealOutlineProvider;)V

    invoke-virtual {p2, v0}, Lcom/miui/home/launcher/allapps/anim/RevealDrawable;->setRevealListener(Lcom/miui/home/launcher/allapps/anim/RevealDrawable$RevealProgressListener;)V

    .line 297
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->invalidate()V

    :cond_1
    :goto_0
    return-void
.end method

.method public resetRadioGroup(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;ZZ)V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 223
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterGroup:Landroid/widget/RadioGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 224
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/miui/home/launcher/ColorFilterContainerView;->selectColor(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;IZZ)V

    return-void
.end method

.method public selectColor(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;IZZ)V
    .locals 4

    .line 228
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mAllAppsContainerView:Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->getCategoryContainer()Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    .line 229
    iput p2, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mSelectedColorType:I

    .line 230
    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getAllAppsRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    check-cast v0, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 234
    :cond_0
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-nez p4, :cond_2

    const/4 v2, 0x1

    .line 239
    invoke-virtual {v1, v2}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->setColorSelecting(Z)V

    :cond_2
    if-eqz p3, :cond_3

    .line 241
    new-instance v2, Lcom/miui/home/launcher/ColorFilterContainerView$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, p2}, Lcom/miui/home/launcher/ColorFilterContainerView$$ExternalSyntheticLambda2;-><init>(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;I)V

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 243
    :cond_3
    invoke-virtual {p1, p2}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->filterAppsWithColor(I)V

    .line 245
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Lcom/miui/home/launcher/ColorFilterContainerView$4;

    invoke-direct {v3, p0, v0}, Lcom/miui/home/launcher/ColorFilterContainerView$4;-><init>(Lcom/miui/home/launcher/ColorFilterContainerView;Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 254
    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_4

    .line 255
    invoke-virtual {p0, p1, p3, p4}, Lcom/miui/home/launcher/ColorFilterContainerView;->resetRadioGroup(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;ZZ)V

    return-void

    :cond_4
    if-nez p4, :cond_5

    const/4 p1, 0x0

    .line 259
    invoke-virtual {v1, p1}, Lcom/miui/home/launcher/allapps/AllAppsGridAdapter;->setColorSelecting(Z)V

    .line 260
    :cond_5
    iget-object p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 261
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p0, p2}, Landroid/widget/RadioGroup;->check(I)V

    return-void
.end method

.method public setColorFilterAnimOpen(Z)V
    .locals 0

    .line 438
    iput-boolean p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->isColorFilterAnimOpen:Z

    return-void
.end method

.method public setColorFilterEnabled(Z)V
    .locals 0

    .line 442
    iput-boolean p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->isColorFilterEnabled:Z

    return-void
.end method

.method public setUp()V
    .locals 9

    const/4 v0, 0x7

    new-array v1, v0, [I

    .line 316
    fill-array-data v1, :array_0

    new-array v2, v0, [I

    .line 325
    fill-array-data v2, :array_1

    .line 334
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f03000b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 335
    array-length v4, v3

    if-eq v4, v0, :cond_0

    return-void

    .line 338
    :cond_0
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4, v0}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v4, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorMap:Landroid/util/SparseArray;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 340
    new-instance v5, Lcom/miui/home/launcher/bean/AllAppsColorBean;

    aget v6, v1, v4

    aget-object v7, v3, v4

    aget v8, v2, v4

    invoke-direct {v5, v6, v7, v8}, Lcom/miui/home/launcher/bean/AllAppsColorBean;-><init>(ILjava/lang/String;I)V

    .line 341
    iget-object v6, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Lcom/miui/home/launcher/bean/AllAppsColorBean;->getColorType()I

    move-result v7

    invoke-virtual {v6, v7, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data

    :array_1
    .array-data 4
        0x7f060020
        0x7f060022
        0x7f060023
        0x7f06001f
        0x7f06001e
        0x7f060021
        0x7f06001d
    .end array-data
.end method

.method public setUpColorFilterContainerView()V
    .locals 2

    const v0, 0x7f0a00fe

    .line 106
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterGroup:Landroid/widget/RadioGroup;

    const v0, 0x7f0a00ff

    .line 107
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterSearchBarIcon:Landroid/view/View;

    .line 108
    new-instance v1, Lcom/miui/home/launcher/ColorFilterContainerView$1;

    invoke-direct {v1, p0}, Lcom/miui/home/launcher/ColorFilterContainerView$1;-><init>(Lcom/miui/home/launcher/ColorFilterContainerView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const v1, 0x7f0a032a

    invoke-virtual {p0, v1, v0}, Landroid/widget/RelativeLayout;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public setupColorFilterView(Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;Ljava/util/TreeSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterGroup:Landroid/widget/RadioGroup;

    if-nez v0, :cond_0

    return-void

    .line 156
    :cond_0
    invoke-virtual {v0}, Landroid/widget/RadioGroup;->removeAllViews()V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "color filter size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/TreeSet;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ColorFilter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0700b2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 161
    invoke-virtual {p2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 162
    new-instance v4, Landroid/widget/RadioButton;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 163
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_1

    .line 164
    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setId(I)V

    .line 165
    new-instance v3, Landroid/widget/RadioGroup$LayoutParams;

    invoke-direct {v3, v0, v0}, Landroid/widget/RadioGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 167
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setId(I)V

    .line 168
    new-instance v5, Landroid/widget/RadioGroup$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v3, v0, v6}, Landroid/widget/RadioGroup$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    const/4 v3, 0x0

    .line 170
    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 171
    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    new-instance v3, Lcom/miui/home/launcher/ColorFilterContainerView$2;

    invoke-direct {v3, p0, v4, v2, v0}, Lcom/miui/home/launcher/ColorFilterContainerView$2;-><init>(Lcom/miui/home/launcher/ColorFilterContainerView;Landroid/widget/RadioButton;Ljava/lang/Integer;I)V

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 179
    new-instance v3, Lcom/miui/home/launcher/ColorFilterContainerView$3;

    invoke-direct {v3, p0}, Lcom/miui/home/launcher/ColorFilterContainerView$3;-><init>(Lcom/miui/home/launcher/ColorFilterContainerView;)V

    invoke-static {v4, v3}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 202
    new-instance v3, Lcom/miui/home/launcher/ColorFilterContainerView$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v2, p1}, Lcom/miui/home/launcher/ColorFilterContainerView$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/ColorFilterContainerView;Ljava/lang/Integer;Lcom/miui/home/launcher/allapps/AlphabeticalAppsList;)V

    invoke-virtual {v4, v3}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v2, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v4}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 216
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "button count = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p2}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    iget-object p1, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 218
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mColorFilterGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p0, v3}, Landroid/widget/RadioGroup;->check(I)V

    return-void
.end method

.method public shouldContainerScroll(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 135
    iget-object p0, p0, Lcom/miui/home/launcher/ColorFilterContainerView;->mCategoryContainer:Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;

    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/AllAppsCategoryContainer;->getAllAppsRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p0

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 139
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 143
    move-object p1, p0

    check-cast p1, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;

    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/AllAppsRecyclerView;->getCurrentScrollY()I

    .line 146
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result p1

    .line 147
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    return v1

    .line 150
    :cond_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
