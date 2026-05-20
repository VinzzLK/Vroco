.class public Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;
.super Ljava/lang/Object;
.source "AllAppsSearchBarController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Lcom/miui/home/launcher/ExtendedEditText$OnBackKeyListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;
    }
.end annotation


# instance fields
.field private mCb:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

.field private mInput:Lcom/miui/home/launcher/ExtendedEditText;

.field private mInputClear:Landroid/view/View;

.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mQuery:Ljava/lang/String;

.field private mSearchAlgorithm:Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;


# direct methods
.method public static synthetic $r8$lambda$vgL41Lp-0RgFhifdfZGbIcpWx5M(Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->lambda$initialize$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isSearchContainerActive()Z
    .locals 2

    .line 98
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getAppsView()Lcom/miui/home/launcher/allapps/AllAppsContainerView;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/BaseAllAppsContainerView;->getSearchContainer()Lcom/miui/home/launcher/allapps/search/AllAppsSearchContainer;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 101
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p0, p0, v1

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private synthetic lambda$initialize$0(Landroid/view/View;)V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .line 83
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;->cancel(Z)V

    .line 86
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mCb:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    invoke-interface {p1}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;->clearSearchResult()V

    .line 87
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInputClear:Landroid/view/View;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;->cancel(Z)V

    .line 90
    invoke-direct {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->isSearchContainerActive()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mCb:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    invoke-interface {p1, v1, v2}, Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;->doSearch(Ljava/lang/String;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;)V

    .line 92
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInputClear:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const-string p0, "local"

    .line 93
    invoke-static {p0}, Lcom/miui/home/launcher/AnalyticalDataCollector;->trackAllAppsSearch(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 71
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Lcom/miui/home/launcher/Launcher;->isInShortcutMenuState()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->setEditingState(I)V

    :cond_0
    return-void
.end method

.method public getInput()Lcom/miui/home/launcher/ExtendedEditText;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    return-object p0
.end method

.method public final initialize(Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;Lcom/miui/home/launcher/ExtendedEditText;Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;)V
    .locals 0

    .line 55
    iput-object p4, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mCb:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    .line 56
    iput-object p3, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 58
    iput-object p2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    .line 59
    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 60
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    invoke-virtual {p2, p0}, Lcom/miui/home/launcher/ExtendedEditText;->setOnBackKeyListener(Lcom/miui/home/launcher/ExtendedEditText$OnBackKeyListener;)V

    .line 61
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const p2, 0x7f0a0327

    .line 63
    invoke-virtual {p3, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInputClear:Landroid/view/View;

    .line 64
    invoke-static {p2}, Lcom/miui/home/launcher/AccessibilityAdaptHelper;->setButtonItemViewAccessibility(Landroid/view/View;)V

    .line 65
    iget-object p2, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInputClear:Landroid/view/View;

    new-instance p3, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$$ExternalSyntheticLambda0;-><init>(Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;

    return-void
.end method

.method public onBackKey()Z
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/common/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->reset()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 0

    if-nez p2, :cond_0

    .line 131
    iget-object p1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    invoke-virtual {p1}, Lcom/miui/home/launcher/ExtendedEditText;->hideKeyboard()V

    :cond_0
    if-eqz p2, :cond_1

    .line 134
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mCb:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;->showSearchPanel()V

    :cond_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public refreshSearchResult()V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;->cancel(Z)V

    .line 110
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mCb:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    invoke-interface {v0, v1, p0}, Lcom/miui/home/launcher/allapps/search/SearchAlgorithm;->doSearch(Ljava/lang/String;Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;)V

    return-void
.end method

.method public reset()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mCb:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;->clearSearchResult()V

    .line 143
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mCb:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    invoke-interface {v0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;->resetCategoryContainerVisible()V

    .line 144
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mInput:Lcom/miui/home/launcher/ExtendedEditText;

    invoke-virtual {v0}, Lcom/miui/home/launcher/ExtendedEditText;->reset()V

    const/4 v0, 0x0

    .line 145
    iput-object v0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    .line 146
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController;->mCb:Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;

    invoke-interface {p0}, Lcom/miui/home/launcher/allapps/search/AllAppsSearchBarController$Callbacks;->hideSearchPanel()V

    return-void
.end method
