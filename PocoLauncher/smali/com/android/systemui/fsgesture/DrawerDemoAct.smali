.class public Lcom/android/systemui/fsgesture/DrawerDemoAct;
.super Lcom/android/systemui/fsgesture/FsGestureDemoBaseActivity;
.source "DrawerDemoAct.java"


# static fields
.field private static final IS_DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "DrawerDemoAct"


# instance fields
.field private drawerImg:Landroid/widget/ImageView;

.field private fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

.field private fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

.field handler:Landroid/os/Handler;

.field private initTranslateWidht:I

.field private maxTranslateWidth:I

.field private shelterView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    sget-boolean v0, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    sput-boolean v0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->IS_DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActivity;-><init>()V

    .line 130
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Landroid/view/View;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->shelterView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Landroid/widget/ImageView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->drawerImg:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/fsgesture/DrawerDemoAct;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->maxTranslateWidth:I

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/fsgesture/DrawerDemoAct;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->maxTranslateWidth:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/fsgesture/DrawerDemoAct;)Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/fsgesture/DrawerDemoAct;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->startSwipeViewAnimation(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/fsgesture/DrawerDemoAct;)I
    .locals 0

    .line 24
    iget p0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->initTranslateWidht:I

    return p0
.end method

.method static synthetic access$602(Lcom/android/systemui/fsgesture/DrawerDemoAct;I)I
    .locals 0

    .line 24
    iput p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->initTranslateWidht:I

    return p1
.end method

.method static synthetic access$700()Z
    .locals 1

    .line 24
    sget-boolean v0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->IS_DEBUG:Z

    return v0
.end method

.method private startSwipeViewAnimation(I)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/fsgesture/DrawerDemoAct$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/fsgesture/DrawerDemoAct$4;-><init>(Lcom/android/systemui/fsgesture/DrawerDemoAct;I)V

    const-wide/16 p0, 0x1f4

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget p1, Lcom/miui/home/gesturedemo/R$layout;->drawer_demo_layout:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 47
    sget p1, Lcom/miui/home/gesturedemo/R$id;->drawer_img:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->drawerImg:Landroid/widget/ImageView;

    .line 48
    sget p1, Lcom/miui/home/gesturedemo/R$id;->shelter_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->shelterView:Landroid/view/View;

    .line 49
    new-instance v0, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/fsgesture/DrawerDemoAct$1;-><init>(Lcom/android/systemui/fsgesture/DrawerDemoAct;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 92
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->drawerImg:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/systemui/fsgesture/DrawerDemoAct$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/fsgesture/DrawerDemoAct$2;-><init>(Lcom/android/systemui/fsgesture/DrawerDemoAct;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 105
    sget p1, Lcom/miui/home/gesturedemo/R$id;->fsgesture_title_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    iput-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    .line 106
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 108
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-virtual {p1}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->setRTLParams()V

    .line 110
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->prepareTitleView(I)V

    .line 111
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    new-instance v0, Lcom/android/systemui/fsgesture/DrawerDemoAct$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/fsgesture/DrawerDemoAct$3;-><init>(Lcom/android/systemui/fsgesture/DrawerDemoAct;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;->registerSkipEvent(Landroid/view/View$OnClickListener;)V

    .line 117
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoTitleView:Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;

    invoke-static {p0, p1}, Lcom/android/systemui/fsgesture/GestureTitleViewUtil;->setMargin(Landroid/content/Context;Lcom/android/systemui/fsgesture/FsGestureDemoTitleView;)V

    .line 118
    sget p1, Lcom/miui/home/gesturedemo/R$id;->fsgesture_swipe_view:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    iput-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    const/4 p1, 0x3

    .line 119
    invoke-direct {p0, p1}, Lcom/android/systemui/fsgesture/DrawerDemoAct;->startSwipeViewAnimation(I)V

    .line 121
    iget-object p1, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->drawerImg:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    invoke-static {p1}, Lcom/android/systemui/fsgesture/GestureLineUtils;->createAndaddNavigationHandle(Landroid/widget/RelativeLayout;)Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActivity;->mNavigationHandle:Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 126
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 127
    iget-object p0, p0, Lcom/android/systemui/fsgesture/DrawerDemoAct;->fsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->cancelAnimation()V

    return-void
.end method
