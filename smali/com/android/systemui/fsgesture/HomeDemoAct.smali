.class public Lcom/android/systemui/fsgesture/HomeDemoAct;
.super Lcom/android/systemui/fsgesture/FsGestureDemoBaseActivity;
.source "HomeDemoAct.java"


# instance fields
.field private appBgView:Landroid/view/View;

.field private appNoteImg:Landroid/view/View;

.field private fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

.field private fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

.field private fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

.field handler:Landroid/os/Handler;

.field private homeIconImg:Landroid/widget/LinearLayout;

.field private mAnimIcon:Landroid/view/View;

.field private mRecentsCardContainer:Landroid/widget/LinearLayout;

.field private mRecentsFirstCardIconView:Landroid/view/View;

.field private navSubViewBgView:Landroid/view/View;

.field private recentsBgView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActivity;-><init>()V

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fsgesture/HomeDemoAct;)Landroid/view/View;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->mAnimIcon:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/fsgesture/HomeDemoAct;)Lcom/android/systemui/fsgesture/NavStubDemoView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/fsgesture/HomeDemoAct;)Landroid/widget/LinearLayout;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->mRecentsCardContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/fsgesture/HomeDemoAct;)Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;
    .locals 0

    .line 15
    iget-object p0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    return-object p0
.end method

.method private startSwipeViewAnimation(I)V
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/fsgesture/HomeDemoAct$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/fsgesture/HomeDemoAct$4;-><init>(Lcom/android/systemui/fsgesture/HomeDemoAct;I)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 44
    invoke-super {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget p1, Lcom/miui/home/gesturedemo/R$layout;->home_demo_layout:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "DEMO_TYPE"

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FULLY_SHOW_STEP"

    const/4 v2, 0x1

    .line 49
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "IS_FROM_PROVISION"

    const/4 v4, 0x0

    .line 50
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 52
    sget v3, Lcom/miui/home/gesturedemo/R$id;->home_icon_img:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->homeIconImg:Landroid/widget/LinearLayout;

    .line 53
    sget v3, Lcom/miui/home/gesturedemo/R$id;->anim_icon:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->mAnimIcon:Landroid/view/View;

    .line 54
    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/fsgesture/HomeDemoAct$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/fsgesture/HomeDemoAct$1;-><init>(Lcom/android/systemui/fsgesture/HomeDemoAct;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 66
    sget v3, Lcom/miui/home/gesturedemo/R$id;->recents_bg_view:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->recentsBgView:Landroid/view/View;

    .line 67
    sget v3, Lcom/miui/home/gesturedemo/R$id;->recents_card_container:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->mRecentsCardContainer:Landroid/widget/LinearLayout;

    .line 68
    sget v3, Lcom/miui/home/gesturedemo/R$id;->recents_first_card_icon:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->mRecentsFirstCardIconView:Landroid/view/View;

    .line 69
    iget-object v4, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->mRecentsCardContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/fsgesture/HomeDemoAct$2;

    invoke-direct {v5, p0}, Lcom/android/systemui/fsgesture/HomeDemoAct$2;-><init>(Lcom/android/systemui/fsgesture/HomeDemoAct;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 82
    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->mRecentsFirstCardIconView:Landroid/view/View;

    .line 83
    sget v3, Lcom/miui/home/gesturedemo/R$id;->app_bg_view:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->appBgView:Landroid/view/View;

    .line 84
    sget v3, Lcom/miui/home/gesturedemo/R$id;->app_note_img:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->appNoteImg:Landroid/view/View;

    .line 85
    sget v3, Lcom/miui/home/gesturedemo/R$id;->navstubview_bg_view:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->navSubViewBgView:Landroid/view/View;

    .line 86
    sget v3, Lcom/miui/home/gesturedemo/R$id;->fsgesture_title_view:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    iput-object v3, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    const-string v3, "DEMO_FULLY_SHOW"

    .line 89
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    if-eqz v3, :cond_0

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_0
    const-string v2, "DEMO_TO_HOME"

    .line 95
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v5

    .line 100
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->prepareTitleView(I)V

    .line 101
    iget-object v3, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    new-instance v6, Lcom/android/systemui/fsgesture/HomeDemoAct$3;

    invoke-direct {v6, p0}, Lcom/android/systemui/fsgesture/HomeDemoAct$3;-><init>(Lcom/android/systemui/fsgesture/HomeDemoAct;)V

    invoke-virtual {v3, v6}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->registerSkipEvent(Landroid/view/View$OnClickListener;)V

    .line 107
    iget-object v3, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-static {p0, v3}, Lcom/android/systemui/fsgesture/GestureTitleViewUtil;->setMargin(Landroid/content/Context;Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;)V

    .line 109
    sget v3, Lcom/miui/home/gesturedemo/R$id;->fsgesture_swipe_view:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    iput-object v3, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    if-ne v2, v5, :cond_2

    const/4 v2, 0x4

    .line 111
    invoke-direct {p0, v2}, Lcom/android/systemui/fsgesture/HomeDemoAct;->startSwipeViewAnimation(I)V

    goto :goto_2

    .line 113
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/systemui/fsgesture/HomeDemoAct;->startSwipeViewAnimation(I)V

    .line 116
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    invoke-static {v2}, Lcom/android/systemui/fsgesture/GestureLineUtils;->createAndaddNavigationHandle(Landroid/widget/RelativeLayout;)Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActivity;->mNavigationHandle:Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    .line 118
    sget v2, Lcom/miui/home/gesturedemo/R$id;->fsg_nav_view:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/fsgesture/NavStubDemoView;

    iput-object v2, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 119
    invoke-virtual {v2, p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setCurActivity(Landroid/app/Activity;)V

    .line 120
    iget-object v2, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setDemoType(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setFullyShowStep(I)V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setIsFromPro(Z)V

    .line 123
    iget-object p1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->homeIconImg:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setHomeIconImg(Landroid/widget/LinearLayout;)V

    .line 124
    iget-object p1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->recentsBgView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setRecentsBgView(Landroid/view/View;)V

    .line 125
    iget-object p1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->mRecentsCardContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setRecentsCardContainer(Landroid/widget/LinearLayout;)V

    .line 126
    iget-object p1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->mRecentsFirstCardIconView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setRecentsFirstCardIconView(Landroid/view/View;)V

    .line 127
    iget-object p1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->appBgView:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setAppBgView(Landroid/view/View;)V

    .line 128
    iget-object p1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->appNoteImg:Landroid/view/View;

    invoke-virtual {p1, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setAppNoteImg(Landroid/view/View;)V

    .line 129
    iget-object p1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {p1, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setDemoTitleView(Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;)V

    .line 130
    iget-object p1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget-object v0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    invoke-virtual {p1, v0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setSwipeView(Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;)V

    .line 131
    iget-object p1, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsgNavView:Lcom/android/systemui/fsgesture/NavStubDemoView;

    iget-object p0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->navSubViewBgView:Landroid/view/View;

    invoke-virtual {p1, p0}, Lcom/android/systemui/fsgesture/NavStubDemoView;->setBgView(Landroid/view/View;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 136
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 137
    iget-object p0, p0, Lcom/android/systemui/fsgesture/HomeDemoAct;->fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->cancelAnimation()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 154
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method
