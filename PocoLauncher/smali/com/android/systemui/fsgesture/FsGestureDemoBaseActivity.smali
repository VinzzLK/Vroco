.class public Lcom/android/systemui/fsgesture/FsGestureDemoBaseActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "FsGestureDemoBaseActivity.java"


# instance fields
.field public mNavigationHandle:Lcom/android/systemui/navigationbar/gestural/NavigationHandle;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method adjustButtonGroupBottomMargin()V
    .locals 3

    .line 49
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/fsgesture/GestureLineUtils;->isUserSetUp(Landroid/content/ContentResolver;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 50
    invoke-static {p0}, Lcom/android/systemui/fsgesture/GestureLineUtils;->isShowNavigationHandle(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 54
    :cond_0
    :try_start_0
    sget v0, Lcom/miui/home/gesturedemo/R$id;->bottom_button_group:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 55
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/miui/home/gesturedemo/R$dimen;->bottom_button_margin_bottom_temp:I

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 57
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "FsGestureDemoBaseActivity"

    const-string v1, "adjustButtonGroupBottomMargin"

    .line 59
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    const/4 v0, 0x1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    .line 29
    sget-object v0, Lcom/android/systemui/fsgesture/FsgestureUtil;->INSTANCE:Lcom/android/systemui/fsgesture/FsgestureUtil;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fsgesture/FsgestureUtil;->hideSystemBars(Landroid/view/View;)V

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 32
    invoke-virtual {p0}, Landroid/app/ActionBar;->hide()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 44
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 45
    iget-object v0, p0, Lcom/android/systemui/fsgesture/FsGestureDemoBaseActivity;->mNavigationHandle:Lcom/android/systemui/navigationbar/gestural/NavigationHandle;

    invoke-static {p0, v0}, Lcom/android/systemui/fsgesture/GestureLineUtils;->updateNavigationHandleVisibility(Landroid/content/Context;Lcom/android/systemui/navigationbar/gestural/NavigationHandle;)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 38
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    const/4 v0, 0x1

    .line 39
    invoke-static {p0, v0}, Lcom/android/systemui/fsgesture/GestureDemoBroadcastUtils;->sendBroadcast(Landroid/content/Context;Z)V

    return-void
.end method
